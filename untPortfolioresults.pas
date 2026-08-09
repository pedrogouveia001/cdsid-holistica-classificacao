unit untPortfolioresults;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  Controls, Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, TeeGDIPlus, IWCompButton, TeEngine, ExtCtrls,
  TeeProcs, Chart, IWExtCtrls, IWWebGrid, IWAdvWebGrid, BubbleCh, TeePolar,
  IWCompListbox, IWCompRadioButton, IWTMSCheckList, series, IWGrids, TeeLisB,
  TeeSeriesTextEd, Buttons, Math, pngimage, CheckLst,
  ShellApi, TeeLegendScrollBar, Spin, ToolWin, StdActns, ActnList, ImgList,
  TeeURL, TeeXML, AppEvnts, IWCompDynamicChart, IWVCLComponent, TeeProCo,
  Windows, Messages, Variants, Graphics, Dialogs, ComCtrls, Menus, StdCtrls,
  jpeg, ComObj, Grids, IWCompText, IWHTMLControls, ErrorBar,
  IWAdvWebGridExcel, SimpleGraph, IWProgressIndicator, IWDBGrids,
  IWCompProgressBar, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWColorComboBox, IWTMSImgCtrls, IWTMSCtrls,
  IWCompTabControl, IWHelpTip, IWTMSPopup, IWTMSMenus;

type
  Tfrmportfolioresults = class(TIWAppForm)
    IWRgnresultadografico: TIWRegion;
    IWButton1: TIWButton;
    IWButton2: TIWButton;
    imgegraph: TIWImage;
    btnsi2: TIWButton;
    imgweightslim: TIWImage;
    IWLabel65: TIWLabel;
    IWImage9: TIWImage;
    IWLabel71: TIWLabel;
    IWLink5: TIWLink;
    IWLabel1: TIWLabel;
    IWImage36: TIWImage;
    IWImage30: TIWImage;
    IWImage53: TIWImage;
    IWRegion9: TIWRegion;
    IWLabel2: TIWLabel;
    IWLabel3: TIWLabel;
    IWText1: TIWText;
    IWText2: TIWText;
    IWLabel40: TIWLabel;
    IWRegion10: TIWRegion;
    lstbxcritg: TIWListbox;
    IWLabel42: TIWLabel;
    chrtpesoslim: TChart;
    LineSeries2: TLineSeries;
    LineSeries3: TLineSeries;
    crtEhraph: TChart;
    Series3: TPointSeries;
    IWRegion37: TIWRegion;
    rgnResultsCB: TIWRegion;
    IWLink12: TIWLink;
    IWLabel4: TIWLabel;
    lblnumericresults: TIWLabel;
    btngraphCB: TIWButton;
    btnexportresCB: TIWButton;
    btnhasseDCB: TIWButton;
    grdExportCB: TTIWAdvWebGrid;
    btnsummaryCB: TIWButton;
    grdExportSum: TTIWAdvWebGrid;
    IWImage27: TIWImage;
    IWImage31: TIWImage;
    IWImage32: TIWImage;
    IWLink7: TIWLink;
    IWLabel16: TIWLabel;
    TIWPopupMenuButton3: TTIWPopupMenuButton;
    TIWPopupMenuButton4: TTIWPopupMenuButton;
    IWLabel21: TIWLabel;
    TIWPopupMenuLabel2: TTIWPopupMenuLabel;
    lnkFinalizeP: TIWLink;
    LnkhasseDCB: TIWLink;
    IWRegion14: TIWRegion;
    rgnDecompP: TIWRegion;
    IWLabel35: TIWLabel;
    IWImage42: TIWImage;
    btnbackelicCB: TIWButton;
    rgnconfirmCB1: TIWRegion;
    IWLabel36: TIWLabel;
    IWImage44: TIWImage;
    rgnconfirmCB2: TIWRegion;
    TxtconfirmCB: TIWText;
    btnokCB: TIWButton;
    rgnconfirmCB3: TIWRegion;
    IWLabel37: TIWLabel;
    IWImage26: TIWImage;
    IWRegion27: TIWRegion;
    IWText5: TIWText;
    IWButton6: TIWButton;
    btnnaofinalizarP: TIWButton;
    pmnResetoption: TPopupMenu;
    Insertanewproblem1: TMenuItem;
    Restartthecurrentproblem1: TMenuItem;
    pmnHelp: TPopupMenu;
    About1: TMenuItem;
    UserGuide1: TMenuItem;
    English1: TMenuItem;
    Portuguese1: TMenuItem;
    AnalystLogin1: TMenuItem;
    AnalystLogout1: TMenuItem;
    pMnExprtingP: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
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
    iwrgnHasseDiagram: TIWRegion;
    btnLegendDH: TIWButton;
    iwbtnSaveImageDH: TIWButton;
    iwbtnCloseDH: TIWButton;
    IWLabel39: TIWLabel;
    TIWFadeImage1: TTIWFadeImage;
    iwbtnRefreshDH: TIWButton;
    IWImage25: TIWImage;
    IWLabel76: TIWLabel;
    IWLabel90: TIWLabel;
    IWImage39: TIWImage;
    IWLink1: TIWLink;
    IWRegion33: TIWRegion;
    iwrgnLegendDH: TIWRegion;
    iwImgLegendDh: TIWImage;
    btnlegenddhclose: TIWButton;
    IWLabel89: TIWLabel;
    IWImgcabedh: TIWImage;
    tmrhasse: TIWTimer;
    TIWAdvWebGridExcelIO3: TTIWAdvWebGridExcelIO;
    TIWAdvWebGridExcelIO4: TTIWAdvWebGridExcelIO;
    IWRgnAS: TIWRegion;
    IWLabel86: TIWLabel;
    IWLabel73: TIWLabel;
    IWLabel99: TIWLabel;
    IWLink19: TIWLink;
    IWImage50: TIWImage;
    IWImage55: TIWImage;
    IWImage22: TIWImage;
    IWRegion4: TIWRegion;
    txtsesanw: TIWText;
    IWRegion47: TIWRegion;
    rgnsav: TIWRegion;
    btninstruc: TIWButton;
    btncrisel: TIWButton;
    IWLabel25: TIWLabel;
    IWButton17: TIWButton;
    btnstartAS: TIWButton;
    IWBtnvarycrit: TIWButton;
    IWLabel79: TIWLabel;
    IWImage20: TIWImage;
    IWLink21: TIWLink;
    IWImage10: TIWImage;
    IWImage54: TIWImage;
    rgncrisel: TIWRegion;
    grdcrisel: TIWGrid;
    IWLabel70: TIWLabel;
    rgninstructions: TIWRegion;
    IWLabel26: TIWLabel;
    IWText7: TIWText;
    IWText16: TIWText;
    IWText8: TIWText;
    IWRegion3: TIWRegion;
    tbctrlAS: TIWTabControl;
    TbCtrlP1: TIWTabPage;
    edtpercentprofilesvar: TIWEdit;
    IWLabel92: TIWLabel;
    IWLabel91: TIWLabel;
    IWButton14: TIWButton;
    TbCtrlP0: TIWTabPage;
    IWLabel27: TIWLabel;
    cmbbxAS: TIWComboBox;
    IWLblallcrit: TIWLabel;
    btnasp: TIWButton;
    btnASwv: TIWButton;
    btnasok: TIWButton;
    rgnACSSA: TIWRegion;
    IWImage13: TIWImage;
    IWText3: TIWText;
    rgnasper: TIWRegion;
    IWLabel30: TIWLabel;
    edtpmax: TIWEdit;
    edtpmin: TIWEdit;
    IWLabel31: TIWLabel;
    IWLabel32: TIWLabel;
    IWLabel33: TIWLabel;
    IWLabel34: TIWLabel;
    btnsaveAS: TIWButton;
    IWButton3: TIWButton;
    IWRegion46: TIWRegion;
    IWTabControl1: TIWTabControl;
    IWTabControl1Page0: TIWTabPage;
    IWTabControl1Page1: TIWTabPage;
    rgnGridCB: TIWRegion;
    grdresultadosCB: TIWGrid;
    rgngridcb2: TIWRegion;
    grdrecomendacaoCB: TIWGrid;
    IWRegion1: TIWRegion;
    IWTabControl1Page2: TIWTabPage;
    TIWFadeImage2: TTIWFadeImage;
    IWLabel5: TIWLabel;
    iwbtnSaveImageDH2: TIWButton;
    iwbtnCloseDH2: TIWButton;
    btnLegendDH2: TIWButton;
    iwbtnRefreshDH2: TIWButton;
    lbgrankingPCB: TIWLabel;
    lblrecPCB: TIWLabel;
    TIWHelpTip1: TTIWHelpTip;
    lblhassemessage: TIWLabel;
    IWButton4: TIWButton;
    Fullreport1: TMenuItem;
    grdranking: TTIWAdvWebGrid;
    grdintracriterio: TTIWAdvWebGrid;
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure Portuguese1Click(Sender: TObject);
    procedure Insertanewproblem1Click(Sender: TObject);
    procedure Restartthecurrentproblem1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure RgnfinaltabelaPortfolioCB;
    procedure rgnResultsCBCreate(Sender: TObject);
    procedure btnnaofinalizarPClick(Sender: TObject);
    procedure IWButton6Click(Sender: TObject);
    procedure btnokCBClick(Sender: TObject);
    procedure LnkhasseDCBClick(Sender: TObject);
    procedure iwbtnRefreshDHClick(Sender: TObject);
    procedure btnLegendDHClick(Sender: TObject);
    procedure iwbtnSaveImageDHClick(Sender: TObject);
    procedure iwbtnCloseDHClick(Sender: TObject);
    procedure tmrhasseTimer(Sender: TObject);
    procedure lnkFinalizePClick(Sender: TObject);
    procedure IWLink12Click(Sender: TObject);
    Function TrocaVP(Num: Double): String;
    function Rounding(Value: Double): String;
    procedure calmaxminweights;
    procedure SalvarresultBD;
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure Alinhamento;
    procedure btnbackelicCBClick(Sender: TObject);
    procedure iwbtnSaveImageDH2Click(Sender: TObject);
    procedure iwbtnRefreshDH2Click(Sender: TObject);
    procedure btnLegendDH2Click(Sender: TObject);
    procedure iwbtnCloseDH2Click(Sender: TObject);
    procedure btnlegenddhcloseClick(Sender: TObject);
    procedure IWTabControl1Create(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
    procedure Fullreport1Click(Sender: TObject);

  public
  end;

implementation

uses UserSessionUnit, ServerController, lpsolve51, uAPI_SolveLP, uCode,
  uIntercritério, untIntro, untIntraCriterio, untSortingResults, uPerfis,
  uPortfolioResults, uResultados;
{$R *.dfm}

Function Tfrmportfolioresults.TrocaVP(Num: Double): String;
var
  S: string;
  i: integer;
begin
  S := FloatToStr(Num);
  for i := 1 to length(S) - 1 do
    if S[i] = ',' then
      S[i] := '.';

  Result := S;
end;

/// FUNÇÃO REPONSAVEL POR REALIZAR O ARREDONDAMENTO DAS CONSEQUÊNCIAS 7
/// MOSTRADAS AO USUÁRIO - Yara
function Tfrmportfolioresults.Rounding(Value: Double): String;
var
  RangeDif, resultado: Double;
  Digitos, ValueTrunc, i, DecimalPos: Integer;
  Valuestr, DecimalPart, IntPart, Suffix, temp: String;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
  i := StrDInd;
  if (Typeofcrit[i] = 0) or (Typeofcrit[i] = 4) or (Typeofcrit[i] = 1) or (Typeofcrit[i] = 5) then
  begin
  // Calcular a diferença do range (para exemplo, definir RangeDif)
    RangeDif := (Max[i] - Min[i]);


   // Obter a parte inteira do valor
  ValueTrunc := Trunc(Value);
  ValueStr := Inttostr(ValueTrunc); //Conta a quantidade de digitos

  // Aplicar regras de arredondamento com base no número de dígitos
  case Length(ValueStr) of
    1:
    begin
    Temp := FormatFloat('0.00', Value);
    Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
    end;

    2:
     if RangeDif > 10 then
     Result := FormatFloat('00', Value)

     else
     begin
     Temp := FormatFloat('0.00', Value);
     Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
     end;

    3:
     if RangeDif > 10 then
     Result := FormatFloat('000', Value)

     else
     begin
     Temp := FormatFloat('0.00', Value);
     Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
     end;

    4:
     if RangeDif < 10 then
     begin
     Temp := FormatFloat('###,##0.00', Value); // Notação: 0.000,00
     // Troca a vírgula pelo ponto e o ponto pela vírgula
     Result := StringReplace(Temp, ',', 'TEMP_VIRGULA', [rfReplaceAll]);
     Result := StringReplace(Result, '.', ',', [rfReplaceAll]);
     Result := StringReplace(Result, 'TEMP_VIRGULA', '.', [rfReplaceAll]);
     end

     else if (RangeDif < 1000) and (RangeDif >= 10) then
     begin
     Temp := FormatFloat('0,000', Value); // Notação: 0.000
     Result := StringReplace(Temp, ',', '.', [rfReplaceAll]);
     end

     else
     begin
     Temp := FormatFloat('0.0', Value / 1000) + 'K'; // Notação: 0.00 K
     Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
     end;

    5:
      if RangeDif < 10 then
      begin
        Temp := FormatFloat('00,000.00', Value); // Notação: 00.000,00
        // Troca a vírgula pelo ponto e o ponto pela vírgula
        Result := StringReplace(Temp, ',', 'TEMP_VIRGULA', [rfReplaceAll]);
        Result := StringReplace(Result, '.', ',', [rfReplaceAll]);
        Result := StringReplace(Result, 'TEMP_VIRGULA', '.', [rfReplaceAll]);
      end
      else if (RangeDif < 1000) and (RangeDif >= 10) then
      begin
        Temp := FormatFloat('00,000', Value); // Notação: 00.000
        Result := StringReplace(Temp, ',', '.', [rfReplaceAll]);
      end
      else
      begin
        Temp := FormatFloat('00.0', Value / 1000) + 'K'; // Notação: 00.0 K
        Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
      end;

    6:
      if RangeDif < 10 then
      begin
        Temp := FormatFloat('000,000.00', Value); // Notação: 000.000,00
        // Troca a vírgula pelo ponto e o ponto pela vírgula
        Result := StringReplace(Temp, ',', 'TEMP_VIRGULA', [rfReplaceAll]);
        Result := StringReplace(Result, '.', ',', [rfReplaceAll]);
        Result := StringReplace(Result, 'TEMP_VIRGULA', '.', [rfReplaceAll]);
      end
      else if (RangeDif < 1000) and (RangeDif >= 10) then
      begin
        Temp := FormatFloat('000,000', Value); // Notação: 000.000
        Result := StringReplace(Temp, ',', '.', [rfReplaceAll]);
      end
      else if (RangeDif < 10000) and (RangeDif >= 1000) then
      begin
        Temp := FormatFloat('000.0', Value / 1000) + 'K'; // Notação: 000.0 K
        Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
      end
      else
        Result := FormatFloat('000', Value / 1000) + 'K'; // Notação: 000 K

    7:
      if RangeDif < 10 then
      begin
        Temp := FormatFloat('0,000,000.00', RoundTo(Value, -3)); // Notação: 0.000.000,00
        // Troca a vírgula pelo ponto e o ponto pela vírgula
        Result := StringReplace(Temp, ',', 'TEMP_VIRGULA', [rfReplaceAll]);
        Result := StringReplace(Result, '.', ',', [rfReplaceAll]);
        Result := StringReplace(Result, 'TEMP_VIRGULA', '.', [rfReplaceAll]);
      end
      else if (RangeDif < 10000) and (RangeDif >= 10) then
      begin
        Temp := FormatFloat('#,###,###', Value); // Notação: 0.000.000
        Result := StringReplace(Temp, ',', '.', [rfReplaceAll]);
      end
      else if (RangeDif < 100000) and (RangeDif >= 10000) then
      begin
        Result := FormatFloat('##,###', RoundTo(Value/ 1e3, -3)) + 'M'; // Notação: 0.000 M
      end
      else
      begin
        Temp := FormatFloat('0.00', RoundTo(Value / 1e6, -3)) + 'M'; // Notação: 0.00 M
        Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
      end;

    8:
      if RangeDif < 10 then
      begin
        Temp := FormatFloat('00,000,000.00', RoundTo(Value, -3)); // Notação: 00.000.000,00
        // Troca a vírgula pelo ponto e o ponto pela vírgula
        Result := StringReplace(Temp, ',', 'TEMP_VIRGULA', [rfReplaceAll]);
        Result := StringReplace(Result, '.', ',', [rfReplaceAll]);
        Result := StringReplace(Result, 'TEMP_VIRGULA', '.', [rfReplaceAll]);
      end
      else if (RangeDif < 10000) and (RangeDif >= 10) then
      begin
        Temp := FormatFloat('##,###,###', Value); // Notação: 00.000.000
        Result := StringReplace(Temp, ',', '.', [rfReplaceAll]);
      end
      else if (RangeDif < 100000) and (RangeDif >= 10000) then
        Result := FormatFloat('###,###', RoundTo(Value/ 1e3, -3)) + 'M' // Notação: 00.000 M
      else if (RangeDif < 1000000) and (RangeDif >= 100000) then
      begin
        Temp := FormatFloat('00.00', RoundTo(Value / 1e6, -3)) + 'M'; // Notação: 00.00 M
        Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
      end
      else
      begin
        Temp := FormatFloat('00.0', RoundTo(Value / 1e6, -3)) + 'M'; // Notação: 00.0 M
        Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
      end;

    9:
      if RangeDif < 10 then
      begin
        Temp := FormatFloat('000,000,000.00', RoundTo(Value, -3)); // Notação: 0.000.000,00
        // Troca a vírgula pelo ponto e o ponto pela vírgula
        Result := StringReplace(Temp, ',', 'TEMP_VIRGULA', [rfReplaceAll]);
        Result := StringReplace(Result, '.', ',', [rfReplaceAll]);
        Result := StringReplace(Result, 'TEMP_VIRGULA', '.', [rfReplaceAll]);
      end
      else if (RangeDif < 10000) and (RangeDif >= 10) then
      begin
        Temp := FormatFloat('###,###,###', Value); // Notação: 0.000.000
        Result := StringReplace(Temp, ',', '.', [rfReplaceAll]);
      end
      else if (RangeDif < 100000) and (RangeDif >= 10000) then
        Result := FormatFloat('####,###', RoundTo(Value/ 1e3, -3)) + 'M' // Notação: 0.000 M
      else if (RangeDif < 1000000) and (RangeDif >= 100000) then
      begin
        Temp := FormatFloat('000.00', RoundTo(Value / 1e6, -3)) + 'M'; // Notação: 0.00 M
        Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
      end
      else if (RangeDif < 10000000) and (RangeDif >= 1000000) then
      begin
        Temp := FormatFloat('000.0', RoundTo(Value / 1e6, -3)) + 'M'; // Notação: 0.00 M
        Result := StringReplace(Temp, '.', ',', [rfReplaceAll]);
      end
      else
        Result := FormatFloat('000', RoundTo(Value / 1e6, -3)) + 'M'; // Notação: 0.00 M

      else
      Result := IntToStr(Trunc(Value)); // Se não atender a nenhum caso descrito anteriormente, deixa o valor sem alteração


end;
// Verificação se todos os números após o ponto são zeros
  DecimalPos := Pos(',', Result); // Encontra a posição do ponto decimal

  if DecimalPos > 0 then
  begin
    IntPart := Copy(Result, 1, DecimalPos - 1); // Parte inteira do número
    DecimalPart := Copy(Result, DecimalPos + 1, Length(Result)); // Parte decimal do número

    // Verifica se o último caractere é 'K' ou 'M' e os remove temporariamente
    Suffix := ''; // Inicializando o sufixo
    if (Copy(Result, Length(Result), 1) = 'K') or (Copy(Result, Length(Result), 1) = 'M') then
    begin
      Suffix := Copy(Result, Length(Result), 1);  // Guarda o sufixo 'K' ou 'M'
      DecimalPart := Copy(DecimalPart, 1, Length(DecimalPart) - 1);  // Remove 'K' ou 'M' da parte decimal
    end;

    // Verifica se a parte decimal contém apenas zeros
    if StrToIntDef(DecimalPart, -1) = 0 then
      Result := IntPart + Suffix; // Remove a parte decimal, mantendo 'M' ou 'K'
  end;
end;

if (Typeofcrit[i] = 2) or (Typeofcrit[i] = 3) then
Result := FormatFloat('0', value); // Retorno padrão para casos não especificados para critérios discretos
end;
end;


procedure Tfrmportfolioresults.Alinhamento;
begin
  IWRgnresultadografico.Align := Talign(5);
  rgnResultsCB.Align := Talign(5);
  rgnsav.Left := 337;
  rgnsav.Top := 5;
  IWRgnAS.Left := 5;
  IWRgnAS.Top := 5;
  iwrgnHasseDiagram.Top := 5;
  iwrgnHasseDiagram.Left := 5;
  iwrgnLegendDH.Top := 10;
  iwrgnLegendDH.Left := 10;
  // rgnResultsCB.Align := Talign(5);
  { IWRegion9.Top := 406;
    IWRegion9.Left := 424; }
  rgnAbout.Left := 250;
  rgnAbout.Top := 180;
end;

procedure Tfrmportfolioresults.RgnfinaltabelaPortfolioCB;
// procedimento do resultado para portdolio
var
  rect: TRect;
  DataCol: integer;
  Column: TColumnItem;
  State: TGridDrawState;

  i, j, K, P: integer;
  str: string;
  Stop: Boolean;
  Custo, CustoA: Double; // auxiliar para preencher informações nas colunas de custo unit e custo acumulado
begin
  with TIWUserSession(WebApplication.Data) do
  begin

    if (Sol = -2) OR (Sol = -1) OR (Sol = 0) OR (Sol = 1) OR (Sol = 2) OR
      (Sol = 10) OR (Sol = 3) OR (Sol = 11) then
    begin
      rgnconfirmCB1.Visible := true;
      rgnconfirmCB2.Visible := true;

      case Sol of
        - 2:
          TxtconfirmCB.Caption := 'A partial pre-order has been found';
        -1:
          TxtconfirmCB.Caption := 'A partial order has been found.';
        0:
          TxtconfirmCB.Caption := 'A Solution has been found.';
        1:
          TxtconfirmCB.Caption :=
            'According to the equivalent distance, a solution with ' + IntToStr
            (NDA) + ' alternatives has been found.';
        // according com o que
        2:
          TxtconfirmCB.Caption := 'A complete pre-order has been found.';
        3:
          TxtconfirmCB.Caption := 'A complete order has been found.';

        10:
          TxtconfirmCB.Caption :=
            'There are no comparisons to be made in the elicitation by decomposition anymore. These are the current results.';
        11:
          TxtconfirmCB.Caption := 'These are the partial results';
      end;
    end;

    if Sol <> -5 then
    begin
      rgnDecompP.Visible := false;
      lnkFinalizeP.Visible := false;
      LnkhasseDCB.Left := 811;
      IWLink12.Left := 261;
    end;

    grdresultadosCB.ColumnCount := 4;
    grdresultadosCB.RowCount := Rlevels + 1;
    grdresultadosCB.Cell[0, 0].Text := 'Ranking';
    grdresultadosCB.Cell[0, 0].Font.Style := [fsbold];
    grdresultadosCB.Cell[0, 1].Text := 'Projects';
    grdresultadosCB.Cell[0, 1].Font.Style := [fsbold];
    grdresultadosCB.Cell[0, 2].Text := 'Cost';
    grdresultadosCB.Cell[0, 2].Font.Style := [fsbold];
    grdresultadosCB.Cell[0, 3].Text := 'Cumulative Cost';
    grdresultadosCB.Cell[0, 3].Font.Style := [fsbold];

    // ConstruirMatrizCusto;
    // ** Obtendo o custo por nível e o custo acumulado **//
    CustoA := 0;
    for i := 0 to Rlevels - 1 do
    begin
      Custo := 0;
      for j := 1 to length(TIWUserSession(WebApplication.Data).Matrizgrupo[i]) - 1 do
        Custo := Custo + TIWUserSession(WebApplication.Data)
          .Cost[Matrizgrupo[i, j]];
      CustoA := CustoA + Custo;
      grdresultadosCB.Cell[i + 1, 2].Text := '$' + FormatFloat
        ('#,##0.00', Custo);
      grdresultadosCB.Cell[i + 1, 3].Text := '$' + FormatFloat
        ('#,##0.00', CustoA);
    end;

    /// /////////////// **Criando a recomendação **////////////////////////////////
    Stop := false;
    CustoA := 0;
    P := 0;
    str := '[';
    for i := 0 to Rlevels - 1 do
    begin
      for j := 1 to length(TIWUserSession(WebApplication.Data).Matrizgrupo[i])
        - 1 do
      begin
        CustoA := CustoA + Cost[Matrizgrupo[i, j]];
        if CustoA <= Budget then
        begin
          INC(P);
          if str = '[' then
            str := str + NomeAlt[Matrizgrupo[i, j]]
          else
            str := str + ', ' + NomeAlt[Matrizgrupo[i, j]];
        end
        else
        begin
          CustoA := CustoA - Cost[Matrizgrupo[i, j]];
          Stop := true;
          break;
        end;
      end;
      if Stop then
        break;
    end;
    str := str + ']';

    grdrecomendacaoCB.Cell[0, 0].Text := 'Portfolio';
    grdrecomendacaoCB.Cell[0, 0].Font.Style := [fsbold];
    grdrecomendacaoCB.Cell[0, 1].Text := 'Resources Utilization';
    grdrecomendacaoCB.Cell[0, 1].Font.Style := [fsbold];
    grdrecomendacaoCB.Cell[1, 0].Text := str; ;
    grdrecomendacaoCB.Cell[1, 0].Wrap := true; // comando para fazer quebra de linha no texto do grid
    grdrecomendacaoCB.Cell[1, 1].Text := '$' + FormatFloat('#,##0.00', CustoA);
    grdrecomendacaoCB.Cell[0, 2].Text := 'Budget';
    grdrecomendacaoCB.Cell[0, 2].Font.Style := [fsbold];
    grdrecomendacaoCB.Cell[1, 2].Text := '$' + FormatFloat('#,##0.00', Budget);

    { auxCostcumu := 0;

      for i := 0 to Rlevels - 1 do
      begin
      grdresultadosCB.Cell[i + 1, 2].Text := MatCostPortfolioCB[i, 1];
      end;

      for i := 0 to Rlevels - 1 do
      begin
      auxCostcumu := (auxCostcumu) + (strtofloat(MatCostPortfolioCB[i, 1]));
      grdresultadosCB.Cell[i + 1, 3].Text := TrocaVP(auxCostcumu);

      end; }

    for j := 0 to 2 - 1 do
    begin
      for i := 0 to Rlevels - 1 do
      begin
        grdresultadosCB.Cell[i + 1, j].Text := MatResultOrd[i, j];
        grdresultadosCB.Cell[i + 1, j].Wrap := true; // comando para fazer quebra de linha no texto do grid
      end;
    end;
    /// criando variáveis globais para armazenas as locais CustoA e Str, e utilizar no procedimento de exportação///

    CumulativeCost := CustoA;
    Portfoliofinal := str;

    // *** Diagrama de Hasse *** //
    // o diagrama vai ser construido
    // lnkrelations.Visible := false;

    // Organiza as informações que vão ser inseridas no banco de dados - necessárias para a construção do diagrama
    DomMat := '';
    // Dados da Matriz de Consequências
    for i := 0 to NumAlt - 1 do
    begin
      for j := 0 to NumAlt - 1 do
      begin
        TIWUserSession(WebApplication.Data).auxDM := TIWUserSession(WebApplication.Data).ArmazenaParaPar[(TIWUserSession(WebApplication.Data).Ciclo) - 1, i, j];
        TIWUserSession(WebApplication.Data).DomMat := DomMat + IntToStr(auxDM);
      end;
    end;

    HolMat := '';
    // Dados da Matriz de Avaliação Holística
    for i := 0 to NumAH - 1 do
    begin
      alt1 := TIWUserSession(WebApplication.Data).MATAH[i, 1];
      alt2 := MATAH[i, 2];
      auxHM := IntToStr(alt1) + '/' + IntToStr(alt2);
      HolMat := HolMat + '-' + auxHM;
    end;
    NomAlt := '';
    // Nomes das consequências
    for i := 0 to NumAlt - 1 do
    begin
      NomAlt := NomAlt + '§' + NomeAlt[i];
    end;

    // Teste unindo numAlt e Levels
    levels_numalt := IntToStr(Rlevels) + '/' + IntToStr(NumAlt);

    // Tirando o usuário da fila
    UserSession.ZQuery1.SQL.Text :=
      'DELETE FROM line_dh WHERE id_problem = "' + id_problema + '"';
    ZQuery1.ExecSQL;

    UserSession.ZQuery1.SQL.Text :=
      'INSERT INTO line_dh (id_problem, id_user, dom_matrix, ah_matrix, NomeAlt, levels_numalt ) VALUES ("' + id_problema + '", "' + ID_user + '", "' + DomMat + '", "' + HolMat + '", "' + NomAlt + '", "' + levels_numalt + '")';
    UserSession.ZQuery1.ExecSQL;

    // Indica que a aplicação desktop que constroi o diagrama deve ser executado
    // Informação lida pela aplicação desktop auxiliar - essa que vai chamar a outra aplicação que de fato constroi

    UserSession.ZQuery1.SQL.Text :=
      'UPDATE desk SET dh_in_progress = "' + IntToStr(1) + '"';
    UserSession.ZQuery1.ExecSQL;

    tmrhasse.Enabled := true;
  end; // user ses
end;

procedure Tfrmportfolioresults.rgnResultsCBCreate(Sender: TObject);
begin
  // ** Organiza as informações da tela de resultados **//
  IWTabControl1.ActivePage:= IWTabControl1Page1.TabOrder;
  Alinhamento;
  RgnfinaltabelaPortfolioCB;
end;

procedure Tfrmportfolioresults.tmrhasseTimer(Sender: TObject);
var
  prob: Boolean;
  T1: Pwidechar;
begin
  prob := false;
  try
    TIWFadeImage1.Picture.LoadFromFile('C:\inetpub\fitradeoff\images\' +
        (TIWUserSession(WebApplication.Data).id_problema) + '.jpg');
    TIWFadeImage2.Picture.LoadFromFile('C:\inetpub\fitradeoff\images\' +
      (TIWUserSession(WebApplication.Data).id_problema) + '.jpg');

    DeleteFile(Pchar('C:\inetpub\fitradeoff\images\' + TIWUserSession
          (WebApplication.Data).id_problema + '.jpg'));

  except
    prob := true;
  end;
  if prob = false then
  begin
    { lblhassemessage.Caption :=
      'An unexpected error has occurred, please, use the update button to generate diagram once again.';
      lblhassemessage.Visible := false;
      TbCtrlvisualizationsChange(self); }
      lblhassemessage.Visible := false;
    // btnhasse.Enabled := true;
    tmrhasse.Enabled := false;
    // btnhasse1.Enabled := true;
    iwbtnRefreshDH.Cursor := crAuto;
    iwbtnCloseDH.Cursor := crAuto;
    iwbtnSaveImageDH.Cursor := crAuto;
    btnLegendDH.Cursor := crAuto;
    iwrgnHasseDiagram.Cursor := crAuto;
  end;
end;

// procediemento

procedure Tfrmportfolioresults.About1Click(Sender: TObject);
begin
  rgnAbout.Show;
end;

procedure Tfrmportfolioresults.btnbackelicCBClick(Sender: TObject);
begin
  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarresultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).stage := 3;
  TIWUserSession(WebApplication.Data).auxgoback := -56231;
  Tfrmaintercriterio.Create(WebApplication).Show;
