unit uHasseDiagram;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  SimpleGraph {$IFDEF COMPILER7_UP}, XPMan {$ENDIF}, Dialogs, ExtDlgs,
  Menus, ActnList, ImgList, StdCtrls, ComCtrls, ToolWin, JPEG, Buttons,
  ExtCtrls, CheckLst, ComObj;

type
  TElasticNode = class(TEllipticNode)
  private
  public
    constructor Create(AOwner: TSimpleGraph; cX, cY: Integer); reintroduce;
  end;

  TElasticEdge = class(TGraphLink)
  public
    constructor Create(AOwner: TSimpleGraph; SourceNode,
      TargetNode: TElasticNode); reintroduce;
    constructor Create2(AOwner: TSimpleGraph; SourceNode,
      TargetNode: TElasticNode); reintroduce;
  end;

  TfrmSimpleGraph = class(TForm)
    SimpleGraph: TSimpleGraph;
    Panel: TPanel;
    SaveDialog1: TSaveDialog;
    btnSaveGraph: TButton;
    btnShowLegends: TButton;
    OpenDialog1: TOpenDialog;
    procedure FormShow(Sender: TObject);
    procedure ConstruirDominancia; // posição dos nós
    procedure NumNode; // faz a ligação entre os nós (caso de preferência)
    procedure NumNode2; // faz a ligação entre os nós (caso indiferença)
    procedure AMD; // acha quais alternativas não estão dominadas pelo espaço de alternativas
    procedure Camadas; // calcular o número de camadas existentes no grafo
    procedure DomAlt; // acha quais alt daminam cada alt
    procedure DomAlt2; // limpa da linha da alt analisada na matriz Node5 as alt que
    // não terão ligações com a mesma, devido a transitiviade
    procedure NomeNode; // colocar o nome das alt nos nós
    function SplitString(CountWords: array of String; Texto: string): Integer;
    procedure LinhaDominancia; // traça a linha de dominancia entre camadas
    procedure QuebraPalavras(Texto: String);
    procedure btnSaveGraphClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnShowLegendsClick(Sender: TObject);
  private
  end;

var
  NumAlt, Levels: Integer;
  MatrizParapar: array of array of Integer;
  Alternativas: array of string;
  frmSimpleGraph: TfrmSimpleGraph;
  MatrizParaPar2: Array of Array of double; // matriz utilizada para construção
  // do grafo de dominancia
  Node: Array of TElasticNode; // nós do grafo
  Node1: Array of Integer; // guarda quais alternativas estão na camada analisada
  Node2: Array of Integer; // quarda quais alternativas ainda serão alocadas em níveis restantes
  Node2Ant: Array of Integer; // quarda quais alternativas ainda restaram após camada anterior
  QntCam: Integer; // guarda o número de camadas existentes no grafo
  CamAlt: Array of array of Integer; // mostra em qual camada estão as alternativas
  Node3: Array of Integer; // guarda o número de alt de cada nível
  contador: Integer; // variavel de auxilio para montar a CamAlt
  contador2: Integer; // primeira vez que roda o procedure AMD
  Node4: Array of Integer; // guarda, em ordem, qual os valores de i, j, k, da última
  // ligação entre nós que irá rodar o procedure DomAlt2
  Node5: Array of array of Integer; // matriz que guarda quais alt dominam cada alt
  Node6: Array of Integer; // guarda a ordem das alternativas estão preenchidas
  // no grafo e utiliza para fazer as ligações entre as alt no procedure NumNode
  Node7: Array of Integer;
  Node8: Array of Integer;
  Node8Ant: Array of Integer;
  Node9: Array of array of Integer;
  AltOrdemGrafo: Array of Integer; // guarda a ordem das alternativas a serem preenchidas
  // no grafo
  CountWords: Array of String; // Guarda o nome da alt analisada e a separa de acordo com
  // os espaços

  // variáveis usadas no procedure DomAlt2, extraídas do NumNode
  aux_Nodei: Integer;
  aux_NodeiAnt: Integer;
  aux_Nodej: Integer;
  aux_Nodek: Integer;
  m: Integer;

  aux_i: Integer;

implementation

uses Math, uHasseDiagramLegend;
{$R *.dfm}
{ TElasticNode }

