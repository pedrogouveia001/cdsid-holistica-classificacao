unit uPerfis;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, Series, Chart,
  TeeGDIPlus, IWCompEdit, IWTMSEdit, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWExtCtrls, TeEngine, Controls, ExtCtrls,
  TeeProcs, IWCompButton, IWTMSCtrls, IWCompListbox, Math, IWGrids, IWWebGrid,
  IWAdvWebGrid, IWCompLabel, IWCompMemo, jpeg, Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, IWHTMLControls,
  IWCompText, uIntercritério, Graphics, IWTMSPopup, Menus, IWHelpTip;

type
  TfrmPerfis = class(TIWAppForm)
    imgEscala: TIWImage;
    Chart1: TChart;
    Series3: THorizBarSeries;
    Series5: THorizBarSeries;
    Series6: THorizBarSeries;
    btnClear: TIWButton;
    grdSituacoes: TIWGrid;
    lstbxNomesCrit: TIWListbox;
    btnTrocarEscala: TIWButton;
    IWLabel1: TIWLabel;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWLabel4: TIWLabel;
    IWLabel5: TIWLabel;
    IWLabel6: TIWLabel;
    btnFinish: TIWButton;
    IWLabel8: TIWLabel;
    grdClasses: TIWGrid;
    IWLabel11: TIWLabel;
    IWLabel13: TIWLabel;
    IWLabel14: TIWLabel;
    IWLabel17: TIWLabel;
    IWLabel18: TIWLabel;
    IWLabel22: TIWLabel;
    grdCriterios: TIWGrid;
    IWText1: TIWText;
    IWLabel9: TIWLabel;
    IWText3: TIWText;
    IWText4: TIWText;
    rgnconfirmpchange: TIWRegion;
    IWLabel48: TIWLabel;
    btnchangep: TIWButton;
    btnkeepproofiles: TIWButton;
    IWText6: TIWText;
    IWImage4: TIWImage;
    lblperfisatuais: TIWLabel;
    lblwarningP: TIWLabel;
    rgnconfirmechange: TIWRegion;
    IWLabel10: TIWLabel;
    IWButton1: TIWButton;
    IWImage2: TIWImage;
    IWLabel19: TIWLabel;
    IWButton2: TIWButton;
    IWRgnReset: TIWRegion;
    btnResetNovoProblema: TIWButton;
    btnResetRecomcProblema: TIWButton;
    btnResetVoltar: TIWButton;
    btnlgout: TIWButton;
    IWLabel44: TIWLabel;
    imgLogoCDSID: TIWImage;
    IWLabel49: TIWLabel;
    IWRegion2: TIWRegion;
    btnredefinecat: TIWButton;
    IWRegion14: TIWRegion;
    IWImage32: TIWImage;
    IWLink7: TIWLink;
    IWLabel20: TIWLabel;
    IWImage27: TIWImage;
    IWImage31: TIWImage;
    pmnResetoption: TPopupMenu;
    Insertanewproblem1: TMenuItem;
    Restartthecurrentproblem1: TMenuItem;
    pmnHelp: TPopupMenu;
    About1: TMenuItem;
    UserGuide1: TMenuItem;
    English1: TMenuItem;
    Portuguese1: TMenuItem;
    TIWPopupMenuButton8: TTIWPopupMenuButton;
    btnmenu: TTIWPopupMenuButton;
    rgnAbout: TIWRegion;
    IWImage17: TIWImage;
    IWImage58: TIWImage;
    IWImage59: TIWImage;
    IWLink25: TIWLink;
    IWLabel116: TIWLabel;
    IWLabel128: TIWLabel;
    lnkcloseabout: TIWLink;
    IWRegion58: TIWRegion;
    IWRegion59: TIWRegion;
    IWText31: TIWText;
    lblNumCat: TIWLabel;
    rgnScales: TIWRegion;
    IWLabel27: TIWLabel;
    IWMemo3: TIWMemo;
    edtNumCat: TIWEdit;
    btnOKNumCat: TIWButton;
    rgnperfis: TIWRegion;
    btnselect: TIWButton;
    TIWHelpTip1: TTIWHelpTip;
    TIWHelpTip2: TTIWHelpTip;
    TIWHelpTip3: TTIWHelpTip;
    IWMemo2: TIWMemo;
    IWLabel26: TIWLabel;
    IWButton3: TIWButton;
    IWLink1: TIWLink;
    IWButton4: TIWButton;
    procedure btnClearClick(Sender: TObject);
    function avaliar_nadir(NumCri, dirprob: integer; nadir_razao: array of real)
      : real;
    procedure preenche_grid;
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnTrocarEscalaClick(Sender: TObject);
    function TrocaVP(num: real): string;
    function TrocaVP1(num: String): Double;
    procedure btnFinishClick(Sender: TObject);
    procedure preencher_grid_classes;
    procedure lnkScalesCloseClick(Sender: TObject);
    procedure lnkScalesClick(Sender: TObject);
    procedure btnOKNumCatClick(Sender: TObject);
    procedure btnchangepClick(Sender: TObject);
    procedure btnkeepproofilesClick(Sender: TObject);
    Procedure exibir_componentes;
    Procedure Ocultar_componentes;
    procedure IWButton13Click(Sender: TObject);
    procedure btnResetVoltarClick(Sender: TObject);
    procedure btnResetRecomcProblemaClick(Sender: TObject);
    procedure btnResetNovoProblemaClick(Sender: TObject);
    procedure btnlgoutClick(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure btnredefinecatClick(Sender: TObject);
    procedure lnkcloseaboutClick(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure Portuguese1Click(Sender: TObject);
    procedure btnselectClick(Sender: TObject);
    procedure IWLink1Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
  public
  end;

var
  frmPerfis: TfrmPerfis;

implementation

uses uAPI_SolveLP, UserSessionUnit, untIntro, lpsolve51, ServerController,
  uCode, untIntraCriterio, untPortfolioresults, untSortingResults,
  uPortfolioResults, uResultados;
{$R *.dfm}

procedure TfrmPerfis.About1Click(Sender: TObject);
begin
  rgnAbout.Show;
end;

function TfrmPerfis.avaliar_nadir(NumCri, dirprob: integer;
  nadir_razao: array of real): real;
/// função que calcula os valorea máximoe mínimo da NADIR
/// preenche os parâmetros e chama a função do LPSolve
var
  n, m, typeprob, i, j, k, MSSG: integer;
  FO, Op: array of string;
  s: array of integer;
  limit, ResultVector: array of real;
  Rmod: array of AnsiString;
  var_int, var_bin: Array of integer;
  Lp: THandle;
begin
  n := NumCri;
  m := n + 1;
  typeprob := 0;
  SetLength(FO, n);
  SetLength(Op, m);
  SetLength(limit, m);
  SetLength(Rmod, n + 1);
  SetLength(s, n);
  for i := 0 to n - 1 do
    FO[i] := TrocaVP(nadir_razao[i]);
  for i := 0 to n - 1 do
  begin
    Op[i] := '<=';
    limit[i] := 0;
  end;
  Op[i] := '=';
  limit[i] := 1;
  for i := 0 to n - 2 do
  begin
    for j := 0 to Length(s) - 1 do
      if i = j then
      begin
        s[j] := -1;
        s[j + 1] := 1;
      end
      else if s[j - 1] = -1 then
        s[j] := 1
      else
        s[j] := 0;
    Rmod[i] := Rmod[i] + IntToStr(s[0]);
    for j := 1 to Length(s) - 1 do
      Rmod[i] := Rmod[i] + ' ' + IntToStr(s[j]);
  end;

  for i := 1 to n - 1 do
    Rmod[n - 1] := Rmod[n - 1] + '0 ';
  Rmod[n - 1] := Rmod[n - 1] + '-1';

  for i := 1 to n - 1 do
    Rmod[n] := Rmod[n] + '1 ';
  Rmod[n] := Rmod[n] + '1';

  SetLength(ResultVector, n + 1);
  SolveLP(n, m, dirprob, typeprob, FO, Op, limit, var_int, var_bin, Rmod,
    ResultVector, Lp, MSSG);
  Result := RoundTo(ResultVector[0], -2);
end;

procedure TfrmPerfis.Ocultar_componentes;
begin
  { -- Oculta os componentes da elicitação de perfis logo após a definição do número
    de categorias -- }

  btnClear.Visible := false;
  IWLabel1.Visible := false;
  IWLabel2.Visible := false;
  imgEscala.Visible := false;
  IWLabel3.Visible := false;
  IWLabel4.Visible := false;
  IWLabel6.Visible := false;
  lstbxNomesCrit.Visible := false;
  btnFinish.Visible := false;
  grdSituacoes.Visible := false;
  IWLabel9.Visible := false;
  IWLabel13.Visible := false;
  IWLabel14.Visible := false;
  //lnkScales.Visible := false;
  btnTrocarEscala.Visible := false;
  IWText3.Visible := false;
  //IWLabel15.Visible := false;
  //IWLabel16.Visible := false;
  lblwarningP.Visible := false;
  grdClasses.Visible := false;
  IWLabel5.Visible := false;
  IWText1.Visible := false;
end;

procedure TfrmPerfis.Portuguese1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Guia rapido Fitradeoff web' + '.pdf', true);
end;

procedure TfrmPerfis.exibir_componentes;
begin
  { -- Exibe os componentes da elicitação de perfis logo após a definição do número
    de categorias -- }

  btnClear.Visible := true;
  IWLabel1.Visible := true;
  IWLabel2.Visible := true;
  imgEscala.Visible := true;
  IWLabel3.Visible := true;
  IWLabel4.Visible := true;
  IWLabel6.Visible := true;
  lstbxNomesCrit.Visible := true;
  btnFinish.Visible := true;
  grdSituacoes.Visible := true;
  IWLabel9.Visible := true;
  IWLabel13.Visible := true;
  IWLabel14.Visible := true;
  //lnkScales.Visible := true;

  btnTrocarEscala.Visible := true;
  IWLink1.Visible := true;
  TIWHelpTip2.Visible := true;
  TIWHelpTip3.Visible := true;
  IWText3.Visible := true;
  //IWLabel15.Visible := true;
  //IWLabel16.Visible := true;
  IWLabel11.Visible := true;
  lblwarningP.Visible := true;
  IWLabel5.Visible := false;
  IWText1.Visible := false;
  if btnTrocarEscala.Caption = 'Switch to interval scale' then
    IWLabel5.Visible := true;

  // ** Se algum perfil já tiver sido definido, então torna visível o grid das classes **//
end;



procedure TfrmPerfis.btnchangepClick(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).ClassRestart := false;
  SetLength(TIWUserSession(WebApplication.Data).perfis, 0);
  rgnconfirmpchange.Hide;
end;

procedure TfrmPerfis.btnClearClick(Sender: TObject);
var
i : integer;
begin
  Chart1.Series[2].Clear;
  // **Atualiza a imagem para não parecer que houve falha ao limpar os valores **//
  imgEscala.Picture.Bitmap.Assign
    (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgEscala.Width,
        imgEscala.Height)));
  IWText1.Visible := false;
  grdClasses.Visible := false;
  { btnSelect.Enabled := false; }
  btnFinish.Enabled := false;
  //btnOKNumCat.Enabled := true;
  //edtNumCat.Clear;
  for i := 0 to length(TIWUserSession(WebApplication.Data).auxiliar_vp) - 1 do begin
    TIWUserSession(WebApplication.Data).auxiliar_vp[i].Clear;
    //TIWUserSession(WebApplication.Data).auxiliar_perfil[i].Destroy;
    TIWUserSession(WebApplication.Data).auxiliar_vp[i].Enabled := True;
  end;
  //Ocultar_componentes;
  // ** O botão redefine começa desabilitado **//
  btnredefinecat.Enabled := false;