end;

procedure Tfrmportfolioresults.btnLegendDH2Click(Sender: TObject);
begin
iwrgnLegendDH.Visible := true;
end;

procedure Tfrmportfolioresults.btnLegendDHClick(Sender: TObject);
begin
  iwrgnLegendDH.Visible := true;
end;

procedure Tfrmportfolioresults.btnlegenddhcloseClick(Sender: TObject);
begin
iwrgnLegendDH.Visible := false;
end;

procedure Tfrmportfolioresults.btnnaofinalizarPClick(Sender: TObject);
begin
  rgnconfirmCB3.Visible := false;
end;

procedure Tfrmportfolioresults.btnokCBClick(Sender: TObject);
begin
  rgnconfirmCB1.Visible := false;
end;

procedure Tfrmportfolioresults.English1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\User guide FITradeoff web' + '.pdf', true);
end;

procedure Tfrmportfolioresults.Fullreport1Click(Sender: TObject);
var
  Summary, inpout, ranking: array of array of string;
  CombinedHTMLStream: TStringStream;
  i, j, sum, ip, rk, a, b, C: integer;
  str: string;
begin
////////////////////////////////////// ALEX ALVES DA SILVA /////////////////////////////////////////////////////////
  /// ////////// SISTEMA DE EXPORTAÇÃO PARA O FORMATO HTML ///////////////////////////////
  TIWUserSession(WebApplication.Data).html:=true;
  MenuItem3Click(self); //função para os inputs e outputs
  MenuItem4Click(self); //função para os Summary
  CombinedHTMLStream := TStringStream.Create('', TEncoding.UTF8);
  setlength(Summary, grdExportSum.RowCount, grdExportSum.Columns.Count); // setando uma matriz booleana para encontrar linhas vazias do Summary
  setlength(inpout, grdExportCB.totalRows, grdExportCB.Columns.Count); // setando uma matriz booleana para encontrar linhas vazias do Input output
   SetLength(ranking, grdranking.totalRows, grdranking.Columns.Count); // setando uma matriz booleana para encontrar linhas vazias do Ranking

 ///Formando tabela binaria do summary para eliminar linhas e colunas vazias
  for i := 0 to grdExportSum.RowCount - 1 do
  begin
    for j := 0 to grdExportSum.Columns.Count - 1 do
    begin
      if grdExportSum.Cells[j, i] <> '' then
      begin
        Summary[i, j] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
      end
      else
      begin
        Summary[i, j] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
      end;
    end;
  end;

  for j := 0 to grdExportSum.Columns.Count - 1 do
  begin
    sum := 0;
    for i := 0 to grdExportSum.RowCount - 1 do
    begin
      sum := sum + StrToInt(Summary[i, j]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a linha sera apagada

    end;
    if sum <> 0 then
    begin
      INC(a);
    end;
    if sum = 0 then
    begin
      grdExportSum.Columns.Delete(a); // Excluir a coluna do grid
    end;

  end;
  a:=0;
  // Eleminando linhas excedentes do Summary/////
  for i := 0 to grdExportSum.RowCount - 1 do
  begin
    sum := 0;
    for j := 0 to grdExportSum.Columns.Count - 1 do
    begin
      sum := sum + StrToInt(Summary[i, j]); // somando os componentes de linha da matriz booleana, caso a soma seja 0, a linha sera apagada
    end;
    if sum <> 0 then
    begin
      INC(a); // Excluir a linha do grid
    end;

  end;
  grdExportSum.RowCount := a;







  ///Formando tabela binaria do Imput-output para eliminar linhas e colunas vazias
    b := 0;
  /// E///
  for i := 0 to grdExportCB.totalRows- 1 do
  begin
    for j := 0 to grdExportCB.Columns.Count- 1 do
    begin
      if grdExportCB.Cells[j, i] <> '' then
      begin
        inpout[i, j] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
      end
      else
      begin
        inpout[i, j] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
      end;
    end;
  end;
  b := 0;

    /// ELIMINANDO COLUNAS EXEDENTES DO INPUT OUTPUT///
  for j := 0 to grdExportCB.Columns.Count - 1 do
  begin
    ip := 0;
    for i := 0 to grdExportCB.totalRows - 1 do
    begin
      ip := ip + StrToInt(inpout[i, j]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a linha sera apagada

    end;
    if ip <> 0 then
    begin
      INC(b);
    end;
    if ip = 0 then
    begin
      grdExportCB.Columns.Delete(b); // Excluir a coluna do grid
    end;

  end;
    a:=3; //Quantidade de linhas em branco (espaço para separar as diferentes tabelas
  // Eleminando linhas excedentes do Input output/////
  for i := 0 to grdExportCB.totalRows - 1 do
  begin
    ip := 0;
    for j := 0 to grdExportCB.Columns.Count - 1 do
    begin
      ip := ip + StrToInt(inpout[i, j]); // somando os componentes de linha da matriz booleana, caso a soma seja 0, a linha sera apagada
    end;
    if ip <> 0 then
    begin
      INC(a); // Excluir a linha do grid
    end;

  end;
  grdExportCB.totalRows := a;




    for i := 0 to grdranking.totalRows - 1 do
  begin
    for J := 0 to grdranking.Columns.Count - 1 do
    begin
      if grdranking.Cells[J, i] <> '' then
      begin
        ranking[i, J] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
      end
      else
      begin
        ranking[i, J] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
      end;
    end;
  end;
  a:=0;
  for i := 0 to grdranking.totalRows - 1 do
  begin
    rk := 0;
    for J := 0 to grdranking.Columns.Count - 1 do
    begin
      rk := rk + StrToint(ranking[i, J]); // somando os componentes de linha da matriz booleana, caso a soma seja 0, a linha sera apagada
    end;
    if rk <> 0 then
    begin
      INC(a); // Excluir a linha do grid
    end;

  end;
  grdranking.TotalRows := a;




  try
    // FORMANDO GRID 1
   // Gerar HTML para a Titulo
    CombinedHTMLStream.WriteString('<html><head><title>Full report</title>');
    CombinedHTMLStream.WriteString(
      '<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>');
    // Incluindo Chart.js
    CombinedHTMLStream.WriteString('<style>'); // Estilos CSS
    CombinedHTMLStream.WriteString(
      'table {width: 80%; border-collapse: collapse;}'); // Largura da tabela ajustada para 100% e borda de célula colapsada
    CombinedHTMLStream.WriteString(
      'th, td {border: 1px solid black; padding: 8px; width: auto;}');
    // Estilo para células
    CombinedHTMLStream.WriteString('</style>'); // Fim dos estilos CSS
    CombinedHTMLStream.WriteString('</head><body>');

     // Adicionar imagem no canto superior esquerdo e aumentar a largura
    CombinedHTMLStream.WriteString('<img src="https://img.hotimg.com/b1d1d797-0ebb-4e3b-9c4f-828420d526a5.jpeg" style="position:absolute;top:20;left:0;width:210px;height:100px;">');
    // Adicionar imagem no canto superior direito e aumentar a largura
    CombinedHTMLStream.WriteString('<img src="https://www.cdsid.org.br/wp-content/uploads/2020/02/CDSID.jpg" style="position:absolute;top:20;right:0;width:205px;height:95px;">');

    // Adicionar div com a palavra "RELATÓRIOS" no meio
    CombinedHTMLStream.WriteString(
      '<div style="position:absolute;top:50;left:50%;transform:translateX(-50%);text-align:center;width:100%;font-size:40px;font-weight:bold;">REPORTS</div>');

    // Título para a primeira grid(grdexport1)
    CombinedHTMLStream.WriteString
      ('<h2 style="margin-top: 120px;">Summary of questions answered</h2>');

    // Tabela para a grdexport1
    CombinedHTMLStream.WriteString(
      '<table border="1" style="margin-top: 20px;">');
    for i := 0 to grdExportSum.RowCount - 1 do
    begin
      CombinedHTMLStream.WriteString('<tr>');
      for j := 0 to 6 - 1 do//Numero de coluna fixo do Sumario
      begin
        CombinedHTMLStream.WriteString('<td>');
        CombinedHTMLStream.WriteString(grdExportSum.Cells[j, i]);
        CombinedHTMLStream.WriteString('</td>');
      end;
      CombinedHTMLStream.WriteString('</tr>');
    end;
    CombinedHTMLStream.WriteString('</table>');




    // FORMANDO GRIND 2

     // Título para a segunda grid(grdintracriterios)
    CombinedHTMLStream.WriteString(
      '<h2 style="margin-top: 20px;">Intra-criteria</h2>');
    // Tabela para a segunda grid((grdintracriterios)
    CombinedHTMLStream.WriteString(
      '<table border="1" style="margin-top: 10px;">');
    for i := 0 to grdintracriterio.RowCount - 1 do
    begin
      CombinedHTMLStream.WriteString('<tr>');
      for J := 0 to grdintracriterio.Columns.Count - 1 do
      begin
        CombinedHTMLStream.WriteString('<td>');
        CombinedHTMLStream.WriteString(grdintracriterio.Cells[J, i]);
        CombinedHTMLStream.WriteString('</td>');
      end;
      CombinedHTMLStream.WriteString('</tr>');
    end;
    CombinedHTMLStream.WriteString('</table>');





    // Título para a terceira grid(grdexport)
    CombinedHTMLStream.WriteString(
      '<h2 style="margin-top: 20px;">Input Output</h2>');
    // Tabela para a terceir- grid(grdexport)
    CombinedHTMLStream.WriteString(
      '<table border="1" style="margin-top: 10px;">');
    for i := 0 to grdExportCB.totalRows - 1 do
    begin
      CombinedHTMLStream.WriteString('<tr>');
      for j := 0 to TIWUserSession(WebApplication.Data).Numcrit + 2 - 1 do
      begin
        CombinedHTMLStream.WriteString('<td>');
        CombinedHTMLStream.WriteString(grdExportCB.Cells[j, i]);
        CombinedHTMLStream.WriteString('</td>');
      end;
      CombinedHTMLStream.WriteString('</tr>');
    end;
    CombinedHTMLStream.WriteString('</table>');


      // Título para a quarta grid(grdranking)
      CombinedHTMLStream.WriteString(
        '<h2 style="margin-top: 20px;">Ranking</h2>');
      // Tabela para a quarta grid(grdranking)
      CombinedHTMLStream.WriteString(
        '<table border="1" style="margin-top: 10px;">');
      for i := 0 to grdranking.totalRows - 1 do
      begin
        CombinedHTMLStream.WriteString('<tr>');
        for J := 0 to grdranking.Columns.Count - 1 do
        begin
          CombinedHTMLStream.WriteString('<td>');
          CombinedHTMLStream.WriteString(grdranking.Cells[J, i]);
          CombinedHTMLStream.WriteString('</td>');
        end;
        CombinedHTMLStream.WriteString('</tr>');
      end;
      CombinedHTMLStream.WriteString('</table>');




     // Fechar a tag body e html
    CombinedHTMLStream.WriteString('</body></html>');

    // Configurar a resposta para download no Chrome
    WebApplication.Response.ContentStream := CombinedHTMLStream;
    WebApplication.Response.ContentType := 'application/octet-stream';
    WebApplication.Response.SetCustomHeader('Content-Disposition',
      'attachment; filename=Grids.html');

  finally
    // Liberar a memória do TStringStream após o uso
    // CombinedHTMLStream.Free;
  end;
end;

procedure Tfrmportfolioresults.Insertanewproblem1Click(Sender: TObject);
begin

  setlength(TIWUserSession(WebApplication.Data).vetorgrafico, 0);
  setlength(TIWUserSession(WebApplication.Data).vordem, 0);
  setlength(TIWUserSession(WebApplication.Data).vtrposicoes, 0);

  TIWUserSession(WebApplication.Data).VerificaUnit := -50;
  TFrmEntrada.Create(WebApplication).Show;
  // IWRgnReset2.Visible := false;

  with TIWUserSession(WebApplication.Data) do
    if Problematica = 3 then
    begin
      ClassRestart := true;
      elicitarperfis := true;
      setlength(class_min, 0);
      setlength(class_max, 0);
      setlength(class_min, NumAlt);
      setlength(class_max, NumAlt);

      // ** Indica que o problema foi reiniciado antes de ser retomado **//
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
      SalvarresultBD;
    end;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  SalvarresultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).estagio := 0;
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 2;
  SalvarresultBD;

    // case referente à registro criado na planilha intracrit
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 26;
  SalvarResultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 13;
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;

  // auxiliar que armazena a sequencia de respostas
  TIWUserSession(WebApplication.Data).Ans_seq := ' ';

end;

procedure Tfrmportfolioresults.iwbtnCloseDH2Click(Sender: TObject);
begin
  rgnResultsCB.Hide;
  iwrgnHasseDiagram.Show;
  {IWRegion1.Parent := iwrgnHasseDiagram;
  IWRegion1.left := 864;}
  TIWFadeImage1.Visible := True;
end;

procedure Tfrmportfolioresults.iwbtnCloseDHClick(Sender: TObject);
begin
  iwrgnHasseDiagram.Hide;
  with TIWUserSession(WebApplication.Data) do
  begin
    if (Problematica = 2) then
      rgnResultsCB.Visible := true;

  end;
  iwrgnHasseDiagram.Visible := false;
end;

procedure Tfrmportfolioresults.iwbtnRefreshDHClick(Sender: TObject);
begin

  with TIWUserSession(WebApplication.Data) do
  begin
    // Insere o usuário na fila novamente
    UserSession.ZQuery1.SQL.Text :=
      'INSERT INTO line_dh (id_problem, id_user, dom_matrix, ah_matrix, NomeAlt, levels_numalt ) VALUES ("' + id_problema + '", "' + ID_user + '", "' + DomMat + '", "' + HolMat + '", "' + NomAlt + '", "' + levels_numalt + '")';
    UserSession.ZQuery1.ExecSQL;
  end;

  // Indica que a aplicação desktop que constroi o diagrama deve ser executado
  UserSession.ZQuery1.SQL.Text :=
    'UPDATE desk SET dh_in_progress = "' + IntToStr(1) + '"';
  UserSession.ZQuery1.ExecSQL;

  tmrhasse.Enabled := true;

  iwbtnRefreshDH.Cursor := crWait;
  iwbtnCloseDH.Cursor := crWait;
  iwbtnSaveImageDH.Cursor := crWait;
  btnLegendDH.Cursor := crWait;
  iwrgnHasseDiagram.Cursor := crWait;
end;

procedure Tfrmportfolioresults.iwbtnSaveImageDHClick(Sender: TObject);
begin
  TIWFadeImage1.Picture.SaveToFile('C:\inetpub\fitradeoff\Images\' +
      'Diagrama de Hasse' + '.jpg');

  WebApplication.SendFile
    ('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' + '.jpg', true);

  DeleteFile(Pchar('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' +
        '.jpg'));

  iwrgnLegendDH.Visible := false;
end;

procedure Tfrmportfolioresults.calmaxminweights;
var
  i, j, K, Nrest, a, b, C, Z, II, JJ, DNrel: integer; // Contadores
  NumCri, NumAlt, Numl, NAH: integer; // Número de critérios,
  // num de alternativas, num de linhasna Matriz do Modelo de PL e número de restrições
  // provenientes de Avaliações holísticas
  MatA, MatCons: Array of Array of Double; // Matriz do Modelo de PL e Matriz de Consequências Normalizada
  Criorder: Array of integer; // vetor que armazena a ordenação dos critérios
  VetAH: Array of Array of integer; // Matriz que armazena as informações das AH
  LimMin, LimMax: Array of Double; // Vetores que armazenam os limites inferior e
  // Superior da relação entre os critérios
  OPAH: Array of string; // Vetor que armazena o operador definido na relação estabelecida na AH
  G, ep: Double;
  // VARIÁVEIS LP SOLVE
  // ResultVector armazena os resultados obtidos pelo LP Solve (a função máxima e
  // coeficientes das variáveis de decisão).
  // FO recebe os coeficientes das variáveis de decisão na função objetivo e será
  // usado no LP Solve.
  // Limit recebe os valores das constantes das restrições e será usado no LP Solve.
  // X armazena
  NumDV, NRA, NRB: integer; // número de var de decisão do modelo, inteiros auxiliares para a AH
  ResultVector: array of Real;
  // typeprob determina se o problema é contínuo (typeprob = 0) ou binário (typeprob = 1).
  // No caso do fitradeoff, é sempre contínuo pois as constantes de escala são contínuas.
  // dirprob determina se o problema é de minimização (dirprob = 0) ou de maximização
  // (dirprob = 1), SF nos diz se houve solução viável.
  typeprob, dirprob, SF: integer;
  FO, Op: array of string;
  limit: array of Real;
  Rmod: array of AnsiString;
  var_int, var_bin: Array of integer;
  /// /vetores que carregam var de decisão inteiras e binárias
  Lp: THandle;
  S1: string;
  Aux1, Aux2: Double;
  MaxP, MinP: array of Double;
  AuxHEz: array of integer; // vetor auxiliar para facilitar a elaboração de res_
  // trições com var binária da HE
  MSSG: integer;
  MinVK: Double;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).NumCrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 4;
  setlength(MatCons, NumAlt, NumCri);
  setlength(Criorder, NumCri);
  setlength(MatA, Numl, NumCri + 1);
  setlength(Op, Numl - 1);
  setlength(limit, Numl - 1);
  setlength(Rmod, Numl - 1);
  setlength(LimMax, NumCri - 1);
  setlength(LimMin, NumCri - 1);
  setlength(VetAH, NAH);
  setlength(OPAH, NAH);
  setlength(FO, NumCri);
  setlength(ResultVector, NumCri + 1);
  setlength(MaxP, NumCri);
  setlength(MinP, NumCri);
  NumDV := NumCri;
  NRA := 0;
  NRB := 0;

  typeprob := 0;
  /// Var de decisão são contínuas ///
  /// / Limpando os valores presentes nos vetores de pesos /////////////////////
  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for j := 0 to NAH - 1 do
    begin
      setlength(VetAH[j], length(MATAH[j]));
      for i := 0 to length(MATAH[j]) - 1 do
        VetAH[j, i] := MATAH[j, i];
    end;

    setlength(MaxPeso, NumCri);
    setlength(MinPeso, NumCri);
    for i := 0 to NumCri - 1 do
    begin
      MaxPeso[i] := 0;
      MinPeso[i] := 0;
      MaxP[i] := 0;
      MinP[i] := 0;
    end;
  end;
  for i := 0 to NumAlt - 1 do
  begin
    for j := 0 to NumCri - 1 do
      MatCons[i, j] := TIWUserSession(WebApplication.Data).ConsNorm[i, j];
  end;
  for i := 0 to NumCri - 1 do
    Criorder[i] := TIWUserSession(WebApplication.Data).vtrordem[i];
  for i := 0 to NumCri - 2 do
  begin
    // setlength(LimMin, i + 1);
    LimMin[i] := TIWUserSession(WebApplication.Data).LimMin[i];
    LimMax[i] := TIWUserSession(WebApplication.Data).LimMax[i];
  end;

  { for i := 0 to NAH - 1 do
    begin
    OPAH[i] := TIWUserSession(WebApplication.Data).OPAH[i];
    end; }

  /// ///////////////////////////////////////////////////////////////////////////
  /// Limpando a Matriz do problema de possíveis valores provindos de sua inicialização ///
  for i := 0 to Numl - 1 do
    for j := 0 to NumCri do
      MatA[i, j] := 0;

  /// //////////// Programação Linear - MODELO PROB DE ORDENAÇÃO ///////////////

  /// Preenchendo as Restrições referentes ao limite superior da relação dos critérios ///
  /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
  for i := 0 to NumCri - 2 do
  begin
    MatA[i + 1, i + 1] := (-1) * LimMax[i];
    MatA[i + 1, i + 2] := 1;
    Op[i] := '<=';
    INC(Nrest);
  end;

  a := Nrest;

  /// Preenchendo as Restrições referentes ao limite inferior da relação dos critérios ///
  /// Essa restrição já é do tipo '<=' que segue o padrão adotado no SAD ///
  for i := a to a + NumCri - 2 do
  begin
    MatA[i + 1, i - a + 1] := LimMin[i - a];
    MatA[i + 1, i - a + 2] := (-1) * 1;
    Op[i] := '<=';
    INC(Nrest);
  end;

  a := Nrest;

  /// Preenchendo as Restrições referentes à Avaliação Holística ///
  /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
  for i := a to a + NAH - 1 do
  begin
    case VetAH[i - a, 0] of
      1:
        begin
          /// Exclusão ///
          /// / Incrementa o número de var de decisão /////////////////////////
          NumDV := NumDV + 2 * (length(VetAH[i - a]) - 2);
          /// / Acrescentando espaço para as restrições //////////////////////
          Numl := Numl + 3 * (length(VetAH[i - a]) - 2) + 1;
          setlength(MatA, Numl, NumDV + 1);
          setlength(Op, Numl - 1);
          setlength(limit, Numl - 1);
          setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          setlength(AuxHEz, length(VetAH[i - a]));
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            for j := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, j + 1] := MatCons[VetAH[(i - a), 1], Criorder[j]]
                - MatCons[VetAH[i - a, Z], Criorder[j]];
              MatA[Nrest + 2, 0] := -0.000001;
            end; // j

            AuxHEz[Z] := NumCri + NRB + 1;
            /// / Salva o índice das var binárias da
            /// restrição de que v(b) < v(a)
            MatA[Nrest + 1, NumCri + NRB + 1] := -1;
            MatA[Nrest + 2, NumCri + NRB + 2] := -1;
            Op[Nrest + 1] := '<';
            Op[Nrest] := '<';
            INC(Nrest, 2);
            INC(NRB, 2); // Número de variáveis binárias adicionadas
            /// / Resrição Z1 + Z2 <= 1 /////////////////////////////////////////
            MatA[Nrest + 1, NumCri + NRB] := 1;
            MatA[Nrest + 1, NumCri + NRB - 1] := 1;
            MatA[Nrest + 1, 0] := 1;
            Op[Nrest] := '<=';
            INC(Nrest);

          end; // z

          for j := 0 to length(AuxHEz) - 1 do
            MatA[Nrest + 1, AuxHEz[j]] := -1;
          MatA[Nrest + 1, 0] := -1;
          Op[Nrest] := '<=';
          INC(Nrest);
          /// ///////////////////////////////////////////////////////////////////
          /// ////////////////////////////////////////////////////////////////
          typeprob := 3;
          /// Var de decisão são mistas ///
        end; // 1
      2:
        begin
          /// Seleção ///
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            /// / Acrescentando espaço para as restrições ///////////////////////
            INC(Numl);
            setlength(MatA, Numl, NumCri + 1);
            setlength(Op, Numl - 1);
            setlength(limit, Numl - 1);
            setlength(Rmod, Numl - 1);
            /// / Acrescentando espaço para as restrições ///////////////////////
            for j := 0 to NumCri - 1 do
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end; // j
            if TIWUserSession(WebApplication.Data).Problematica = 1 then
              MatA[Nrest + 1, 0] := -0.00001;
            Op[Nrest] := '<=';
            INC(Nrest);
          end; // z
        end; // 2
    end; // case

  end;
  /// / Adiciona variáveis binárias ao problema caso necessário ////////////////
  setlength(FO, NumDV);
  setlength(var_bin, (NumDV - NumCri));
  setlength(ResultVector, NumDV + 1);
  for j := 0 to length(var_bin) - 1 do
    var_bin[j] := NumCri + j;
  /// //////////////////////////////////////////////////////////////////////////
  a := Nrest;

  /// Preenchendo aa nova restrição Kn > limiar///
  MatA[a + 1, NumCri] := -1;
  MatA[a + 1, 0] := -MinVK;
  Op[a] := '<=';
  INC(Nrest);

  a := Nrest;

  /// Preenchendo as Restrições referentes à Normalização dos Pesos///
  for j := 0 to NumCri - 1 do
    MatA[a + 1, j + 1] := 1;
  MatA[a + 1, 0] := 1;
  Op[a] := '=';
  INC(Nrest);

  a := Nrest;

  /// Adicionando a Restrição da primeira pergunta da Elicitação Flexível ///
  With TIWUserSession(WebApplication.Data) do
    case HeurQuest of
      0:
        Begin
          MatA[a + 1, IdAHeur + 1] := -0.5;
          MatA[a + 1, IdBHeur + 1] := 1;
          Op[a] := '<=';
          INC(Nrest);
        End;
      1:
        Begin
          MatA[a + 1, IdAHeur + 1] := 0.5;
          MatA[a + 1, IdBHeur + 1] := -1;
          Op[a] := '<=';
          INC(Nrest);
        End;
    end;

  a := Nrest;

  dirprob := 1;
  /// Problema de maximização ///

  /// Preenchendo o lado direito da restrição no vetor utilizado no LP_Solve ///
  for i := 0 to Numl - 2 do
    limit[i] := MatA[i + 1, 0];

  /// Preenchendo as restrições no vetor utilizado no LP_Solve ///
  for i := 0 to Numl - 2 do
  begin
    Rmod[i] := TrocaVP(MatA[i + 1, 1]);
    for j := 2 to NumDV do
      Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, j]);
  end;

  /// ////////////////// Calcula os limites dos pesos /////////////////////
  for II := 0 to NumCri - 1 do
  begin
    /// //////////////////////// Maximiza os pesos ////////////////////////////
    /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
    /// escala /////////////////////////////////////////////////////////////
    for i := 0 to NumDV - 1 do
    begin
      MatA[0, i + 1] := 0;
      FO[i] := IntToStr(0);
    end;
    FO[II] := IntToStr(1);

    /// Resolvendo o PPL ///
    SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int, var_bin,
      Rmod, ResultVector, Lp, MSSG);
    SF := MSSG;
    if SF = 0 then
    begin
      /// Verificando se há algum K não nulo. ///
      b := 0;
      for i := 1 to NumCri do
        if ResultVector[i] <> 0 then
          break
        else
          INC(b);

      if b <> NumCri then
        MaxP[II] := ResultVector[0];
    end;

    /// /////////// Limpando o vetor de resultados /////////////
    setlength(ResultVector, 0);
    setlength(ResultVector, NumDV + 1);

    /// //////////////////////// Minimiza os pesos ////////////////////////////
    /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
    /// escala /////////////////////////////////////////////////////////////
    for i := 0 to NumDV - 1 do
    begin
      MatA[0, i + 1] := 0;
      FO[i] := IntToStr(0);
    end;
    FO[II] := IntToStr(-1);

    /// Resolvendo o PPL ///

    /// Resolvendo o PPL ///
    SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int, var_bin,
      Rmod, ResultVector, Lp, MSSG);

    SF := MSSG;

    if SF = 0 then
    begin
      /// Verificando se há algum K não nulo. ///
      b := 0;
      for i := 1 to NumCri do
        if ResultVector[i] <> 0 then
          break
        else
          INC(b);

      if b <> NumCri then
        MinP[II] := -ResultVector[0];
    end;
  end; // for II

  /// /////////// Limpando o vetor de resultados /////////////
  setlength(ResultVector, 0);
  setlength(ResultVector, NumDV + 1);

  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumCri - 1 do
    begin
      MaxPeso[i] := MaxP[i];
      MinPeso[i] := MinP[i];
    end;
  end;