// define tamanho e cor dos nós
constructor TElasticNode.Create(AOwner: TSimpleGraph; cX, cY: Integer);
begin
  inherited Create(AOwner);
  SetBounds(cX + Owner.Width div 2 - 10, cY + Owner.Height div 2 - 10, 100, 70);
  NodeOptions := NodeOptions - [gnoResizable];
  Brush.Color := clwhite; // cor do nó branco
end;

{ TElasticEdge }
// propriedades das setas que ligam os nós quando há dominância
constructor TElasticEdge.Create(AOwner: TSimpleGraph;
  SourceNode, TargetNode: TElasticNode);
begin
  inherited CreateNew(AOwner, SourceNode, [], TargetNode);
  Options := Options - [goSelectable];
  Brush.Color := clblack;
  BeginStyle := lsDiamond; // tipo da geometria do inicio da seta
  EndStyle := lsArrow; // tipo da geometria do fim da seta
  BeginSize := 1; // tamanho da geometria do inicio da seta
  EndSize := 3; // tamanho da geometris do fim da seta
end;

// propriedades das setas que ligam os nós quando há indiferença
constructor TElasticEdge.Create2(AOwner: TSimpleGraph;
  SourceNode, TargetNode: TElasticNode);
begin
  inherited CreateNew(AOwner, SourceNode, [], TargetNode);
  Options := Options - [goSelectable];
  Pen.Color := clMedGray;
  BeginStyle := lsDiamond; // tipo da geometria do inicio da seta
  EndStyle := lsDiamond; // tipo da geometria do fim da seta
  BeginSize := 1; // tamanho da geometria do inicio da seta
  EndSize := 1; // tamanho da geometris do fim da seta
end;

{ TMainForm }
// achar quais alternativas não estão dominadas; essas criarão o próximo nível
procedure TfrmSimpleGraph.AMD;
var
  i, j, k, l, m, n, cont, g, o: Integer; // variáveis auxiliares
begin
  if contador2 = 0 then // criação da primeira camada
  begin
    SetLength(Node2Ant, NumAlt);

    for i := 0 to Length(Node2) - 1 do
      Node2Ant[i] := Node2[i];

    SetLength(Node1, 0);
    cont := 0;
    k := 0;
    l := 0;

    for j := 0 to NumAlt - 1 do
    begin
      for i := 0 to NumAlt - 1 do
      begin
        if (MatrizParaPar2[i, j] = 0) or (MatrizParaPar2[i, j] = 2) then
        begin
          cont := cont + 1;
          if cont = NumAlt then
          begin
            k := k + 1;
            SetLength(Node1, k);
            Node1[l] := j;
            l := l + 1;
          end;
        end
        else
          break;
      end;
      cont := 0;
    end;
    contador := contador + 1;
    contador2 := contador2 + 1;
  end // do contador2 = 0
  else // caso já tenha feita a primeira camada
  begin
    SetLength(Node2, Length(Node2Ant) - Length(Node1));

    m := 1;
    k := 0;
    l := 0;

    // guarda as alternativas que faltam
    for i := 0 to Length(Node2Ant) - 1 do
    begin
      if Node2Ant[i] = Node1[l] then
      begin
        k := k + 1;
        if l = Length(Node1) - 1 then
        begin
          l := (Length(Node1) - 1);
        end
        else
          l := l + 1;
        Continue;
      end
      else
      begin
        SetLength(Node2, m);
        Node2[m - 1] := Node2Ant[k];
        m := m + 1;
        k := k + 1;
      end;
    end;

    SetLength(Node2Ant, Length(Node2));
    for i := 0 to Length(Node2) - 1 do
      Node2Ant[i] := Node2[i];

    SetLength(Node1, 0);
    cont := 0;
    k := 0;
    l := 0;
    m := 0;
    n := 0;

    if Length(Node2) = 1 then
    begin
      k := k + 1;
      SetLength(Node1, k);
      Node1[l] := Node2[l];
    end
    else
    begin
      for j := 0 to Length(Node2) - 1 do
      begin
        g := Node2[m];
        for i := 0 to Length(Node2) - 1 do
        begin
          o := Node2[n];
          if (MatrizParaPar2[o, g] = 0) or (MatrizParaPar2[o, g] = 2) then
          begin
            cont := cont + 1;
            n := n + 1;
            if cont = Length(Node2) then
            begin
              k := k + 1;
              SetLength(Node1, k);
              Node1[l] := g;
              l := l + 1;
            end; // do if cont
          end
          else // do if MatrizParaPar2[i, j]
            break;
        end; // do for i
        cont := 0;
        n := 0;
        m := m + 1; // do if = Node2

      end; // do for j
    end; // do if length(Node2) = 1
    contador := contador + 1;
    contador2 := contador2 + 1;
  end;