end;

procedure TfrmPerfis.btnFinishClick(Sender: TObject);
/// procedimento que salva os valores de perfil elicitados no
/// vetor "perfis" da UserSession
var
  i, c: integer;
  aux, min_nadir: real;
  nadir_razao: array of real;
begin // LEMBRAR DE SUBSTITUIR O CÓDIGO ORIGINAL
  if Chart1.Series[2].YValues.Count = 0 then
    WebApplication.ShowMessage('Please select a value.')
  else
  begin
    c := Chart1.Series[2].YValues.Count;
    /// numero de perfis selecionados
    with TIWUserSession(WebApplication.Data) do
    begin
      SetLength(nadir_razao, NumCrit);
      /// calculo das consequencias da nadir em escala de razao
      /// divisão pelo máximo
      for i := 0 to NumCrit - 1 do
        nadir_razao[i] := MinCons[i] / MaxCons[i];
      min_nadir := avaliar_nadir(NumCrit, 0, nadir_razao);
      SetLength(perfis, c);
      SetLength(perfis_inseridos, c);
      if btnTrocarEscala.Caption = 'Switch to ratio scale' then
      begin
        for i := 0 to Length(perfis) - 1 do
        begin
          perfis[i] := Chart1.Series[2].YValues.Items[i];
          perfis_inseridos[i] := Chart1.Series[2].YValues.Items[i];
        end;
        escala_AS := 0;
      end
      else
      /// se os perfis estiverem em escala de razao, são transformados para uma
      /// escala intervalar, cujo 0 equivale a min_nadir
      begin
        for i := 0 to Length(perfis) - 1 do
        begin
          perfis_inseridos[i] := Chart1.Series[2].YValues.Items[i];
          aux := (Chart1.Series[2].YValues.Items[i] - min_nadir) /
            (1 - min_nadir);
          perfis[i] := RoundTo(aux, -2);
        end;
        escala_AS := 1;
      end;
    end;
  end;
  /// //////////////////////////////////////////////////////////////
  TIWAppForm(WebApplication.ActiveForm).Release;
  // frmImpDados.Show;
  TIWUserSession(WebApplication.Data).stage := 4;
  Tfrmaintercriterio.Create(WebApplication).Show;
 //TfrmSortingResults.Create(WebApplication).Show;

  // Verificação para passar ou não direto para a unit de resultados (caso não seja necessário realizar a elicitção flexível)
  {if TIWUserSession(WebApplication.Data).Sol <> -5 then
  begin  }
    Tfrmaintercriterio.Create(WebApplication).BtnshowresultsClick(Self);
  //end;