end;

procedure Tfrmportfolioresults.IWButton1Click(Sender: TObject);
begin
  chrtpesoslim.TeeCreateBitmap(clWhite, rect(0, 0, chrtpesoslim.Width,
      chrtpesoslim.Height)).SaveToFile(
    'C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' + '.jpg');
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' + '.jpg',
    true);
  DeleteFile('C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' +
      '.jpg');
end;

procedure Tfrmportfolioresults.IWButton2Click(Sender: TObject);
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    if (Problematica = 2) then
      rgnResultsCB.Visible := true;

  end;
  IWRgnresultadografico.Visible := false;
  { With TIWUserSession(WebApplication.Data) do
    if (Problematica = 0) and (NDA = 1) then
    crtEhraph.RemoveSeries(1); }

  DeleteFile('C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' +
      '.jpg');
  { DeleteFile(
    'C:\inetpub\fitradeoff\Images\Optimal Alternative Scaling Constants Value'
    + '.jpg'); }
  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarresultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarresultBD;
end;

procedure Tfrmportfolioresults.IWButton4Click(Sender: TObject);
begin
WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
  WebApplication.Terminate();
end;

procedure Tfrmportfolioresults.iwbtnSaveImageDH2Click(Sender: TObject);
begin
TIWFadeImage2.Picture.SaveToFile('C:\inetpub\fitradeoff\Images\' +
      'Diagrama de Hasse' + '.jpg');

  WebApplication.SendFile
    ('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' + '.jpg', true);

  DeleteFile(Pchar('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' +
        '.jpg'));

  iwrgnLegendDH.Visible := false;