end;

// salva o grafo como imagem
procedure TfrmSimpleGraph.btnSaveGraphClick(Sender: TObject);
begin
 // if SaveDialog1.Execute then
    SimpleGraph.SaveAsMetafile('C:\Users\CDCID 006 2017\Desktop\FITradeoff WEB Based - FU-TXMMO-WF1 (LAYOUT)\Images\Hasse\01');
end;

procedure TfrmSimpleGraph.btnShowLegendsClick(Sender: TObject);
begin
  frmHasseDiagramLegend.Show;
end;

// mostra quais alternativas estão em cada camada
procedure TfrmSimpleGraph.Camadas;
var
  i, j, k: Integer;
begin
  SetLength(CamAlt, 0, 0); // zerando matriz
  SetLength(CamAlt, NumAlt, NumAlt);
  SetLength(Node3, 0);

  QntCam := 0;
  k := 0;

  for j := 0 to NumAlt - 1 do
  begin
    if (Length(Node2) - Length(Node1)) = 0 then
    begin
      Continue;
    end
    else
    begin
      AMD;
      QntCam := QntCam + 1;
      for i := 0 to Length(Node1) - 1 do
      begin
        SetLength(Node3, QntCam);
        CamAlt[contador - 1, i] := Node1[i];
        k := k + 1;
      end;
      Node3[j] := k;
      k := 0;
    end;
  end;

end;

// cria a posição dos nós no grafo
procedure TfrmSimpleGraph.ConstruirDominancia;
var
  i, j, k: Integer;
  a, b, c, d: Integer;
begin
  SetLength(Node, NumAlt);

  k := 0;
  c := trunc(400 / (QntCam + 1));
  b := -400; // posição inicial y

  for i := 0 to QntCam - 1 do
  begin
    if Node3[i] = 1 then
    begin
      b := b + 100;
      Node[k] := TElasticNode.Create(SimpleGraph, 0, b);
    end // do if Node3[i] = 1
    else
    begin
      if Odd(Node3[i]) then // caso a quantidade de alt na camada for IMPAR
      begin
        a := -(trunc((Node3[i] - 1) / 2)) * 200;
        b := b + 100;
        for j := 0 to Node3[i] - 1 do
        begin
          Node[j + k] := TElasticNode.Create(SimpleGraph, a, b);
          a := a + 200;
        end;
      end
      else // caso seja PAR
      begin
        if Node3[i] = 2 then
        begin
          a := -100;
          b := b + 100;
          for j := 0 to Node3[i] - 1 do
          begin
            Node[j + k] := TElasticNode.Create(SimpleGraph, a, b);
            a := a + 200;
          end; // do for j
        end // do if Node3[i] = 2
        else
        begin
          a := -(((trunc(Node3[i] / 2)) - 1) * 200 + 100);
          b := b + 100;
          for j := 0 to Node3[i] - 1 do
          begin
            Node[j + k] := TElasticNode.Create(SimpleGraph, a, b);
            a := a + 200;
          end;
          // do for j
        end; // do else do if Node3[i] = 2
      end; // do caso seja PAR
    end; // else do if Node3[i] = 1
    k := k + Node3[i];
  end; // do for i

end;

// acha quais alt dominam cada alt
procedure TfrmSimpleGraph.DomAlt;
var
  i, j, k: Integer;
begin
  SetLength(Node5, NumAlt, NumAlt);
  k := 0;
  for j := 0 to NumAlt - 1 do
  begin
    for i := 0 to NumAlt - 1 do
    begin
      if MatrizParaPar2[i, j] = 1 then
      begin
        Node5[j, k] := i + 1;
        k := k + 1;
      end; // do if
    end; // do for i
    k := 0;
  end; // do for j