end;

procedure TfrmPerfis.btnkeepproofilesClick(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).ClassRestart := false;
  with TIWUserSession(WebApplication.Data) do
  num_cat := Length(TIWUserSession(WebApplication.Data).perfis) + 1;
  TIWUserSession(WebApplication.Data).stage := 4;
  TfrmSortingResults.Create(WebApplication).Show;
  //Tfrmaintercriterio.Create(WebApplication).Show;
  Tfrmaintercriterio.Create(WebApplication).BtnshowresultsClick(Self);
end;

procedure TfrmPerfis.btnlgoutClick(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).AUXLOGOUT := -363636;
  TFrmEntrada.Create(WebApplication).Show;
  IWRgnReset.Visible := true;
end;

procedure TfrmPerfis.btnselectClick(Sender: TObject);
var
  i, j: integer;
  x: real;
begin
  for j := 0 to length(TIWUserSession(WebApplication.Data).auxiliar_vp)- 1 do begin
    if TIWUserSession(WebApplication.Data).auxiliar_vp[j].Text <> '' then begin

    if TIWUserSession(WebApplication.Data).auxiliar_vp[j].enabled = false then
    continue;

    Try
    x := StrToFloat(TIWUserSession(WebApplication.Data).auxiliar_vp[j].Text);
    x := StrToFloat(FormatFloat('0.00', x));

    except
    WebApplication.ShowMessage(TIWUserSession(WebApplication.Data).auxiliar_perfil[j].Caption + ' Please enter a valid real number.');
    exit;
    end;



    for i := 0 to Chart1.Series[2].YValues.Count - 1 do
      if Chart1.Series[2].YValues.Items[i] = x then
      begin
        continue;
      end;

    if (x <= 0) or (x >= 1) then
      WebApplication.ShowMessage(TIWUserSession(WebApplication.Data).auxiliar_perfil[j].Caption +' Select a value between 0 and 1.')
    else if x <= Chart1.Series[0].YValues.Items[0] then
      WebApplication.ShowMessage(
        TIWUserSession(WebApplication.Data).auxiliar_perfil[j].Caption + ' Select a higher value than NADIR(minimum).')
    else
    begin


      Chart1.Series[2].AddXY(1, x);
      Chart1.Series[2].YValues.Sort;
      preencher_grid_classes;
      imgEscala.Picture.Bitmap.Assign
        (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgEscala.Width,
            imgEscala.Height)));
      if Chart1.Series[2].YValues.Count = TIWUserSession(WebApplication.Data)
        .num_cat - 1 then
      begin
        btnFinish.Enabled := true;
        {btnselect.Enabled := False;}
        WebApplication.ShowMessage(
          'You have created all categories. Click "Finish" to proceed or "Clear" to redo the process.');
      end;
      TIWUserSession(WebApplication.Data).auxiliar_vp[j].Enabled := False;
      grdClasses.Visible := true;
      IWText1.Visible := true;
    end;
    end
  else
    WebApplication.ShowMessage(TIWUserSession(WebApplication.Data).auxiliar_perfil[j].Caption + ' Please enter a valid real number.');
  end;