end;

procedure Tfrmportfolioresults.IWButton6Click(Sender: TObject);
begin
  // **Finalizando o problema e reavaliando os limites dos pesos **//
  TIWUserSession(WebApplication.Data).Sol := 11;
  Tfrmportfolioresults.Create(WebApplication).Show;
  calmaxminweights;
  // lnkfinalize.Visible := false;
  // lnkFinalizeC.Visible := false;
  lnkFinalizeP.Visible := false;
end;

procedure Tfrmportfolioresults.iwbtnRefreshDH2Click(Sender: TObject);
begin

  with TIWUserSession(WebApplication.Data) do
  begin
    // Insere o usuário na fila novamente
    UserSession.ZQuery1.SQL.Text :=
      'INSERT INTO line_dh (id_problem, id_user, dom_matrix, ah_matrix, NomeAlt, levels_numalt ) VALUES ("' + id_problema + '", "' + ID_user + '", "' + DomMat + '", "' + HolMat + '", "' + NomAlt + '", "' + levels_numalt + '")';
    UserSession.ZQuery1.ExecSQL;
  end;

  // Indica que a aplicação desktop que constroi o diagrama deve ser executado
  UserSession.ZQuery1.SQL.Text :=
    'UPDATE desk SET dh_in_progress = "' + IntToStr(1) + '"';
  UserSession.ZQuery1.ExecSQL;

  tmrhasse.Enabled := true;

  iwbtnRefreshDH2.Cursor := crWait;
  iwbtnCloseDH2.Cursor := crWait;
  iwbtnSaveImageDH2.Cursor := crWait;
  btnLegendDH2.Cursor := crWait;
  IWRegion1.Cursor := crWait;
end;

procedure Tfrmportfolioresults.IWLink12Click(Sender: TObject);
var
  i: integer;
  Series2: TBarSeries;
  error: TErrorSeries;
  point: TPointSeries;
begin
  lstbxcritg.Items.Clear;
  IWRgnresultadografico.Visible := true;
  rgnResultsCB.Visible := false;
  calmaxminweights;
  with TIWUserSession(WebApplication.Data) do
  begin
    chrtpesoslim.series[0].Clear;
    chrtpesoslim.series[1].Clear;
    for i := 0 to NumCrit - 1 do
    begin
      chrtpesoslim.BottomAxis.Items.Add(i, 'C' + IntToStr(i + 1));
      chrtpesoslim.series[0].AddXY(i, MaxPeso[i]);
      chrtpesoslim.series[1].AddXY(i, MinPeso[i]);
      lstbxcritg.Items.Add('C' + IntToStr(i + 1) + ': ' + NomeCrit[vtrordem[i]]
        );
    end;

    imgweightslim.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (chrtpesoslim.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgweightslim.Width,
          imgweightslim.Height)));
  end;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarresultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarresultBD;

end;

procedure Tfrmportfolioresults.IWTabControl1Create(Sender: TObject);
begin
IWTabControl1.ActivePage := IWTabControl1Page0.TabOrder;
end;

procedure Tfrmportfolioresults.lnkFinalizePClick(Sender: TObject);
begin
  rgnconfirmCB3.Visible := true;
end;

procedure Tfrmportfolioresults.LnkhasseDCBClick(Sender: TObject);
begin
  rgnResultsCB.Hide;
  // TfrmhasseD.Create(WebApplication).Show;
  iwrgnHasseDiagram.Show;
  TIWFadeImage1.Visible := true;
  TIWFadeImage2.Visible := true;
end;

procedure Tfrmportfolioresults.Logout1Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).AUXLOGOUT := -363636;
  TIWUserSession(WebApplication.Data).verificaUnit := 0;
  TFrmEntrada.Create(WebApplication).Show;
end;

procedure Tfrmportfolioresults.MenuItem3Click(Sender: TObject);
/// foi copiado procedimento utilizado nas problemáticas 0 e 1, adaptando para os componentes de portfolio. ///
/// Trechos referentes a AS estão apenas comentados ///
var
  i, j, K, P, N, h: integer;
  Data: string;
  // auxpoa, auxpoa1, auxnomealtexp: string;
  // vet_poa_ciclo_aux: array of string;
  auxCusto, auxCustoA: Double;

  Z, y, x, Nciclosintra: integer;
  Ciclosintra: string;
  Matrizciclosintra: array of array of string;