end;

procedure TfrmSimpleGraph.DomAlt2;
var
  i, j, o, k1, l1: Integer;
begin

  k1 := 0;
  l1 := 0;
  SetLength(Node8, 0);
  SetLength(Node9, 0, 0);
  SetLength(Node9, Length(Node7), NumAlt);

  for o := aux_Nodei - 2 Downto 0 do
  begin
    // CASO SEJA A PRIMEIRA VEZ QUE RODA O PROCEDURE
    if o = aux_Nodei - 2 then
    begin
      // guarda no Node8 quais alt dominam a (alt)aux_Nodej da camada aux_Nodei
      for j := 0 to NumAlt - 1 do
      begin
        if Node5[CamAlt[aux_Nodei, aux_Nodej], j] > 0 then
        begin
          k1 := k1 + 1;
          SetLength(Node8, k1);
          Node8[k1 - 1] := Node5[CamAlt[aux_Nodei, aux_Nodej], j];
        end;
      end;

      // cria um vetor que será utilizado como auxílio na retirada dos valores do Node8
      SetLength(Node8Ant, Length(Node8));
      for i := 0 to Length(Node8) - 1 do
        Node8Ant[i] := Node8[i];

      // Cria a matriz que guarda quais alt dominam as alt presentes no Node8
      // Cada linha é uma alternativa
      for i := 0 to Length(Node7) - 1 do
      begin
        for j := 0 to NumAlt - 1 do
        begin
          if Node5[Node7[i] - 1, j] > 0 then
          begin
            Node9[i, l1] := Node5[Node7[i] - 1, j];
            l1 := l1 + 1;
          end // do if Node5[Node7[i], j] > 0
          else
            break;
        end; // do for j
        l1 := 0;
      end; // do for i

      // Tirar do Node8 as alt que não formarão ligações com a alt aux_Nodej da camada
      // aux_Nodei devido a transitividade
      /// ///////////////////////////////////////////////////////////////////////////
      for i := 0 to Length(Node8) - 1 do // roda as alt do Node8
      begin
        for j := 0 to Length(Node7) - 1 do
        // roda as linhas do Node9
        begin
          for k1 := 0 to NumAlt - 1 do
          // roda todas as colunas do Node9
          begin
            if ((Node8[i] = Node9[j, k1]) or (Node8[i] = Node7[j])) then
            begin
              Node8Ant[i] := 0;
              break;
            end;
            // do if Node8[i] = Node9[j, k]
          end; // do for k
        end; // do for j
      end; // do for i

      k1 := 0;
      l1 := -1;
      for i := 0 to Length(Node8Ant) - 1 do
      begin
        if Node8Ant[i] > 0 then
        begin
          k1 := k1 + 1;
          SetLength(Node8, k1);
          Node8[k1 - 1] := Node8Ant[i];
        end
        // do if Node8Ant[i] > 0
        else
        begin
          l1 := l1 + 1;
          if l1 = Length(Node8Ant) - 1 then
            SetLength(Node8, 0);
        end;
      end; // do for i

      /// /////////////////////////////////////////////////////////////////////////////

      // criar a ligação entre as alt da camada i com a alt aux_Nodej da camada aux_Nodei
      l1 := 0;
      SetLength(Node7, 0);
      for i := 0 to Length(Node8) - 1 do
      begin
        for j := 0 to Node3[o] - 1 do
        begin
          if Node8[i] - 1 = CamAlt[o, j] then
          begin
            if MatrizParaPar2[Node8[i] - 1, CamAlt[aux_Nodei, aux_Nodej]]
              = 1 then
            begin
              TElasticEdge.Create(SimpleGraph, Node[Node6[Node8[i] - 1]],
                Node[Node6[CamAlt[aux_Nodei, aux_Nodej]]]);
              l1 := l1 + 1;
              SetLength(Node7, l1);
              Node7[l1 - 1] := Node8[i];
              break;
            end;
            // do if MatrizParaPar2[CamAlt[i - 1, k], CamAlt[i, j]] = 1
          end; // do Node8[i] = CamAlt[i, j]
        end; // do for j
      end; // do for i

      if Length(Node7) = 0 then
        break;

    end // do if o = aux_Nodei - 2

    // CASO O PROCEDURE JÁ TENHA RODADO A PARTE ACIMA
    else
    begin

      // cria um vetor que será utilizado como auxílio na retirada dos valores do Node8
      SetLength(Node8Ant, Length(Node8));
      for i := 0 to Length(Node8) - 1 do
        Node8Ant[i] := Node8[i];

      // Cria a matriz que guarda quais alt dominam as alt presentes no Node8
      // Cada linha é uma alternativa
      SetLength(Node9, 0, 0);
      SetLength(Node9, Length(Node7), NumAlt);
      l1 := 0;
      for i := 0 to Length(Node7) - 1 do
      begin
        for j := 0 to NumAlt - 1 do
        begin
          if Node5[Node7[i] - 1, j] > 0 then
          begin
            Node9[i, l1] := Node5[Node7[i] - 1, j];
            l1 := l1 + 1;
          end // do if Node5[Node7[i], j] > 0
          else
            break;
        end; // do for j
        l1 := 0;
      end; // do for i

      // Tirar do Node8 as alt que não formarão ligações com a alt aux_Nodej da camada
      // aux_Nodei devido a transitividade
      /// ///////////////////////////////////////////////////////////////////////////
      for i := 0 to Length(Node8) - 1 do // roda as alt do Node8
      begin
        for j := 0 to Length(Node7) - 1 do
        // roda as linhas do Node9
        begin
          for k1 := 0 to NumAlt - 1 do // roda as colunas do Node9
          begin
            if ((Node8[i] = Node9[j, k1]) or (Node8[i] = Node7[j])) then
            begin
              Node8Ant[i] := 0;
              break;
            end;
            // do if Node8[i] = Node9[j, k]
          end; // do for k
        end; // do for j
      end; // do for i

      k1 := 0;
      l1 := -1;
      for i := 0 to Length(Node8Ant) - 1 do
      begin
        if Node8Ant[i] > 0 then
        begin
          k1 := k1 + 1;
          SetLength(Node8, k1);
          Node8[k1 - 1] := Node8Ant[i];
        end
        // do if Node8Ant[i] > 0
        else
        begin
          l1 := l1 + 1;
          if l1 = Length(Node8Ant) - 1 then
            SetLength(Node8, 0);
        end;
      end; // do for i

      /// /////////////////////////////////////////////////////////////////////////////

      // criar a ligação entre as alt da camada i com a alt aux_Nodej da camada aux_Nodei
      l1 := 0;
      SetLength(Node7, 0);
      for i := 0 to Length(Node8) - 1 do
      begin
        for j := 0 to Node3[o] - 1 do
        begin
          if Node8[i] - 1 = CamAlt[o, j] then
          begin
            if MatrizParaPar2[Node8[i] - 1, CamAlt[aux_Nodei, aux_Nodej]]
              = 1 then
            begin
              TElasticEdge.Create(SimpleGraph, Node[Node6[Node8[i] - 1]],
                Node[Node6[CamAlt[aux_Nodei, aux_Nodej]]]);
              l1 := l1 + 1;
              SetLength(Node7, l1);
              Node7[l1 - 1] := Node8[i];
              break;
            end;
            // do if MatrizParaPar2[CamAlt[i - 1, k], CamAlt[i, j]] = 1
          end; // do Node8[i] = CamAlt[i, j]
        end; // do for j
      end; // do for i
    end; // do else do if o = aux_Nodei - 2

    if Length(Node7) = 0 then
      break;

  end; // do for o