end;

procedure TfrmPerfis.btnOKNumCatClick(Sender: TObject);
var
  num: integer;
  i: integer;
  min_nadir, max_nadir: real; // valores máximo e mínimo da NADIR
  nadir_razao: array of real; // consequências da nadir em escala de razao
  //auxiliar_perfil : array of Tiwlabel;
begin
  try
    num := StrToInt(edtNumCat.Text);
    if num <= 1 then
      WebApplication.ShowMessage(
        'The number of categories must be greater than one.')
    else
    begin
      TIWUserSession(WebApplication.Data).num_cat := num;
      btnClear.Enabled := true;
      btnOKNumCat.Enabled := false;
      btnselect.Enabled := True;
      // **Exibir os componentes usados na elicitação **//
      exibir_componentes;
      btnredefinecat.Enabled := true;
      lblNumCat.Caption := edtNumCat.Text;
      IWText4.Visible := True;
      lblNumcat.Visible := True;
      rgnperfis.Visible := true;
      btnselect.Visible := true;
      With TIWUserSession(WebApplication.Data) do begin
      setlength(auxiliar_perfil, num-1);
      setlength(auxiliar_vp, num-1);

        rgnperfis.Width := rgnperfis.Width + 50*(num-1);
        for i := 0 to num - 2 do begin
          auxiliar_perfil[i] := TiwLabel.Create(Self);
          auxiliar_perfil[i].Parent := rgnperfis;
          auxiliar_perfil[i].Top := 5;
          auxiliar_perfil[i].Name := ('lblP' + inttostr(i+1));
          auxiliar_perfil[i].Visible := True;
          auxiliar_perfil[i].Left := 15 + 60*i;
          auxiliar_perfil[i].Enabled := True;
          auxiliar_perfil[i].Caption := ('P' + inttostr(i+1) + ':');
          auxiliar_perfil[i].Font.FontName := 'Verdana';


          auxiliar_vp[i] := TiwEdit.Create(Self);
          auxiliar_vp[i].Parent := rgnperfis;
          auxiliar_vp[i].Top := 25;
          auxiliar_vp[i].Name := ('edtP' + inttostr(i+1));
          auxiliar_vp[i].Visible := True;
          auxiliar_vp[i].Left := 10 + 60*i;
          auxiliar_vp[i].Width := 30;
          auxiliar_vp[i].Enabled := True;
          auxiliar_vp[i].Text := ('');
          auxiliar_vp[i].Font.FontName := 'Verdana';
        end;
    end;
    end;
  except
    WebApplication.ShowMessage('Please enter a valid integer.')
  end;