begin
  Data := datetostr(now);
  for i := 1 to length(Data) - 1 do
    if Data[i] = '/' then
      Data[i] := '_';

  with TIWUserSession(WebApplication.Data) do
  begin

    for i := 0 to NumCrit + nsel + 7 do
    begin
      grdExportCB.Columns.Add;
    end;

    begin
      grdExportCB.TotalRows := 8 + { (Ciclo + 2) * 2 * (Ciclo + 2)
        * NumAlt + } 5 * NumAlt;
      { if NumAlt > numcrit then
        for i := 0 to 2 * NumAlt + 10 do
        begin
        grdexport.Columns.Add;
        end
        else }
      // Caso NumAlt < NumCrit
      for i := 0 to 10 do
      begin
        grdExportCB.Columns.Add;
      end;
      grdExportCB.Cells[NumCrit + 3, 0] := 'Ranking:';
      grdExportCB.Cells[NumCrit + 5, 0] := 'Cost:';
      grdExportCB.Cells[NumCrit + 6, 0] := 'Cumulative Cost:';
      // Preenche o Ranking obtido na matriz
      auxCustoA := 0;

      for i := 0 to Rlevels - 1 do
      begin
        for j := 0 to 2 - 1 do
          grdExportCB.Cells[NumCrit + 3 + j, 1 + i] := MatResultOrd[i, j];

        begin
          auxCusto := 0;

          for j := 1 to length(TIWUserSession(WebApplication.Data)
              .Matrizgrupo[i]) - 1 do
            auxCusto := auxCusto + Cost[Matrizgrupo[i, j]];
          auxCustoA := auxCustoA + auxCusto;
          grdExportCB.Cells[NumCrit + 5, 1 + i] := '$' + FormatFloat
            ('#,##0.00', auxCusto);
          grdExportCB.Cells[NumCrit + 6, 1 + i] := '$' + FormatFloat
            ('#,##0.00', auxCustoA);

        end;
      end;

      ////COLOCANDO OS PONTOS ELICITADOS NA ETAPA INTRACRITÉRIO NA EXPORTAÇÃO//////

      grdExportCB.Cells[0, 8 + NumAlt] := 'Elicited points intracriteria:';
      grdExportCB.Cells[0, 9 + NumAlt] := 'V(X)';
      grdExportCB.Cells[0, 10 + NumAlt] := '0,25';
      grdExportCB.Cells[0, 11 + NumAlt] := '0,50';
      grdExportCB.Cells[0, 12 + NumAlt] := '0,75';


      for J := 0 to Numcrit - 1 do
      begin
      //Adicionar o nome dos critérios no "cabeçalho"
        StrDInd := j;
        grdExportCB.Cells[1 + J, 9 + NumAlt] := NomeCrit[J];
        //Adicionando os valores
        grdExportCB.Cells[1 + J, 10 + NumAlt] := {FloatToStr}Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[3,J]);
        grdExportCB.Cells[1 + J, 11 + NumAlt] := {FloatToStr}Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[2,J]);
        grdExportCB.Cells[1 + J, 12 + NumAlt] := {FloatToStr}Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[4,J]);

      end;


      grdExportCB.Cells[0, 14 + NumAlt] := 'Scaling Constants Range of values:';
      grdExportCB.Cells[0, 15 + NumAlt] := 'Max';
      grdExportCB.Cells[0, 16 + NumAlt] := 'Min';
      for j := 0 to NumCrit - 1 do
      begin
        grdExportCB.Cells[1 + j, 15 + NumAlt] := FormatFloat
          ('0.00', MaxPeso[j]);
        grdExportCB.Cells[1 + j, 16 + NumAlt] := FormatFloat
          ('0.00', MinPeso[j]);
      end;
      grdExportCB.Cells[0, 17 + NumAlt] :=
        'Note: A valid scaling constants vector has its components values within this interval as long as the sum of those values is equal to one.';
    end;

    grdExportCB.Cells[0, 19 + NumAlt] := 'Final Recommendation';
    grdExportCB.Cells[0, 20 + NumAlt] := 'Portfolio';
    grdExportCB.Cells[1, 20 + NumAlt] := 'Resources Utilization';
    // for j := 0 to Numcrit - 1 do
    // begin
    grdExportCB.Cells[0, 21 + NumAlt] := Portfoliofinal;
    grdExportCB.Cells[1, 21 + NumAlt] := '$' + FormatFloat
      ('#,##0.00', CumulativeCost);
    // end;

    { // Adiciona os resultados obtidos da Análise de Sensibilidade
      if Sensitivity = true then
      begin
      Sensitivity := false;
      if NumCrit + 4 < NumAlt then
      N := NumAlt + 3
      else
      N := NumCrit + 6;
      grdexport.Cells[N, 0] := 'Sensitivity Analysis:';
      grdexport.Cells[N, 1] := 'Variation percentage values:';
      grdexport.Cells[N, 2] := 'Max';
      grdexport.Cells[N, 3] := 'Min';
      P := 0;
      for i := 0 to NumCrit - 1 do
      begin
      if CriSel[i] then
      begin
      grdexport.Cells[N + 1 + P, 1] := NomeCrit[vtrordem[i]];
      grdexport.Cells[N + 1 + P, 2] := '+' + FloatToStr(pmax[i]) + '%';
      grdexport.Cells[N + 1 + P, 3] := '-' + FloatToStr(pmin[i]) + '%';
      INC(P);
      end; // CriSel
      end; // For i

      grdexport.Cells[N, 5] := 'Deviation from the Original Ranking';
      for i := 0 to IWGriddeviation.RowCount - 1 do
      for j := 0 to IWGriddeviation.ColumnCount - 1 do
      grdexport.Cells[N + i, 6 + j] := IWGriddeviation.Cell[i, j].Text;

      P := 0;

      grdexport.Cells[N, 11] :=
      'Percentage of times that the alternative was ordered in the position:';
      for i := 0 to IWGridpercent.RowCount - 1 do
      for j := 0 to IWGridpercent.ColumnCount - 1 do
      grdexport.Cells[N + i, 12 + j] := IWGridpercent.Cell[i, j].Text;

      end; }

    { no componente advwebgrid o endereçamento de celulas segue o padrão AdvWebGrid.Cells[coluna, linha]:= }
    grdExportCB.Cells[0, 0] := 'Criteria:';
    grdExportCB.Cells[0, 1] := '0-Cont Min; 1-Cont Max; 2-Disc Min; 3-Disc Max';
    // grdexport.Cells[0, 2] := 'Weights';
    grdExportCB.Cells[0, 2] := 'Type:';
    grdExportCB.Cells[0, 3] := 'a:';
    grdExportCB.Cells[0, 4] := 'b:';
    grdExportCB.Cells[0, 5] := 'c:';
    grdExportCB.Cells[0, 6] := 'Alternatives:';
    grdExportCB.Cells[NumCrit + 1, 0] := 'Budget';

    for i := 0 to NumCrit - 1 do
    begin
      grdExportCB.Cells[1 + i, 0] := NomeCrit[vtrordem[i]];
      grdExportCB.Cells[1 + i, 1] := IntToStr(Typeofcrit[vtrordem[i]]);
      grdExportCB.Cells[1 + i, 2] := IntToStr(FTipo[vtrordem[i]]);
      grdExportCB.Cells[1 + i, 3] := FloatToStr(parA[vtrordem[i]]);
      grdExportCB.Cells[1 + i, 4] := FloatToStr(parB[vtrordem[i]]);
      grdExportCB.Cells[1 + i, 5] := IntToStr(Niveis[vtrordem[i]]);
      grdExportCB.Cells[NumCrit + 1, 1] := TrocaVP(Budget);

    end;

    grdExportCB.Cells[1, 6] := 'Alternatives:';

    for i := 0 to NumAlt - 1 do

    begin
      grdExportCB.Cells[0, 7 + i] := NomeAlt[i];
      grdExportCB.Cells[NumCrit + 1, 7 + i] := FloatToStr(Cost[i]);

      for j := 0 to NumCrit - 1 do
        grdExportCB.Cells[1 + j, 7 + i] := FloatToStr
          (ConsMatrix[i, vtrordem[j]]);

    end;
    grdranking.totalRows:=TIWUserSession(WebApplication.Data).NumAlt + 1;
      if grdranking.Columns.Count < 5 then
      begin
        grdranking.Columns.Add;
        grdranking.Columns.Add;
      end;
      for i := 0 to grdranking.totalRows - 1 do
      begin
        for J := 0 to grdranking.Columns.Count - 1 do
        begin
          grdranking.Cells[J, i] := grdExportCB.Cells[J + TIWUserSession
            (WebApplication.Data).Numcrit + 2, i]
        end;

      end;

   if html=false then  // verifica se o botão para gerar o arquivo em html foi feiclicado
    begin

    TIWAdvWebGridExcelIO3.AdvWebGrid := grdExportCB;

    // TIWAdvWebGridExcelIO2.AdvWebGrid.Components[1] := grdexport;

    TIWAdvWebGridExcelIO3.XLSExport
      (Probname + ' ' + Data + ' - Output' + '.xls', WebApplication);
    end;
    Inherited;

  end; // With
  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarresultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 3;
  SalvarresultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '1';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarresultBD;

end;

procedure Tfrmportfolioresults.MenuItem4Click(Sender: TObject);
var
  i, j, K, P, N, h, lin_matriz_ciclo, cont: integer;
  Data, somadecision: string;
  matriz_perg: array of array of string; // matriz que armazena as perguntas respondidas
  vet_real_consA_ciclo_aux: Double;
  vet_real_consA_ciclo_aux2: array of string;
  alt_pref_ord, auxalt_pref_ord1: string;
  vet_alt_pref_ord_aux, vtr_final_pref_ord: array of string;
  Stop, inck: Boolean;



  Nciclosintra, x, z: integer;
  Matrizciclosintra: array of array of string;
  Ciclosintra: string;

  { auxpoa, auxpoa1, auxnomealtexp, , auxrethc: string;
    vet_poa_ciclo_aux, : array of string;
    alt_avaliadas, somadecision, auxalt_avaliadas1, auxalt_avaliadasexp: string;
    auxrethc1: string;
    matriz_ciclo_ah: array of array of string;
    vet_ret_hc_aux, vet_alt_avaliadas_aux, vetorciclo_ah: rray of string;
    matriz_AHR: array of array of string; // matriz que armazena as informações da AH realizadas }

begin
  Data := datetostr(now);
  for i := 1 to length(Data) - 1 do
    if Data[i] = '/' then
      Data[i] := '_';

  grdExportSum.Columns.Clear;

  with TIWUserSession(WebApplication.Data) do
  begin

    for i := 0 to 10 do
    begin
      grdExportSum.Columns.Add;
    end;

    begin
      // Retornando dados da planilha elicitação
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 23;
      SalvarresultBD;

      if not avaliable then
      begin
        WebApplication.ShowMessage(
          'The application sumary is only avaliable for problems registered after May 24th. We appologize for this inconvenience.');
        Exit;
      end;

      // inicialmente preenchendo uma matriz que armazena todas as informações das perguntas respondidas
      setlength(matriz_perg, length(TIWUserSession(WebApplication.Data)
            .qp_ret_exp) + 2, 6);
      // inicialmente setando informações que são fixas,informações do cabeçalho
      matriz_perg[0, 0] := 'Application report';
      matriz_perg[1, 0] := 'Cycle';
      matriz_perg[1, 1] := 'Consequence A';
      matriz_perg[1, 2] := 'Consequence B';
      matriz_perg[1, 3] := 'Answer';
      matriz_perg[1, 4] := 'Number of levels';
      matriz_perg[1, 5] := 'Recommendation';
      matriz_perg[2, 3] := 'Ordering...';

      // adicionando informações que variam
      for i := 2 to (length(TIWUserSession(WebApplication.Data).qp_ret_exp)
          + 2) - 1 do
      begin
        // numero de linhas as colunas sempre vão ser fixas
        // adicionando informações dos ciclos
        matriz_perg[i, 0] := qp_ret_exp[i - 2];

        // adicionando as preferencias do decisor
        if vet_preferences_ciclo[i - 2] = '-10' then
          // quando ainda nenhuma pergunta foi respondida
          matriz_perg[i, 3] := 'Ordering...';
        if vet_preferences_ciclo[i - 2] = '0' then // respondeu A
          matriz_perg[i, 3] := 'Consequence A';
        if vet_preferences_ciclo[i - 2] = '1' then // respondeu B
          matriz_perg[i, 3] := 'Consequence B';
        if vet_preferences_ciclo[i - 2] = '2' then // respondeu indiferente
          matriz_perg[i, 3] := 'Indifferent';
        if vet_preferences_ciclo[i - 2] = '3' then // respondeu no answer
          matriz_perg[i, 3] := 'No Answer';
        if vet_preferences_ciclo[i - 2] = '4' then // respondeu Inconsistency
          matriz_perg[i, 3] := 'Inconsistency';

        // adicionando informações da consequencia B
        if vet_idB_ciclo[i - 2] = '-10' then
        begin
          matriz_perg[i, 2] := '';
        end
        else
        begin
          if (Typeofcrit[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]] = 1) or
            (Typeofcrit[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]] = 3) then
            begin
            StrDInd := vtrordem[StrToInt(vet_idB_ciclo[i - 2])];
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + {FloatToStr}
              Rounding(MaxCons[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]) + ')';
            end;

          if (Typeofcrit[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]] = 0) or
            (Typeofcrit[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]] = 2) then
            begin
            StrDInd := vtrordem[StrToInt(vet_idB_ciclo[i - 2])];
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + {FloatToStr}
              Rounding(MinCons[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]) + ')';
            end;

        end; // referente ao else

        // adicionando informações da consequencia A
        if TIWUserSession(WebApplication.Data).vet_idA_ciclo[i - 2] = '-10' then
        begin
          matriz_perg[i, 1] := '';
        end
        else
        begin
          StrDInd := vtrordem[StrToInt(vet_idA_ciclo[i - 2])];
          vet_real_consA_ciclo_aux := StrToFloat(vet_real_consA_ciclo[i - 2]);
          // vet_real_consA_ciclo_aux2 := FormatFloat('0.000', vet_real_consA_ciclo_aux);
          matriz_perg[i, 1] := {FormatFloat}
            Rounding({'#,##0.00', }vet_real_consA_ciclo_aux) + ' ' + 'of' + ' ' + NomeCrit
            [vtrordem[StrToInt(vet_idA_ciclo[i - 2])]];
        end;

        // adicionando informações dos números de níveis
        matriz_perg[i, 4] := vet_rpos_ciclo[i - 2];

        // adicionando informações das recomendações//

        matriz_perg[i, 5] := TIWUserSession(WebApplication.Data)
          .vet_recomend_ciclo[i - 2];

      end; // referente ao for i := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp)- 1 do

      grdExportSum.TotalRows := (length(matriz_perg) + 3);
      // plota a pergunta do ciclo
      for i := 0 to length(matriz_perg) - 1 do
      begin

        for j := 0 to length(matriz_perg[i]) - 1 do
        begin
          grdExportSum.Cells[j, i + 1] := matriz_perg[i, j];
        end; // referente a for j := 0 to Length(matriz_perg[k]) - 1 do
      end;


    // ///////////COLOCANDO OS CICLOS DA ETAPA INTRACRITERIO NO EXCEL DE EXPORTAÇÃO///////////////////////////////

    // Pegando os ciclos no banco de dados

    with UserSession.ZQuery1 do
    begin

      SQL.Text := 'SELECT Cycles FROM intracrit WHERE id_problem="' +
        (TIWUserSession(WebApplication.Data).id_problema)
        + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data).nround)
        + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
          .fvround) + '";';
      ExecSQL;
      open;
      Ciclosintra := FieldByName('Cycles').AsString;
      close;
    end;

    Z := 0;
    // Contando a quantidade de ciclos
    for i := 1 to length(Ciclosintra) do
    begin
      if Ciclosintra[i] = '/' then
      begin
        INC(Z);
        if Z = 5 then
        begin
          INC(Nciclosintra);
          Z := 0
        end; // if z
      end; // if Ciclosintra[i]
    end; // for i

    // Setando a matriz que recebe os ciclos intracriterio
    setlength(Matrizciclosintra, Nciclosintra, 5);

    // Passando os dados dos ciclos para a matriz
    Z := 0;
    for i := 1 to length(Ciclosintra) do
    begin
      if Ciclosintra[i] <> '/' then
        Matrizciclosintra[x, Z] := Matrizciclosintra[x, Z] + Ciclosintra[i];
      if Ciclosintra[i] = '/' then
      begin
        INC(Z);
        if Z = 5 then
        begin
          INC(x);
          Z := 0;
        end;
      end;
    end;

    SetLength(guardaciclos, Nciclosintra);

    /// /Setando o grid que faz a exportação Excel///////////////
    grdExportSum.RowCount := grdExportSum.TotalRows + 3 + Nciclosintra;

    // Inseringo 8 colunas a mais
    for i := 0 to 8 do
      grdExportSum.Columns.Add;

    /// /////////Colocando cabeçalho no grid que faz a exportação Excel///////////////
    grdExportSum.Cells[8, 1] := 'Intra-criteria Report';
    grdExportSum.Cells[8, 2] := 'Cycle';
    grdExportSum.Cells[9, 2] := 'Criteria';
    grdExportSum.Cells[10, 2] := 'ILO';
    grdExportSum.Cells[11, 2] := 'IUP';
    grdExportSum.Cells[12, 2] := 'Answer';


    //Inserindo o ciclo zero
    grdExportSum.Cells[8, 3] := '0';
    grdExportSum.Cells[12, 3] := 'Eliciting...';

    /// /////////Passando os dados da matriz que salva os ciclos para o grid que faz a exportação Excel///////////////
    for i := 0 to Nciclosintra - 1 do
    begin
      grdExportSum.Cells[8, i + 4] := InttoStr(TIWUserSession(WebApplication.Data).guardaciclos[i]);
      for j := 0 to 4 do
      begin
        grdExportSum.Cells[j + 9, i + 4] := Matrizciclosintra[i, j];

      end; // for j
    end; // for
    if grdintracriterio.Columns.Count < 6 then
    begin
      grdintracriterio.Columns.Add;
      grdintracriterio.Columns.Add;
      grdintracriterio.Columns.Add;
    end;

    grdintracriterio.RowCount := TIWUserSession(WebApplication.Data).Nciclos + 3;
    for i :=0 to grdintracriterio.RowCount -1 do
    begin
      for J := 0 to grdintracriterio.Columns.Count - 1 do
      begin
        grdintracriterio.Cells[J, i] := grdExportSum.Cells[J+8, i+1];

      end;

    end;



     if html=false then   // verifica se o botão para gerar o arquivo em html foi feiclicado
    begin

      TIWAdvWebGridExcelIO4.AdvWebGrid := grdExportSum;
      TIWAdvWebGridExcelIO4.XLSExport(TIWUserSession(WebApplication.Data)
          .Probname + ' ' + Data + ' - Summary of Elicitation' + '.xls',
        WebApplication);
    end;
      Inherited;

    end; // referente ao with
  end;
 TIWUserSession(WebApplication.Data).html:=false;
end;

procedure Tfrmportfolioresults.Portuguese1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Guia Rápido Fitradeoff - PT-BR' + '.pdf', true);
end;

procedure Tfrmportfolioresults.Restartthecurrentproblem1Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).VerificaUnit := -55;
  TFrmEntrada.Create(WebApplication).Show;
end;