end;

procedure TfrmSimpleGraph.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmHasseDiagramLegend.Close;
end;

procedure TfrmSimpleGraph.FormShow(Sender: TObject);
var
  i, j: Integer;
  Excel: variant;
  Sheet: variant;
begin
  /// ////////////////////// Obtenção de Dados ////////////////////////////////////
  Excel := CreateOleObject('Excel.Application');
  Excel.WorkBooks.Open(
    'C:\Users\CDCID 006 2017\Desktop\FITradeoff WEB Based - FU-TXMMO-WF1 (LAYOUT)\Images\Hasse\01.xlsx');
  // Abrindo primeira planilha
  Excel.WorkBooks[1].Worksheets[1].Activate;
  Sheet := Excel.WorkBooks[1].Worksheets[1];
  Sheet.Cells.SpecialCells($0000000B, EmptyParam).Activate;
  NumAlt := Excel.ActiveCell.Row - 1;

  SetLength(MatrizParapar, NumAlt, NumAlt);
  SetLength(Alternativas, NumAlt);

  for i := 1 to NumAlt do
  begin
    Alternativas[i - 1] := Sheet.Cells[i + 1, 1];
    for j := 0 to NumAlt - 1 do
      MatrizParapar[i - 1, j] := Sheet.Cells[i + 1, j + 2];
  end;
  Levels := StrToInt(Sheet.Cells[1, 1]);

  Excel.Application.DisplayAlerts := false;
  Excel.WorkBooks[1].Close;
  Excel.quit;

  // Libera Variáveis
  Excel := Unassigned;
  Sheet := Unassigned;
  // libera processo do windows
  // ExcelApplication.WorkBooks[1].exit;
  /// /////////////////////////////////////////////////////////////////////////////
  SimpleGraph.Clear;
  contador := 0;
  contador2 := 0;
  SetLength(MatrizParaPar2, NumAlt, NumAlt);
  SetLength(CamAlt, NumAlt, NumAlt);
  SetLength(Node2, NumAlt);
  SetLength(Node8, 0);

  for i := 0 to NumAlt - 1 do
  begin
    for j := 0 to NumAlt - 1 do
      MatrizParaPar2[i, j] := MatrizParapar[i, j];
  end;

  for i := 0 to NumAlt - 1 do
    Node2[i] := i;

  DomAlt;
  Camadas;
  ConstruirDominancia;
  NomeNode;
  NumNode;
  NumNode2;
  LinhaDominancia;
  btnSaveGraph.Click;