end;

procedure TfrmPerfis.btnredefinecatClick(Sender: TObject);
var
i : integer;
begin

  edtNumCat.Enabled := true;
  btnOKNumCat.Enabled := true;
  btnFinish.Enabled := false;
  btnredefinecat.Enabled := false;
  btnselect.Enabled := True;
  btnselect.Visible := False;
  rgnperfis.Visible := false;
  IWLink1.Visible := false;
  TIWHelpTip3.Visible := false;
  TIWHelpTip2.Visible := false;

  for i := 0 to length(TIWUserSession(WebApplication.Data).auxiliar_vp) - 1 do begin
    TIWUserSession(WebApplication.Data).auxiliar_vp[i].Destroy;
    TIWUserSession(WebApplication.Data).auxiliar_perfil[i].Destroy;
  end;

  Chart1.Series[2].Clear;
  // **Atualiza a imagem para não parecer que houve falha ao limpar os valores **//
  imgEscala.Picture.Bitmap.Assign
    (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgEscala.Width,
        imgEscala.Height)));
  IWText1.Visible := false;
  grdClasses.Visible := false;
  { btnSelect.Enabled := false; }
  btnFinish.Enabled := false;
  btnOKNumCat.Enabled := true;
  edtNumCat.Clear;
  Ocultar_componentes;
  // ** O botão redefine começa desabilitado **//
  btnredefinecat.Enabled := false;
  //IWText4.Visible := False;
  lblNumCat.Visible := False;
end;