procedure Tfrmportfolioresults.SalvarresultBD;
var
  AuxsalvarBD, tamauxid_alt, K: integer;
  time, auxmx_value, auxmin_value, auxid_criteria, auxid_alt_inc,
    auxid_alt_exc, aux_finc, aux_fexc, auxprofile_inct, auxprofile_exct: string;
  vtrAuxPOA, vetauxexc: array of integer;
  vtrVouFPOA, auxnumchange, auxpos_inc, auxpos_exc, axprofile_inc,
    profiles_inc, frequencia_inc, axfreq_inc: array of string;
  NumAlt, i, j, tampos_inc: integer;
  auxprofile_inc, auxprofile_exc, auxchange2, auxnchange, auxid_as: string;
  auxdatafinal, auxdecision, auxnum_alt, auxalt_avaliadas, auxaltexcoupre,
    auxaltcomparadas, auxquestii: string;
  ic, fn, tt: ttime;
  auxchange: Real;
  auxpoa, auxcancel, auxbdidh, auxbdidah, id_pro, S: string;
  auxcontelicitation, P, id_round: integer;
  auxnumpoa: integer;
  vtrpercigual: array of Double;
  vtrniveis: array of string;
  auxvtrniveis: string;
  auxmarizpercent1: array of array of Double;
  id_round_, id_pro_: string;

  /// auxiliares utilizadas nos casos referentes à etapa intracriterio- 19.01.22///
    AuxBoundMx, AuxBoundMn, AuxFtipoOrig, AuxverificaIntra, AuxLinearIntra,
      AuxChangeLinear, AuxCritElicit, Auxpercentcrit, AuxMatInterpol,
      AuxPointsBisec: string;