end;

// traça a linha que separa os levels de dominância entre os grupos
procedure TfrmSimpleGraph.LinhaDominancia;
var
  i, j, k, l, g: Integer;
  a: Integer; // posição da linha tracejada
  Pt: array [0 .. 1] of TPoint;
  cont: Integer; // índice da camada
begin
  cont := Levels;
  aux_i := 0;
  for i := QntCam - 1 Downto 1 do // camada do elemento analisado para ser dominado
  begin
    // i := QntCam - 1;
    aux_i := 0;
    for j := 0 to Node3[i] - 1 do
    // elemento analisado para ser dominado
    begin
      for k := i - 1 Downto 0 do // camada do elemento que domina
      begin
        for l := 0 to Node3[k] - 1 do // elemento que domina
        begin
          if MatrizParaPar2[CamAlt[k, l], CamAlt[i, j]] = 1 then
          begin
            if ((j = Node3[i] - 1) and (k = 0) and (l = Node3[0] - 1)) then
            begin
              a := 100 * i - 10;
              Pt[0] := Point(100, a);
              Pt[1] := Point(1100, a);
              with SimpleGraph.InsertLink(Pt, nil) do
              begin
                Pen.Style := psDot;
                EndStyle := lsNone;
              end;
              // criar a legenda dos groups
              Pt[0] := Point(980, a + 95);
              Pt[1] := Point(1050, a + 95);
              with SimpleGraph.InsertLink(Pt, nil) do
              begin
                Pen.Style := psSolid;
                EndStyle := lsNone;
                Font.Color := clblack;
                Font.Style := [fsBold];
                text := 'Position' + FloatTostr(cont);
                cont := cont - 1;
              end;

              aux_i := 1;
            end;
          end
          else
          begin
            aux_i := 1;
            break;
          end;
          if aux_i = 1 then
            break;
        end; // do for l
        if aux_i = 1 then
          break;
      end; // do for k
      if aux_i = 1 then
        break;
    end; // do for j
  end; // do for i

  Pt[0] := Point(980, a - 5);
  Pt[1] := Point(1050, a - 5);
  with SimpleGraph.InsertLink(Pt, nil) do
  begin
    Pen.Style := psSolid;
    EndStyle := lsNone;
    Font.Color := clblack;
    Font.Style := [fsBold];
    text := 'Position 1';
  end;

  SimpleGraph.LockLinks := True;