procedure TfrmPerfis.btnResetNovoProblemaClick(Sender: TObject);
begin
  /// preenchendo label da rgn Opçao input, que mostra qual modulo está rodando
  if TIWUserSession(WebApplication.Data).problematica = 2 then
    TFrmEntrada.Create(WebApplication).lblproblematic1.Caption := 'Portfolio';

  if TIWUserSession(WebApplication.Data).problematica = 0 then
    TFrmEntrada.Create(WebApplication).lblproblematic1.Caption := 'Choice';

  if TIWUserSession(WebApplication.Data).problematica = 1 then
    TFrmEntrada.Create(WebApplication).lblproblematic1.Caption := 'Ranking';

  if TIWUserSession(WebApplication.Data).problematica = 3 then
    TFrmEntrada.Create(WebApplication).lblproblematic1.Caption := 'Sorting';

  TIWUserSession(WebApplication.Data).auxparacasonsaieretone := -1002525;
  TIWUserSession(WebApplication.Data).VerificaUnit := -55;
  TFrmEntrada.Create(WebApplication).Show;
  IWRgnReset.Visible := false;
end;

procedure TfrmPerfis.btnResetRecomcProblemaClick(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).VerificaUnit := -50;
  TFrmEntrada.Create(WebApplication).Show;
  IWRgnReset.Visible := false;
end;

procedure TfrmPerfis.btnResetVoltarClick(Sender: TObject);
begin
  btnOKNumCat.Visible := true;
  edtNumCat.Visible := true;
  IWText4.Visible := true;
  IWLabel11.Visible := true;
  IWLabel8.Visible := true;
  // IWButton13.Visible := true;
  if not btnOKNumCat.Enabled then
    exibir_componentes;
  if TIWUserSession(WebApplication.Data).ClassRestart = true then
    rgnconfirmpchange.Show;
  btnredefinecat.Enabled := false;
  IWRgnReset.Visible := false;
end;



procedure TfrmPerfis.btnTrocarEscalaClick(Sender: TObject);
var
  i: integer;
  min_nadir, max_nadir: real; // valores máximo e mínimo da NADIR
  nadir_razao: array of real; // consequências da nadir em escala de razao
begin

  if rgnconfirmechange.Visible = false then
  begin
    rgnconfirmechange.Show;
    exit;
  end;
  if btnTrocarEscala.Caption = 'Switch to ratio scale' then
  begin
    with TIWUserSession(WebApplication.Data) do
    begin
      SetLength(nadir_razao, NumCrit);
      /// calculo das consequencias da nadir em escala de razao
      /// divisão pelo máximo
      for i := 0 to NumCrit - 1 do
        nadir_razao[i] := MinCons[i] / MaxCons[i];
      max_nadir := avaliar_nadir(NumCrit, 1, nadir_razao);
      min_nadir := avaliar_nadir(NumCrit, 0, nadir_razao);
      IWLabel5.Caption := 'Vmin = ' + FloatToStr(min_nadir);
      valor_nadir_minimo := min_nadir; // variavel global
    end;

    btnTrocarEscala.Caption := 'Switch to interval scale';
    Chart1.Title.Text.Text := 'Ratio scale';
    Chart1.Series[0].Clear;
    Chart1.Series[0].AddXY(1, min_nadir);
    Chart1.Series[0].Marks.Item[0].Text.Text := 'Min NADIR';
    Chart1.Series[0].AddXY(1, max_nadir);
    Chart1.Series[0].Marks.Item[1].Text.Text := 'Max NADIR';
    Chart1.Series[2].Clear;
    IWLabel1.Caption := 'Global value in a';
    IWLabel2.Caption := 'ratio scale';
    IWLabel4.Caption := 'Vmax = ' + FloatToStr(max_nadir);
  end
  else
  begin
    btnTrocarEscala.Caption := 'Switch to ratio scale';
    Chart1.Title.Text.Text := 'Interval scale';
    Chart1.Series[2].Clear;
    Chart1.Series[1].Marks.Item[1].Text.Text := 'Ideal';


    Chart1.Series[0].Clear;
    Chart1.Series[0].AddXY(1, 0);
    Chart1.Series[0].Marks.Item[0].Text.Text := 'NADIR';
    Chart1.Series[1].Marks.Item[1].Text.Text := 'Ideal';

    IWLabel1.Caption := 'Global value in an';
    IWLabel2.Caption := 'interval scale';
    IWLabel4.Caption := 'V = 0,00';
    IWLabel5.Visible := false;
  end;
  IWText1.Visible := false;
  grdClasses.Visible := false;
  grdClasses.Clear;
  btnFinish.Enabled := false;
  btnOKNumCat.Enabled := False;
  imgEscala.Picture.Bitmap.Assign
    (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgEscala.Width,
        imgEscala.Height)));

  for i := 0 to length(TIWUserSession(WebApplication.Data).auxiliar_vp) - 1 do begin
    TIWUserSession(WebApplication.Data).auxiliar_vp[i].Clear;
    TIWUserSession(WebApplication.Data).auxiliar_vp[i].Enabled := True;
  end;