begin
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  setlength(vtrAuxPOA, NumAlt);
  setlength(vtrVouFPOA, NumAlt);
  with UserSession.ZQuery1 do
  begin
    case TIWUserSession(WebApplication.Data).AuxsalvarBD of

      0: // salvando o tempo de execusão
        begin
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton2(Close) DA REGIÃO  IWRgnresultadografico
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton7(Show Results in a Ratio Scale) DA REGIÃO  IWRgnresultadoradar
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton9(Show Results in an Interval Scale) DA REGIÃO  IWRgnresultadoradar
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton12(View Graph) DA REGIÃO  IWRgnfinaltabela
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton21(Back to Elicitation) DA REGIÃO  IWRgnfinaltabela
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton7(Export Results) DA REGIÃO  IWRgnfinaltabela
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton8(Show Results in an Interval Scale) DA REGIÃO  IWRgnbubble
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton11(Show Results in an Interval Scale) DA REGIÃO  IWRgnbubble
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton8(Show Results in an Interval Scale) DA REGIÃO  IWRgngraficobarras
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton5(Show Results in a Ratio Scale) DA REGIÃO  IWRgngraficobarras

          TIWUserSession(WebApplication.Data).tempofinal := Timetostr(now);
          ic := strtotime(TIWUserSession(WebApplication.Data).tempinicio);
          fn := strtotime(TIWUserSession(WebApplication.Data).tempofinal);
          if TIWUserSession(WebApplication.Data).tempexecant <> '' then
            tt := fn - ic + strtotime(TIWUserSession(WebApplication.Data)
                .tempexecant)
          else
            tt := fn - ic;
          TIWUserSession(WebApplication.Data).tempexec := Timetostr(tt);
          TIWUserSession(WebApplication.Data).tempexec := Timetostr(tt);

          SQL.Text := 'UPDATE problem SET exec_time  ="' +
            (TIWUserSession(WebApplication.Data).tempexec)
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '";';
          ExecSQL;
          TIWUserSession(WebApplication.Data).tempexecant := TIWUserSession
            (WebApplication.Data).tempexec;
          TIWUserSession(WebApplication.Data).tempinicio := TIWUserSession
            (WebApplication.Data).tempofinal;
          TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
        end;

      1: // salvando como verdadeiro o vetor que contem as alternativas potencialmente otimas no final do problema e a data de finialização do problema
        begin
          // ESSE PROCEDIMENTO FOI CHAMADO NO TfrmResultados.IWRgnfinaltabelaCreate(Sender: TObject);
          // como o vtrpoa é um array of integer que contem apenas o indices das alternativas que são optencialmente otimas, é necessário transformar em string
          // inicialmente setando o vetor vtrVouFPOA como todo false e preencher o vtrAuxPOA;
          { for i := 0 to NumAlt - 1 do
            begin
            //  vtrVouFPOA[i] := 'false';
            vtrAuxPOA[i] := i;
            end; }

          // em seguida fazer a logica para modificar os vtrVouFPOA para verdadeiro quando a alternativa for potencialmente otima
          // vai receber 0 se a alternativa não fizer parte das POA e 1 se a alternativa fizer parte das POA
          if length(TIWUserSession(WebApplication.Data).VAltPositionsO)
            <> 0 then
          begin
            for i := 0 to NumAlt - 1 do
            begin
              SQL.Text :=
                'UPDATE alternatives SET poa ="0" WHERE id_problem="' +
                (TIWUserSession(WebApplication.Data).id_problema)
                + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround) + '"AND name="' +
                (TIWUserSession(WebApplication.Data).NomeAlt[i]) + '";';
              ExecSQL;
            end;
          end
          else
          begin

            for i := 0 to NumAlt - 1 do
            begin
              for j := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)
                - 1 do
              begin
                if TIWUserSession(WebApplication.Data).VetPOA[j] = i then
                begin
                  SQL.Text :=
                    'UPDATE alternatives SET poa ="1" WHERE id_problem="' +
                    (TIWUserSession(WebApplication.Data).id_problema)
                    + '"AND round="' + IntToStr
                    (TIWUserSession(WebApplication.Data).nround)
                    + '"AND name="' + (TIWUserSession(WebApplication.Data)
                      .NomeAlt[i]) + '";';
                  ExecSQL;
                end
                else
                  SQL.Text :=
                    'UPDATE alternatives SET poa ="0" WHERE id_problem="' +
                    (TIWUserSession(WebApplication.Data).id_problema)
                    + '"AND round="' + IntToStr
                    (TIWUserSession(WebApplication.Data).nround)
                    + '"AND name="' + (TIWUserSession(WebApplication.Data)
                      .NomeAlt[i]) + '";';
                ExecSQL;
              end;
            end;
          end;
          { for i := 0 to NumAlt - 1 do
            begin
            sql.Text := 'UPDATE alternatives SET poa ="' +
            (vtrVouFPOA[i]) + '" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
            end; }

          TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
        end;

      2:
        begin
          // O estagio será 0 (antes de ordenar os criterios), 1(Começou a ordenar), 2(começou elicitação sem ordenar), 3(começou elicitação apos ordenar), 4(finalizou processo), 5(problema acabou)
          // estagio =5 adicionado no IWRgnfinaltabelaCreate ;
          // estagio =0, ESSE CASO FOI CHAMADO NO BOTÃO btnResetRecomcProblema (Reset and restart problem) NA REGIÃO IWRgnReset2
          SQL.Text := 'UPDATE problem SET stage ="' + IntToStr
            (TIWUserSession(WebApplication.Data).estagio)
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '";';
          ExecSQL;
          TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
        end;

      3:
        // ESSE CASO FOI CHAMADO NA REGIÃO IWRgnfinaltabelaCreate
        // ESSE CASO FOI CHAMADO NO BOTÃO IWButton7(Export Results) DA REGIÃO  IWRgnfinaltabela
        begin
          auxdatafinal := datetostr(date);
          SQL.Text := 'UPDATE problem SET conclusion_date ="' + (auxdatafinal)
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '";';
          ExecSQL;
          TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
        end;
      4:
        begin
          // status 0 (em amdamento), status 1 (finalizado)
          { casos em que o status é 0:
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton2(Close) DA REGIÃO  IWRgnresultadografico
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton7(Show Results in a Ratio Scale) DA REGIÃO  IWRgnresultadoradar
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton9(Show Results in an Interval Scale) DA REGIÃO  IWRgnresultadoradar
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton12(View Graph) DA REGIÃO  IWRgnfinaltabela
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton21(Back to Elicitation) DA REGIÃO  IWRgnfinaltabela
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton8(Show Results in an Interval Scale) DA REGIÃO  IWRgnbubble
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton11(Show Results in an Interval Scale) DA REGIÃO  IWRgnbubble
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton8(Show Results in an Interval Scale) DA REGIÃO  IWRgngraficobarras
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton5(Show Results in a Ratio Scale) DA REGIÃO  IWRgngraficobarras }

          { casos em que o status é 1:
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton7(Export Results) DA REGIÃO  IWRgnfinaltabela }

          SQL.Text := 'UPDATE current_stage SET status ="' +
            (TIWUserSession(WebApplication.Data).BDstatus)
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '";';
          ExecSQL;
          TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
        end;

      5:
        begin
          // ESSE CASO FOI CHAMADO NO BOTÃO btnResetRecomProbl(Reset and restart problem) DA REGIÃO  IWRgnReset2
          // pegar o ultimo valor do banco de dados e incrementar

          SQL.Text := 'SELECT round FROM problem WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).id_problema) + '";';
          ExecSQL;
          open;
          TIWUserSession(WebApplication.Data).nround := FieldByName('round')
            .AsInteger;
          close;

          INC(TIWUserSession(WebApplication.Data).nround);

          // para preencher a planilha problema
          SQL.Text := 'UPDATE problem SET round ="' +
            (IntToStr(TIWUserSession(WebApplication.Data).nround))
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '";';
          ExecSQL;

          // para preencher a planilha current_stage

          SQL.Text := 'UPDATE current_stage SET round ="' +
            (IntToStr(TIWUserSession(WebApplication.Data).nround))
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '";';
          ExecSQL;

          // para preencher a planilha alternatives

          for i := 0 to NumAlt - 1 do
          begin
            TIWUserSession(WebApplication.Data).ID_Alternative[i] := i;
          end;

          for i := 0 to NumAlt - 1 do
          begin
            SQL.Text :=
              'INSERT INTO alternatives (name,id_problem,id_alternative,round) VALUES ("' +
              (TIWUserSession(WebApplication.Data).NomeAlt[i]) + '","' +
              (TIWUserSession(WebApplication.Data).id_problema)
              + '","' + IntToStr(TIWUserSession(WebApplication.Data)
                .ID_Alternative[i]) + '","' + IntToStr
              (TIWUserSession(WebApplication.Data).nround) + '")';
            ExecSQL;
          end;

          { sql.Text := 'UPDATE alternatives SET round ="' + (IntToStr(TIWUserSession(WebApplication.Data).nround))
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
            .ID_Problema) + '";';
            ExecSQL; }

          TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
        end;

      6:
        begin
          // ESSE PROCEDIMENTO FOI CHAMADO NO TfrmResultados.IWRgnfinaltabelaCreate(Sender: TObject);

          if length(TIWUserSession(WebApplication.Data).VAltPositionsO) = 0 then
          begin
            setlength(TIWUserSession(WebApplication.Data).VAltPositionsO,
              NumAlt);
            for i := 0 to NumAlt - 1 do
            begin
              TIWUserSession(WebApplication.Data).VAltPositionsO[i] := 0;
            end;
          end;

          for i := 0 to NumAlt - 1 do
          begin
            SQL.Text := 'UPDATE alternatives SET ranking_position ="' + IntToStr
              (TIWUserSession(WebApplication.Data).VAltPositionsO[i])
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .id_problema) + '"AND round="' + IntToStr
              (TIWUserSession(WebApplication.Data).nround) + '"AND name="' +
              (TIWUserSession(WebApplication.Data).NomeAlt[i]) + '";';
            ExecSQL;
          end;

        end;
      7:
        begin
          { // ESSE PROCEDIMENTO FOI CHAMADO EM IWRgnfinaltabelaCreate(Sender: TObject
            for i := 0 to NumAlt - 1 do
            begin
            SQL.Text := 'UPDATE alternatives SET valor_global ="' + FloatToStr
            (TIWUserSession(WebApplication.Data).Altglobalvalue[i])
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
            .ID_Problema) + '"AND round="' + IntToStr
            (TIWUserSession(WebApplication.Data).nround) + '"AND name="' +
            (TIWUserSession(WebApplication.Data).NomeAlt[i]) + '";';
            ExecSQL;
            end; }
        end;
      8:
        begin
          // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO  btnHETDecision2Click (ok) DA REGIÃO IWRgnfinaltabela
          // codigo para salvar informações da avaliação holistica
          // inicialmente é preciso desmembrar a matriz que contem as informações sobre as avaliações holisticas realizadas
          // vai ser salvo no vaco de dados a cada AH que for realizada, logo será pega apenas a ultima linha da matriz pegando o NumAH como a linha em analise
          // pegando a informação se o decisor preferiu uma alternativa (2) ou se excluiu uma alternativa (1)
          auxdecision := IntToStr(TIWUserSession(WebApplication.Data)
              .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1, 0]);
          // pegando a informação sobre qual foi o número de alternativas avaliadas
          auxnum_alt := IntToStr
            (length(TIWUserSession(WebApplication.Data)
                .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1]) - 1);
          // pegando o indice das alternativas avaliadas e agregando em uma unica string
          for i := 1 to length(TIWUserSession(WebApplication.Data)
              .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1]) - 1 do
          begin
            auxalt_avaliadas := auxalt_avaliadas + IntToStr
              (TIWUserSession(WebApplication.Data)
                .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1, i]);

            if i < length(TIWUserSession(WebApplication.Data)
                .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1])
              - 1 then
            begin
              auxalt_avaliadas := auxalt_avaliadas + '/';
            end;

          end;
          if TIWUserSession(WebApplication.Data).Problematica = 0 then
          begin
            // para o caso de escolha
            // pegando a alternativa excluida ou preferida
            auxaltexcoupre := IntToStr
              (TIWUserSession(WebApplication.Data)
                .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1, 1]);

            // pegando as outras alternativas que foram comparadas
            for i := 2 to length(TIWUserSession(WebApplication.Data)
                .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1]) - 1 do
            begin
              auxaltcomparadas := auxaltcomparadas + IntToStr
                (TIWUserSession(WebApplication.Data)
                  .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1, i]);

              if i < length(TIWUserSession(WebApplication.Data)
                  .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1])
                - 1 then
              begin
                auxaltcomparadas := auxaltcomparadas + '/';
              end;

            end;

            { auxbdidah:= Inttostr (TIWUserSession(WebApplication.Data).HEINDEX[0,(TIWUserSession(WebApplication.Data).totalAH)]);
              i:=0;
              while i< length(auxbdidah) do
              begin
              if auxbdidah[i]<>'(' then
              auxbdidh:=auxbdidh+auxbdidah[i];
              INC(i);
              end; }

            for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)
              - 1 do
            begin
              auxpoa := auxpoa + ',' + IntToStr
                (TIWUserSession(WebApplication.Data).VetPOA[i]);
            end; // referente a for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)

            // salvando o caso de exclusão
            if auxdecision = '1' then
            begin
              SQL.Text :=
                'INSERT INTO holistic_evaluation (id_problem,num_alt,alt_avaliadas,decision,id_alt_e,id_alt_c,id_ah,round,status,vis_he,poa) VALUES ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + (auxnum_alt) + '","' + (auxalt_avaliadas) + '","' + (auxdecision) + '","' + (auxaltexcoupre) + '","' + (auxaltcomparadas) + '","' + IntToStr(TIWUserSession(WebApplication.Data).HEINDEX[0, (TIWUserSession(WebApplication.Data).TotalAH) - 1]) + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + IntToStr(1) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (auxpoa) + '")';
              ExecSQL;
            end
            else
            // salvando o caso de preferencia
            begin
              SQL.Text :=
                'INSERT INTO holistic_evaluation (id_problem,num_alt,alt_avaliadas,decision,id_alt_c,id_alt_e,id_ah,round,status,vis_he,poa) VALUES ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + (auxnum_alt) + '","' + (auxalt_avaliadas) + '","' + (auxdecision) + '","' + (auxaltexcoupre) + '","' + (auxaltcomparadas) + '","' + IntToStr(TIWUserSession(WebApplication.Data).HEINDEX[0, (TIWUserSession(WebApplication.Data).TotalAH) - 1]) + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + IntToStr(1) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (auxpoa) + '")';
              ExecSQL;
            end;
          end;
          if TIWUserSession(WebApplication.Data).Problematica = 1 then
          begin
            // para o caso de ordenação
            SQL.Text :=
              'INSERT INTO holistic_evaluation (id_problem,num_alt,alt_avaliadas,decision,id_alt_c,id_ah,round,status,vis_he,num_rlevels) VALUES ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + (auxnum_alt) + '","' + (auxalt_avaliadas) + '","' + (auxdecision) + '","' + (auxalt_avaliadas) + '","' + IntToStr(TIWUserSession(WebApplication.Data).HEINDEX[0, (TIWUserSession(WebApplication.Data).TotalAH) - 1]) + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + IntToStr(1) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + IntToStr(TIWUserSession(WebApplication.Data).Rlevels) + '")';
            ExecSQL;
          end;
        end;
      9:
        // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO btnstartAS(Start) NA REGIÃO rgnsav
        begin
          // procedimento para salvar informações da analise de sensibilidade
          // inicialmente agregando os vetores que apresentam os percentuais para mais e para menos dos criterios modificados
          for i := 0 to length(TIWUserSession(WebApplication.Data).Pmax) - 1 do
          begin
            if TIWUserSession(WebApplication.Data).Pmax[i] <> 0 then
              auxmx_value := auxmx_value + ',' + FloatToStr
                (TIWUserSession(WebApplication.Data).Pmax[i]);
            if TIWUserSession(WebApplication.Data).Pmin[i] <> 0 then
              auxmin_value := auxmin_value + ',' + FloatToStr
                (TIWUserSession(WebApplication.Data).Pmin[i]);
          end;

          // pegando os indices dos criterios que foram selecionados
          for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
          begin
            if TIWUserSession(WebApplication.Data).CriSel[i] = true then
              auxid_criteria := auxid_criteria + ',' + IntToStr
                (TIWUserSession(WebApplication.Data).vtrordem[i]);
          end;

          // pegando o string que ira conter os indices das alternativas potencialmente otimas

          for i := 0 to length(TIWUserSession(WebApplication.Data).AuxFInc) - 1
            do
          begin
            if TIWUserSession(WebApplication.Data).AuxFInc[i] <> 0 then
            begin
              auxid_alt_inc := auxid_alt_inc + ',' + IntToStr(i);
            end;
          end;

          // pegando o string que ira conter os indices das alternativas excluidas

          for i := 0 to NumAlt - 1 do
          begin
            if TIWUserSession(WebApplication.Data).AuxFexc[i] <> 0 then
            begin
              auxid_alt_exc := auxid_alt_exc + ',' + IntToStr(i);
            end;
          end;

          // para salvar o valor de change
          if TIWUserSession(WebApplication.Data).auxfsol[1] = 0 then
          begin
            auxchange2 := '0';
          end
          else
          begin
            auxchange := ((TIWUserSession(WebApplication.Data).auxfsol[1]) /
                (TIWUserSession(WebApplication.Data).ninst));
            auxchange2 := FloatToStr(auxchange);
          end;

          // para salvar a freq_inc
          for i := 0 to NumAlt - 1 do
          begin
            if TIWUserSession(WebApplication.Data).AuxFInc[i] <> 0 then
            begin
              aux_finc := aux_finc + ',' + FloatToStr
                ((TIWUserSession(WebApplication.Data).AuxFInc[i]) /
                  (TIWUserSession(WebApplication.Data).ninst));
            end;
          end;

          // para salvar a freq_exc
          for i := 0 to NumAlt - 1 do
          begin
            if TIWUserSession(WebApplication.Data).AuxFexc[i] <> 0 then
            begin
              aux_fexc := aux_fexc + ',' + FloatToStr
                ((TIWUserSession(WebApplication.Data).AuxFexc[i]) /
                  (TIWUserSession(WebApplication.Data).ninst));
            end;
          end;

          { // para salvar os perfls das alternativas incluidas
            for i := 0 to NumAlt - 1 do
            begin
            if TIWUserSession(WebApplication.Data).AuxFInc[i] <> 0 then
            begin
            for j := 0 to Length(TIWUserSession(WebApplication.Data)
            .AuxMatrizprofile[i]) - 1 do
            begin
            auxprofile_inc := auxprofile_inc + ',' + TIWUserSession
            (WebApplication.Data).AuxMatrizprofile[i, j];
            end;
            auxprofile_inct := auxprofile_inct + '[' + auxprofile_inc + ']';
            auxprofile_inc := ' ';
            end;
            end;

            // para salvar os perfls das alternativas excluidas
            for i := 0 to NumAlt - 1 do
            begin
            if TIWUserSession(WebApplication.Data).AuxFexc[i] <> 0 then
            begin
            for j := 0 to Length(TIWUserSession(WebApplication.Data)
            .AuxMatrizprofile[i]) - 1 do
            begin
            auxprofile_exc := auxprofile_exc + '/' + TIWUserSession
            (WebApplication.Data).AuxMatrizprofile[i, j];
            end;
            auxprofile_exct := auxprofile_exct + '[' + auxprofile_exc + ']';
            auxprofile_exc := ' ';
            end;
            end; }

          SQL.Text :=
            'INSERT INTO sensitivity (id_problem,num_cri,id_var_crit,mx_value,mn_value,id_alt_inc,id_alt_exc,freq_inc,freq_exc,change_,round,problematica) VALUES  ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + IntToStr(TIWUserSession(WebApplication.Data).NCV) + '","' + auxid_criteria + '","' + auxmx_value + '","' + auxmin_value + '","' + auxid_alt_inc + '","' + auxid_alt_exc + '","' + aux_finc + '","' + aux_fexc + '","' + auxchange2 + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + IntToStr(TIWUserSession(WebApplication.Data).Problematica) + '")';
          ExecSQL;
        end;

      10:
        // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO btnstartAS(Start) NA REGIÃO rgnsav
        begin
          // procedimento que salva analise de sensibilidade de ordenação
          // procedimento para salvar informações da analise de sensibilidade
          // inicialmente agregando os vetores que apresentam os percentuais para mais e para menos dos criterios modificados
          for i := 0 to length(TIWUserSession(WebApplication.Data).Pmax) - 1 do
          begin
            if TIWUserSession(WebApplication.Data).Pmax[i] <> 0 then
              auxmx_value := auxmx_value + ',' + FloatToStr
                (TIWUserSession(WebApplication.Data).Pmax[i]);
            if TIWUserSession(WebApplication.Data).Pmin[i] <> 0 then
              auxmin_value := auxmin_value + ',' + FloatToStr
                (TIWUserSession(WebApplication.Data).Pmin[i]);
          end;

          // pegando os indices dos criterios que foram selecionados
          for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
          begin
            if TIWUserSession(WebApplication.Data).CriSel[i] = true then
              auxid_criteria := auxid_criteria + ',' + IntToStr
                (TIWUserSession(WebApplication.Data).vtrordem[i]);
          end;

          SQL.Text :=
            'INSERT INTO sensitivity (id_problem,num_cri,id_var_crit,mx_value,mn_value,round,problematica) VALUES  ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + IntToStr(TIWUserSession(WebApplication.Data).NCV) + '","' + auxid_criteria + '","' + auxmx_value + '","' + auxmin_value + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + IntToStr(TIWUserSession(WebApplication.Data).Problematica) + '")';
          ExecSQL;

        end;

      11:
        begin
          // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO btnstartAS(Start) NA REGIÃO rgnsav
          // esse procedimento também está relacionado com a analise de sensibilidade da ordenação

          // para salvar o valor de id_As
          auxid_as := IntToStr(TIWUserSession(WebApplication.Data).auxas);

          // pegando o % das alternativas que permanecem iguais
          setlength(vtrpercigual, length(TIWUserSession(WebApplication.Data)
                .vtrASordchange));
          for i := 0 to length(TIWUserSession(WebApplication.Data)
              .vtrASordchange) - 1 do
          begin
            vtrpercigual[i] :=
              (1 - ((TIWUserSession(WebApplication.Data).vtrASordchange[i]) /
                  (TIWUserSession(WebApplication.Data).ninst))) * 100;
          end;

          // agrupando por linha da matriz o percentual de mudança em cada round

          setlength(vtrniveis, NumAlt);
          setlength(auxmarizpercent1, NumAlt, TIWUserSession
              (WebApplication.Data).NumLevels);
          for i := 0 to NumAlt - 1 do
          begin
            for j := 0 to TIWUserSession(WebApplication.Data).NumLevels - 1 do
            begin
              auxmarizpercent1[i, j] := (TIWUserSession(WebApplication.Data)
                  .Marizpercent[i, j] / (TIWUserSession(WebApplication.Data)
                    .ninst)) * 100;
              auxvtrniveis := auxvtrniveis + FloatToStr(auxmarizpercent1[i, j]);
              if j < TIWUserSession(WebApplication.Data).NumLevels - 1 then
                auxvtrniveis := auxvtrniveis + '/';
            end;
            vtrniveis[i] := auxvtrniveis;
            auxvtrniveis := '';
          end;

          for i := 0 to NumAlt - 1 do
          begin
            SQL.Text :=
              'INSERT INTO sensitivity_ord_change (id_problem,id_as,round,id_alternative,p_niveis,p_original) VALUES  ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + (auxid_as) + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + IntToStr(i) + '","' + (vtrniveis[i]) + '","' + FloatToStr(vtrpercigual[i]) + '")';
            ExecSQL;
          end;

        end;

      12:
        // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO  btnHETDecision2(OK) NA REGIÃO IWRgnfinaltabela
        begin
          for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA) - 1
            do
          begin
            auxpoa := auxpoa + IntToStr(TIWUserSession(WebApplication.Data)
                .VetPOA[i]);
            if i < length(TIWUserSession(WebApplication.Data).VetPOA) - 1 then
            begin
              auxpoa := auxpoa + '/';
            end;

          end;
          SQL.Text := 'UPDATE  current_stage SET poa ="' + (auxpoa)
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '";';
          ExecSQL;
          TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
        end;
      13:
        begin
          // caso o decisor chegue ao final do processo e aperte restart é necessário apagar a data final do problema

          SQL.Text := 'UPDATE problem SET conclusion_date ="' + '' +
            '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '";';
          ExecSQL;
        end;

      14:
        begin
          // preenchimento da planilha he_question caso o decisor aperte não na primeira pergunta
          // ESSE CASO FOI CHAMADO NO BOTÃO btnhen(no) DA REGIÃO IWRgnfinaltabela
          // ESSE CASO FOI CHAMADO NO BOTÃO btnnoRAH(no) DA REGIÃO IWRgnresultadoradar
          // ESSE CASO FOI CHAMADO NO BOTÃO btnnobrAH(no) DA REGIÃO IWRgngraficobarras
          // ESSE CASO FOI CHAMADO NO BOTÃO btnnobAH(no) DA REGIÃO IWRgnbubble

          SQL.Text :=
            'INSERT INTO he_question (id_problem,round,ans_question_i,id_perg) VALUES  ("' +
            (TIWUserSession(WebApplication.Data).id_problema) + '","' + IntToStr
            (TIWUserSession(WebApplication.Data).nround) + '","' + IntToStr(1)
            + '","' + IntToStr(TIWUserSession(WebApplication.Data).NumQuest)
            + '")';
          ExecSQL;
        end;

      15:
        begin
          { // preenchimento da planilha he_question caso o decisor aperte não na primeira pergunta
            // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO BtnOkHET1 (ok) DA REGIÃO IWRgnfinaltabela

            if rdgrpHEG1.ItemIndex = 0 then
            begin
            auxquestii := 'Sim'
            end
            else
            begin
            if rdbtnEXp1.Checked then
            begin
            auxquestii := 'I am not confident about the Holistic Evaluation'
            end;
            if rdbtnEXp2.Checked then
            begin
            auxquestii :=
            'I just prefer the traditional elicitation by decomposition'
            end;
            if rdbtnEXp3.Checked then
            begin
            auxquestii := 'No answer'
            end;
            end;

            SQL.Text :=
            'INSERT INTO he_question (id_problem,round,ans_question_i,id_perg,ans_question_ii,cancel) VALUES  ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + IntToStr(0) + '","' + IntToStr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (auxquestii) + '","' + (auxcancel) + '")';
            ExecSQL; }
        end;

      16:
        begin
          // caso de cancelamento no meio da AH

          SQL.Text := 'UPDATE he_question SET cancel ="' + IntToStr(1)
            + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '"AND round="' + IntToStr
            (TIWUserSession(WebApplication.Data).nround)
            + '"AND id_perg="' + IntToStr(TIWUserSession(WebApplication.Data)
              .NumQuest) + '";';
          ExecSQL;
        end;
      17:
        begin
          SQL.Text :=
            'SELECT creation_date FROM problem WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema) + '"';
          ExecSQL;
          open;
          S := FieldByName('creation_date').AsString;
          close;
          if StrToDate(S) < StrToDate('05/24/2021') then
          begin
            TIWUserSession(WebApplication.Data).avaliable := false;
            Exit;
          end
          else
            TIWUserSession(WebApplication.Data).avaliable := true;
          // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO btnexportation(Export Results) DA REGIÃO IWRgnfinaltabela
          // retorno de informações do BD para o relatorio da aplicação para problematica de escolha
          SQL.Text :=
            'SELECT COUNT(id_problem) FROM elicitation WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '";';
          ExecSQL;
          open;
          auxcontelicitation := FieldByName('COUNT(id_problem)').AsInteger;
          close;

          if auxcontelicitation <> 0 then
          begin
            i := 0;
            P := 0;
            SQL.Text := 'SELECT * FROM elicitation';
            ExecSQL;
            open;
            while i < auxcontelicitation do
            begin
              id_pro := FieldByName('id_problem').AsString;
              S := FieldByName('round').AsString;
              if S <> '' then
                id_round := StrToInt(S);
              if (id_pro = TIWUserSession(WebApplication.Data).id_problema) and
                (id_round = TIWUserSession(WebApplication.Data).nround) then
              begin
                INC(P);
                setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                setlength(TIWUserSession(WebApplication.Data).vet_poa_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_preferences_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_real_consA_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
                TIWUserSession(WebApplication.Data).qp_ret_exp[i] := FieldByName
                  ('perg').AsString;
                TIWUserSession(WebApplication.Data).vet_poa_ciclo[i] :=
                  FieldByName('poa').AsString;
                if TIWUserSession(WebApplication.Data).qp_ret_exp[i] = '0' then
                begin
                  TIWUserSession(WebApplication.Data).vet_preferences_ciclo[i]
                    := '-10';
                  TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] := '-10';
                  TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] := '-10';
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                    := '-10';
                  TIWUserSession(WebApplication.Data).vet_ret_hc[i] := '0';
                end // referente ao se esta na pergunta 0
                else
                begin
                  TIWUserSession(WebApplication.Data).vet_preferences_ciclo[i]
                    := FieldByName('preference').AsString;
                  TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                    FieldByName('id_cria').AsString;
                  TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                    FieldByName('id_crib').AsString;
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                    := FieldByName('real_cons_a').AsString;
                  TIWUserSession(WebApplication.Data).vet_ret_hc[i] :=
                    FieldByName('holistic_e').AsString;
                end; // referente ao else
                INC(i);
              end; // referente ao if
              next;
            end; // referente ao while
            close;

          end; // referente ao  if auxcontelicitation <> 0

        end; // referente ao caso 17
      18:
        begin
          SQL.Text :=
            'SELECT creation_date FROM problem WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema) + '"';
          ExecSQL;
          open;
          S := FieldByName('creation_date').AsString;
          close;
          if StrToDate(S) < StrToDate('05/24/2021') then
          begin
            TIWUserSession(WebApplication.Data).avaliable := false;
            Exit;
          end
          else
            TIWUserSession(WebApplication.Data).avaliable := true;
          // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO btnexportation(Export Results) DA REGIÃO IWRgnfinaltabela
          // retorno de informações do BD para o relatorio da aplicação para o caso de ordenação
          SQL.Text :=
            'SELECT COUNT(id_problem) FROM elicitation WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '";';
          ExecSQL;
          open;
          auxcontelicitation := FieldByName('COUNT(id_problem)').AsInteger;
          close;

          if auxcontelicitation <> 0 then
          begin
            i := 0;
            P := 0;
            SQL.Text := 'SELECT * FROM elicitation';
            ExecSQL;
            open;
            while i < auxcontelicitation do
            begin
              id_pro := FieldByName('id_problem').AsString;
              S := FieldByName('round').AsString;
              if S <> '' then
                id_round := StrToInt(S);
              if (id_pro = TIWUserSession(WebApplication.Data).id_problema) and
                (id_round = TIWUserSession(WebApplication.Data).nround) then
              begin
                INC(P);
                setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                setlength(TIWUserSession(WebApplication.Data).vet_rpos_ciclo,
                  P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_preferences_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_real_consA_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
                TIWUserSession(WebApplication.Data).qp_ret_exp[i] := FieldByName
                  ('perg').AsString;
                TIWUserSession(WebApplication.Data).vet_rpos_ciclo[i] :=
                  FieldByName('num_rpos').AsString;
                if TIWUserSession(WebApplication.Data).qp_ret_exp[i] = '0' then
                begin
                  TIWUserSession(WebApplication.Data).vet_preferences_ciclo[i]
                    := '-10';
                  TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] := '-10';
                  TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] := '-10';
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                    := '-10';
                  TIWUserSession(WebApplication.Data).vet_ret_hc[i] := '0';
                end // referente ao se esta na pergunta 0
                else
                begin
                  TIWUserSession(WebApplication.Data).vet_preferences_ciclo[i]
                    := FieldByName('preference').AsString;
                  TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                    FieldByName('id_cria').AsString;
                  TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                    FieldByName('id_crib').AsString;
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                    := FieldByName('real_cons_a').AsString;
                  TIWUserSession(WebApplication.Data).vet_ret_hc[i] :=
                    FieldByName('holistic_e').AsString;
                end; // referente ao else
                INC(i);
              end; // referente ao if
              next;
            end; // referente ao while
            close;

          end; // referente ao  if auxcontelicitation <> 0
        end; // referente ao caso 18

      19:
        begin
          // procedimento que verifica o status do campo AS_in_progress da planilha desk
          // se for 0 (desk esta rodando), se for 1 (desk não esta rodando)
          SQL.Text := 'SELECT as_in_progress FROM desk WHERE id= "' + IntToStr
            (1) + '"';
          ExecSQL;
          open;
          TIWUserSession(WebApplication.Data).as_in_progress := FieldByName
            ('as_in_progress').AsInteger;
          close;
        end; // referente ao caso 19
      20:
        begin
          // procedimento para salvar informações necessarias para a AS desk
          // pegando o numero de alternativas potencialmente otimas
          auxnumpoa := length(TIWUserSession(WebApplication.Data).VetPOA);

          // pegando o vetpoa
          // como o vetpoa está em integer deve passar para string
          for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA) - 1
            do
          begin
            auxpoa := auxpoa + IntToStr(TIWUserSession(WebApplication.Data)
                .VetPOA[i]);
            if i < length(TIWUserSession(WebApplication.Data).VetPOA) - 1 then
            begin
              auxpoa := auxpoa + '/';
            end; // referente a  if i < length(TIWUserSession(WebApplication.Data).VetPOA) - 1

          end; // referente a   for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)

          for i := 0 to length(TIWUserSession(WebApplication.Data).Pmax) - 1 do
          begin
            auxmx_value := auxmx_value + FloatToStr
              (TIWUserSession(WebApplication.Data).Pmax[i]);
            auxmin_value := auxmin_value + FloatToStr
              (TIWUserSession(WebApplication.Data).Pmin[i]);

            if i < length(TIWUserSession(WebApplication.Data).Pmax) - 1 then
            begin
              auxmx_value := auxmx_value + '/';
              auxmin_value := auxmin_value + '/';
            end;
          end;

          // pegando os criterios que foram selecionados
          for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
          begin
            if TIWUserSession(WebApplication.Data).CriSel[i] = true then
              auxid_criteria := auxid_criteria + IntToStr(1);
            if TIWUserSession(WebApplication.Data).CriSel[i] = false then
              auxid_criteria := auxid_criteria + IntToStr(0);

            if i < TIWUserSession(WebApplication.Data).NumCrit - 1 then
              auxid_criteria := auxid_criteria + ',';

          end;

          SQL.Text :=
            'INSERT INTO sensitivity_line (id_problem,user,round,ep,num_poa,num_inst,num_ah,vet_poa,crit_changes,mx_value,min_value) VALUES ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + (TIWUserSession(WebApplication.Data).ID_user) + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).epsilon) + '","' + IntToStr(auxnumpoa) + '","' + IntToStr(TIWUserSession(WebApplication.Data).ninst) + '","' + IntToStr(TIWUserSession(WebApplication.Data).NumAH) + '","' + (auxpoa) + '","' + (auxid_criteria) + '","' + (auxmx_value) + '","' + (auxmin_value) + '")';
          ExecSQL;
        end;
      // referente ao caso 20
      21:
        begin
          // esse caso será utilizado para contar quantas AH existem no banco de dados realizadas par aquela problema
          SQL.Text :=
            'SELECT COUNT(id_problem) FROM holistic_evaluation WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '";';
          ExecSQL;
          open;
          TIWUserSession(WebApplication.Data).auxquantdeah := FieldByName
            ('COUNT(id_problem)').AsInteger;
          close;
          // setando os tamanhos dos vetores
          setlength(TIWUserSession(WebApplication.Data).vtr_id_ah_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
          setlength(TIWUserSession(WebApplication.Data).vtr_alt_avaliadas_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
          setlength(TIWUserSession(WebApplication.Data).vtr_decision_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
          setlength(TIWUserSession(WebApplication.Data).vtr_id_alt_e_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
          setlength(TIWUserSession(WebApplication.Data).vtr_id_alt_c_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
          setlength(TIWUserSession(WebApplication.Data).vtr_poa_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);

          // a partir dai pegando informações do BD
          i := 0;
          SQL.Text := 'SELECT * FROM holistic_evaluation';
          ExecSQL;
          open;

          while i < TIWUserSession(WebApplication.Data).auxquantdeah do
          begin

            id_pro_ := FieldByName('id_problem').AsString;
            id_round_ := FieldByName('round').AsString;

            if (id_pro_ = TIWUserSession(WebApplication.Data).id_problema) and
              (id_round_ = IntToStr(TIWUserSession(WebApplication.Data).nround)
              ) then
            begin
              TIWUserSession(WebApplication.Data).vtr_id_ah_sum[i] :=
                FieldByName('id_ah').AsString;
              TIWUserSession(WebApplication.Data).vtr_alt_avaliadas_sum[i] :=
                FieldByName('alt_avaliadas').AsString;
              TIWUserSession(WebApplication.Data).vtr_decision_sum[i] :=
                FieldByName('decision').AsString;
              TIWUserSession(WebApplication.Data).vtr_id_alt_e_sum[i] :=
                FieldByName('id_alt_e').AsString;
              TIWUserSession(WebApplication.Data).vtr_id_alt_c_sum[i] :=
                FieldByName('id_alt_c').AsString;
              TIWUserSession(WebApplication.Data).vtr_poa_sum[i] := FieldByName
                ('poa').AsString;
              INC(i);
            end;
            next;
          end;
          close;
        end;
      // referente ao caso 21

      22:
        begin
          // esse caso será utilizado para contar quantas AH existem no banco de dados realizadas par aquela problema
          SQL.Text :=
            'SELECT COUNT(id_problem) FROM holistic_evaluation WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '";';
          ExecSQL;
          open;
          TIWUserSession(WebApplication.Data).auxquantdeah := FieldByName
            ('COUNT(id_problem)').AsInteger;
          close;
          // setando os tamanhos dos vetores
          setlength(TIWUserSession(WebApplication.Data).vtr_id_ah_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
          setlength(TIWUserSession(WebApplication.Data).vtr_alt_avaliadas_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
          setlength(TIWUserSession(WebApplication.Data).vtr_decision_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
          setlength(TIWUserSession(WebApplication.Data).vtr_id_alt_c_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
          setlength(TIWUserSession(WebApplication.Data).vtr_num_rlevels_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);

          // a partir dai pegando informações do BD
          i := 0;
          SQL.Text := 'SELECT * FROM holistic_evaluation';
          ExecSQL;
          open;

          while i < TIWUserSession(WebApplication.Data).auxquantdeah do
          begin

            id_pro_ := FieldByName('id_problem').AsString;
            id_round_ := FieldByName('round').AsString;

            if (id_pro_ = TIWUserSession(WebApplication.Data).id_problema) and
              (id_round_ = IntToStr(TIWUserSession(WebApplication.Data).nround)
              ) then
            begin
              TIWUserSession(WebApplication.Data).vtr_id_ah_sum[i] :=
                FieldByName('id_ah').AsString;
              TIWUserSession(WebApplication.Data).vtr_alt_avaliadas_sum[i] :=
                FieldByName('alt_avaliadas').AsString;
              TIWUserSession(WebApplication.Data).vtr_decision_sum[i] :=
                FieldByName('decision').AsString;
              TIWUserSession(WebApplication.Data).vtr_id_alt_c_sum[i] :=
                FieldByName('id_alt_c').AsString;
              TIWUserSession(WebApplication.Data).vtr_num_rlevels_sum[i] :=
                FieldByName('num_rlevels').AsString;
              INC(i);
            end;
            next;
          end;
          close;
        end; // referente ao caso 22

      23:
        begin
          SQL.Text :=
            'SELECT creation_date FROM problem WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema) + '"';
          ExecSQL;
          open;
          S := FieldByName('creation_date').AsString;
          close;
          if StrToDate(S) < StrToDate('05/24/2021') then
          begin
            TIWUserSession(WebApplication.Data).avaliable := false;
            Exit;
          end
          else
            TIWUserSession(WebApplication.Data).avaliable := true;
          // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO de exportação do sumário para prob=2 DA REGIÃO IWRgnfinaltabela
          // retorno de informações do BD para o relatorio da aplicação para o caso de ordenação
          SQL.Text :=
            'SELECT COUNT(id_problem) FROM elicitation WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '";';
          ExecSQL;
          open;
          auxcontelicitation := FieldByName('COUNT(id_problem)').AsInteger;
          close;

          if auxcontelicitation <> 0 then
          begin
            i := 0;
            P := 0;
            SQL.Text := 'SELECT * FROM elicitation';
            ExecSQL;
            open;
            while i < auxcontelicitation do
            begin
              id_pro := FieldByName('id_problem').AsString;
              S := FieldByName('round').AsString;
              if S <> '' then
                id_round := StrToInt(S);
              if (id_pro = TIWUserSession(WebApplication.Data).id_problema) and
                (id_round = TIWUserSession(WebApplication.Data).nround) then
              begin
                INC(P);
                setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                setlength(TIWUserSession(WebApplication.Data).vet_rpos_ciclo,
                  P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_recomend_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_preferences_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_real_consA_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
                TIWUserSession(WebApplication.Data).qp_ret_exp[i] := FieldByName
                  ('perg').AsString;
                TIWUserSession(WebApplication.Data).vet_rpos_ciclo[i] :=
                  FieldByName('num_rpos').AsString;
                TIWUserSession(WebApplication.Data).vet_recomend_ciclo[i] :=
                  FieldByName('recomendacao_atual').AsString;

                if TIWUserSession(WebApplication.Data).qp_ret_exp[i] = '0' then
                begin
                  TIWUserSession(WebApplication.Data).vet_preferences_ciclo[i]
                    := '-10';
                  TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] := '-10';
                  TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] := '-10';
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                    := '-10';
                  TIWUserSession(WebApplication.Data).vet_ret_hc[i] := '0';
                end // referente ao se esta na pergunta 0
                else
                begin
                  TIWUserSession(WebApplication.Data).vet_preferences_ciclo[i]
                    := FieldByName('preference').AsString;
                  TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                    FieldByName('id_cria').AsString;
                  TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                    FieldByName('id_crib').AsString;
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                    := FieldByName('real_cons_a').AsString;
                  TIWUserSession(WebApplication.Data).vet_ret_hc[i] :=
                    FieldByName('holistic_e').AsString;
                  TIWUserSession(WebApplication.Data).vet_recomend_ciclo[i] :=
                    FieldByName('recomendacao_atual').AsString;
                end; // referente ao else
                INC(i);
              end; // referente ao if
              next;
            end; // referente ao while
            close;

          end; // referente ao  if auxcontelicitation <> 0
        end; // referente ao caso 23
      24:
        begin
          SQL.Text :=
            'SELECT creation_date FROM problem WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema) + '"';
          ExecSQL;
          open;
          S := FieldByName('creation_date').AsString;
          close;
          if StrToDate(S) < StrToDate('05/24/2021') then
          begin
            TIWUserSession(WebApplication.Data).avaliable := false;
            Exit;
          end
          else
            TIWUserSession(WebApplication.Data).avaliable := true;
          // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO de exportação do sumário para prob=2 DA REGIÃO IWRgnfinaltabela
          // retorno de informações do BD para o relatorio da aplicação para o caso de ordenação
          SQL.Text :=
            'SELECT COUNT(id_problem) FROM elicitation WHERE id_problem = "' +
            (TIWUserSession(WebApplication.Data).id_problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '";';
          ExecSQL;
          open;
          auxcontelicitation := FieldByName('COUNT(id_problem)').AsInteger;
          close;

          if auxcontelicitation <> 0 then
          begin
            i := 0;
            P := 0;
            SQL.Text := 'SELECT * FROM elicitation';
            ExecSQL;
            open;
            while i < auxcontelicitation do
            begin
              id_pro := FieldByName('id_problem').AsString;
              S := FieldByName('round').AsString;
              if S <> '' then
                id_round := StrToInt(S);
              if (id_pro = TIWUserSession(WebApplication.Data).id_problema) and
                (id_round = TIWUserSession(WebApplication.Data).nround) then
              begin
                INC(P);
                setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                setlength(TIWUserSession(WebApplication.Data).vet_rpos_ciclo,
                  P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_recomend_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_preferences_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data)
                    .vet_real_consA_ciclo, P);
                setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
                TIWUserSession(WebApplication.Data).qp_ret_exp[i] := FieldByName
                  ('perg').AsString;
                TIWUserSession(WebApplication.Data).vet_rpos_ciclo[i] :=
                  FieldByName('alt_nao_class').AsString;

                if TIWUserSession(WebApplication.Data).qp_ret_exp[i] = '0' then
                begin
                  TIWUserSession(WebApplication.Data).vet_preferences_ciclo[i]
                    := '-10';
                  TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] := '-10';
                  TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] := '-10';
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                    := '-10';
                  TIWUserSession(WebApplication.Data).vet_ret_hc[i] := '0';
                end // referente ao se esta na pergunta 0
                else
                begin
                  TIWUserSession(WebApplication.Data).vet_preferences_ciclo[i]
                    := FieldByName('preference').AsString;
                  TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                    FieldByName('id_cria').AsString;
                  TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                    FieldByName('id_crib').AsString;
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                    := FieldByName('real_cons_a').AsString;
                  TIWUserSession(WebApplication.Data).vet_ret_hc[i] :=
                    FieldByName('holistic_e').AsString;
                  TIWUserSession(WebApplication.Data).vet_recomend_ciclo[i] :=
                    FieldByName('recomendacao_atual').AsString;
                end; // referente ao else
                INC(i);
              end; // referente ao if
              next;
            end; // referente ao while
            close;

          end; // referente ao  if auxcontelicitation <> 0
        end; // referente ao caso 23
      25: // Este caso foi criado para infornar que o problema foi reiniciado ao retomar os dados na prob de classificaçõ
        begin
          // Escreve no BD que a pergunta da Heurística não foi respondida
          // atualizando dandos atuais
          SQL.Text :=
            'UPDATE current_stage SET heuransw ="-1" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).id_problema) + '";';
          ExecSQL;
        end; // 25

     /// caso criado para BD da planilha Intracritério///
        26: // cria cópia dos dados referentes a round inter, para situação em que decisor deseje reiniciar somente elic INTER
          // ESTE CASO É CHAMADO NO BTN "RESET AND RESTAR PROBLEM" DA RGN DE ELICITAÇÃO
          begin

            sql.Text := 'SELECT round FROM current_stage WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
            open;
            TIWUserSession(WebApplication.Data).nround := FieldByName('round')
              .AsInteger;
            close;

            // Auxroundinter := (TIWUserSession(WebApplication.Data).nround) - 1;

            for i := 0 to TIWUserSession(WebApplication.Data).numcrit - 1 do
            // infos que são vetores
            begin
              AuxBoundMx := AuxBoundMx + FloatToStr
                (TIWUserSession(WebApplication.Data).BoundMx[i]) + '/';
              AuxBoundMn := AuxBoundMn + FloatToStr
                (TIWUserSession(WebApplication.Data).BoundMn[i]) + '/';
              AuxFtipoOrig := AuxFtipoOrig + intTostr
                (TIWUserSession(WebApplication.Data).FTipo[i]) + '/';
              AuxverificaIntra := AuxverificaIntra + BoolToStr
                (TIWUserSession(WebApplication.Data).VerificaIntra[i]) + '/';
              AuxLinearIntra := AuxLinearIntra + intTostr
                (TIWUserSession(WebApplication.Data).vtrLinearintra[i]) + '/';
              AuxChangeLinear := AuxChangeLinear + intTostr
                (TIWUserSession(WebApplication.Data).vtrChangeLin[i]) + '/';
              AuxCritElicit := AuxCritElicit + BoolToStr
                (TIWUserSession(WebApplication.Data).VtrcritBisec[i]) + '/';
              Auxpercentcrit := Auxpercentcrit + FloatToStr
                (TIWUserSession(WebApplication.Data).perc[i]) + '/';
            end; // for i

            /// informações que são matrizes///
            for j := 0 to TIWUserSession(WebApplication.Data).numcrit - 1 do
            begin
              for i := 0 to NumAlt - 1 do
              begin
                AuxMatInterpol := AuxMatInterpol + FloatToStr
                  (TIWUserSession(WebApplication.Data).ConsNorm[i, j]) + '/';
              end; // for i
            end; // for j

            for j := 0 to TIWUserSession(WebApplication.Data).numcrit - 1 do
            begin
              for i := 0 to 5 - 1 do
              begin
                AuxPointsBisec := AuxPointsBisec + FloatToStr
                  (TIWUserSession(WebApplication.Data).matrizpontosreais[i, j])
                  + '/';
              end; // for i
            end; // for j

            sql.Text :=
              'INSERT INTO intracrit (Id_problem, round, RoundIntra, stage, BoundMx, BoundMn, OriginalFtipo, Verificaintra, LinearIntra, ChangeLinear, CritsElicitados, percent, NormalizaInterpol, PointsBisec) VALUES ("' + (TIWUserSession(WebApplication.Data).ID_Problema) + '", "' + intTostr(TIWUserSession(WebApplication.Data).nround) + '", "' + intTostr(TIWUserSession(WebApplication.Data).fvround) + '", "' + intTostr(TIWUserSession(WebApplication.Data).estagiointra) + '", "' + AuxBoundMx + '", "' + AuxBoundMn + '" , "' + AuxFtipoOrig + '", "' + AuxverificaIntra + '", "' + AuxLinearIntra + '", "' + AuxChangeLinear + '", "' + AuxCritElicit + '", "' + Auxpercentcrit + '", "' + AuxMatInterpol + '", "' + AuxPointsBisec + '");';
            ExecSQL;
          end; // 26

    end;
  end;
end;

initialization

Tfrmportfolioresults.SetAsMainForm;

end.