end;

procedure TfrmSimpleGraph.NomeNode;
var
  i, j, k: Integer;
  Result: Set of TGraphObjectOption;
begin
  Result := [];
  Include(Result, goShowCaption);

  SetLength(AltOrdemGrafo, NumAlt);
  k := 0;

  for i := 0 to QntCam - 1 do
  begin
    for j := 0 to Node3[i] - 1 do
    begin
      AltOrdemGrafo[j + k] := CamAlt[i, j];
    end;
    k := k + j;
  end;

  for i := 0 to NumAlt - 1 do
  begin
    with Node[i] do
    begin
      Pen.Color := clblack;
      Font.Style := [fsBold];
      text := Alternativas[AltOrdemGrafo[i]];
      QuebraPalavras(Alternativas[AltOrdemGrafo[i]]);
      if ((Length(Alternativas[AltOrdemGrafo[i]]) > 23) or
          (SplitString(CountWords, Alternativas[AltOrdemGrafo[i]]) = 1)) then
        Font.Size := 7;
      // else                    //inc 09.05 inspire
      // Font.Size := 20;      //inc 09.05 inspire
    end;
  end;

end;

procedure TfrmSimpleGraph.NumNode;
// Cria as ligações entre os nós (Localização, Nó inicial, Nó final)
var
  i, j, k, l: Integer;
begin

  SetLength(Node6, NumAlt);
  SetLength(Node7, 0);
  l := 0;

  for i := 0 to NumAlt - 1 do
  begin
    for j := 0 to NumAlt - 1 do
    begin
      if AltOrdemGrafo[j] = i then
      begin
        Node6[i] := j;
        break;
      end;
    end;
  end;

  for i := QntCam - 1 Downto 1 do
  begin
    for j := 0 to Node3[i] - 1 do
    // qnt de elementos da camada (i-1)
    begin
      for k := 0 to Node3[i - 1] - 1 do
      begin
        if MatrizParaPar2[CamAlt[i - 1, k], CamAlt[i, j]] = 1 then
        begin
          TElasticEdge.Create(SimpleGraph, Node[Node6[CamAlt[i - 1, k]]],
            Node[Node6[CamAlt[i, j]]]);
          l := l + 1;
          SetLength(Node7, l);
          Node7[l - 1] := CamAlt[i - 1, k] + 1;
        end; // do if
      end; // do for k
      aux_Nodei := i;
      aux_Nodej := j;
      DomAlt2;
      l := 0;
    end; // do for j
  end; // do for i

end;

procedure TfrmSimpleGraph.NumNode2;
var
  i, j: Integer; // contador
begin
  for i := 0 to NumAlt - 1 do
  begin
    for j := 0 to NumAlt - 1 do
    begin
      if MatrizParaPar2[i, j] = 2 then
      begin
        TElasticEdge.Create2(SimpleGraph, Node[Node6[i]], Node[Node6[j]]);
      end; // do if
    end; // do for j
  end; // do for i
end;

procedure TfrmSimpleGraph.QuebraPalavras(Texto: String);
var
  Lista: TStringList;
  i: Integer;
begin
  with TStringList.Create do
  begin
    Delimiter := ' ';
    DelimitedText := Texto;
    SetLength(CountWords, 0);
    SetLength(CountWords, Count);
  end;
end;

function TfrmSimpleGraph.SplitString(CountWords: array of String; Texto: string)
  : Integer;
var
  delimeter: string;
  idx, i: Integer;
  current_position: Integer;
  current_string: string;
begin
  delimeter := ' ';
  idx := 0;
  current_string := Texto;
  while True do
  begin
    current_position := Pos(delimeter, current_string);
    if current_position = 0 then // last item
    begin
      CountWords[idx] := current_string;
      break;
    end;
    CountWords[idx] := Copy(current_string, 1, current_position - 1);
    current_string := Copy(current_string, current_position + 1, Length
        (current_string) - current_position);
    inc(idx);
  end;

  for i := 0 to Length(CountWords) - 1 do
    if Length(CountWords[i]) > 7 then
    begin
      Result := 1;
      exit;
    end
    else
      Result := 0;
end;

// do procedure

end.