end;



procedure TfrmPerfis.English1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\User guide FITradeoff web' + '.pdf', true);
end;

procedure TfrmPerfis.IWAppFormCreate(Sender: TObject);
var
  i: integer;
begin
  preenche_grid;
  Chart1.Series[0].Marks.Item[0].Text.Text := 'NADIR';
  Chart1.Series[1].Marks.Item[1].Text.Text := 'Ideal';

  imgEscala.Picture.Bitmap.Assign
    (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgEscala.Width,
        imgEscala.Height)));
  rgnconfirmechange.left := 386;
  rgnconfirmpchange.Top := 285;
  with TIWUserSession(WebApplication.Data) do
  begin
    if Length(perfis) > 0 then
    begin
      rgnconfirmpchange.Show;
      /// / Ajuda a indicar que o problema foi reiniciado para o controle da
      /// / região que pergunta se o DM quer realmente reelicitar os perfis /////
      TIWUserSession(WebApplication.Data).ClassRestart := true;
      rgnconfirmpchange.left := 386;
      rgnconfirmpchange.Top := 292;
      lblperfisatuais.Caption := 'Profiles values:';
      for i := 0 to Length(perfis_inseridos) - 1 do
        lblperfisatuais.Caption := lblperfisatuais.Caption + FloatToStr
          (perfis_inseridos[i]) + '; ';
    end;
  end;
end;

procedure TfrmPerfis.IWButton13Click(Sender: TObject);
begin
  Ocultar_componentes;
  btnredefinecat.Visible := false;
  btnOKNumCat.Visible := false;
  edtNumCat.Visible := false;
  IWText4.Visible := false;
  IWLabel11.Visible := false;
  IWLabel8.Visible := false;
  IWRgnReset.left := 454;
  IWRgnReset.Top := 154;
  // **Região de confirmação da mudança dos perfis**//
  rgnconfirmpchange.Visible := false;
  // **Regiões de explicação **/////////
  rgnScales.Visible := false;
  /// ////////////////////////////////
  IWRgnReset.Visible := true;
end;

procedure TfrmPerfis.IWButton1Click(Sender: TObject);
begin
  btnTrocarEscalaClick(Self);
  rgnconfirmechange.Hide;
  //Ocultar_componentes;
  //edtNumCat.Clear;
  //btnOKNumCat.Enabled := true;
  // ** O botão redefine começa desabilitado **//
  //btnredefinecat.Enabled := false;
end;

procedure TfrmPerfis.IWButton2Click(Sender: TObject);
begin
  rgnconfirmechange.Hide;
end;

procedure TfrmPerfis.IWButton3Click(Sender: TObject);
begin
rgnScales.Visible := false;
end;

procedure TfrmPerfis.IWButton4Click(Sender: TObject);
begin
WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
  WebApplication.Terminate();
end;

procedure TfrmPerfis.IWLink1Click(Sender: TObject);
begin
rgnScales.Visible := true;
end;

procedure TfrmPerfis.lnkcloseaboutClick(Sender: TObject);
begin
  rgnAbout.Hide;
end;

procedure TfrmPerfis.lnkScalesClick(Sender: TObject);
begin
  rgnScales.Visible := true;
end;

procedure TfrmPerfis.lnkScalesCloseClick(Sender: TObject);
begin
  rgnScales.Visible := false;
end;

procedure TfrmPerfis.preencher_grid_classes;
var
  i, num_perfis: integer;
begin
  IWText1.Visible := true;
  grdClasses.Visible := true;
  num_perfis := Chart1.Series[2].YValues.Count;
  grdClasses.Clear;
  grdClasses.ColumnCount := 3;
  grdClasses.RowCount := 1;
  grdClasses.Cell[0, 0].Text := 'Class';
  grdClasses.Cell[0, 0].Font.Style := [fsbold];
  grdClasses.Cell[0, 1].Text := 'Lower limit';
  grdClasses.Cell[0, 1].Font.Style := [fsbold];
  grdClasses.Cell[0, 2].Text := 'Upper limit';
  grdClasses.Cell[0, 2].Font.Style := [fsbold];
  grdClasses.RowCount := grdClasses.RowCount + 1;
  grdClasses.Cell[1, 0].Text := 'Cat. 1';
  if btnTrocarEscala.Caption = 'Switch to ratio scale' then
    grdClasses.Cell[1, 1].Text := '0.00'
  else
    grdClasses.Cell[1, 1].Text := FloatToStr
      (TIWUserSession(WebApplication.Data).valor_nadir_minimo);
  grdClasses.Cell[1, 2].Text := FloatToStr(Chart1.Series[2].YValues.Items[0]);
  if num_perfis <> 1 then
    for i := 0 to num_perfis - 2 do
    begin
      grdClasses.RowCount := grdClasses.RowCount + 1;
      grdClasses.Cell[i + 2, 0].Text := 'Cat. ' + IntToStr(i + 2);
      grdClasses.Cell[i + 2, 1].Text := FloatToStr
        (Chart1.Series[2].YValues.Items[i]);
      grdClasses.Cell[i + 2, 2].Text := FloatToStr
        (Chart1.Series[2].YValues.Items[i + 1]);
    end
    else
      i := 0;

  grdClasses.RowCount := grdClasses.RowCount + 1;
  grdClasses.Cell[i + 2, 0].Text := 'Cat. ' + IntToStr(i + 2);
  grdClasses.Cell[i + 2, 1].Text := FloatToStr
    (Chart1.Series[2].YValues.Items[i]);
  grdClasses.Cell[i + 2, 2].Text := '1.00';
end;

procedure TfrmPerfis.preenche_grid;
var
  i, j: integer;
begin
  /// preenchendo o grid que mostra a alternativa ideal e a NADIR
  /// a alternativa ideal possui as melhores consequências do problema
  /// a NADIR possui as piores consequências do problema
  grdSituacoes.Cell[1, 0].Text := 'Ideal';
  grdSituacoes.Cell[2, 0].Text := 'NADIR';
  with TIWUserSession(WebApplication.Data) do
  begin
    grdSituacoes.ColumnCount := NumCrit + 1;
    for i := 1 to NumCrit do
    begin
      grdSituacoes.Cell[0, i].Text := 'C' + IntToStr(i);
      grdSituacoes.Cell[0, i].Font.Style := [fsbold];
      if typeofcrit[i - 1] mod 2 <> 0 then
      begin
        grdSituacoes.Cell[1, i].Text := FloatToStr
          (TIWUserSession(WebApplication.Data).MaxCons[i - 1]);
        grdSituacoes.Cell[2, i].Text := FloatToStr
          (TIWUserSession(WebApplication.Data).MinCons[i - 1]);
      end
      else
      begin
        grdSituacoes.Cell[1, i].Text := FloatToStr(MinCons[i - 1]);
        grdSituacoes.Cell[2, i].Text := FloatToStr(MaxCons[i - 1]);
      end;
    end;
    for i := 0 to NumCrit - 1 do
    begin
      if i mod 2 = 0 then
      begin
        grdCriterios.RowCount := grdCriterios.RowCount + 1;
        grdCriterios.Cell[grdCriterios.RowCount - 1, 0].Text := 'C' + IntToStr
          (i + 1);
        grdCriterios.Cell[grdCriterios.RowCount - 1, 1].Text := NomeCrit[i];
      end
      else
      begin
        grdCriterios.Cell[grdCriterios.RowCount - 1, 2].Text := 'C' + IntToStr
          (i + 1);
        grdCriterios.Cell[grdCriterios.RowCount - 1, 3].Text := NomeCrit[i];
      end;
    end;
    for i := 0 to NumCrit - 1 do
      lstbxNomesCrit.Items.Add('C' + IntToStr(i + 1) + ' - ' + NomeCrit[i]);
  end;
  // lstbxNomesCrit.ItemIndex := 0;
end;

Function TfrmPerfis.TrocaVP1(num: String): Double;
var
  s: string;
  i: integer;
begin
  s := num;
  for i := 1 to Length(s) - 1 do
    if s[i] = ',' then
      s[i] := '.';

  Result := StrToFloat(s);
end;

function TfrmPerfis.TrocaVP(num: real): string;
var
  aux: string;
begin
  aux := FloatToStr(num);
  aux[2] := '.';
  Result := aux;
end;

{
  initialization
  TfrmPerfis.SetAsMainForm; }

end.
