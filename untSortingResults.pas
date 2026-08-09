unit untSortingResults;

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
  IWCompTabControl, IWHelpTip, IWTMSPopup, IWTMSMenus, GanttCh, IWCompMemo,
  IWCompCheckbox;

type
  TfrmSortingResults = class(TIWAppForm)
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
    IWRgnanalisedesensibilidade: TIWRegion;
    IWLabel82: TIWLabel;
    IWLabel85: TIWLabel;
    IWLabel87: TIWLabel;
    IWLabel88: TIWLabel;
    IWButton13: TIWButton;
    IWButtonexpot: TIWButton;
    IWImmgord: TIWImage;
    BtnMaxI: TIWButton;
    IWImage21: TIWImage;
    IWLabel93: TIWLabel;
    IWImage33: TIWImage;
    IWImage34: TIWImage;
    IWLabel94: TIWLabel;
    IWImage40: TIWImage;
    IWLink6: TIWLink;
    IWRegion20: TIWRegion;
    IWText21: TIWText;
    IWText22: TIWText;
    IWImage23: TIWImage;
    IWImage24: TIWImage;
    IWLabel84: TIWLabel;
    IWRegion21: TIWRegion;
    IWGriddeviation: TIWGrid;
    IWRegion23: TIWRegion;
    IWGridpercent: TIWGrid;
    IWRegion24: TIWRegion;
    IWGrid1: TIWGrid;
    ChartASord: TChart;
    BarSeries1: TBarSeries;
    BarSeries2: TBarSeries;
    IWRegion38: TIWRegion;
    IWRegion26: TIWRegion;
    GrdClassAS: TIWGrid;
    pMnExportingC: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    pmnHelp: TPopupMenu;
    About1: TMenuItem;
    UserGuide1: TMenuItem;
    English1: TMenuItem;
    Portuguese1: TMenuItem;
    AnalystLogin1: TMenuItem;
    AnalystLogout1: TMenuItem;
    pmnResetoption: TPopupMenu;
    Insertanewproblem1: TMenuItem;
    Restartthecurrentproblem1: TMenuItem;
    rgnresclassificacao: TIWRegion;
    lblNumberCategories: TIWLabel;
    lblunsortedA: TIWLabel;
    IWLabel51: TIWLabel;
    btnexportclass: TIWButton;
    btnSummaryExpC: TIWButton;
    btnsensitivityClass: TIWButton;
    IWImage18: TIWImage;
    IWImage19: TIWImage;
    IWImage28: TIWImage;
    IWLink3: TIWLink;
    IWLabel15: TIWLabel;
    TIWPopupMenuButton1: TTIWPopupMenuButton;
    TIWPopupMenuButton2: TTIWPopupMenuButton;
    IWLink11: TIWLink;
    TIWPopupMenuLabel1: TTIWPopupMenuLabel;
    lnkFinalizeC: TIWLink;
    lnkSensitivityClass: TIWLink;
    IWLabel20: TIWLabel;
    grdExportSum: TTIWAdvWebGrid;
    rgntabunsortedA: TIWRegion;
    RgnTabSortedA: TIWRegion;
    grdResult1: TIWGrid;
    IWRegion25: TIWRegion;
    IWRegion13: TIWRegion;
    rgnconfirmClass2: TIWRegion;
    IWLabel17: TIWLabel;
    IWImage35: TIWImage;
    IWRegion16: TIWRegion;
    IWText4: TIWText;
    btnFinalizeEC: TIWButton;
    btnnaofinalizar: TIWButton;
    rgnconfirmClass1: TIWRegion;
    IWLabel18: TIWLabel;
    IWImage37: TIWImage;
    IWRegion19: TIWRegion;
    txtsolclass: TIWText;
    btnconfirmClass: TIWButton;
    rgnDecompC: TIWRegion;
    IWLabel19: TIWLabel;
    IWImage29: TIWImage;
    btnbackelicitclass: TIWButton;
    rgnimagemax: TIWRegion;
    imagemax: TIWImage;
    btnclosemax: TIWButton;
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
    TIWAdvWebGridExcelIO4: TTIWAdvWebGridExcelIO;
    TIWAdvWebGridExcelIO2: TTIWAdvWebGridExcelIO;
    IWTimer1: TIWTimer;
    grdexport: TTIWAdvWebGrid;
    IWRgnHolistica: TIWRegion;
    IWImage38: TIWImage;
    IWLink4: TIWLink;
    btnmenu: TTIWPopupMenuButton;
    TIWPopupMenuButton8: TTIWPopupMenuButton;
    IWLabel6: TIWLabel;
    IWLabel53: TIWLabel;
    IWLabel115: TIWLabel;
    IWImage52: TIWImage;
    IWImage51: TIWImage;
    IWRegion36: TIWRegion;
    IWRegion1: TIWRegion;
    btnOKHEG3: TIWButton;
    BtnCancelHEG1: TIWButton;
    IWText6: TIWText;
    Region1alt: TIWRegion;
    Regionbest: TIWRegion;
    lblrgnbest: TIWLabel;
    CmbxBest: TIWComboBox;
    iwrgnCaixaDialogoResultado: TIWRegion;
    IWLabel66: TIWLabel;
    IWImage1: TIWImage;
    rgnwarning: TIWRegion;
    txtCaixaDialogoResults: TIWText;
    IWButton8: TIWButton;
    rgnrusfinishing: TIWRegion;
    IWLabel9: TIWLabel;
    IWImage3: TIWImage;
    IWRegion12: TIWRegion;
    txtrusfinishing: TIWText;
    btnFinalizeEEO: TIWButton;
    btnNaoFinalizarEO: TIWButton;
    TbCtrlvisualizationsHolistica: TIWTabControl;
    TbCtrlP1Holistica: TIWTabPage;
    grdTabular: TIWGrid;
    TbCtrlP3Holistica: TIWTabPage;
    IWLabel49: TIWLabel;
    IWImageBubble: TIWImage;
    ChartBubbleGraph: TChart;
    TbCtrlP0Holistica: TIWTabPage;
    IWLabel10: TIWLabel;
    IWImageBar: TIWImage;
    ChartBarGraph: TChart;
    TbCtrlP2Holistica: TIWTabPage;
    IWLabel12: TIWLabel;
    IWImageRadar: TIWImage;
    ChartRadarGraph: TChart;
    rdbtndecomp: TTIWRadioButton;
    ImgHE: TIWImage;
    rdbtnHE: TTIWRadioButton;
    TbCtrlP4Holistica: TIWTabPage;
    ChartGantt: TChart;
    GanttSeries1: TGanttSeries;
    IWImageGantt: TIWImage;
    Chart1: TChart;
    GanttSeries2: TGanttSeries;
    grdResult2: TIWGrid;
    IWImage2: TIWImage;
    lnkCategories: TIWLink;
    rgncategories: TIWRegion;
    lnkScalesClose: TIWLink;
    grdClassesResults: TIWGrid;
    IWLabel11: TIWLabel;
    IWLink9: TIWLink;
    IWText9: TIWText;
    IWRegion5: TIWRegion;
    IWImage4: TIWImage;
    IWRegion2: TIWRegion;
    IWLink2: TIWLink;
    rgngant1: TIWRegion;
    IWImageGantt1: TIWImage;
    IWLink13: TIWLink;
    IWText10: TIWText;
    IWRegion6: TIWRegion;
    IWImage5: TIWImage;
    IWLink1: TIWLink;
    IWText11: TIWText;
    IWRegion7: TIWRegion;
    IWImage6: TIWImage;
    IWLink7: TIWLink;
    IWText12: TIWText;
    IWRegion8: TIWRegion;
    IWImage7: TIWImage;
    IWLink8: TIWLink;
    IWText13: TIWText;
    IWRegion11: TIWRegion;
    IWImage8: TIWImage;
    IWLink10: TIWLink;
    IWText14: TIWText;
    IWRegion14: TIWRegion;
    IWImage11: TIWImage;
    IWLink12: TIWLink;
    IWText15: TIWText;
    IWLink14: TIWLink;
    IWLink15: TIWLink;
    IWRegion15: TIWRegion;
    IWImage12: TIWImage;
    IWText17: TIWText;
    IWLink16: TIWLink;
    IWLabel7: TIWLabel;
    rgnstRadar: TIWRegion;
    lblRCEFR1: TIWLabel;
    btnmaxCERad: TIWButton;
    IWRegion17: TIWRegion;
    lblRVFFR1: TIWLabel;
    lblRSExpFR1: TIWLabel;
    lblRSFR1: TIWLabel;
    txtRCEFR1: TIWText;
    IWRegion18: TIWRegion;
    lblRLFR1: TIWLabel;
    lblRCOFR1: TIWLabel;
    IWRegion22: TIWRegion;
    txtRNFR1: TIWText;
    lblRNFR1: TIWLabel;
    IWLabel4: TIWLabel;
    CmbxAlternativa1: TIWComboBox;
    IWText18: TIWText;
    IWLabel5: TIWLabel;
    chcklstbxalternative2: TTIWCheckListBox;
    btnOKalternatives: TIWButton;
    IWText5: TIWText;
    rgnCEstbr: TIWRegion;
    txtBVFFR1: TIWText;
    lblBCEFR1: TIWLabel;
    lblBBFR1: TIWLabel;
    lblBrNFR1: TIWLabel;
    txtBrNFR1: TIWText;
    btnmaxCEstBr: TIWButton;
    rgnCEstBb: TIWRegion;
    lblBHCEFR1: TIWLabel;
    lblCEFR1: TIWLabel;
    txtBCEFR1: TIWText;
    txtBNFR1: TIWText;
    lblBNFR1: TIWLabel;
    btnmaxCESTBb: TIWButton;
    IWButton10: TIWButton;
    IWButton4: TIWButton;
    rgnsav: TIWRegion;
    lblSAV: TIWLabel;
    IWLink21: TIWLink;
    IWImage10: TIWImage;
    IWLabel8: TIWLabel;
    IWImage20: TIWImage;
    IWImage13: TIWImage;
    lnkBackAS: TIWLink;
    tbctrlVariation: TIWTabControl;
    tbctrlVariationPage1: TIWTabPage;
    IWLabel26: TIWLabel;
    IWLabel29: TIWLabel;
    IWRegion3: TIWRegion;
    grdprofiles: TTIWAdvWebGrid;
    IWRegion65: TIWRegion;
    tbctrlVariationPage0: TIWTabPage;
    lblSOCSAV: TIWLabel;
    btnbackAS: TIWButton;
    btnsaveas: TIWButton;
    btnStartAS: TIWButton;
    LBLInformation: TIWLabel;
    IWRegion64: TIWRegion;
    grdvariation: TTIWAdvWebGrid;
    IWRegion46: TIWRegion;
    btnbackASProfiles: TIWButton;
    btnsaveASProfiles: TIWButton;
    btnstartASProfiles: TIWButton;
    IWText3: TIWText;
    lnkviewrankinC1: TIWLink;
    rgnviewrankingC1: TIWRegion;
    IWLink17: TIWLink;
    IWImage39: TIWImage;
    IWRegion27: TIWRegion;
    IWLabel13: TIWLabel;
    btnlogoutviewrankingC1: TIWButton;
    lnkbackviewrankingC1: TIWLink;
    IWRegion29: TIWRegion;
    IWImage14: TIWImage;
    IWImage15: TIWImage;
    lblviewreviewC1: TIWLabel;
    tbctrlRankingC1: TIWTabControl;
    tbctrlHolisticRanking1Page1: TIWTabPage;
    tbctrlHolisticRanking: TIWTabPage;
    IWLabel14: TIWLabel;
    lnkdominancematrixC1: TIWLink;
    txtexpcolcheteHord: TIWText;
    lnkexpcolchetesHord: TIWLink;
    rgnC1tabular: TIWRegion;
    grdalternativesrankingC1: TIWGrid;
    tbctrlHolisticRanking1Page0: TIWTabPage;
    IWLabel39: TIWLabel;
    checklistboxdominanceC1: TTIWCheckListBox;
    btnUpFRHord: TIWButton;
    lnkselectapositionHord: TIWLink;
    TxtrelHord: TIWText;
    lbllegindHord: TIWLabel;
    txtHordDominance: TIWText;
    btncloseHord: TIWButton;
    rgntabledmHord: TIWRegion;
    grdrelationsHord: TIWGrid;
    tbctrlHasseC1: TIWTabPage;
    lblHDHR: TIWLabel;
    iwbtnRefreshDH2: TIWButton;
    RHasse_C1: TIWRegion;
    gridc1ranking: TIWGrid;
    TIWFadeImageC1: TTIWFadeImage;
    lblhassemessage: TIWLabel;
    tmrhasse: TIWTimer;
    iwrgnHasseDiagram: TIWRegion;
    btnLegendDH: TIWButton;
    iwbtnSaveImageDH: TIWButton;
    iwbtnCloseDH: TIWButton;
    IWLabel16: TIWLabel;
    TIWFadeImage1: TTIWFadeImage;
    iwbtnRefreshDH: TIWButton;
    IWImage25: TIWImage;
    IWLabel76: TIWLabel;
    IWLabel90: TIWLabel;
    IWImage16: TIWImage;
    IWLink18: TIWLink;
    IWRegion33: TIWRegion;
    iwbtnSaveImageDH2: TIWButton;
    IWLabel21: TIWLabel;
    IWLabel22: TIWLabel;
    IWImage49: TIWImage;
    btnshowrecommedation2: TIWButton;
    rgnrulevizualization: TIWRegion;
    imgPORT5: TIWImage;
    btnrecomenda: TIWButton;
    butranking: TIWButton;
    imgING5: TIWImage;
    lblr01: TIWLabel;
    imgHEsp: TIWImage;
    lblviz: TIWLabel;
    IWLabel47: TIWLabel;
    IWLabel48: TIWLabel;
    txtrecommends: TIWText;
    IWLink20: TIWLink;
    IWImage26: TIWImage;
    IWImage27: TIWImage;
    combograf: TIWComboBox;
    IWImage31: TIWImage;
    IWLink22: TIWLink;
    IWLabel41: TIWLabel;
    logoutrecomend: TIWButton;
    lnkbackrecom: TIWLink;
    IWRegion28: TIWRegion;
    lblcriterios: TIWLabel;
    lblProbDev: TIWLabel;
    IWLabel23: TIWLabel;
    IWLabel24: TIWLabel;
    lblPesorecom: TIWLabel;
    lbldistribui: TIWLabel;
    editalternativas: TIWEdit;
    labdesvio: TIWLabel;
    labdes: TIWLabel;
    labsucesso: TIWLabel;
    labrecomenda: TIWLabel;
    labvisu: TIWLabel;
    labvisualizacao: TIWLabel;
    labnovo: TIWLabel;
    labnovdes: TIWLabel;
    labnovodesvio: TIWLabel;
    butcomp: TIWButton;
    IWRegion30: TIWRegion;
    IWText7: TIWText;
    IWLabel59: TIWLabel;
    IWImage32: TIWImage;
    IWRegion31: TIWRegion;
    IWText8: TIWText;
    IWLabel52: TIWLabel;
    IWRegion34: TIWRegion;
    regionanalyst: TIWRegion;
    IWLabel44: TIWLabel;
    IWButton11: TIWButton;
    IWLabel45: TIWLabel;
    TIWHelpTip3: TTIWHelpTip;
    IWButton16: TIWButton;
    IWLabel46: TIWLabel;
    IWLabel25: TIWLabel;
    IWLabel27: TIWLabel;
    checkanalista: TIWCheckBox;
    IWLabel28: TIWLabel;
    memodescanal: TIWMemo;
    lnkref: TIWRegion;
    lblrec1: TIWLink;
    txtport: TIWText;
    IWImage43: TIWImage;
    btninf: TIWButton;
    rgninformation: TIWRegion;
    txtnotedisc: TIWText;
    IWText16: TIWText;
    IWText19: TIWText;
    IWText20: TIWText;
    IWText23: TIWText;
    IWLabel30: TIWLabel;
    IWLabel31: TIWLabel;
    IWText24: TIWText;
    SensivityAnalysis1: TMenuItem;
    TIWAdvWebGridExcelIO5: TTIWAdvWebGridExcelIO;
    grdsensitivityanalysis: TTIWAdvWebGrid;
    grdintracriterio: TTIWAdvWebGrid;
    Fullreport1: TMenuItem;
    procedure BtnMaxIClick(Sender: TObject);
    procedure btnclosemaxClick(Sender: TObject);
    procedure Insertanewproblem1Click(Sender: TObject);
    procedure Restartthecurrentproblem1Click(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure Portuguese1Click(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure lnkcloseaboutClick(Sender: TObject);
    procedure IWLink11Click(Sender: TObject);
    procedure lnkFinalizeCClick(Sender: TObject);
    procedure lnkSensitivityClassClick(Sender: TObject);
    procedure btnconfirmClassClick(Sender: TObject);
    procedure btnnaofinalizarClick(Sender: TObject);
    procedure btnFinalizeECClick(Sender: TObject);
    procedure btnbackelicitclassClick(Sender: TObject);
    procedure IWButtonexpotClick(Sender: TObject);
    procedure rgnresclassificacaoCreate(Sender: TObject);
    procedure SalvarResultBD;
    procedure calmaxminweights;
    Function TrocaVP(Num: Double): String;
    function Rounding(Value: Double): String;
    // ** Para problemática de classificação **//
    Procedure Preencher_grid_classes(grdClasses: TIWGrid);
    Procedure showsortingresults;
    Procedure resultado_alternativa(ind: integer; Grid: TIWGrid);
    Procedure preparar_grids_resultado;
    Procedure ASClass;
    Procedure ASPerfis;
    Procedure CriarElementosAS;
    Procedure DestruirElementosAS;
    Function  GerarPerfilAS(ind: integer): Real;
    Procedure classificarAS(ValorAltMin, ValorAltMax: array of Real);
    Procedure preencher_grids_resultado;
    Procedure preparar_grids_resultado_AS;
    Procedure Preencher_AS;
    Procedure PLClassificacaoAS;
    procedure IWTimer1Timer(Sender: TObject);
    Procedure Normaliza;
    procedure alinhamento;
    procedure rdbtndecompClick(Sender: TObject);
    procedure rdbtnHEClick(Sender: TObject);
    procedure CmbxAlternativa1Change(Sender: TObject);
    procedure btnOKalternativesClick(Sender: TObject);
    procedure graficos;
    procedure graficosp;
    procedure btnOKHEG3Click(Sender: TObject);
    procedure CmbxBestChange(Sender: TObject);
    procedure MostrarResultados;
    procedure PLClassificacao;
    procedure classificar(ValorAltMin, ValorAltMax: array of real);
    procedure BtnCancelHEG1Click(Sender: TObject);
    procedure lnkCategoriesClick(Sender: TObject);
    procedure lnkScalesCloseClick(Sender: TObject);
    procedure lnkbarClick(Sender: TObject);
    procedure IWLink1Click(Sender: TObject);
    procedure lnkradarClick(Sender: TObject);
    procedure lnkbubbleClick(Sender: TObject);
    procedure IWLink12Click(Sender: TObject);
    procedure IWLink10Click(Sender: TObject);
    procedure IWLink9Click(Sender: TObject);
    procedure IWLink13Click(Sender: TObject);
    procedure IWLink2Click(Sender: TObject);
    procedure IWLink14Click(Sender: TObject);
    procedure IWLink15Click(Sender: TObject);
    procedure IWLink16Click(Sender: TObject);
    procedure IWLink8Click(Sender: TObject);
    procedure btnmaxCEstBrClick(Sender: TObject);
    procedure btnmaxCERadClick(Sender: TObject);
    procedure btnmaxCESTBbClick(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
    procedure IWButton10Click(Sender: TObject);
    procedure IWButton13Click(Sender: TObject);
    procedure grdvariationCheckClick(Sender: TObject; RowIndex,
      ColumnIndex: Integer);
    procedure btnsaveasClick(Sender: TObject);
    procedure btnbackASClick(Sender: TObject);
    procedure btnStartASClick(Sender: TObject);
    procedure grdprofilesCheckClick(Sender: TObject; RowIndex,
      ColumnIndex: Integer);
    procedure btnsaveASProfilesClick(Sender: TObject);
    procedure btnbackASProfilesClick(Sender: TObject);
    procedure lnkBackASClick(Sender: TObject);
    procedure rgnsavCreate(Sender: TObject);
    procedure btnlogoutviewrankingC1Click(Sender: TObject);
    procedure lnkviewrankinC1Click(Sender: TObject);
    procedure lnkbackviewrankingC1Click(Sender: TObject);
    procedure PLOrdenacao(Valorep: real);
    procedure ConstruirMatrizgrupo;
    procedure lnkdominancematrixC1Click(Sender: TObject);
    procedure btnUpFRHordClick(Sender: TObject);
    procedure btncloseHordClick(Sender: TObject);
    procedure tmrhasseTimer(Sender: TObject);
    procedure iwbtnRefreshDHClick(Sender: TObject);
    procedure iwbtnRefreshDH2Click(Sender: TObject);
    procedure iwbtnSaveImageDH2Click(Sender: TObject);
    procedure btnhasse2C1Click(Sender: TObject);
    procedure IWRgnHolisticaCreate(Sender: TObject);
    procedure btnshowrecommedation2Click(Sender: TObject);
    procedure lnkbackrecomClick(Sender: TObject);
    procedure butrankingClick(Sender: TObject);
    procedure btnrecomendaClick(Sender: TObject);
    procedure butcompClick(Sender: TObject);
    procedure logoutrecomendClick(Sender: TObject);
    procedure IWLink20Click(Sender: TObject);
    procedure IWButton16Click(Sender: TObject);
    procedure btninfClick(Sender: TObject);
    procedure lblrec1Click(Sender: TObject);
    procedure SensivityAnalysis1Click(Sender: TObject);
    procedure Fullreport1Click(Sender: TObject);


  public
  end;

implementation

uses UserSessionUnit, untIntro, uIntercritério, ServerController, uAPI_SolveLP,
  lpsolve51, uCode, untIntraCriterio, uPerfis, uPortfolioResults, uResultados,
  untPortfolioresults;
{$R *.dfm}

procedure TfrmSortingResults.About1Click(Sender: TObject);
begin
  rgnAbout.Show;
end;

procedure TfrmSortingResults.alinhamento;
begin

  IWRgnresultadografico.Align := Talign(5);
  rgnresclassificacao.Align := Talign(5);
  rgnviewrankingC1.Align := Talign(5);
  // rgnresclassificacao.Align := Talign(5);
  rgnsav.Left := 337;
  rgnsav.Top := 5;
  IWRgnAS.Left := 5;
  IWRgnAS.Top := 5;
  IWRgnanalisedesensibilidade.Align := Talign(5);
  rgnimagemax.Top := 169;
  rgnimagemax.Left := 48;
  // rgnResultsCB.Align := Talign(5);
  {IWRegion9.Top := 406;
  IWRegion9.Left := 424; }
  rgnAbout.Left := 250;
  rgnAbout.Top := 180;
end;

Procedure TfrmSortingResults.ASPerfis;
var
  K, i, j: integer;
  perfis_temp: array of Real;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumAlt - 1 do
      for j := 0 to length(perfis) + 1 do
        contadorAS[i, j] := 0;

    for K := 1 to ninst do
    begin
      for i := 0 to length(perfis) - 1 do
        TIWUserSession(WebApplication.Data).perfisAS[i] := GerarPerfilAS(i);

      classificarAS(ValAltMin_final, ValAltMax_final);
      with TIWUserSession(WebApplication.Data) do
        for i := 0 to NumAlt - 1 do
          if class_min[i] = class_max[i] then
            INC(contadorAS[i, class_min[i]])
          else
            INC(contadorAS[i, 0]);

    end; // end do laço K

    preencher_grids_resultado;

    // ** Devolve os perfis originais ao vetor **//
    with TIWUserSession(WebApplication.Data) do
    begin
      if Escala_AS = 1 then
      begin
        for i := 0 to length(Perfis_Inseridos) - 1 do
          perfis[i] := RoundTo((Perfis_Inseridos[i] - valor_nadir_minimo) /
              (1 - valor_nadir_minimo), -3);
      end
      else
        for i := 0 to length(Perfis_Inseridos) - 1 do
          perfis[i] := Perfis_Inseridos[i];
    end;
  end;
  TIWUserSession(WebApplication.Data).Finish := true;
end;

/// FUNÇÃO REPONSAVEL POR REALIZAR O ARREDONDAMENTO DAS CONSEQUÊNCIAS 7
/// MOSTRADAS AO USUÁRIO - Yara
function TfrmSortingResults.Rounding(Value: Double): String;
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

procedure TfrmSortingResults.Normaliza;
var
  i, j: integer;
  Zmax, Zmin: Double;
  matriztestesnormal: array of array of Double;
begin
  /// / Esse procedimento realiza a avaliação intracritério para realização da
  /// análise de sensibilidade ///////////////////////////////////////////////
  with TIWUserSession(WebApplication.Data) do
  begin
    setlength(MconsN, NumAlt, NumCrit);
    for j := 0 to NumCrit - 1 do
      for i := 0 to NumAlt - 1 do

      begin
        /// verificar se os criterios DISCRETOS devem seguir uma regra diferente de transformação da escala///
        case FTipo[j] of // função que armazena o vetor dos tipos de FO declaradas na planilha

          1: // procedimento realiza a normalização das consequências considerando a função valor linear ///////////////////////
            begin
              // Normalização para os critérios de maximização //////////////////////
              if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
                MconsN[i, j] := (MatrizConsR[i, j] - Min[j]) /
                  (Max[j] - Min[j]);
              /// Normalização para os critérios de minimização //////////////////////
              if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
                MconsN[i, j] := (MatrizConsR[i, j] - Max[j]) /
                  (-Max[j] + Min[j]);
            end;

          2: // procedimento realiza a normalização das consequencias considerando função valor exponencial
            begin
              // if Min[j] = 0 then
              // Min [j]:= Power (10,-5); //O QUE É POWER??
              Zmin := Exp(parA[j] * Min[j]); // exponencial do parametro A vezes o valor minimo capturado no criterio
              Zmax := Exp(parA[j] * Max[j]); // exponencial do parametro A vezes o valor máximo capturado no criterio

              // normalização para os criterios de maximização//
              if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
                MconsN[i, j] := (Exp(parA[j] * MatrizConsR[i, j]) - Zmin) /
                  (Zmax - Zmin);
              // normalização para os criterios de minimização//
              if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
                MconsN[i, j] := (Exp(parA[j] * MatrizConsR[i, j]) - Zmax) /
                  (Zmin - Zmax);
            end;

          3: // procedimento realiza a normalização das consequencias considerando função valor logaritmica
            begin
              // if Min[j] = 0 then
              // Min [j]:= Power (10,-5); //O QUE É POWER??
              Zmin := Ln(parA[j] * Min[j] + 1 - parA[j] * Min[j]);
              Zmax := Ln(parA[j] * Max[j] + 1 - parA[j] * Min[j]);

              if MatrizConsR[i, j] = 0 then
                MatrizConsR[i, j] := Power(10, -8);
              // normalização para os criterios de maximização///
              if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
                MconsN[i, j] :=
                  (Ln(parA[j] * MatrizConsR[i, j] + 1 - parA[j] * Min[j])
                    - Zmin) / (Zmax - Zmin);
              // normalização para os criterios de minimização//
              if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
                MconsN[i, j] :=
                  (Ln(parA[j] * MatrizConsR[i, j] + 1 - parA[j] * Min[j])
                    - Zmax) / (Zmin - Zmax);
            end;

          4: // procedimento realiza a normalização das consequencias considerando função valor logistica (S-Shape)
            begin
              // if Min[j] = 0 then
              // Min[j] := Power(10, -5);
              Zmax := Exp(-parA[j] / Max[j]);
              Zmin := Exp(-parA[j] / Min[j]);

              // normalização para os criterios de maximização///
              if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
                MconsN[i, j] := (Exp(-parA[j] / MatrizConsR[i, j]) - Zmin) /
                  (Zmax - Zmin);
              // normalização para os criterios de minimização//
              if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
                MconsN[i, j] := (Exp(-parA[j] / MatrizConsR[i, j]) - Zmax) /
                  (Zmin - Zmax);
            end;
        end;

      end; // final dos contadores }

    { setlength(matriztestesnormal, NumAlt, numcrit);
      for i := 0 to NumAlt - 1 do
      for j := 0 to numcrit - 1 do
      matriztestesnormal[i, j] := MconsN[i, j]; }

  end; // final dos casos
end;

Procedure TfrmSortingResults.ASClass;
var
  i, j, K, auxc, Alt, G, Z: integer;
  Float, LS, LI: Double;
  Mxc, Mnc, R: Array of Double;
  nsol: integer;
  FSol: Array [0 .. 1] of integer; // Usado em escolha 0: num de cenários em que a solução foi a mesma, 1: num de mudanças na solução
  AInc, Aexc: Array of Boolean; // Usado em escolha para armazenar as alternativas incluídas e excluídas do conjunto solução
  level: array of Boolean; // Indica se um determinado nível foi alterado
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    K := 0;
    setlength(MatrizConsR, NumAlt, NumCrit);
    setlength(Mnc, NumCrit);
    setlength(Mxc, NumCrit);
    for i := 0 to NumAlt - 1 do
      for j := 0 to length(perfis) + 1 do
        contadorAS[i, j] := 0;

    /// ///////////////////////////////////////////////////////////////////////
    /// / Inicio da construção dos cenários aleatórios /////////////////////////
    while K < TIWUserSession(WebApplication.Data).ninst do
    begin
     // auxc := -1;

      for i := 0 to NumCrit - 1 do
      begin
        for j := 0 to NumAlt - 1 do
        begin

          /// / Caso o critério tenha sido selecionado para a análise, gera-se as conseq
          /// / aleatoriamente ///////////////////////////////////////////////////////////
          if TIWUserSession(WebApplication.Data).CriSel[i] then
          begin
          if (TypeOfCrit[vtrordem[i]] = 3) or (TypeOfCrit[vtrordem[i]] = 2) then // Critérios Discretos
          begin
          {aux := Round(TIWUserSession(WebApplication.Data).pmin[i]);
          aux2 := Round(TIWUserSession(WebApplication.Data).pmax[i]);
         Float := RandomRange(aux,aux2+1);
         float := round(float);}
         Float := Random;
	//MUDANÇA - PEDRO 01.12 - INICIO
         if niveis[vtrordem[i]] > 2 then
         begin
            if (TIWUserSession(WebApplication.Data).ConsMatrix[J, vtrordem[i]]
                + TIWUserSession(WebApplication.Data).pmax[i])
              <= TIWUserSession(WebApplication.Data).Max[vtrordem[i]] then
              LS := (ConsMatrix[J,vtrordem[i]] + pmax[i])
            else
              LS := TIWUserSession(WebApplication.Data).Max[vtrordem[i]];

              if LS > niveis[vtrordem[i]] then
              LS := niveis[vtrordem[i]];




            if (ConsMatrix[J, vtrordem[i]] - TIWUserSession(WebApplication.Data).pmin[i])
              >= TIWUserSession(WebApplication.Data).Min[vtrordem[i]] then
              LI := (ConsMatrix[J, vtrordem[i]] - pmin[i])
            else
              LI := Min[vtrordem[i]];

              if LI < 1 then // CRITÉRIO DISCRETO NÃO BINARIO
              LI := 1;
         end
         else
         begin
           LS := (TIWUserSession(WebApplication.Data).ConsMatrix[J,vtrordem[i]] + pmax[i]);
           if LS > 1 then
           LS := 1;
           LI := (ConsMatrix[J,vtrordem[i]] - pmin[i]);
           if LI < 0 then
           LI := 0;
         end;

	//MUDANÇA - PEDRO 01.12 - FIM
            /// / Esse comando escreve a nova conseq para a alternativa, e é possível
            /// observar que ela será no mínimo a consequência mínima do espaço de
            /// consequências original e no máximo a consequência máxima quando
            /// float = 1////////////////////////////////////////////////////////

           // MatrizConsR[J, i] := Float;
           TIWUserSession(WebApplication.Data).MatrizConsR[J,vtrordem[i]] := Round(Float * (LS - LI) + LI);

          end
          else // Criterios não discretos
          begin
            /// / Utilizando o mesmo processo realizado na versão Desktop para evitar conseq
            /// fora do range de valores do problema inicial, caso contrário seria necessário
            /// refazer a elicitação flexível /////////////////////////////////////////////
            /// Float é um multiplicador obtido aleatoriamente para modificar a
            /// consequência da alternativa j, para o critério i ////////////////
            Float := { RandomRange(0, 1000) / 1000 } Random;
            /// / verifica-se se a variação requisitada pelo decisor por sí só já
            /// estrapola o range dos valores do espaço de consequências, caso
            /// isso ocrorra, as variáveis LS e LI são preenchidas adequadamente
            /// para evitar que isso ocorra. /////////////////////////////////////
            if (TIWUserSession(WebApplication.Data).ConsMatrix[J, vtrordem[i]]
                * (1 + TIWUserSession(WebApplication.Data).pmax[i] / 100))
              <= Max[vtrordem[i]] then
              LS := (ConsMatrix[J, vtrordem[i]] * (1 + pmax[i] / 100))
            else
              LS := TIWUserSession(WebApplication.Data).Max[vtrordem[i]];
            if (ConsMatrix[J, vtrordem[i]] *
                (1 - TIWUserSession(WebApplication.Data).pmin[i] / 100))
              >= TIWUserSession(WebApplication.Data).Min[vtrordem[i]] then
              LI := (ConsMatrix[J, vtrordem[i]] * (1 - pmin[i] / 100))
            else
              LI := Min[vtrordem[i]];

            /// / Esse comando escreve a nova conseq para a alternativa, e é possível
            /// observar que ela será no mínimo a consequência mínima do espaço de
            /// consequências original e no máximo a consequência máxima quando
            /// float = 1////////////////////////////////////////////////////////
            TIWUserSession(WebApplication.Data).MatrizConsR[J, vtrordem[i]] := Float * (LS - LI) + LI;
            // ** Caso o critério seja discreto, arrendonda-se a conseq **//

          end;

            /// / Este comando garante que nenhuma consequência vai ser maior
            /// que a maior consequência real, nem menor que a menor consequência
            /// real ////////////////////////////////////////////////////////////
            if MatrizConsR[J, vtrordem[i]] > Max[vtrordem[i]] then
              MatrizConsR[J, vtrordem[i]] := Max[vtrordem[i]];
            if MatrizConsR[J, vtrordem[i]] < Min[vtrordem[i]] then
              MatrizConsR[J, vtrordem[i]] := Min[vtrordem[i]];

          end // If crisel
          else
            /// / Caso o critério não esteja sofrendo variação, a conseq continua a
            /// sendo a consequência original ////////////////////////////////////
            MatrizConsR[J, vtrordem[i]] := ConsMatrix[J, vtrordem[i]];

          /// / Inicializa os vetores com a primeira consequência da Matriz
          if J = 0 then
          begin
            Mnc[i] := MatrizConsR[J, vtrordem[i]];
            Mxc[i] := MatrizConsR[J, vtrordem[i]];
          end;

          /// / Verificando as maiores e menores consequências
          if MatrizConsR[J, vtrordem[i]] > Mxc[i] then
            Mxc[i] := MatrizConsR[J, vtrordem[i]];
          if MatrizConsR[J, vtrordem[i]] < Mnc[i] then
            Mnc[i] := MatrizConsR[J, vtrordem[i]];
        end; // J


        /// / Este comando garante que haverão a maior e a menor consequência real
        /// no novo espaço de consequências ///////////////////////////////////
        if (TIWUserSession(WebApplication.Data).TypeOfCrit[vtrordem[i]] <> 3) and (TypeOfCrit[vtrordem[i]] <> 2) then
        begin
        for J := 0 to NumAlt - 1 do
        begin
          if MatrizConsR[J, vtrordem[i]] = Mxc[i] then
          begin
            MatrizConsR[J, vtrordem[i]] := Max[vtrordem[i]];
            break;
          end;
        end;

        for J := 0 to NumAlt - 1 do
        begin
          if MatrizConsR[J, vtrordem[i]] = Mnc[i] then
          begin
            TIWUserSession(WebApplication.Data).MatrizConsR[J, vtrordem[i]] :=
              Min[vtrordem[i]];
            break;
          end;
        end;
        end;
      end; // I

	Normaliza;

      { Obs.: Até aqui o procedimento é padrão, a partir daqui deve-se colocar a PL de classificação, dentro o procedimento para
        classificar as alternativas. Deve-se criar um vetor global para receber essa classificação. Na sequência elaborar o algoritmo
        para contabilizar a frequência da alternativa em cada perfil e a plotagem nos componentes da tela }
      PLClassificacaoAS;

      INC(K);
    end; // End do K

    preencher_grids_resultado;
    TIWUserSession(WebApplication.Data).Finish := true;
  end;
end;

Procedure TfrmSortingResults.Preencher_grid_classes(grdClasses: TIWGrid);
var
  i, num_perfis: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    num_perfis := length(perfis);
    grdClasses.Clear;
    grdClasses.ColumnCount := 3;
    grdClasses.RowCount := num_perfis + 2;
    grdClasses.Cell[0, 0].Text := 'Class';
    grdClasses.Cell[0, 0].Font.Style := [fsbold];
    grdClasses.Cell[0, 1].Text := 'Lower limit';
    grdClasses.Cell[0, 1].Font.Style := [fsbold];
    grdClasses.Cell[0, 2].Text := 'Upper limit';
    grdClasses.Cell[0, 2].Font.Style := [fsbold];
    grdClasses.Cell[1, 0].Text := 'C1';
    if Escala_AS = 0 then
      grdClasses.Cell[1, 1].Text := '0.00'
    else
      grdClasses.Cell[1, 1].Text := FloatToStr
        (TIWUserSession(WebApplication.Data).valor_nadir_minimo);
    grdClasses.Cell[1, 2].Text := FloatToStr(Perfis[0]);
    if num_perfis <> 1 then
      for i := 0 to num_perfis - 2 do
      begin
        grdClasses.Cell[i + 2, 0].Text := 'C' + IntToStr(i + 2);
        grdClasses.Cell[i + 2, 1].Text := FloatToStr(Perfis[i]);
        grdClasses.Cell[i + 2, 2].Text := FloatToStr(Perfis[i + 1]);
      end
      else
        i := 0;
    grdClasses.Cell[i + 2, 0].Text := 'C' + IntToStr(i + 2);
    grdClasses.Cell[i + 2, 1].Text := FloatToStr(Perfis[i]);
    grdClasses.Cell[i + 2, 2].Text := '1.00';
  end;
end; // with

procedure TfrmSortingResults.preparar_grids_resultado_AS;
var
  i: integer;
begin
  IWGriddeviation.Clear;
  IWGridpercent.Clear;
  with TIWUserSession(WebApplication.Data) do
  begin
    IWGriddeviation.ColumnCount := 4;
    IWGriddeviation.RowCount := NumAlt + 1;
    IWGriddeviation.Cell[0, 0].Text := 'Alternative';
    IWGriddeviation.Cell[0, 1].Text := 'Category';
    IWGriddeviation.Cell[0, 2].Text := '% Original Category';
    IWGriddeviation.Cell[0, 3].Text := '% Change';
    IWGriddeviation.Cell[0, 0].Font.Style := [fsbold];
    IWGriddeviation.Cell[0, 1].Font.Style := [fsbold];
    IWGriddeviation.Cell[0, 2].Font.Style := [fsbold];
    IWGriddeviation.Cell[0, 3].Font.Style := [fsbold];
    IWGridpercent.ColumnCount := num_cat + 2;
    IWGridpercent.RowCount := NumAlt + 1;
    IWGridpercent.Cell[0, 0].Text := 'Alternative/Category';
    IWGridpercent.Cell[0, 1].Text := 'Unsorted';
    IWGridpercent.Cell[0, 0].Font.Style := [fsbold];
    IWGridpercent.Cell[0, 1].Font.Style := [fsbold];
    for i := 1 to num_cat do
    begin
      IWGridpercent.Cell[0, i + 1].Text := 'C' + IntToStr(i);
      IWGridpercent.Cell[0, i + 1].Font.Style := [fsbold];
    end;
  end;
end;

procedure TfrmSortingResults.rdbtndecompClick(Sender: TObject);
begin
  rdbtnHE.Checked := false;
  rdbtndecomp.Checked := true;
end;

procedure TfrmSortingResults.rdbtnHEClick(Sender: TObject);
begin
  rdbtnHE.Checked :=  true;
  rdbtndecomp.Checked := false;
end;

procedure TfrmSortingResults.preencher_grids_resultado;
var
  i, j: integer;
  aux: Real;
begin
  preparar_grids_resultado_AS;
  with TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumAlt - 1 do
    begin
      IWGriddeviation.Cell[i + 1, 0].Text := NomeAlt[i];
      IWGriddeviation.Cell[i + 1, 1].Text := IntToStr
        (TIWUserSession(WebApplication.Data).class_final[i]);
      aux := RoundTo((contadorAS[i, class_final[i]] / ninst) * 100, -2);
      IWGriddeviation.Cell[i + 1, 2].Text := FormatFloat('0.00', aux) + '%';
      IWGriddeviation.Cell[i + 1, 3].Text := FormatFloat('0.00', (100 - aux))
        + '%';
      IWGridpercent.Cell[i + 1, 0].Text := NomeAlt[i];
      for j := 0 to num_cat do
      begin
        aux := RoundTo((contadorAS[i, j] / ninst) * 100, -2);
        IWGridpercent.Cell[i + 1, j + 1].Text := FormatFloat('0.00', aux) + '%';
      end;
    end;

    /// /////////** Plotagem do gráfico **//////////////////////////////////////
    // ** limpa o que já existir  **//
    ChartASord.BottomAxis.Visible := true; // torna o eixo x visível
    ChartASord.SeriesList.ClearValues;
    ChartASord.Title.Visible := false;
    ChartASord.LeftAxis.Items.Clear;
    // **Limpa o eixo do gráfico para evitar linhas duplicadas **//
    ChartASord.BottomAxis.Items.Clear;

    for i := 0 to NumAlt - 1 do
    begin
      // ** Coloca o nome da alt no eixo x ** //
      ChartASord.BottomAxis.Items.Add(i, AltSiglas[i]);

      // ** Estimando o número de vezes que a alternativa ficou na posição riginal **//
      aux := RoundTo((contadorAS[i, class_final[i]] / ninst) * 100, -2);

      // ** plota as duas séries no grafico  **//
      ChartASord.Series[0].AddXY(i, (aux), FormatFloat('0.00', aux) + '%');
      ChartASord.Series[1].AddXY
        (i, (100 - aux), FormatFloat('0.00', (100 - aux)) + '%');
    end;

    { // ** Definindo o posicionamento da imagem maximizada **//
      imagemax.Left := 48;
      imagemax.Top := 169;
      imagemax.Width := 809;
      imagemax.Height := 190; }

    // ** Tirando o print para as imagens **//
    IWImmgord.Picture.Bitmap.Assign
      (ChartASord.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImmgord.Width,
          IWImmgord.Height)));
    imagemax.Picture.Bitmap.Assign
      (ChartASord.TeeCreateBitmap(clWebPURPLE, rect(0, 0, imagemax.Width,
          imagemax.Height)));
    /// ///////////////////////////////////////////////////////////////////////////
  end;

end;

function TfrmSortingResults.GerarPerfilAS(ind: integer): Real;
var
  LI, LS, aux: Real;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    LI := Perfis_Inseridos[ind - 1];
    LS := Perfis_Inseridos[ind + 1];
    if ind = 0 then
    begin
      if Escala_AS = 0 then
        LI := 0;
      if Escala_AS = 1 then
        LI := valor_nadir_minimo;
    end;
    if ind = length(perfis) - 1 then
      LS := 1;

    if TIWUserSession(WebApplication.Data).Perfis_Inseridos[ind] *
      (1 + Pmax_perfil[ind] / 100) < LS then
      LS := Perfis_Inseridos[ind] * (1 + Pmax_perfil[ind] / 100);
    if Perfis_Inseridos[ind] * (1 - Pmin_perfil[ind] / 100) > LI then
      LI := TIWUserSession(WebApplication.Data).Perfis_Inseridos[ind] *
        (1 - Pmin_perfil[ind] / 100);

    aux := Random * (LS - LI) + LI;
    case Escala_AS of
      0:
        Result := RoundTo(aux, -3);
      1:
        Result := RoundTo((aux - valor_nadir_minimo) / (1 - valor_nadir_minimo)
            , -3);
    end;
  end;
end;

Function TfrmSortingResults.TrocaVP(Num: Double): String;
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



procedure TfrmSortingResults.btnbackASClick(Sender: TObject);
var
i : integer;
begin
 with TIWUserSession(WebApplication.Data) do
begin
  Finalize(pmax);
  finalize(pmin);
  finalize(crisel);
  for i := 0 to grdvariation.RowCount - 1 do
  begin
    if grdvariation.RowSelect[i] = True then
    begin
      if grdvariation.Cells[2,i] = 'Natural' then
      begin
      edtmaxAS[i].enabled := True;
      edtminAS[i].enabled := True;

      edtmaxAS[i].font.Color := clBlack;
      edtminAS[i].font.Color := clBlack;
      end;
      if grdvariation.Cells[2,i] = 'Constructed' then
      begin
      cmbbxmaxAS[i].enabled := True;
      cmbbxminAS[i].enabled := True;
      cmbbxmaxAS[i].font.Color := clBlack;
      cmbbxminAS[i].font.Color := clBlack;
      end;
    end;
  end;
end;
TIWUserSession(WebApplication.Data).Crias := False;
btnsaveAS.Enabled := true;
btnbackAS.Enabled := false;
btnstartas.Enabled := False;
grdvariation.Enabled := true;
//tbctrlVariationPage1.Visible := True;
//tbctrlVariation.ActivePage := 0;
end;

procedure TfrmSortingResults.btnbackASProfilesClick(Sender: TObject);
var
i : integer;
begin
 with TIWUserSession(WebApplication.Data) do
begin
  Finalize(Pmax_perfil);
  finalize(Pmin_perfil);
  for i := 0 to grdvariation.RowCount - 1 do
  begin
    if grdprofiles.RowSelect[i] = True then
    begin
      edtpercentprofilesmax[i].enabled := True;
      edtpercentprofilesmin[i].enabled := True;
      edtpercentprofilesmax[i].font.Color := clBlack;
      edtpercentprofilesmin[i].font.Color := clBlack;
    end;
  end;
end;
TIWUserSession(WebApplication.Data).ASProfiles := False;
btnsaveASprofiles.Enabled := true;
btnbackASprofiles.Enabled := false;
btnstartasprofiles.Enabled := False;
grdprofiles.Enabled := true;
//tbctrlVariationPage0.Visible := True;
//tbctrlVariation.ActivePage := 1;
end;

procedure TfrmSortingResults.btnbackelicitclassClick(Sender: TObject);
var
  i, j, k, auxk, NumCri, NumAlt: integer;
  d: Double;
  MaxCons, MinCons: Array of Double;
  perfis_inseridos : array of real;

begin
  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarResultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarResultBD;

  if rdbtndecomp.Checked then
  begin
    rgnresclassificacao.Visible := false;
    TIWUserSession(WebApplication.Data).stage := 3;
    TIWUserSession(WebApplication.Data).auxgoback := -56231;
    Tfrmaintercriterio.Create(WebApplication).Show;
    Exit;
  end;


  if rdbtnHE.Checked then
  begin
    /// ///////// Recebendo o valor das variáveis salvas na usersession //////////
    NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
    NumCri := TIWUserSession(WebApplication.Data).numcrit;
    setlength(TIWUserSession(WebApplication.Data).altperfil, (Length(TIWUserSession(WebApplication.Data).perfis_inseridos)) , NumCri);

    with TIWUserSession(WebApplication.Data) do
      begin
      //Atualização do Layout
        rgnresclassificacao.Visible := false;
        IWRgnHolistica.Visible := true;
        TbCtrlP0Holistica.Visible := true; // **Torna possível a AS para perfis **//
        IWRgnHolistica.Align := Talign(5);

   //Atualização do Layout
        //1º Region
          {lblrgn1alt.Visible := false;
          txtrgn1alt.Visible := false;
          txtrgn1alt.Lines.Clear;
          Region1alt.Visible := false;
        //2º Region
          lblrgn2alt.Visible := false;
          txtrgn2alt.Visible := false;
          txtrgn2alt.Lines.Clear;
          lblrgnalt2.Visible := false;
          //Region2alt.Visible := false;  }
        //3º Region
          lblrgnbest.Visible := false;
          //lblrgnbest2.Visible := false;
          CmbxBest.Visible := false;
          Regionbest.Visible := false;
        //4º Region
          BtnCancelHEG1.Visible := true;
          btnOKHEG3.Visible := false;
        //Alternative 1
          //IWRegion49.Visible := true;
          //IWLabel114.Visible := true;
          //IWText30.Visible := true;
          IWLabel4.Visible := true;
          CmbxAlternativa1.Visible := true;
          CmbxAlternativa1.Items.Clear;
        //Alternative 2
          IWText5.Visible := false;
          IWLabel5.Visible := false;
          chcklstbxalternative2.Visible := false;
          chcklstbxalternative2.Items.Clear;
          btnOKalternatives.Visible := false;

        //Analisar quais alternativas não foram classificadas ainda e atualizar o CmbxAlternativa1
        k := 0;
        auxk := 0;
          for i := 0 to NumAlt - 1 do
            with TIWUserSession(WebApplication.Data) do
              if class_min[i] <> class_max[i] then
              begin
                CmbxAlternativa1.Items.Add(NomeAlt[i]);
                  // ** Atualiza-se o vetor para plotagem dos gráficos **//
                    INC(k);
                    setlength(indice_alt, k);
                    TIWUserSession(WebApplication.Data).indice_alt[k - 1] := i;
                  // ** Atualiza-se o vetor das alternativas não classificadas**//
                    INC(auxk);
                    setlength(indice_altnaoclassificadas, auxk);
                    TIWUserSession(WebApplication.Data).indice_altnaoclassificadas[auxk - 1] := i;
              end;

      //CRIAR ALTERNATIVAS PERFIL   = COLOCAR O VALOR DO PERFIL EM TUDO
        //Criar as alternativas perfil não normalizadas
          for i := 0 to Length(TIWUserSession(WebApplication.Data).perfis_inseridos) - 1 do
            for j := 0 to NumCri - 1 do
            begin
                // Normalização para os critérios de maximização //////////////////////
                if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
                  begin //Maximizar: (perfis[i]*(Solução Ideal - Nadir))+ Nadir
                    d := (perfis_inseridos[i]*(TIWUserSession(WebApplication.Data).MaxCons[j] - TIWUserSession(WebApplication.Data).MinCons[j])) + MinCons[j];
                    TIWUserSession(WebApplication.Data).altperfil[i,j] := d;
                  end;
                /// Normalização para os critérios de minimização //////////////////////
                if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
                  begin //Minimizar: (perfis[i]*(Nadir - Solução Ideal))+ Solução Ideal
                    TIWUserSession(WebApplication.Data).altperfil[i,j] := (perfis_inseridos[i]*(MinCons[j] - MaxCons[j])) + MaxCons[j];
                  end;
            end;
        //Gráficos
        graficos;

        TbCtrlvisualizationsHolistica.ActivePage := TbCtrlvisualizationsHolistica.TabOrder;
        TbCtrlP4Holistica.TabOrder := 0;
        {TbCtrlP0Holistica.TabOrder := 1;
        TbCtrlP2Holistica.TabOrder := 2;
        TbCtrlP3Holistica.TabOrder := 3;
        TbCtrlP1Holistica.TabOrder := 4; }
        TbCtrlP0Holistica.Visible := False;
        TbCtrlP1Holistica.Visible := False;
        TbCtrlP2Holistica.Visible := False;
        TbCtrlP3Holistica.Visible := False;
        {TbCtrlP4Holistica.Visible := True;
        TbCtrlP4Holistica.Show;
        ChartGantt.Visible := True;
        IWImageGantt.Top := 43; }
if TIWUserSession(WebApplication.Data).alt_nao_classificadas = 1 then begin
CmbxAlternativa1.ItemIndex := 0;
CmbxAlternativa1Change(Sender);
end;

  end; //if rdbtnHE.Checked then
end;
end;

procedure TfrmSortingResults.BtnCancelHEG1Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;

  // salvar banco de dados na tabela he_question
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 16;
  SalvarresultBD;

  // **Para seguir direto para a decomposição **//
  {if TIWUserSession(WebApplication.Data).Sol = -5 then
    begin
    TIWUserSession(WebApplication.Data).stage := 3;
    TIWUserSession(WebApplication.Data).auxgoback := -56231;
    Tfrmaintercriterio.Create(WebApplication).Show;
    end
  else}
  iwrgnholistica.Visible := false;
  rgnresclassificacao.visible := true;
  cmbxAlternativa1.ItemIndex := -1;
    //TfrmResultados.Create(WebApplication).Show;

end;

procedure TfrmSortingResults.btncloseHordClick(Sender: TObject);
begin
tbctrlHolisticRanking1Page0.Visible := false;
tbctrlRankingC1.ActivePage:= tbctrlHolisticRanking.TabOrder;
end;

procedure TfrmSortingResults.btnclosemaxClick(Sender: TObject);
begin
  rgnimagemax.Hide;
end;

procedure TfrmSortingResults.tmrhasseTimer(Sender: TObject);
var
  prob: Boolean;
  T1: Pwidechar;
begin
  prob := false;
  try
    TIWFadeImage1.Picture.LoadFromFile('C:\inetpub\fitradeoff\images\' +
        (TIWUserSession(WebApplication.Data).id_problema) + '.jpg');
    TIWFadeImageC1.Picture.LoadFromFile('C:\inetpub\fitradeoff\images\' +
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

Procedure TfrmSortingResults.showsortingresults;
var
  i, ii, a, y, g, j: integer;
  gantt : array of TGanttSeries;
  auxiliar, auxVMax, auxVMin : double;
  auxiliar_perfil1 : array of TiwLabel;
  coresalt, coresalt1: array of Tcolor;
  primeiracor: boolean;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
  countC1 := 0;
    /// Mostra o número de categorias definidas
    {lblNumberCategories.Caption :=
      'Number of predefined categories: ' + IntToStr(length(perfis) + 1);}

    preparar_grids_resultado;

    //Cores dos gráficos
  Setlength(coresalt, 130);
  Setlength(coresalt1, TIWUserSession(WebApplication.Data).NumAlt);
  coresalt[0]:= $000000CC; //vermelho
  coresalt[1]:= $0033BBFF; //amarelo
  coresalt[2]:= $00CC9900; //azul
  coresalt[3]:= $00BBBBFF; //rosa
  coresalt[4]:= $005AE6C8; //verde
  coresalt[5]:= $00FF00FF;
  coresalt[6]:= $00808000;
  coresalt[7]:= $00800000;
  coresalt[8]:= $00000080;
  coresalt[9]:= $0000FF00;
  coresalt[10]:= $00008080;
  coresalt[11]:= $00800080;
  coresalt[12]:= $00FFFF00;
  coresalt[13]:= $00C0DCC0;
  coresalt[14]:= $00A4A0A0;
  coresalt[15]:= $00E049BB;
  coresalt[16]:= $005353FF;
  coresalt[17]:= $000080FF;
  coresalt[18]:= $00800040;
  coresalt[19]:= $00434321;
  coresalt[20]:= $00189AD8;
  coresalt[21]:= $000000C1;
  coresalt[22]:= $00DC0E65;
  coresalt[23]:= $0000AE00;
  coresalt[24]:= $002676CE;
  coresalt[25]:= $008000FF;// índigo
  coresalt[26]:= $00808080; // cinza claro
  coresalt[27]:= $00FF4500; // laranja avermelhado
  coresalt[28]:= $00FFD700; // ouro claro
  coresalt[29]:= $00640000; // marrom escuro
  coresalt[30]:= $008B4513; // marrom de sela
  coresalt[31]:= $00A52A2A; // marrom de fogo
  coresalt[32]:= $00D2691E; // chocolate
  coresalt[33]:= $008BB000; // marrom escuro
  coresalt[34]:= $00B22222; // tijolo
  coresalt[35]:= $00FF6347; // tomate
  coresalt[36]:= $00FF8C00; // laranja escuro
  coresalt[37]:= $00FFA07A; // salmão claro
  coresalt[38]:= $00FF7F50; // coral claro
  coresalt[39]:= $00FF0000; // vermelho claro
  coresalt[40]:= $00CD5C5C; // marrom claro
  coresalt[41]:= $008B0000; // marrom escuro
  coresalt[42]:= $00A52A2A; // marrom de fogo
  coresalt[43]:= $00B22222; // tijolo
  coresalt[44]:= $008B0000; // marrom escuro
  coresalt[45]:= $00A52A2A; // marrom de fogo
  coresalt[46]:= $00B22222; // tijolo
  coresalt[47]:= $008B0000; // marrom escuro
  coresalt[48]:= $00A52A2A; // marrom de fogo
  coresalt[49]:= $00B22222; // tijolo
  coresalt[50]:= $008B0000; // marrom escuro
  coresalt[51]:= $00A52A2A; // marrom de fogo
  coresalt[52]:= $00B22222; // tijolo
  coresalt[53]:= $008B0000; // marrom escuro
  coresalt[54]:= $00A52A2A; // marrom de fogo
  coresalt[55]:= $00B22222; // tijolo
  coresalt[56]:= $00FF69B4; // rosa quente
  coresalt[57]:= $00FFE4E1; // rosa claro
  coresalt[58]:= $00FF1493; // rosa profundo
  coresalt[59]:= $00C71585; // vermelho violeta
  coresalt[60]:= $00DB7093; // roxo claro
  coresalt[61]:= $00DA70D6; // orquídea
  coresalt[62]:= $009932CC; // índigo escuro
  coresalt[63]:= $009ACD32; // verde amarelo
  coresalt[64]:= $00C0FF3E; // verde limão brilhante
  coresalt[65]:= $00AEEEEE; // azul celeste
  coresalt[66]:= $000000CC; //vermelho
  coresalt[67]:= $0033BBFF; //amarelo
  coresalt[68]:= $00CC9900; //azul
  coresalt[69]:= $00BBBBFF; //rosa
  coresalt[70]:= $005AE6C8; //verde
  coresalt[71]:= $00FF00FF;
  coresalt[72]:= $00808000;
  coresalt[73]:= $00800000;
  coresalt[74]:= $00000080;
  coresalt[75]:= $0000FF00;
  coresalt[76]:= $00008080;
  coresalt[77]:= $00800080;
  coresalt[78]:= $00FFFF00;
  coresalt[79]:= $00C0DCC0;
  coresalt[80]:= $00A4A0A0;
  coresalt[81]:= $00E049BB;
  coresalt[82]:= $005353FF;
  coresalt[83]:= $000080FF;
  coresalt[84]:= $00800040;
  coresalt[85]:= $00434321;
  coresalt[86]:= $00189AD8;
  coresalt[87]:= $000000C1;
  coresalt[88]:= $00DC0E65;
  coresalt[89]:= $0000AE00;
  coresalt[90]:= $002676CE;
  coresalt[91]:= $008000FF;// índigo
  coresalt[92]:= $00808080; // cinza claro
  coresalt[93]:= $00FF4500; // laranja avermelhado
  coresalt[94]:= $00FFD700; // ouro claro
  coresalt[95]:= $00640000; // marrom escuro
  coresalt[96]:= $008B4513; // marrom de sela
  coresalt[97]:= $00A52A2A; // marrom de fogo
  coresalt[98]:= $00D2691E; // chocolate
  coresalt[99]:= $008B0000; // marrom escuro
  coresalt[100]:= $00B22222; // tijolo
  coresalt[101]:= $00FF6347; // tomate
  coresalt[102]:= $00FF8C00; // laranja escuro
  coresalt[103]:= $00FFA07A; // salmão claro
  coresalt[104]:= $00FF7F50; // coral claro
  coresalt[105]:= $00FF0000; // vermelho claro
  coresalt[106]:= $00CD5C5C; // marrom claro
  coresalt[107]:= $008B0000; // marrom escuro
  coresalt[108]:= $00A52A2A; // marrom de fogo
  coresalt[109]:= $00B22222; // tijolo
  coresalt[110]:= $008B0000; // marrom escuro
  coresalt[111]:= $00A52A2A; // marrom de fogo
  coresalt[112]:= $00B22222; // tijolo
  coresalt[113]:= $008B0000; // marrom escuro
  coresalt[114]:= $00A52A2A; // marrom de fogo
  coresalt[115]:= $00B22222; // tijolo
  coresalt[116]:= $008B0000; // marrom escuro
  coresalt[117]:= $00A52A2A; // marrom de fogo
  coresalt[118]:= $00B22222; // tijolo
  coresalt[119]:= $008B0000; // marrom escuro
  coresalt[120]:= $00A52A2A; // marrom de fogo
  coresalt[121]:= $00B22222; // tijolo
  coresalt[122]:= $00FF69B4; // rosa quente
  coresalt[123]:= $00FFE4E1; // rosa claro
  coresalt[124]:= $00FF1493; // rosa profundo
  coresalt[125]:= $00C71585; // vermelho violeta
  coresalt[126]:= $00DB7093; // roxo claro
  coresalt[127]:= $00DA70D6; // orquídea
  coresalt[128]:= $009932CC; // índigo escuro
  coresalt[129]:= $009ACD32; // verde amarelo

for y := 0 to TIWUserSession(WebApplication.Data).NumAlt - 1 do
  begin
    coresalt1[y] := coresalt[y];
  end;

for y := 0 to Length(coresalt1) - 1 do
  begin
  primeiracor := true;
    for i := 0 to Length(coresalt1) - 1 do
    begin
      if (coresalt1[y] = coresalt1[i]) then
      begin
      if primeiracor then
        begin
          primeiracor := False;
        end
        else
        begin
        // Encontra a próxima cor disponível em coresalt
        g := (i + 5) mod Length(coresalt);
        // Substitui cor repetida pela próxima cor disponível em coresalt
        coresalt1[i] := coresalt[g];
      end;
    end;
  end;
  end;


     With Chart1 do begin
     Title.Clear;
     RemoveAllSeries;
     BottomAxis.Items.Clear;
     Legend.Visible := False;
     View3D := false;
     SeriesList.ClearValues;
     BottomAxis.Visible := true;
     BottomAxis.LabelsAlternate;
     BottomAxis.Items.Automatic := false;
     LeftAxis.Items.Clear;
     LeftAxis.Increment := 0.2; // ?
     SetLength(gantt, Numalt+1);
     TopAxis.Items.Clear;
     TopAxis.Items.Automatic := False;

     end;

With TIWUserSession(WebApplication.Data) do begin
      setlength(gantt, NumAlt+1);
      setlength(auxiliar_perfil1, length(TIWUserSession(WebApplication.Data).perfis) + 1);

      for i := 0 to length(perfis) do begin
        if auxiliar_perfil1[i].Caption <> ''  then
        auxiliar_perfil1[i].destroy;
      end;


     setlength(gantt, NumAlt+1);


      ii := 0;
    for a := Numalt - 1 downto 0 do
    begin
    auxVMax := Round(ValAltMax[a]*100)/100;
    auxVMin := Round(ValAltMin[a]*100)/100;
    if class_min[a] = class_max[a] then begin
      //Gantt *************
      gantt[ii]:= TGanttSeries.Create(self);
      With Chart1 do //GANT
      begin
        AddSeries(gantt[ii]);
        series[ii].Marks.Visible := false;
        series[ii].ColorEachPoint := false;
        series[ii].Legend.Visible := false;
      end;
      gantt[ii].AddGantt(auxVMin,auxVMax,ii*2);
      gantt[ii].Color := coresalt1[ii];
      Chart1.LeftAxis.Items.Add(ii*2,AltSiglas[a]);
      //************* Fim Gantt
      inc(ii);
    end;
    end;

    Chart1.BottomAxis.Items.Add(0, FloatToStr(0));
    Chart1.BottomAxis.Items.Add(1, FloatToStr(1));
    gantt[ii]:= TGanttSeries.Create(self);
    Chart1.AddSeries(gantt[ii]);
    gantt[ii].AddGantt(1,1,(ii-1)*2);
    gantt[ii].AddGantt(0,0,0);


    for i := 0 to length(perfis) - 1 do
      begin
      Chart1.BottomAxis.Items.Add(perfis[i],FloatToStr(perfis[i]));
      if i = 0 then begin
      //Chart1.BottomAxis.Items.Add(perfis[i]/2,'C' + inttostr(i+1));
        auxiliar_perfil1[i] := TiwLabel.Create(Self);
        auxiliar_perfil1[i].Parent := iwregion25;
        auxiliar_perfil1[i].Top := 5 + IWImage2.Height;
        //auxiliar_perfil1[i].Name := ('lblC' + inttostr(i+1));
        auxiliar_perfil1[i].Visible := True;
        auxiliar_perfil1[i].Left := 25+round((IWImage2.width-20)*perfis[0]/2);
        //auxiliar_perfil1[i].Left := 15+round(IwImage2.width*(perfis[i]));
        auxiliar_perfil1[i].Enabled := True;
        auxiliar_perfil1[i].Caption := ('C' + inttostr(i+1));
        auxiliar_perfil1[i].Font.Style := [fsbold];
        auxiliar_perfil1[i].Font.FontName := 'Verdana';
      end
      else
      begin
      //Chart1.BottomAxis.Items.Add((perfis[i]+ perfis[i-1])/2,'C' + inttostr(i+1));
       auxiliar_perfil1[i] := TiwLabel.Create(Self);
       auxiliar_perfil1[i].Parent := iwregion25;
       auxiliar_perfil1[i].Top := 5 + IWImage2.Height;
       //auxiliar_perfil1[i].Name := ('lblC' + inttostr(i+1));
       auxiliar_perfil1[i].Visible := True;
       auxiliar_perfil1[i].Left := 25+round((IWImage2.width-20)*((perfis[i]+ perfis[i-1])/2));
       auxiliar_perfil1[i].Enabled := True;
       auxiliar_perfil1[i].Caption := ('C' + inttostr(i+1));
       auxiliar_perfil1[i].Font.Style := [fsbold];
       auxiliar_perfil1[i].Font.FontName := 'Verdana';
      end;
      end;
     //Chart1.BottomAxis.Items.Add((1+ perfis[length(perfis) - 1])/2,'C' + inttostr(length(perfis)+1));

     auxiliar_perfil1[length(perfis)] := TiwLabel.Create(Self);
     auxiliar_perfil1[length(perfis)].Parent := iwregion25;
     auxiliar_perfil1[length(perfis)].Top := 5 + IWImage2.Height;
     //auxiliar_perfil1[length(perfis)].Name := ('lblC' + inttostr(length(perfis)+1));
     auxiliar_perfil1[length(perfis)].Visible := True;
     auxiliar_perfil1[length(perfis)].Left := 25+round((IWImage2.width-20)*((1+ perfis[length(perfis) - 1])/2));
     auxiliar_perfil1[length(perfis)].Enabled := True;
     auxiliar_perfil1[length(perfis)].Caption := ('C' + inttostr(length(perfis)+1));
     auxiliar_perfil1[length(perfis)].Font.Style := [fsbold];
     auxiliar_perfil1[i].Font.FontName := 'Verdana';

    end;
    IWImage2.Picture.Bitmap.Assign
        (chart1.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImage2.Width,
            IWImage2.Height)));




    for i := 0 to NumAlt - 1 do
    begin
    critIndex := vtrordem[i];
      if class_min[i] = class_max[i] then
        resultado_alternativa(i, grdResult1)
      else
      begin
        if solucao_encontrada = true then
        resultado_alternativa(i, grdResult1)
        else
        resultado_alternativa(i, grdResult2);
      end;
    end;

    for i := 0 to grdResult1.RowCount - 1 do
    begin
    if (grdResult1.Cell[i, 1].Text = 'C' + inttostr(length(perfis)+1)) then
        begin
          // Incrementa o contador e redimensiona o vetor se necessário
          Inc(TIWUserSession(WebApplication.Data).countC1);
          SetLength(indicesC1, countC1);
          SetLength(nomealtC1, countC1);
          TIWUserSession(WebApplication.Data).nomealtC1[countC1 - 1] := grdResult1.Cell[i, 0].Text;
          // Armazena o índice 'i' no vetor
          end;
          end;
    // Percorra o vetor NomeAlt
  {for i := 0 to Length(TIWUserSession(WebApplication.Data).NomeAlt) - 1 do
  begin
      if TIWUserSession(WebApplication.Data).NomeAlt[i] = TIWUserSession(WebApplication.Data).nomealtC1[TIWUserSession(WebApplication.Data).countC1 - 1] then
          TIWUserSession(WebApplication.Data).indicesC1[i] := i; // -1 porque os índices do array começam em 0
        end;}

        // Percorra nomealtC1
  for i := 0 to Length(TIWUserSession(WebApplication.Data).nomealtC1) - 1 do
  begin
    // Percorra NomeAlt para encontrar correspondências
    for j := 0 to Length(TIWUserSession(WebApplication.Data).NomeAlt) - 1 do
    begin
      // Verifique se o valor em nomealtC1 está presente em NomeAlt
      if TIWUserSession(WebApplication.Data).NomeAlt[j] = TIWUserSession(WebApplication.Data).nomealtC1[i] then
      begin
        // Se encontrou uma correspondência, armazene o índice em indicesC1
        TIWUserSession(WebApplication.Data).indicesC1[i] := j;
        Break; // Saia do loop interno depois de encontrar uma correspondência
      end;
    end;
  end;

  end;
end;

Procedure TfrmSortingResults.classificarAS (ValorAltMin, ValorAltMax: array of Real);
var
  i, K: integer;
  auxValAltMax, auxValAltMin : real;
begin
  for K := 0 to Length(ValorAltMin) - 1 do
  begin
  auxValAltMax := Round(ValorAltMax[k]*100)/100;
  auxValAltMin := Round(ValorAltMin[k]*100)/100;
  TIWUserSession(WebApplication.Data).class_min[K] := 1;

    for i := 0 to Length(TIWUserSession(WebApplication.Data).perfisAS) - 1 do begin
      if auxValAltMin >= TIWUserSession(WebApplication.Data).perfisAS[i] then
      TIWUserSession(WebApplication.Data).class_min[K] := 1 + TIWUserSession(WebApplication.Data).class_min[K]
      else
      break;
    end;


     TIWUserSession(WebApplication.Data).class_max[K] := TIWUserSession(WebApplication.Data).class_min[K];
     for i := TIWUserSession(WebApplication.Data).class_min[K] - 1 to Length(TIWUserSession(WebApplication.Data).perfisAS) - 1 do begin
      if auxValAltMax > TIWUserSession(WebApplication.Data).perfisAS[i] then
      TIWUserSession(WebApplication.Data).class_max[K] := 1 + TIWUserSession(WebApplication.Data).class_max[K]
      else
      break;
    end

  end;
end;

procedure TfrmSortingResults.CmbxAlternativa1Change(Sender: TObject);
var
  i, p, k, auxk, altsel, CountSelected : integer; //auxiliares
  aclassmin, aclassmax : integer; // classe da alternativa selecionada no CmbxAlternativa1
  avalmax, avalmin: real; // valores global da alternativa selecionada no CmbxAlternativa1
  NumCri, NumAlt: integer; // Número de critérios,
  altperfil: Array of Array of Double; // vj(xij) de cada alternativa perfil

begin

TbCtrlP4Holistica.Visible := false;
  //Atualização do Layout
   //1º Region
     Region1alt.Visible := true;
   //2º Region
     {lblrgn2alt.Visible := false;
     txtrgn2alt.Visible := false;
     txtrgn2alt.Lines.Clear;
     lblrgnalt2.Visible := false;
     //Region2alt.Visible := false;  }
   //Alternative 2
     IWText5.Visible := true;
     chcklstbxalternative2.Visible := true;
     IWLabel5.Visible := true;
     chcklstbxalternative2.Items.Clear;
     btnOKalternatives.Visible := true;
     IWLabel5.Visible := true;

   //3º Region
     lblrgnbest.Visible :=  false;
     //lblrgnbest2.Visible := false;
     CmbxBest.Visible := false;
     Regionbest.Visible := false;

  /// ///////// Recebendo o valor das variáveis salvas na usersession //////////
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NumCri := TIWUserSession(WebApplication.Data).numcrit;
  p := 0;
  k := 0;
  auxk := 1;

  //Pega a informação da alternativa do CmbxAlternativa1
    k := TIWUserSession(WebApplication.Data).indice_altnaoclassificadas[CmbxAlternativa1.itemindex];
    //txtrgn1alt.Lines.Add(TIWUserSession(WebApplication.Data).NomeAlt[k]);
  // ** Atualiza-se o vetor para plotagem dos gráficos **//
    setlength(TIWUserSession(WebApplication.Data).indice_alt, 1);
    TIWUserSession(WebApplication.Data).indice_alt[0] := k;

  aclassmin := TIWUserSession(WebApplication.Data).class_min[k];
  aclassmax := TIWUserSession(WebApplication.Data).class_max[k];

  with TIWUserSession(WebApplication.Data) do
    begin
   //Quais alternativas o usuário pode comparar com essa? Adicionar isso...
   //    ... no CmbxAlternativa2..........................................
        //Primeiro adc as de Perfil, depois as Classificadas, e depois as Não class.
        //1)Alternativas não Classificadas que podem ser comparadas  .
        {for i := 0 to NumAlt - 1 do
          if (TIWUserSession(WebApplication.Data).class_min[i] <> TIWUserSession(WebApplication.Data).class_max[i]) and (k <> i)then // A alternativa não foi classificada e não é ela mesma
            if (aclassmin < class_max[i]) and (class_min[i] < aclassmax) then
                begin
                chcklstbxalternative2.Items.Add(NomeAlt[i]);
                // ** Atualiza-se o vetor para plotagem dos gráficos **//
                  INC(auxk);
                  setlength(indice_alt, auxk);
                  TIWUserSession(WebApplication.Data).indice_alt[auxk-1] := i;
                end;}

        //2)Alternativas de Perfil que podem ser comparadas  ...
        for i := 0 to Length(TIWUserSession(WebApplication.Data).perfis) - 1 do
          if (TIWUserSession(WebApplication.Data).ValAltMax[k] >= TIWUserSession(WebApplication.Data).perfis[i]) and (TIWUserSession(WebApplication.Data).ValAltMin[k] <= perfis[i]) then
            begin
              chcklstbxalternative2.Items.Add('Profile ' + intTostr(i+1));
              // ** Atualiza-se o vetor para plotagem dos gráficos **//
                INC(p);
                setlength(indice_altp, p);
                TIWUserSession(WebApplication.Data).indice_altp[p - 1] := i+1;
            end;

        //3)Alternativas Classificadas que podem ser comparadas ...
        {for i := 0 to NumAlt - 1 do
              if (class_min[i] = class_max[i]) then // A alternativa foi classificada
                if (aclassmin < class_max[i]) and (class_min[i] < aclassmax) then
                  begin
                    chcklstbxalternative2.Items.Add(NomeAlt[i]);
                    // ** Atualiza-se o vetor para plotagem dos gráficos **//
                      INC(auxk);
                      setlength(indice_alt, auxk);
                      TIWUserSession(WebApplication.Data).indice_alt[auxk - 1] := i;
                  end;  }

        //Limpar as alternativas selecionadas
        for i := 0 to chcklstbxalternative2.Items.Count - 1 do
        begin
          chcklstbxalternative2.Selected[i] := false;
        end;

       //Atualiza gráficos
       if p = 0 then
       begin
          graficos;
       end
       else
          graficosp;
       end;



 if chcklstbxalternative2.Items.Count = 1 then
  begin
          chcklstbxalternative2.Selected[0] := True;
  btnOKalternativesClick(Sender);

       end;

end;

procedure TfrmSortingResults.CmbxBestChange(Sender: TObject);
var
  indexSelecionado: integer;

begin
   indexSelecionado := CmbxBest.ItemIndex;
   if (indexSelecionado = 0) or (indexSelecionado = 1) then
   begin
     //4º Region
     btnOKHEG3.Visible := true;
   end
   else
   begin
     //4º Region
     BtnCancelHEG1.Visible := false;
   end;
end;

procedure TfrmSortingResults.PLClassificacaoAS;
var
  i, j, K, Nrest, a, b, Z, II, JJ, C: integer; // Contadores
  NumCri, NumAlt, Numl, NAH, NumPOA: integer; // Número de critérios,
  // num de alternativas, num de linhasna Matriz do Modelo de PL e número de restrições
  // provenientes de Avaliações holísticas, número de alternativas potencialmente ótimas
  MatA, MatCons: Array of Array of Double; // Matriz do Modelo de PL e Matriz de Consequências Normalizada
  VetPOA, Criorder: Array of integer; // Vetor que armazena os índices das alternativas
  // potencialmente ótimas do problema, vetor que armazena as alternativas que passaram por uma
  // avaliação holística e vetor que armazena a ordenação dos critérios
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
  typeprob, dirprob: integer;
  FO, Op: array of string;
  limit: array of Real;
  Rmod: array of AnsiString;
  var_int, var_bin: Array of integer;
  /// /vetores que carregam var de decisão inteiras e binárias
  Lp: THandle;
  S1: string;
  MAXDI, MAXDJ: array [0 .. 2] of Double;
  AuxHEz: array of integer; // vetor auxiliar para facilitar a elaboração de res_
  // trições com var binária da HE
  MSSG: integer;

  /// PARA CLASSIFICAÇÃO (MOACIR)
  SFMax, SFMin, alt_nao_classificadas: integer;
  ValAltMax, ValAltMin: array of Real;
  solução_encontrada: Boolean;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  NumCri := TIWUserSession(WebApplication.Data).NumCrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  NumPOA := TIWUserSession(WebApplication.Data).NDA;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 3 + (NumAlt - 1); // número de linhas da matriz do modelo de PPL
  NumDV := NumCri; // número de var de decisão
  setlength(MatCons, NumAlt, NumCri); // Matriz de cons normalizadas
  setlength(Criorder, NumCri); // Ordem dos critérios
  setlength(MatA, Numl, NumCri + 1); // Matriz com o modelo
  setlength(Op, Numl - 1);
  setlength(limit, Numl - 1);
  setlength(Rmod, Numl - 1);
  setlength(VetPOA, NumPOA); // Vetor de alt potencialmente ótima
  setlength(LimMax, NumCri - 1); // limites das relações entre os pesos
  setlength(LimMin, NumCri - 1); // limites das relações entre os pesos
  setlength(VetAH, NAH); // NAH setar como zero número de avaliações holísticas
  setlength(OPAH, NAH);
  setlength(FO, NumCri);
  setlength(ResultVector, NumCri + 1);

  // PARA CLASSIFICAÇÃO (MOACIR 08.06.2021)
  setlength(ValAltMax, NumAlt);
  setlength(ValAltMin, NumAlt);

  typeprob := 0;
  // Recebendo info das variáveis globais //
  /// Var de decisão são contínuas ///
  for i := 0 to NumAlt - 1 do
  begin
    for j := 0 to NumCri - 1 do
      MatCons[i, j] := TIWUserSession(WebApplication.Data).MconsN[i, j];
    // cnsequencias normalizadas
  end;
  for i := 0 to NumCri - 1 do
    Criorder[i] := TIWUserSession(WebApplication.Data).vtrordem[i];
  // ordem dos critérios
  for i := 0 to NumCri - 2 do
  begin
    // setlength(LimMin, i + 1);
    LimMin[i] := TIWUserSession(WebApplication.Data).LimMin[i];
    LimMax[i] := TIWUserSession(WebApplication.Data).LimMax[i];
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for j := 0 to NAH - 1 do
    begin
      setlength(VetAH[j], length(MATAH[j]));
      for i := 0 to length(MATAH[j]) - 1 do
        VetAH[j, i] := MATAH[j, i];
    end;
  end;

  /// ///////////////////////////////////////////////////////////////////////////
  /// Limpando a Matriz do problema de possíveis valores provindos de sua inicialização ///
  for i := 0 to Numl - 1 do
    for j := 0 to NumCri do
      MatA[i, j] := 0;

  /// //////////// Programação Linear - MODELO PROB DE ESCOLHA //////////////////

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
              if VetAH[i - a,1]< 0 then //Se a mlr alt for perfil
              begin
              //perfis_inseridos[i] começa de zero
                MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                  - TIWUserSession(WebApplication.Data).perfis[-1-VetAH[(i - a), 1]];
              end;
              if VetAH[i - a,2]< 0 then //Se a pior alt for perfil
              begin
                MatA[Nrest + 1, j + 1] := TIWUserSession(WebApplication.Data).perfis[-1-VetAH[(i - a), 2]]
                  - MatCons[VetAH[i - a, 1], Criorder[j]];
              end;
            if (VetAH[i - a,2]>=0) and (VetAH[i - a,1]>=0) then
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end;
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
            Op[Nrest] := '=';
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
            if VetAH[i - a,1]< 0 then //Se a mlr alt for perfil
              begin
              //perfis[i] começa de zero
                MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                  - TIWUserSession(WebApplication.Data).perfis[-1-VetAH[(i - a), 1]];
              end;
              if VetAH[i - a,2]< 0 then //Se a pior alt for perfil
              begin
                MatA[Nrest + 1, j + 1] := TIWUserSession(WebApplication.Data).perfis[-1-VetAH[(i - a), 2]]
                  - MatCons[VetAH[i - a, 1], Criorder[j]];
              end;
            if (VetAH[i - a,2]>=0) and (VetAH[i - a,1]>=0) then
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end;
            end; // j
            MatA[Nrest + 1, 0] := -0.00001;
            Op[Nrest] := '<';
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

  /// Preenchendo as Restrições referentes à Normalização dos Pesos///
  for j := 0 to NumCri - 1 do
    MatA[a + 1, j + 1] := 1;
  MatA[a + 1, 0] := 1;
  Op[a] := '=';
  INC(Nrest);

  a := Nrest;

  /// Adicionando a Restrição da primeira perfunta da Elicitação Flexível ///
  With TIWUserSession(WebApplication.Data) do
    { IdAHeur: índice do critério da consA da pergunta da heurística
      IdBHeur: índice do critério da consB da pergunta da heurística }
    case TIWUserSession(WebApplication.Data).HeurQuest of
      0:
        Begin
          MatA[a + 1, TIWUserSession(WebApplication.Data).IdAHeur + 1] := -WDPHEUR;
          MatA[a + 1, TIWUserSession(WebApplication.Data).IdBHeur + 1] := 1;
          Op[a] := '<=';
          INC(Nrest);
        End;
      1:
        Begin
          MatA[a + 1, IdAHeur + 1] := WDPHEUR;
          MatA[a + 1, IdBHeur + 1] := -1;
          Op[a] := '<=';
          INC(Nrest);
        End;
    end;
  a := Nrest;

  // dirprob := 1;
  /// Problema de maximização ///
  // NumPOA := 0;

  { setando o tamanho do vetor de pesos na user session }
  setlength(TIWUserSession(WebApplication.Data).VetPesosMax, NumAlt);
  setlength(TIWUserSession(WebApplication.Data).VetPesosMin, NumAlt);
  for i := 0 to NumAlt - 1 do
  begin
    setlength(TIWUserSession(WebApplication.Data).VetPesosMax[i], NumCri);
    setlength(TIWUserSession(WebApplication.Data).VetPesosMin[i], NumCri);
  end;

  for K := 0 to NumAlt - 1 do
  begin
    b := a;

    /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
    /// escala e os coeficientes são as consequências da alternativa normalizada ///
    for i := 0 to NumCri - 1 do
    begin
      MatA[0, i + 1] := MatCons[K, Criorder[i]];
      FO[i] := TrocaVP(MatCons[K, Criorder[i]]);
    end;
    /// / Caso hajam var binárias no problema, seus coef na FO devem ser 0 ////
    for i := NumCri to NumDV - 1 do
    begin
      MatA[0, i + 1] := 0;
      FO[i] := '0';
    end;

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

    /// Resolvendo o PPL de maximização (MOACIR 02.06.2021)///
    dirprob := 1;
    SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int, var_bin,
      Rmod, ResultVector, Lp, MSSG);
    SFMax := MSSG;

    if SFMax = 0 then
    begin
      { salvando os valores dos pesos que maximizam o valor da alternativa }
      for i := 0 to NumCri - 1 do
      begin
        TIWUserSession(WebApplication.Data).VetPesosMax[K, i] := ResultVector
          [i + 1];
      end;
    end;

    { salvando o valor maximo da alternativa }
    ValAltMax[K] := ResultVector[0];

    /// Resolvendo o PPL de minimização (MOACIR 02.06.2021)///
    dirprob := 0;
    SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int, var_bin,
      Rmod, ResultVector, Lp, MSSG);
    SFMin := MSSG;

    if SFMin = 0 then
    begin
      { salvando os valores dos pesos que maximizam o valor da alternativa alternativa }
      for i := 0 to NumCri - 1 do
      begin
        TIWUserSession(WebApplication.Data).VetPesosMin[K, i] := ResultVector
          [i + 1];
      end;
    end;

    { salvando o valor mínimo da alternativa }
    ValAltMin[K] := ResultVector[0];

    Nrest := a;
    setlength(ResultVector, 0);
    setlength(ResultVector, NumDV + 1);
  end;

  classificarAS(ValAltMin, ValAltMax);
  with TIWUserSession(WebApplication.Data) do
    for i := 0 to NumAlt - 1 do
      if class_min[i] = class_max[i] then
        INC(contadorAS[i, class_min[i]])
      else
        INC(contadorAS[i, 0]);

end;

procedure TfrmSortingResults.MostrarResultados;
begin
  IWRgnHolistica.Visible := false;
  if TIWUserSession(WebApplication.Data).problematica = 3 then
   TfrmSortingResults.Create(WebApplication).Show;
  calmaxminweights;
  TIWUserSession(WebApplication.Data).Vetorpergunta
    [TIWUserSession(WebApplication.Data).IndiceA] := -0.00000000000005;

  // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
  TIWUserSession(WebApplication.Data).BDgraph := '0';
  TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
    (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
    .BDgraph;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  //SalvarresultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 11;
  //SalvarresultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
  //SalvarresultBD;

end;

Procedure TfrmSortingResults.preparar_grids_resultado;
/// prepara os grids dos resultados para serem preenchidos
var
  i: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    grdResult1.Clear;
    grdResult1.RowCount := 1;
    grdResult1.ColumnCount := 4;
    grdResult1.Cell[0, 0].Text := 'Alternatives';
    grdResult1.Cell[0, 0].Font.Style := [fsbold];
    grdResult1.Cell[0, 1].Text := 'Category';
    grdResult1.Cell[0, 1].Font.Style := [fsbold];
    grdResult1.Cell[0, 2].Text := 'Min. Value';
    grdResult1.Cell[0, 2].Font.Style := [fsbold];
    grdResult1.Cell[0, 3].Text := 'Max. Value';
    grdResult1.Cell[0, 3].Font.Style := [fsbold];
    {for i := 1 to NumCrit do
    begin
      grdResult1.Cell[0, i + 1].Text := NomeCrit[vtrordem[i - 1]];
      grdResult1.Cell[0, i + 1].Font.Style := [fsbold];
      grdResult1.Cell[0, i + 1].Wrap := true;
    end;}
    grdResult2.Clear;
    grdResult2.RowCount := 1;
    grdResult2.ColumnCount := 4;
    grdResult2.Cell[0, 0].Text := 'Alternatives';
    grdResult2.Cell[0, 0].Font.Style := [fsbold];
    grdResult2.Cell[0, 1].Text := 'Feasible Categories';
    grdResult2.Cell[0, 1].Font.Style := [fsbold];
    grdResult2.Cell[0, 2].Text := 'Min. Value';
    grdResult2.Cell[0, 2].Font.Style := [fsbold];
    grdResult2.Cell[0, 3].Text := 'Max. Value';
    grdResult2.Cell[0, 3].Font.Style := [fsbold];
    {for i := 1 to NumCrit do
    begin
      grdResult2.Cell[0, i + 1].Text := NomeCrit[vtrordem[i - 1]];
      grdResult2.Cell[0, i + 1].Font.Style := [fsbold];
      grdResult2.Cell[0, i + 1].Wrap := true;
    end;}
  end;
end;

Procedure TfrmSortingResults.resultado_alternativa(ind: integer; Grid: TIWGrid);
/// função que recebe um indice e um grid e insere no grid a alternativa do indice
var
  linha, i: integer;
  x, y : real;
begin
  Grid.RowCount := Grid.RowCount + 1;
  linha := Grid.RowCount - 1;
  with TIWUserSession(WebApplication.Data) do
  begin
    Grid.Cell[linha, 0].Text := TIWUserSession(WebApplication.Data).NomeAlt[ind];
    //for i := 0 to NumCrit - 1 do
      //Grid.Cell[linha, i + 2].Text := FloatToStr(ConsMatrix[ind, vtrordem[i]]);

    Grid.Cell[linha, 1].Text := 'C' + IntToStr(class_min[ind]);
    Grid.Cell[linha, 2].Text := FloatToStr(ValAltMin[ind]);
    Grid.Cell[linha, 3].Text := FloatToStr(ValAltMax[ind]);
    x := StrToFloat(Grid.Cell[linha, 2].Text);
    x := StrToFloat(FormatFloat('0.00', x));
    Grid.Cell[linha, 2].Text := FloatToStr(x);
    y := StrToFloat(Grid.Cell[linha, 3].Text);
    y := StrToFloat(FormatFloat('0.00', y));
    Grid.Cell[linha, 3].Text := FloatToStr(y);


    if (Grid = grdResult2) or (ValAltMin[ind] = ValAltMax[ind]) then
      for i := 1 to (class_max[ind] - class_min[ind]) do
        Grid.Cell[linha, 1].Text := Grid.Cell[linha, 1].Text + ', ' + 'C' + IntToStr(class_min[ind] + i);
  end;
end;

procedure TfrmSortingResults.Preencher_AS;
var
  i, j: integer;
begin
//Modificado por Alex Alves da Silva 06/08/2024
 ///////Esse codigo esta removendo as informações da analise de sensibilidade e adicionando ao tiwadvwebgrid grdsensitivityanalysis

  with TIWUserSession(WebApplication.Data) do
  begin
    grdsensitivityanalysis.totalrows := num_cat + 15;
    if grdsensitivityanalysis.Columns.Count <> NumAlt + 1 then
    begin
      for j := 0 to NumAlt - 3 do
      begin
        grdsensitivityanalysis.Columns.Add;
      end;
    end;

    grdsensitivityanalysis.Cells[0, 0] := 'Sensitivity Analysis:';
    grdsensitivityanalysis.Cells[0, 1] := 'Variation percentage values:';
    grdsensitivityanalysis.Cells[0, 2] := 'Max';
    grdsensitivityanalysis.Cells[0, 3] := 'Min';

    case tipoAS of
      0:
        begin
          for i := 0 to NumCrit - 1 do
          begin
            grdsensitivityanalysis.Cells[1 + i, 1] := NomeCrit[vtrordem[i]];
            grdsensitivityanalysis.Cells[1 + i, 2] := '+' + FloatToStr(pmax[i])
              + '%';
            grdsensitivityanalysis.Cells[1 + i, 3] := '-' + FloatToStr(pmin[i])
              + '%';
          end;
        end;
      1:
        begin
          grdsensitivityanalysis.Cells[0, 0] := grdsensitivityanalysis.Cells
            [0, 0] + ' Variation ';
          //Moficicado por Alex ALves /06/08/2024
          for j := 0 to (IWGrid1.RowCount-1) - 1 do  // conta quantidade de profiles presente no IWgrind1
          begin
          grdsensitivityanalysis.Cells[1+j, 1]:= IWGrid1.cell[j+1, 0].Text; //Titulo do perfil
          grdsensitivityanalysis.Cells[1+j, 3] := IWGrid1.cell[j+1, 1].Text; //prefil minimo
          grdsensitivityanalysis.Cells[1+j, 2] := IWGrid1.cell[j+1, 2].Text; //perfil maxmimo
          end;

        end;
    end;

    grdsensitivityanalysis.Cells[0, 5] :=
      'Deviation from the original category:';
    for i := 0 to IWGriddeviation.ColumnCount - 1 do
      for j := 0 to IWGriddeviation.RowCount - 1 do
        grdsensitivityanalysis.Cells[j, 6 + i] := IWGriddeviation.Cell[j, i]
          .Text;

    grdsensitivityanalysis.Cells[0, 11] := 'Percentage of possible categories:';

    for i := 0 to IWGridpercent.ColumnCount - 1 do
      for j := 0 to IWGridpercent.RowCount - 1 do
        grdsensitivityanalysis.Cells[j, 12 + i] := IWGridpercent.Cell[j, i]
          .Text;
  end;

end;
///Quase todo codigo precisou ser alterado, pois as informações estavam sendo derecionadas parao grdexport


procedure TfrmSortingResults.calmaxminweights;
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
             if VetAH[i - a,1]< 0 then //Se a mlr alt for perfil
              begin
              //perfis[i] começa de zero
                MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                  - TIWUserSession(WebApplication.Data).perfis[-1-VetAH[(i - a), 1]];
              end;
              if VetAH[i - a,2]< 0 then //Se a pior alt for perfil
              begin
                MatA[Nrest + 1, j + 1] := TIWUserSession(WebApplication.Data).perfis[-1-VetAH[(i - a), 2]]
                  - MatCons[VetAH[i - a, 1], Criorder[j]];
              end;
            if (VetAH[i - a,2]>=0) and (VetAH[i - a,1]>=0) then
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end;
            end; // j
            if TIWUserSession(WebApplication.Data).Problematica = 1 then
              MatA[Nrest + 1, 0] := -0.00001;
            Op[Nrest] := '<=';
            INC(Nrest);
          end; // z
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

procedure TfrmSortingResults.btnconfirmClassClick(Sender: TObject);
begin
  rgnconfirmClass1.Hide;
end;



procedure TfrmSortingResults.btnFinalizeECClick(Sender: TObject);
begin
  // **Finalizando o problema e reavaliando os limites dos pesos **//
  TIWUserSession(WebApplication.Data).Sol := 11;
  TfrmSortingResults.Create(WebApplication).Show;
  calmaxminweights;
  lnkFinalizeC.Visible := false;
end;



procedure TfrmSortingResults.btnhasse2C1Click(Sender: TObject);
begin
  rgnviewrankingC1.Hide;
  iwrgnHasseDiagram.Show;
  {IWRegion1.Parent := iwrgnHasseDiagram;
  IWRegion1.left := 864;}
  TIWFadeImage1.Visible := True;
end;

procedure TfrmSortingResults.btninfClick(Sender: TObject);
begin
lnkref.Visible := false;
end;

procedure TfrmSortingResults.btnlogoutviewrankingC1Click(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
  WebApplication.Terminate();
end;

procedure TfrmSortingResults.btnmaxCESTBbClick(Sender: TObject);
begin
  if rgnCEstBb.Height = 41 then
  begin
    btnmaxCESTBb.caption := '>';
    rgnCEstBb.Top := 37;
    rgnCEstBb.Height := 292;
    rgnCEstBb.HorzScrollBar.Visible := True;
    rgnCEstBb.VertScrollBar.Visible := True;
  end
  else
  begin
    btnmaxCESTBb.caption := '<';
    rgnCEstBb.Top := 37;
    rgnCEstBb.Height := 41;
    rgnCEstBb.HorzScrollBar.Visible := false;
    rgnCEstBb.VertScrollBar.Visible := false;
  end;
end;

procedure TfrmSortingResults.btnmaxCERadClick(Sender: TObject);
begin
  if rgnstRadar.Height = 41 then
  begin
    btnmaxCERad.caption := '>';
    rgnstRadar.Top := 37;
    rgnstRadar.Height := 316;
    rgnstRadar.HorzScrollBar.Visible := True;
    rgnstRadar.VertScrollBar.Visible := True;
  end
  else
  begin
    btnmaxCERad.caption := '<';
    rgnstRadar.Top := 37;
    rgnstRadar.Height := 41;
    rgnstRadar.HorzScrollBar.Visible := false;
    rgnstRadar.VertScrollBar.Visible := false;
  end;
end;

procedure TfrmSortingResults.btnmaxCEstBrClick(Sender: TObject);
begin
  if rgnCEstbr.Height = 41 then
  begin
    btnmaxCEstBr.caption := '>';
    rgnCEstbr.Top := 37;
    rgnCEstbr.Height := 256;
    rgnCEstbr.HorzScrollBar.Visible := True;
    rgnCEstbr.VertScrollBar.Visible := True;
  end
  else
  begin
    btnmaxCEstBr.caption := '<';
    rgnCEstbr.Top := 37;
    rgnCEstbr.Height := 41;
    rgnCEstbr.HorzScrollBar.Visible := false;
    rgnCEstbr.VertScrollBar.Visible := false;
  end;
end;

procedure TfrmSortingResults.BtnMaxIClick(Sender: TObject);
begin
  rgnimagemax.Show;
end;

procedure TfrmSortingResults.btnnaofinalizarClick(Sender: TObject);
begin
  rgnconfirmClass2.Hide;
end;

procedure TfrmSortingResults.btnOKalternativesClick(Sender: TObject);
var
  i,j, p, k, a,qtdselecionada: integer; //auxiliares
  NumAlt: integer; // Número de critérios,
  auxs: string;

begin
  /// ///////// Recebendo o valor das variáveis salvas na usersession //////////
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  p := 0;
  k := 0;
  qtdselecionada := 0;
  setlength(TIWUserSession(WebApplication.Data).indiceCmbxBest, 1, 1);

  //Limpando informações antigas
  CmbxBest.Items.Clear;
  //txtrgn2alt.Lines.Clear;
  CmbxBest.Items.Add(TIWUserSession(WebApplication.Data).NomeAlt[TIWUserSession(WebApplication.Data).indice_altnaoclassificadas[CmbxAlternativa1.itemindex]]);

  with TIWUserSession(WebApplication.Data) do
    begin
      //Pega a informação da alternativa do CmbxAlternativa1
      INC(k);
      setlength(indice_alt, k );
      indice_alt[0] := indice_altnaoclassificadas[CmbxAlternativa1.itemindex];

     for i := 0 to chcklstbxalternative2.Items.Count - 1 do
     if chcklstbxalternative2.Selected[i] then
     begin
     CmbxBest.Items.Add(chcklstbxalternative2.Items[i]);
     INC(qtdselecionada);
     if pos('Profile',chcklstbxalternative2.Items[i])<> 0 then //É alternative Profile
         begin
         //txtrgn2alt.Lines.Add(chcklstbxalternative2.Items[i]);
         INC(p);
         setlength(indice_altp, p);
         indice_altp[p-1]:= StrToInt(Copy(chcklstbxalternative2.Items[i], 9, ord(chcklstbxalternative2.Items[i])));
         end
     else
         begin
           for a := 0 to NumAlt - 1 do
           if chcklstbxalternative2.Items[i] = NomeAlt[a] then //Se não for alternativa perfil
             begin
             //auxk[c-1]:= NomeAlt[a];
             //txtrgn2alt.Lines.Add(NomeAlt[a]);
             // ** Atualiza o vetor para plotagem dos gráficos **//
             INC(k);
             setlength(indice_alt, k);
             indice_alt[k-1] := a;
             break;
             end;
         end;
         //break;
     end;



     //*************************Atualização do Layout*************************//
       //2º Region
       {lblrgn2alt.Visible := true;
       txtrgn2alt.Visible := true;
       lblrgnalt2.Visible := true;
       //Region2alt.Visible := true; }
     if qtdselecionada = 1  then //apenas 1 alternativa foram selecionadas
        begin
        //3º Region
        lblrgnbest.Visible :=  true;
        //lblrgnbest2.Visible := true;
        CmbxBest.Visible := true;
        Regionbest.Visible := true;
        end
     else //+1 alternativa foi selecionada
        begin
        {//3º Region
        lblrgnbest.Visible :=  false;
        //lblrgnbest2.Visible := false;
        CmbxBest.Visible := false;
        Regionbest.Visible := false;}
        WebApplication.ShowMessage(
          'Select a profile to comparison with alternative.');
        Exit;
        end;

   //Atualiza gráficos
   if p <> 0 then
   begin
   {   graficos;
   end
   else }
      graficosp;

   end; //with
   end;

CmbxBest.ItemIndex := -1;
end;

procedure TfrmSortingResults.btnOKHEG3Click(Sender: TObject);
var
  i, j, temProfile: integer; //auxiliares
begin
//cmbxAlternativa1.ItemIndex := -1;
//TbCtrlvisualizationsHolistica.TabOrder := 0;


with TIWUserSession(WebApplication.Data) do
begin
//setlength(VetVisualization, );

temProfile:= 0; //Não tem uma altProfile selecionada
for i := 0 to 1 do //So tem duas opções
  if pos('Profile',CmbxBest.Items[i])<> 0 then
      temProfile:= 1; //Tem uma altProfile

for i := 0 to 1 do //So tem duas opções
  if CmbxBest.ItemIndex = i then //Select the best alternative
  begin
    if pos('Profile',CmbxBest.Items[i])<> 0 then //É alternative Profile
      begin
      notBestAlt:= TIWUserSession(WebApplication.Data).indice_alt[0];
      bestAlt:= - TIWUserSession(WebApplication.Data).indice_altp[0]; //Se a mlr for perfil, então necessariamente a outra é alt do txtrgn1alt
      end
      else
      if CmbxAlternativa1.Items[CmbxAlternativa1.ItemIndex] = CmbxBest.Items[CmbxBest.ItemIndex] then //É alt do primeiro Selected
        begin
          bestAlt := indice_alt[0]; //best alt
          if temProfile = 0 then  //Não tem altProfile
            notBestAlt := indice_alt[1]; //worse alt
          if temProfile = 1 then  //Tem uma altProfile
            notBestAlt := - indice_altp[0]; //worse alt
        end
      else
        begin
          bestAlt := indice_alt[1]; //best alt
          if temProfile = 0 then //Não tem altProfile
            notBestAlt := indice_alt[0]; //worse alt
          if temProfile = 1 then //Tem uma altProfile
            notBestAlt := - indice_altp[0]; //worse alt
        end;
  end;// for

//Atualizando a matriz pra chamar a PL de Classificação
    /// / Obtém as informações da Avaliação Holística ////
    if TIWUserSession(WebApplication.Data).TotalAH = 0 then
      begin
      setlength(MATAH, 1,3);
      TotalAH:= 1;  //quantidade de avaliações holísticas CONTANDO AS INCONSIST.
      end
    else
      begin
      INC(TotalAH);
      setlength(TIWUserSession(WebApplication.Data).MATAH, 1+length(MATAH),3);
    end;

    //Profile 1: começa de 1 já e não de zero
    //Alt1: começa em zero
    if bestAlt < 0 then  //Se a mlr alt for perfil e a segunda do problema
      begin
      MATAH[length(MATAH)-1, 0] := 2; //Seleção
      MATAH[length(MATAH)-1, 1] := bestAlt; //Vai ser negativo ~(alt perfil)
      MATAH[length(MATAH)-1, 2] := notBestAlt; //vai ser positivo ~(alt problema)
      end
    else //Se a mlr for alt do problema
      begin
      MATAH[length(MATAH)-1, 0] := 2;  //Seleção
      MATAH[length(MATAH)-1, 1] := bestAlt; //Vai ser positivo
      MATAH[length(MATAH)-1, 2] := notBestAlt; //Pode ser neg ou positivo
      end;
end; //with

/////////////////** VER QUAL VISUALIZAÇÃO ESTÁ SENDO ANALISADA **///////////////
  //BAR GRAPH
  if TbCtrlvisualizationsHolistica.ActivePage = TbCtrlP0Holistica.TabOrder then
  begin
    TIWUserSession(WebApplication.Data).BDgraph := '3';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 3;
  end;

  //TABULAR
  if TbCtrlvisualizationsHolistica.ActivePage = TbCtrlP1Holistica.TabOrder then
  begin
    TIWUserSession(WebApplication.Data).BDgraph := '0';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 0;
  end;

  //RADAR GRAPH
  if TbCtrlvisualizationsHolistica.ActivePage = TbCtrlP2Holistica.TabOrder then
  begin
    TIWUserSession(WebApplication.Data).BDgraph := '1';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 1;
  end;

  //BUBBLE GRAPH
  if TbCtrlvisualizationsHolistica.ActivePage = TbCtrlP3Holistica.TabOrder then
  begin
    TIWUserSession(WebApplication.Data).BDgraph := '2';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 2;
  end;

////////////////////////////** Salvar banco de dados **/////////////////////////
  {TIWUserSession(WebApplication.Data).AuxsalvarBD := 26; //holistic_evaluation
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).AuxsalvarBD := 27; //HE_Question
  SalvarresultBD;}

///////////////////////////** Atualizações finais **////////////////////////////
INC(TIWUserSession(WebApplication.Data).NumAH);
setlength(TIWUserSession(WebApplication.Data).VetVisualization, TIWUserSession(WebApplication.Data).NumAH);
TIWUserSession(WebApplication.Data).VetVisualization[TIWUserSession(WebApplication.Data).NumAH - 1] := TIWUserSession(WebApplication.Data).visualization;



setlength(TIWUserSession(WebApplication.Data).HEINDEX, 2, TIWUserSession(WebApplication.Data).TotalAH);

   // ** Preenchendo o índice real de cada Avaliação Holística **//
    for i := 0 to length(TIWUserSession(WebApplication.Data).HEINDEX[0]) - 1 do
      TIWUserSession(WebApplication.Data).HEINDEX[0, i] := i + 1;
    // ** Preenche o índice atual da Avaliação holística **//
    TIWUserSession(WebApplication.Data).HEINDEX[1, length(TIWUserSession(WebApplication.Data).HEINDEX[1]) - 1] := TIWUserSession(WebApplication.Data).NumAH;


  PLClassificacao;
  IWRgnHolistica.Visible := false;

  ////////////////////////////** Salvar banco de dados **/////////////////////////
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 26; //holistic_evaluation
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).AuxsalvarBD := 27; //HE_Question
  SalvarresultBD;

  // ** Salvando os perfis em que as alt foram classificadas **//
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 28;
  SalvarresultBD;




  //Preencher_Resultados_Exp;  //Refazer as tabelas
  rgnresclassificacao.Visible := true;
  showsortingresults;
  if TIWUserSession(WebApplication.Data).solucao_encontrada = true then begin
  TIWUserSession(WebApplication.Data).Sol := 12;
  rgnresclassificacaoCreate(Sender);
  //rgnTabSortedA.Width := 865;
  //grdResult1.Width := 857;
  end;
   CmbxAlternativa1.ItemIndex := -1;

end;


procedure TfrmSortingResults.btnrecomendaClick(Sender: TObject);
var
  elicitacao: string;
  auxiliar: string;
  recomeda: string;
begin
  // Inicia a sessão do usuário
  with TIWUserSession(WebApplication.Data) do
  begin
    auxiliar := '';
    auxiliar := auxiliar + IntToStr(length(VtrAlternatives)) + 'A' + IntToStr
      (Numcrit) + 'C';
    if (combograf.Items[combograf.ItemIndex] = 'Bar') then
      auxiliar := auxiliar + 'B';
    if combograf.Items[combograf.ItemIndex] = 'Radar' then
      auxiliar := auxiliar + 'R';
    if combograf.Items[combograf.ItemIndex] = 'Tabular' then
      auxiliar := auxiliar + 'T';
    if HeurQuest = 1 then
      auxiliar := auxiliar + 'S';
    if HeurQuest = 0 then
      auxiliar := auxiliar + 'D';
    with UserSession.ZQuery2 do
    begin
      // Define o número de critérios
      lblcriterios.caption := 'Number of Criteria: ' + IntToStr(Numcrit)
        + ' criteria.';
      // Define a consulta SQL com parâmetros para evitar injeção de SQL
      SQL.Text :=
        'SELECT sucesso, desvio, berno, recomedacoes, elicitacao, visualizacao FROM analista WHERE altern = "' + IntToStr(length(VtrAlternatives)) + '" AND tipo="' + combograf.Items[combograf.ItemIndex] + '" AND crit = "' + IntToStr(Numcrit) + '" and visualizacao = "' + auxiliar + '"';
      ExecSQL;
      open;
      // Verifica se há algum resultado retornado
      if not IsEmpty then
      begin
        // Define os rótulos com os valores retornados pela consulta
        //labvisualizacao.caption := FieldByName('visualizacao').AsString;
        labsucesso.caption := FieldByName('sucesso').AsString;
        labdes.caption := FieldByName('desvio').AsString;
        labnovdes.caption := FieldByName('berno').AsString;
        elicitacao := FieldByName('elicitacao').AsString;
        recomeda := FieldByName('recomedacoes').AsString;
        // Torna os rótulos visíveis
        // labvisualizacao.Visible := True;
        labsucesso.Visible := True;
        labdes.Visible := True;
        labrecomenda.Visible := True;
        labnovdes.Visible := True;
      end
      else
      begin
        // Se não houver resultados, exibe a mensagem de recomendação indisponível
        labrecomenda.Font.Color := clWebRed;
        labrecomenda.caption :=
          'There is no recommendation currently available for this view';
        // Torna os rótulos visíveis
       // labvisualizacao.Visible := false;
        labsucesso.Visible := false;
        labdes.Visible := false;
        labnovdes.Visible := false;
        labrecomenda.Visible := True;
      end;
      close;
    end;
    if (recomeda = 'Not use') then
    begin
      labrecomenda.caption := 'Not use';
      labrecomenda.Font.Color := clWebORANGE;
      labrecomenda.Visible := true;
    end;
    if (recomeda = 'Risk in use') then
    begin
      labrecomenda.caption := 'Risk in use';
      labrecomenda.Font.Color := clWebGOLD;
      labrecomenda.Visible := true;
    end;
    if (recomeda = 'Use the visualization') then
    begin
      labrecomenda.caption := 'Use the visualization';
      labrecomenda.Font.Color := clWebDARKGREEN;
      labrecomenda.Visible := true;
    end;
    if (recomeda = 'Confidence in use') then
    begin
      labrecomenda.caption := 'Confidence in use';
      labrecomenda.Font.Color := clWebLIGHTGREEN;
      labrecomenda.Visible := true;
    end;
    // Verifica Resposta do Procedimento de Decomposição por Elicitação e o Banco de Dados
    if (HeurQuest = 1) and (elicitacao = 'Equal') then
    begin
      lbldistribui.caption :=
        'The Weight distribution Can be approximately equal.';
    end
    else if (HeurQuest = 0) and (elicitacao = 'Different') then
    begin
      lbldistribui.caption := 'The Weight distribution is Markedly Different.';
    end;
  end;
end;

Procedure TfrmSortingResults.DestruirElementosAS;
var
NumAlt, Numcrit : integer;
NomeAlt, Nomecrit : string;
i, j : integer;
begin
//rgnsav.Align := AlClient;

with TIWUserSession(WebApplication.Data) do
begin
  for i := 0 to grdvariation.RowCount - 1 do
  begin
   lblmax[i].Destroy;
   lblmin[i].Destroy;

   if grdvariation.RowSelect[i] = True then
   grdvariation.RowSelect[i] := False;

    if grdvariation.Cells[2,i] = 'Natural' then
    begin
      edtmaxAS[i].Destroy;
      edtminAS[i].Destroy;
      lblvariationmin[i].Destroy;
      lblvariationmax[i].Destroy;
    end;
    if grdvariation.Cells[2,i] = 'Constructed' then
    begin
      cmbbxminAS[i].Destroy;
      cmbbxmaxAS[i].Destroy;
      lblvariationmin[i].Destroy;
      lblvariationmax[i].Destroy;
    end;
  end;
  for i := 0 to grdprofiles.RowCount - 1 do
  begin
    if grdprofiles.RowSelect[i] = True then
    grdprofiles.RowSelect[i] := False;

    lblmaxprofiles[i].destroy;
    lblminprofiles[i].destroy;
    edtpercentprofilesmax[i].destroy;
    edtpercentprofilesmin[i].destroy;
    lblvariationminprofiles[i].destroy;
    lblvariationmaxprofiles[i].destroy;
  end;
end;
 tbctrlVariationPage0.visible := True;
 tbctrlVariationPage1.Visible := True;
 grdprofiles.Enabled := True;
 grdvariation.Enabled := True;
 btnsaveas.Enabled := true;
 btnsaveASProfiles.Enabled := True;
 btnbackas.Enabled := False;
 btnbackASProfiles.Enabled := False;
 btnStartAS.Enabled := False;
 btnStartAsProfiles.Enabled := False;

 tbctrlvariation.activepage := 0;
end;


procedure TfrmSortingResults.btnsaveasClick(Sender: TObject);
var
i, a, b, j  : integer;
verifica : boolean;
verifica2 : boolean;
begin
 with TIWUserSession(WebApplication.Data) do
  begin
  setlength(pmax, TIWUserSession(WebApplication.Data).NumCrit);
  setlength(pmin, TIWUserSession(WebApplication.Data).numcrit);
  setlength(crisel , numcrit);

  ncv := 1;
  verifica2 := False;
  for i := 0 to grdvariation.RowCount - 1 do
  begin
    crisel[i] := False;
    if grdvariation.RowSelect[i] = True then
    begin
    verifica2 := True;
    crisel[i] := true;
      if grdvariation.Cells[2,i] = 'Natural' then
      begin
      verifica := false;
      for a := 1 to length(edtmaxAS[i].Text) do
      for b := 0 to 9 do
      begin
       if edtMaxAS[i].Text[a] = inttostr(b) then
       begin
        verifica := true;
        break;
       end;
      end;
      if verifica = false then
      begin
        WebApplication.ShowMessage('Please fill in the parameters correctly!');
        exit;
      end;
      verifica := false;
      for a := 1 to length(edtminAS[i].Text) do
      for b := 0 to 9 do
      begin
       if edtMinAS[i].Text[a] = inttostr(b) then
       begin
        verifica := true;
        break;
       end;
      end;
      if verifica = false then
      begin
        WebApplication.ShowMessage('Please fill in the parameters correctly!');
        exit;
      end;
      edtmaxAS[i].enabled := False;
      edtminAS[i].enabled := False;
      pmax[i] := strtofloat(edtmaxAS[i].Text);
      pmin[i] := strtofloat(edtminAS[i].Text);
      //edtmaxAS[i].font.Color := ClGreen;
      //edtminAS[i].font.Color := ClRed;
      end;
      if grdvariation.Cells[2,i] = 'Constructed' then
      begin
      if cmbbxmaxAS[i].ItemIndex = -1 then
      begin
        WebApplication.ShowMessage('Please fill in the parameters correctly!');
        exit;
      end;
      if cmbbxminAS[i].ItemIndex = -1 then
      begin
        WebApplication.ShowMessage('Please fill in the parameters correctly!');
        exit;
      end;
      cmbbxmaxAS[i].enabled := False;
      cmbbxminAS[i].enabled := False;
      pmax[i] := strtofloat(cmbbxmaxAS[i].Text);
      pmin[i] := strtofloat(cmbbxminAS[i].Text);
      //cmbbxmaxAS[i].font.Color := ClGreen;
      //cmbbxminAS[i].font.Color := ClRed;
      end;
      ncv := ncv + 1;
    end;
  end;
end;
if verifica2 = false then
begin
WebApplication.ShowMessage('Please select a criterion to continue!');
exit;
end;
with TIWUserSession(WebApplication.Data) do
    begin
      setlength(contadorAS, NumAlt, length(perfis) + 2);
      // numero de classes + 1
      for i := 0 to length(perfis) + 1 do
        for j := 0 to NumAlt - 1 do
          contadorAS[j, i] := 0;
      ninst := 1000;
    end;
TIWUserSession(WebApplication.Data).Crias := True;
btnsaveAS.Enabled := False;
btnbackAS.Enabled := true;
btnstartAS.enabled := True;
grdvariation.Enabled := False;
//tbctrlVariationPage1.Visible := False;
//tbctrlVariation.ActivePage := 0;
end;

procedure TfrmSortingResults.btnsaveASProfilesClick(Sender: TObject);
var
  i,j: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    tipoAS := 1;
    setlength(Pmax_perfil, length(perfis));
    setlength(Pmin_perfil, length(perfis));
    try
      for i := 0 to length(Pmax_perfil) - 1 do
      begin
        if grdprofiles.RowSelect[i] = true then
        begin
        Pmax_perfil[i] := Abs(StrToFloat(edtpercentprofilesmax[i].Text));
        Pmin_perfil[i] := Abs(StrToFloat(edtpercentprofilesmin[i].Text));
        edtpercentprofilesmax[i].Enabled := False;
        edtpercentprofilesmin[i].Enabled := False;
        end;
      end; // for
    except
      WebApplication.ShowMessage(
        'Please, inform the profiles variation percentage with numbers only.');
      Exit;
    end;
    setlength(contadorAS, NumAlt, length(perfis) + 2);
    TIWUserSession(WebApplication.Data).ASProfiles := true;
    // numero de classes + 1
  end; // with
  with TIWUserSession(WebApplication.Data) do
    begin
      setlength(contadorAS, NumAlt, length(perfis) + 2);
      // numero de classes + 1
      for i := 0 to length(perfis) + 1 do
        for j := 0 to NumAlt - 1 do
          contadorAS[j, i] := 0;
      ninst := 1000;
    end;

  btnstartASprofiles.Enabled := true;
  btnbackasprofiles.Enabled := True;
  btnsaveASProfiles.Enabled := False;
  //tbctrlVariationPage0.Visible := False;
  //tbctrlVariation.ActivePage := 0;
  grdprofiles.Enabled := False;
end;


procedure TfrmSortingResults.btnshowrecommedation2Click(Sender: TObject);
var
analyst, id: string;
begin
with UserSession.ZQuery1 do
begin
SQL.Text :=
'SELECT Id, analyst FROM user WHERE email="' +
(TIWUserSession(WebApplication.Data).email_) + '";';
ExecSQL;
open;
id := FieldByName('Id').AsString;
analyst := FieldByName('analyst').AsString;
close;
end;

if analyst <> '2' then
begin
regionanalyst.visible := true;
IWRegion1.visible := false;
TbCtrlvisualizationsHolistica.visible := false;
IWLabel53.visible := false;
IWLabel115.visible := false;
IWImage52.top := 650;
IWImage51.top := 650;
end
else
begin
rgnrulevizualization.visible := true;
rgnrulevizualization.Align := Talign(5);
IWRgnHolistica.visible := false;
  lblcriterios.caption := 'Number of Criteria: ' + IntToStr(TIWUserSession(WebApplication.Data).Numcrit)
      + ' criteria.';
   lblPesorecom.caption := 'Number of Alternatives: 2 alternatives.';
    labnovodesvio.Visible := false;
    editalternativas.Visible := false;
    butcomp.Visible := false;
    butranking.Visible := true;
end;

end;

procedure TfrmSortingResults.btnStartASClick(Sender: TObject);
begin
IWRgnAS.Visible := True;
rgnsav.Visible := false;
DestruirElementosAS;
btnSaveAS.Enabled := true;
btnbackas.Enabled := False;
btnstartas.Enabled := False;
grdvariation.Enabled := true;
TIWUserSession(WebApplication.Data).Start := True;
TIWUserSession(WebApplication.Data).Finish := false;
IWTimer1.Enabled := True;
end;

procedure TfrmSortingResults.iwbtnRefreshDH2Click(Sender: TObject);
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
  {iwbtnCloseDH2.Cursor := crWait;}
  iwbtnSaveImageDH2.Cursor := crWait;
  //btnLegendDH2.Cursor := crWait;
  RHasse_C1.Cursor := crWait;
end;

procedure TfrmSortingResults.btnUpFRHordClick(Sender: TObject);
var
i, j, select : integer;
begin
Select := 0;
TIWUserSession(WebApplication.Data).updateC1:= true;
lnkdominancematrixC1Click(self);
end;

procedure TfrmSortingResults.butcompClick(Sender: TObject);
var
  elicitacao: string;
  auxiliar: string;
  recomeda : string;
begin
  // Inicia a sessão do usuário
  with TIWUserSession(WebApplication.Data) do
  begin
    auxiliar := '';
    auxiliar := auxiliar + editalternativas.Text + 'A' + IntToStr(Numcrit)
      + 'C';
    if (combograf.Items[combograf.ItemIndex] = 'Bar') then
      auxiliar := auxiliar + 'B';
    if combograf.Items[combograf.ItemIndex] = 'Radar' then
      auxiliar := auxiliar + 'R';
    if combograf.Items[combograf.ItemIndex] = 'Tabular' then
      auxiliar := auxiliar + 'T';
    if HeurQuest = 1 then
      auxiliar := auxiliar + 'S';
    if HeurQuest = 0 then
      auxiliar := auxiliar + 'D';

    with UserSession.ZQuery2 do
    begin
      // Define o número de critérios
      lblcriterios.caption := 'Number of Criteria: ' + IntToStr(Numcrit)
        + ' criteria.';
      // Define a consulta SQL com parâmetros para evitar injeção de SQL
      SQL.Text :=
        'SELECT sucesso, desvio, berno, recomedacoes, elicitacao, visualizacao FROM analista WHERE altern = "' + editalternativas.Text + '" AND tipo="' + combograf.Items[combograf.ItemIndex] + '" AND crit = "' + IntToStr(Numcrit) + '" and visualizacao = "' + auxiliar + '"';
      ExecSQL;
      open;
      // Verifica se há algum resultado retornado
      if not IsEmpty then
      begin
        // Define os rótulos com os valores retornados pela consulta
       // labvisualizacao.caption := FieldByName('visualizacao').AsString;
        labsucesso.caption := FieldByName('sucesso').AsString;
        labdes.caption := FieldByName('desvio').AsString;
        labnovdes.caption := FieldByName('berno').AsString;
       recomeda := FieldByName('recomedacoes').AsString;
        elicitacao := FieldByName('elicitacao').AsString;
        // Torna os rótulos visíveis
      //  labvisualizacao.Visible := True;
        labsucesso.Visible := True;
        labdes.Visible := True;
        labrecomenda.Visible := True;
        labnovdes.Visible := True;
      end
      else
      begin
        // Se não houver resultados, exibe a mensagem de recomendação indisponível
        labrecomenda.Font.Color := clWebRED;
        labrecomenda.caption :=
          'There is no recommendation currently available for this view';
        // Torna os rótulos visíveis
       // labvisualizacao.Visible := false;
        labsucesso.Visible := false;
        labdes.Visible := false;
        labnovdes.Visible := false;
        labrecomenda.Visible := True;
      end;
      close;
    end;
    if (recomeda = 'Not use') then
    begin
      labrecomenda.caption := 'Not use';
      labrecomenda.Font.Color := clWebORANGE;
      labrecomenda.Visible := true;
    end;
    if (recomeda = 'Risk in use') then
    begin
      labrecomenda.caption := 'Risk in use';
      labrecomenda.Font.Color := clWebGOLD;
      labrecomenda.Visible := true;
    end;
    if (recomeda = 'Use the visualization') then
    begin
      labrecomenda.caption := 'Use the visualization';
      labrecomenda.Font.Color := clWebDARKGREEN;
      labrecomenda.Visible := true;
    end;
    if (recomeda = 'Confidence in use') then
    begin
      labrecomenda.caption := 'Confidence in use';
      labrecomenda.Font.Color := clWebLIGHTGREEN;
      labrecomenda.Visible := true;
    end;
    // Verifica Resposta do Procedimento de Decomposição por Elicitação e o Banco de Dados
    if (HeurQuest = 1) and (elicitacao = 'Equal') then
    begin
      lbldistribui.caption :=
        'The Weight distribution Can be approximately equal.';
    end
    else if (HeurQuest = 0) and (elicitacao = 'Different') then
    begin
      lbldistribui.caption := 'The Weight distribution is Markedly Different.';
    end;
  end;
end;

procedure TfrmSortingResults.butrankingClick(Sender: TObject);
var
  elicitacao: string;
  auxiliar: string;
  recomeda: string;
  alternativa : string;
begin
  // Inicia a sessão do usuário
  with TIWUserSession(WebApplication.Data) do
  begin
    alternativa := '2';
    auxiliar := '';
    auxiliar := auxiliar  + alternativa + 'A' + IntToStr(Numcrit) + 'C';
    if (combograf.Items[combograf.ItemIndex] = 'Bar') then
      auxiliar := auxiliar + 'B';
    if combograf.Items[combograf.ItemIndex] = 'Radar' then
      auxiliar := auxiliar + 'R';
    if combograf.Items[combograf.ItemIndex] = 'Tabular' then
      auxiliar := auxiliar + 'T';
    if HeurQuest = 1 then
      auxiliar := auxiliar + 'S';
    if HeurQuest = 0 then
      auxiliar := auxiliar + 'D';
    with UserSession.ZQuery2 do
    begin
      // Define o número de critérios
      lblcriterios.caption := 'Number of Criteria: ' + IntToStr(Numcrit)
        + ' criteria.';
       lblPesorecom.caption := 'Number of Alternatives: 2 alternatives.';
      // Define a consulta SQL com parâmetros para evitar injeção de SQL
      SQL.Text :=
      'SELECT sucesso, desvio, berno, recomedacoes, elicitacao, visualizacao, altern FROM analista WHERE altern = "' + alternativa + '" AND tipo="' + combograf.Items[combograf.ItemIndex] + '" AND crit = "' + IntToStr(Numcrit) + '" and visualizacao = "' + auxiliar + '"';
      ExecSQL;
      open;
      // Verifica se há algum resultado retornado
      if not IsEmpty then
      begin
        // Define os rótulos com os valores retornados pela consulta
        // labvisualizacao.caption := FieldByName('visualizacao').AsString;
        labsucesso.caption := FieldByName('sucesso').AsString;
        labdes.caption := FieldByName('desvio').AsString;
        labnovdes.caption := FieldByName('berno').AsString;
        elicitacao := FieldByName('elicitacao').AsString;
        recomeda := FieldByName('recomedacoes').AsString;
        // Torna os rótulos visíveis
       // labvisualizacao.Visible := True;
        labsucesso.Visible := True;
        labdes.Visible := True;
        labrecomenda.Visible := True;
        labnovdes.Visible := True;
      end
      else
      begin
        // Se não houver resultados, exibe a mensagem de recomendação indisponível
        labrecomenda.Font.Color := clWebRed;
        labrecomenda.caption :=
          'There is no recommendation currently available for this view';
        // Torna os rótulos visíveis
       // labvisualizacao.Visible := false;
        labsucesso.Visible := false;
        labdes.Visible := false;
        labnovdes.Visible := false;
        labrecomenda.Visible := True;
      end;
      close;
    end;
    if (recomeda = 'Not use') then
    begin
      labrecomenda.caption := 'Not use';
      labrecomenda.Font.Color := clWebORANGE;
      labrecomenda.Visible := true;
    end;
    if (recomeda = 'Risk in use') then
    begin
      labrecomenda.caption := 'Risk in use';
      labrecomenda.Font.Color := clWebGOLD;
      labrecomenda.Visible := true;
    end;
    if (recomeda = 'Use the visualization') then
    begin
      labrecomenda.caption := 'Use the visualization';
      labrecomenda.Font.Color := clWebDARKGREEN;
      labrecomenda.Visible := true;
    end;
    if (recomeda = 'Confidence in use') then
    begin
      labrecomenda.caption := 'Confidence in use';
      labrecomenda.Font.Color := clWebLIGHTGREEN;
      labrecomenda.Visible := true;
    end;
    // Verifica Resposta do Procedimento de Decomposição por Elicitação e o Banco de Dados
    if (HeurQuest = 1) and (elicitacao = 'Equal') then
    begin
      lbldistribui.caption :=
        'The Weight distribution Can be approximately equal.';
    end
    else if (HeurQuest = 0) and (elicitacao = 'Different') then
    begin
      lbldistribui.caption := 'The Weight distribution is Markedly Different.';
    end;
  end;
end;

//procedure

//PROCEDURES RELACIONADAS AOS GRÁFICOS QUANDO TER ALTERNATIVA PERFIL
procedure TfrmSortingResults.Graficosp;
var
  a, i, C, j, qntTotal,alttotal, indCB: integer;
  indiceprofile: string;
  Maxl, Minl,Maxa,Maxb,Mina,Minb: Array of Double;
  bubble: array of TBubbleSeries;
  rad: array of TRadarSeries;
  bar: array of TBarSeries;
  gantt: array of TGanttSeries;
  auxiliar_perfil1, auxiliar_perfil2 : array of TiwLabel;
  Krange, Krange1: Array [0 .. 1] of TLineSeries;
  coresalt: array of Tcolor;
begin

with TIWUserSession(WebApplication.Data) do
begin
//Cores dos gráficos
  Setlength(coresalt, 21);
  //Setlength(coresalt1, TIWUserSession(WebApplication.Data).NumAlt);
  coresalt[0]:= $000000CC; //vermelho
  coresalt[1]:= $00CC9900; //azul
  coresalt[2]:= $0033BBFF; //amarelo
  coresalt[3]:= $00BBBBFF; //rosa
  coresalt[4]:= $005AE6C8; //verde
  coresalt[5]:= $00FF00FF;
  coresalt[6]:= $00808000;
  coresalt[7]:= $00800000;
  coresalt[8]:= $00000080;
  coresalt[9]:= $0000FF00;
  coresalt[10]:= $00008080;
  coresalt[11]:= $00800080;
  coresalt[12]:= $00FFFF00;
  coresalt[13]:= $00C0DCC0;
  coresalt[14]:= $00A4A0A0;
  coresalt[15]:= $00E049BB;
  coresalt[16]:= $005353FF;
  coresalt[17]:= $000080FF;
  coresalt[18]:= $00800040;
  coresalt[19]:= $00434321;
  coresalt[20]:= $00189AD8;

//*********** TABULAR ************//
//limpando todas as informações iniciais
with grdTabular do
begin
  Clear;
  RowCount := length(indice_alt)+ length(indice_altp)+1;
  ColumnCount := NumCrit + 2;
  Cell[0, 0].Text := 'Alternatives';
  Cell[0, 0].Font.Style := [fsbold];
  Cell[0, 1].Text := 'Category';    //Cell[linha,coluna]
  Cell[0, 1].Font.Style := [fsbold];
end;

//Colocando os nomes dos critério no título
for i := 1 to NumCrit do
with grdTabular do
begin
  Cell[0, i + 1].Text := NomeCrit[vtrordem[i - 1]]; //Aqui ele coloca o critério da ordem de preferência
  Cell[0, i + 1].Font.Style := [fsbold];
  Cell[0, i + 1].Wrap := true;
end;

//adicionandos os valores na tabela
with grdTabular do
for i := 0 to length(indice_alt)-1 do
begin
  Cell[i+1, 0].Text := NomeAlt[indice_alt[i]];
  Cell[i+1, 1].Text := IntToStr(class_min[indice_alt[i]]);

  for j := 0 to NumCrit - 1 do
  begin
    Cell[i+1, j + 2].Text := FloatToStr(ConsMatrix[indice_alt[i], vtrordem[j]]);
  end;

  if class_max[indice_alt[i]] <> class_min[indice_alt[i]] then
  for C := 1 to (class_max[indice_alt[i]] - class_min[indice_alt[i]]) do
  begin
    Cell[i+1, 1].Text := grdTabular.Cell[i+1, 1].Text + ', ' + IntToStr(class_min[indice_alt[i]]+C);
  end
end;

with grdTabular do
for i := 0 to (length(indice_altp)-1) do
begin
  Cell[i+1+length(indice_alt), 0].Text :=  'P' + intTostr(indice_altp[i]);
  Cell[i+1+length(indice_alt), 1].Text := intTostr(TIWUserSession(WebApplication.Data).indice_altp[i]);

  for j := 0 to NumCrit - 1 do
  begin
    Cell[i+1+length(indice_alt), j + 2].Text := FloatToStr(altperfil[indice_altp[i]-1, vtrordem[j]]);
  end;
    grdTabular.Font.FontName := 'Verdana';
    grdTabular.Font.Size := 10;
end;

//********** ESCALA DE RAZÃO ***********//
  setlength(Consrazao, 0, NumCrit);  //Pra zerar as informações anteriores
  setlength(Consrazaop, 0, NumCrit); //Pra zerar as informações anteriores
  setlength(Consrazao, length(indice_alt), NumCrit);
  setlength(Consrazaop, length(indice_altp), NumCrit);
  setlength(Maxl, NumCrit);
  setlength(Minl, NumCrit);
  setlength(Maxa, NumCrit);
  setlength(Mina, NumCrit);
  setlength(Maxb, NumCrit);
  setlength(Minb, NumCrit);
  {setlength(auxiliar_perfil1, length(perfis) + 1);
  setlength(auxiliar_perfil2, length(perfis) + 1); }

     { for i := 0 to length(perfis) do begin
        if(auxiliar_perfil2[i].Caption <> '')   then
        auxiliar_perfil1[i].destroy;
        auxiliar_perfil2[i].destroy;
      end;}

  // * Buscando maximos e minimos locais (Escala de Razão) *//
  for j := 0 to NumCrit - 1 do
  begin
    Maxa[j] := ConsMatrix[indice_alt[0], j];
    Mina[j] := ConsMatrix[indice_alt[0], j];
    Maxb[j] := TIWUserSession(WebApplication.Data).altperfil[indice_altp[0]-1, j];
    Minb[j] := altperfil[TIWUserSession(WebApplication.Data).indice_altp[0]-1, j];
  end;

  for j := 0 to NumCrit - 1 do
  begin
    if Maxa[j] >= Maxb[j] then
      begin
        Maxl[j] := Maxa[j];
      end
    else
      begin
        Maxl[j] := Maxb[j];
      end;
    if Mina[j] <= Minb[j] then
      begin
        Minl[j] := Mina[j];
      end
    else
      Minl[j] := Minb[j];
  end;

  for j := 0 to NumCrit - 1 do
  begin
    for i := 0 to length(indice_alt) - 1 do
    begin
      if ConsMatrix[indice_alt[i], j] >= Maxl[j] then
        Maxl[j] := ConsMatrix[indice_alt[i], j];
      if ConsMatrix[indice_alt[i], j] <= Minl[j] then
        Minl[j] := ConsMatrix[indice_alt[i], j];
    end;
  end;

  for j := 0 to NumCrit - 1 do
  begin
    for i := 0 to length(indice_altp) - 1 do
    begin
      if altperfil[indice_altp[i]-1, j] >= Maxl[j] then
        Maxl[j] := altperfil[TIWUserSession(WebApplication.Data).indice_altp[i]-1, j];
      if altperfil[indice_altp[i]-1, j] <= Minl[j] then
        Minl[j] := altperfil[indice_altp[i]-1, j];
    end;
  end;

  //** ALTERNATIVAS DO PROBLEMA
  for j := 0 to NumCrit - 1 do
  begin
    for i := 0 to length(TIWUserSession(WebApplication.Data).indice_alt) - 1 do
    begin
      if Maxl[j] = Minl[j] then
        begin
          TIWUserSession(WebApplication.Data).Consrazao[i, j] := 1;
        end
      else
      begin
        if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then  // dos criterios de maximização
          begin
            if (Maxl[j] > 0) and (Minl[j] >= 0) then // * ConsequenciaPositivas *//
              TIWUserSession(WebApplication.Data).Consrazao[i, j] := ConsMatrix[indice_alt[i], j] / Maxl[j];
            if (Maxl[j] >= 0) and (Minl[j] < 0) then // * Consequencias mistas (+, -, 0)*//
              Consrazao[i, j] :=  ConsMatrix[indice_alt[i], j] / (Maxl[j] - Minl[j]) + 1 - Maxl[j] / (Maxl[j] - Minl[j]);
            if (Minl[j] < 0) and (Maxl[j] < 0) then // * Consequencias negativas *//
              Consrazao[i, j] := Maxl[j]/ConsMatrix[indice_alt[i], j];
          end // Fimdoscritérios de maximização
        else //(Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then // inicio dos critérios de minimização
          begin
            if (ConsMatrix[i, j] <> 0) and (Minl[j] > 0) then  // * ConsequenciaPositivas *//
              Consrazao[i, j] := (Minl[j] / ConsMatrix[indice_alt[i], j]);
            if (Minl[j] <= 0) and (Maxl[j] >= 0) then // * Consequencias mistas (+, -, 0)*//
              Consrazao[i, j] := ConsMatrix[indice_alt[i], j] / (Minl[j] - Maxl[j]) + 1 - Minl[j] / (Minl[j] - Maxl[j]);
            if (Minl[j] < 0) and (Maxl[j] < 0) then // * Consequencias negativas *//
              Consrazao[i, j] := ConsMatrix[indice_alt[i], j] / Minl[j];
          end; // fim dos critérios de minimização
       end; // else
    end; //for i := 0 to length(indice_alt) - 1 do
  end; // for j := 0 to NumCrit - 1 do

  //** ALTERNATIVAS PERFIS
  for j := 0 to NumCrit - 1 do
  begin
    for i := 0 to length(indice_altp) - 1 do
    begin
      if Maxl[j] = Minl[j] then
        begin
          TIWUserSession(WebApplication.Data).Consrazaop[i, j] := 1;
        end
      else
      begin
        if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then  // dos criterios de maximização
          begin
            if (Maxl[j] > 0) and (Minl[j] >= 0) then // * ConsequenciaPositivas *//
              TIWUserSession(WebApplication.Data).Consrazaop[i, j] := altperfil[indice_altp[i]-1, j] / Maxl[j];
            if (Maxl[j] >= 0) and (Minl[j] < 0) then // * Consequencias mistas (+, -, 0)*//
              Consrazaop[i, j] :=  altperfil[indice_altp[i]-1, j] / (Maxl[j] - Minl[j]) + 1 - Maxl[j] / (Maxl[j] - Minl[j]);
            if (Minl[j] < 0) and (Maxl[j] < 0) then // * Consequencias negativas *//
              Consrazaop[i, j] := Maxl[j]/altperfil[indice_altp[i]-1, j];
          end // Fimdoscritérios de maximização
        else //(Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then // inicio dos critérios de minimização
          begin
            if (ConsMatrix[i, j] <> 0) and (Minl[j] > 0) then  // * ConsequenciaPositivas *//
              Consrazaop[i, j] := (Minl[j] / altperfil[indice_altp[i]-1, j]);
            if (Minl[j] <= 0) and (Maxl[j] >= 0) then // * Consequencias mistas (+, -, 0)*//
              Consrazaop[i, j] := altperfil[indice_altp[i]-1, j] / (Minl[j] - Maxl[j]) + 1 - Minl[j] / (Minl[j] - Maxl[j]);
            if (Minl[j] < 0) and (Maxl[j] < 0) then // * Consequencias negativas *//
              Consrazaop[i, j] := altperfil[indice_altp[i]-1, j] / Minl[j];
          end; // fim dos critérios de minimização
       end; // else
    end; //for i := 0 to length(indice_alt) - 1 do
  end; // for j := 0 to NumCrit - 1 do
end; // with

//******** CONSTRUÇÃO DOS GRÁFICOS *********//
  With TIWUserSession(WebApplication.Data) do
  begin

    //LIMPAR DADOS ANTIGOS
      With ChartBarGraph do //BAR
      begin
        Title.Clear;
        RemoveAllSeries;  // limpa todas as séries
        BottomAxis.Items.Clear;  // legenda de baixo
        Legend.Visible := true;
        View3D := false;
        BottomAxis.Visible := true;
        SeriesList.ClearValues;
      end;
      With ChartRadarGraph do //RADAR
      begin
        Title.Clear;
        RemoveAllSeries;
        BottomAxis.Items.Clear;
        Legend.Visible := true;
        View3D := false;
        BottomAxis.Visible := true;
        SeriesList.ClearValues;
      end;
      With ChartBubbleGraph do //BUBBLE
      begin
        Title.Clear;
        RemoveAllSeries;
        BottomAxis.Items.Clear;
        Legend.Visible := true;
        View3D := false;
        BottomAxis.Visible := true;
        SeriesList.ClearValues;
      end;
      With ChartGantt do //GANTT
      begin
        Title.Clear;
        RemoveAllSeries;
        BottomAxis.Items.Clear;
        Legend.Visible := true;
        View3D := false;
        SeriesList.ClearValues;
        BottomAxis.Visible := true;
        BottomAxis.LabelsAlternate;
        BottomAxis.Items.Automatic := false;
        LeftAxis.Items.Clear;
        LeftAxis.Increment := 0.2; // ?
      end;

    //setando o tamanho dos vetores auxiliares
    setlength(bubble, length(indice_altp)+length(indice_alt));
    setlength(rad, length(indice_altp)+length(indice_alt));
    setlength(bar, length(indice_altp)+length(indice_alt));
    setlength(gantt, length(indice_alt));
    qntTotal := length(indice_altp)+length(indice_alt);

    for a := 0 to qntTotal - 1 do
    begin
      rad[a] := TRadarSeries.Create(self);
      rad[a].Color := coresalt[a];
      bar[a] := TBarSeries.Create(self);
      bar[a].Color := coresalt[a];
      bubble[a] := TBubbleSeries.Create(self);
      bubble[a].Color := coresalt[a];

      With ChartBarGraph do //BAR
        begin
        AddSeries(bar[a]);
        series[a].Marks.Visible := false;
        bar[a].Color := coresalt[a];
        end;
      With ChartRadarGraph do //RADAR
        begin
        AddSeries(rad[a]);
        series[a].Marks.Visible := false;
        series[a].ColorEachPoint := false;
        series[a].Brush.Style := BsClear;
        rad[a].Pointer.Visible := false;
        rad[a ].Pen.Width := 3;
        rad[a].Pen.Color := bar[a].color;
        rad[a].Color := coresalt[a];
        end;
      With ChartBubbleGraph do //BUBBLE
        begin
        AddSeries(bubble[a]);
        series[a].Marks.Visible := false;
        series[a].ColorEachPoint := false;
        bubble[a].Color := coresalt[a];
        end;
     end; // for a

    for a := 0 to length(indice_altp) - 1 do
    begin
       indiceprofile := intTostr(TIWUserSession(WebApplication.Data).indice_altp[a]);
       ChartBarGraph.series[a].Legend.Text   := 'P' + indiceprofile;
       ChartRadarGraph.series[a].Legend.Text := 'P' + indiceprofile;
       ChartBubbleGraph.series[a].Legend.Text:= 'P' + indiceprofile;

       for C := 0 to NumCrit - 1 do
       begin
        ChartBarGraph.series[a].AddXY (C, Consrazaop[a, vtrordem[C]], ''); //BAR
        rad[a].AddXY(C, Consrazaop[a, vtrordem[C]], CritSiglas[vtrordem[C]]); //RADAR
        bubble[a].AddBubble (C, Consrazaop[a, vtrordem[C]], 0.05, ''); //BUBBLE
       end; // for C
    end; // for A

    for a := 0 to length(indice_alt) - 1 do
    begin
      //Gantt *****
      gantt[a]:= TGanttSeries.Create(self);
      With ChartGantt do //GANT
      begin
        AddSeries(gantt[a]);
        series[a].Marks.Visible := false;
        series[a].ColorEachPoint := false;
        series[a].Legend.Visible := false;
        gantt[a].Color := coresalt[a];
      end;
      gantt[a].AddGantt(ValAltMin[indice_alt[a]],ValAltMax[indice_alt[a]],a);
      ChartGantt.LeftAxis.Items.Add(a,AltSiglas[indice_alt[a]]);
      //***** Fim Gantt

      ChartBarGraph.series[(a+length(indice_altp))].Legend.Text   := AltSiglas[indice_alt[a]];
      ChartRadarGraph.series[(a+length(indice_altp))].Legend.Text := AltSiglas[indice_alt[a]];
      ChartBubbleGraph.series[(a+length(indice_altp))].Legend.Text := AltSiglas[indice_alt[a]];

      for C := 0 to NumCrit - 1 do
      begin
        ChartBarGraph.series[(a+length(indice_altp))].AddXY (C, Consrazao[a, vtrordem[C]], ''); //BAR
        rad[(a+length(indice_altp))].AddXY(C, Consrazao[a, vtrordem[C]], CritSiglas[vtrordem[C]]); //RADAR
        bubble[(a+length(indice_altp))].AddBubble (C, Consrazao[a, vtrordem[C]], 0.05, ''); //BUBBLE
      end; // for  C
    end; // for A

    With ChartBarGraph do //BAR
      begin
        LeftAxis.Increment := 0.2; // ?
        BottomAxis.LabelsAlternate;
        BottomAxis.Items.Automatic := false;
      end;
    With ChartRadarGraph do //RADAR
      begin
        LeftAxis.Increment := 0.2; // ?
        BottomAxis.LabelsAlternate;
        BottomAxis.Items.Automatic := false;
      end;
    With ChartBubbleGraph do //BUBBLE
      begin
        LeftAxis.Increment := 0.2; // ?
        BottomAxis.LabelsAlternate;
        BottomAxis.Items.Automatic := false;
      end;

    for i := 0 to NumCrit - 1 do
    begin
       ChartBarGraph.BottomAxis.Items.Add(i, CritSiglas[vtrordem[i]]);
       ChartRadarGraph.BottomAxis.Items.Add(i, CritSiglas[vtrordem[i]]);
       ChartBubbleGraph.BottomAxis.Items.Add(i, CritSiglas[vtrordem[i]]);
    end;

    {Krange[0] := TLineSeries.Create(self);
    Krange[1] := TLineSeries.Create(self);
    Krange[1].SeriesColor := clred;
    Krange[0].SeriesColor := clBlue;
    Krange[1].LineHeight := 2;
    Krange[0].LineHeight := 2;
    Krange[1].Legend.Text := 'Min Value';
    Krange[0].Legend.Text := 'Max Value';
    ChartBubbleGraph.AddSeries(Krange[0]);
    ChartBubbleGraph.AddSeries(Krange[1]);


    Krange1[0] := TLineSeries.Create(self);
    Krange1[1] := TLineSeries.Create(self);
    Krange1[1].SeriesColor := clred;
    Krange1[0].SeriesColor := clBlue;
    Krange1[1].LineHeight := 2;
    Krange1[0].LineHeight := 2;
    Krange1[1].Legend.Text := 'Min Value';
    Krange1[0].Legend.Text := 'Max Value';
    ChartBarGraph.AddSeries(Krange1[0]);
    ChartBarGraph.AddSeries(Krange1[1]);
    //ChartRadarGraph.AddSeries(Krange[0]);
    //ChartRadarGraph.AddSeries(Krange[1]);



    indCB := -1;
    for i := 0 to Numcrit - 1 do
    begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // * Não inclui o mesmo no gráfico *///
      INC(indCB);
      Krange[0].AddXY(indCB, MaxPeso[i]);
      Krange[1].AddXY(indCB, MinPeso[i]);
      Krange1[0].AddXY(indCB, MaxPeso[i]);
      Krange1[1].AddXY(indCB, MinPeso[i]);
    end;}









    // View gantt graph

    for i := 0 to length(perfis) - 1 do
      begin
      ChartGantt.BottomAxis.Items.Add(perfis[i],'P' + inttostr(i+1) + ': ' + FloatToStr(perfis[i]));
      {if i = 0 then begin
      //ChartGantt.BottomAxis.Items.Add(perfis[i],'P' + inttostr(i+1) + ': ' + FloatToStr(perfis[i]));
        {auxiliar_perfil2[i] := TiwLabel.Create(Self);
        auxiliar_perfil2[i].Parent := rgngant1;
        auxiliar_perfil2[i].Top := 5+ IWImageGantt1.Top + IWImageGantt1.Height;
        //auxiliar_perfil1[i].Name := ('lblC' + inttostr(i+1));
        auxiliar_perfil2[i].Visible := True;
        auxiliar_perfil2[i].Left := 15+round(IWImageGantt1.width*(perfis[i]));
        auxiliar_perfil2[i].Enabled := True;
        auxiliar_perfil2[i].Caption := ('C' + inttostr(i+1));
        auxiliar_perfil2[i].Font.Style := [fsbold];

      end
      else
      begin
      //Chart1.BottomAxis.Items.Add((perfis[i]+ perfis[i-1])/2,'C' + inttostr(i+1))
       {auxiliar_perfil2[i] := TiwLabel.Create(Self);
       auxiliar_perfil2[i].Parent := rgngant1;
       auxiliar_perfil2[i].Top := 5+ IWImageGantt1.Top + IWImageGantt1.Height;
       //auxiliar_perfil1[i].Name := ('lblC' + inttostr(i+1));
       auxiliar_perfil2[i].Visible := True;
       auxiliar_perfil2[i].Left := 10+round(IWImageGantt1.width*((perfis[i]+ perfis[i-1])/2));
       auxiliar_perfil2[i].Enabled := True;
       auxiliar_perfil2[i].Caption := ('C' + inttostr(i+1));
       auxiliar_perfil2[i].Font.Style := [fsbold];

      end;}
      end;
     //Chart1.BottomAxis.Items.Add((1+ perfis[length(perfis) - 1])/2,'C' + inttostr(length(perfis)+1))
     {auxiliar_perfil2[length(perfis)] := TiwLabel.Create(Self);
     auxiliar_perfil2[length(perfis)].Parent := rgngant1;
     auxiliar_perfil2[i].Top := 5+ IWImageGantt1.Top + IWImageGantt1.Height;
     //auxiliar_perfil1[length(perfis)].Name := ('lblC' + inttostr(length(perfis)+1));
     auxiliar_perfil2[length(perfis)].Visible := True;
     auxiliar_perfil2[length(perfis)].Left := 10+round(IWImageGantt1.width*((1+ perfis[length(perfis) - 1])/2));
     auxiliar_perfil2[length(perfis)].Enabled := True;
     auxiliar_perfil2[length(perfis)].Caption := ('C' + inttostr(length(perfis)+1));
     auxiliar_perfil2[length(perfis)].Font.Style := [fsbold];}


    {Chart1.BottomAxis.Items.Add(0,inttostr(0));
    Chart1.BottomAxis.Items.Add(1,inttostr(1));
     }
    TbCtrlP0Holistica.Visible := True;
    TbCtrlP1Holistica.Visible := True;
    TbCtrlP2Holistica.Visible := True;
    TbCtrlP3Holistica.Visible := True;
    //TbCtrlP4Holistica.Visible := True;
    //ChartGantt.Visible := False;

    IWImageBar.Picture.Bitmap.Assign
      (ChartBarGraph.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBar.Width,
          IWImageBar.Height)));
    IWImageRadar.Picture.Bitmap.Assign
      (ChartRadarGraph.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageRadar.Width,
          IWImageRadar.Height)));
    IWImageBubble.Picture.Bitmap.Assign
      (ChartBubbleGraph.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
          IWImageBubble.Height)));
      IWImageGantt.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
        IWImageGantt1.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
             IWImage12.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
            IWImage7.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
            IWImage11.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));

      {IWImageGantt2.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
      IWImageGantt3.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
      IWImageGantt4.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
       }
    IWImageBar.Visible := true;
    rgnCEstbr.Top := 37;
      rgnCEstbr.Height := 41;
    IWImageRadar.Visible := true;
    rgnstRadar.Top := 37;
      rgnstRadar.Height := 41;
    IWImageBubble.Visible := true;
    rgnCEstBb.Top := 37;
      rgnCEstBb.Height := 41;
    IWImageGantt.Visible := true;



end; // with
end;


procedure TfrmSortingResults.grdprofilesCheckClick(Sender: TObject; RowIndex,
  ColumnIndex: Integer);
var
i : integer;
begin
with TIWUserSession(WebApplication.Data) do
begin
  for i := 0 to grdprofiles.RowCount - 1 do
  begin
   if grdprofiles.RowSelect[i] = True then
   begin
      lblmaxprofiles[i].visible := True;
      lblminprofiles[i].visible := True;
      edtpercentprofilesmax[i].visible := True;
      edtpercentprofilesmin[i].visible := True;
      lblvariationminprofiles[i].visible := True;
      lblvariationmaxprofiles[i].visible := True;
   end
   else
   begin
      lblmaxprofiles[i].visible := false;
      lblminprofiles[i].visible := false;
      edtpercentprofilesmax[i].visible := false;
      edtpercentprofilesmin[i].visible := false;
      lblvariationminprofiles[i].visible := false;
      lblvariationmaxprofiles[i].visible := false;
   end;
  end;
end;
end;

procedure TfrmSortingResults.grdvariationCheckClick(Sender: TObject; RowIndex,
  ColumnIndex: Integer);
var
i : integer;
begin
with TIWUserSession(WebApplication.Data) do
begin
  for i := 0 to grdvariation.RowCount - 1 do
  begin
    if grdvariation.RowSelect[i] = True then
    begin
      if grdvariation.Cells[2,i] = 'Natural' then
      begin
      edtmaxAS[i].Visible := true;
      edtminAS[i].Visible := True;
      end;
      if grdvariation.Cells[2,i] = 'Constructed' then
      begin
      cmbbxmaxAS[i].Visible := true;
      cmbbxminAS[i].Visible := True;
      end;
      lblmax[i].Visible := True;
      lblmin[i].Visible := True;
      lblvariationmax[i].Visible := True;
      lblvariationmin[i].Visible := True;
    end;
    if grdvariation.RowSelect[i] = False then
    begin
      if grdvariation.Cells[2,i] = 'Natural' then
      begin
      edtmaxAS[i].Visible := False;
      edtminAS[i].Visible := False;
      end;
      if grdvariation.Cells[2,i] = 'Constructed' then
      begin
      cmbbxmaxAS[i].Visible := False;
      cmbbxminAS[i].Visible := False;
      end;
      lblmax[i].Visible := False;
      lblmin[i].Visible := False;
      lblvariationmax[i].Visible := False;
      lblvariationmin[i].Visible := False;
    end;
  end;
end;

end;

//PROCEDURES RELACIONADAS AOS GRÁFICOS QUANDO TEM ALTERNATIVA DO PROBLEMA
procedure TfrmSortingResults.Graficos;
var
  a, i, C, j, qntTotal, alttotal, linha, indCB, y, g: integer;
  Maxl, Minl: Array of Double;
  bubble: array of TBubbleSeries;
  rad: array of TRadarSeries;
  bar: array of TBarSeries;
  gantt: array of TGanttSeries;
  auxiliar_perfil1 : array of TiwLabel;
  Krange: Array [0 .. 1] of TLineSeries;
  coresalt, coresalt1: array of Tcolor;
  primeiracor: boolean;

begin

with TIWUserSession(WebApplication.Data) do
begin

//Cores dos gráficos
  Setlength(coresalt, 130);
  Setlength(coresalt1, TIWUserSession(WebApplication.Data).NumAlt);
  coresalt[0]:= $000000CC; //vermelho
  coresalt[1]:= $0033BBFF; //amarelo
  coresalt[2]:= $00CC9900; //azul
  coresalt[3]:= $00BBBBFF; //rosa
  coresalt[4]:= $005AE6C8; //verde
  coresalt[5]:= $00FF00FF;
  coresalt[6]:= $00808000;
  coresalt[7]:= $00800000;
  coresalt[8]:= $00000080;
  coresalt[9]:= $0000FF00;
  coresalt[10]:= $00008080;
  coresalt[11]:= $00800080;
  coresalt[12]:= $00FFFF00;
  coresalt[13]:= $00C0DCC0;
  coresalt[14]:= $00A4A0A0;
  coresalt[15]:= $00E049BB;
  coresalt[16]:= $005353FF;
  coresalt[17]:= $000080FF;
  coresalt[18]:= $00800040;
  coresalt[19]:= $00434321;
  coresalt[20]:= $00189AD8;
  coresalt[21]:= $000000C1;
  coresalt[22]:= $00DC0E65;
  coresalt[23]:= $0000AE00;
  coresalt[24]:= $002676CE;
  coresalt[25]:= $008000FF;// índigo
  coresalt[26]:= $00808080; // cinza claro
  coresalt[27]:= $00FF4500; // laranja avermelhado
  coresalt[28]:= $00FFD700; // ouro claro
  coresalt[29]:= $00640000; // marrom escuro
  coresalt[30]:= $008B4513; // marrom de sela
  coresalt[31]:= $00A52A2A; // marrom de fogo
  coresalt[32]:= $00D2691E; // chocolate
  coresalt[33]:= $008BB000; // marrom escuro
  coresalt[34]:= $00B22222; // tijolo
  coresalt[35]:= $00FF6347; // tomate
  coresalt[36]:= $00FF8C00; // laranja escuro
  coresalt[37]:= $00FFA07A; // salmão claro
  coresalt[38]:= $00FF7F50; // coral claro
  coresalt[39]:= $00FF0000; // vermelho claro
  coresalt[40]:= $00CD5C5C; // marrom claro
  coresalt[41]:= $008B0000; // marrom escuro
  coresalt[42]:= $00A52A2A; // marrom de fogo
  coresalt[43]:= $00B22222; // tijolo
  coresalt[44]:= $008B0000; // marrom escuro
  coresalt[45]:= $00A52A2A; // marrom de fogo
  coresalt[46]:= $00B22222; // tijolo
  coresalt[47]:= $008B0000; // marrom escuro
  coresalt[48]:= $00A52A2A; // marrom de fogo
  coresalt[49]:= $00B22222; // tijolo
  coresalt[50]:= $008B0000; // marrom escuro
  coresalt[51]:= $00A52A2A; // marrom de fogo
  coresalt[52]:= $00B22222; // tijolo
  coresalt[53]:= $008B0000; // marrom escuro
  coresalt[54]:= $00A52A2A; // marrom de fogo
  coresalt[55]:= $00B22222; // tijolo
  coresalt[56]:= $00FF69B4; // rosa quente
  coresalt[57]:= $00FFE4E1; // rosa claro
  coresalt[58]:= $00FF1493; // rosa profundo
  coresalt[59]:= $00C71585; // vermelho violeta
  coresalt[60]:= $00DB7093; // roxo claro
  coresalt[61]:= $00DA70D6; // orquídea
  coresalt[62]:= $009932CC; // índigo escuro
  coresalt[63]:= $009ACD32; // verde amarelo
  coresalt[64]:= $00C0FF3E; // verde limão brilhante
  coresalt[65]:= $00AEEEEE; // azul celeste
  coresalt[66]:= $000000CC; //vermelho
  coresalt[67]:= $0033BBFF; //amarelo
  coresalt[68]:= $00CC9900; //azul
  coresalt[69]:= $00BBBBFF; //rosa
  coresalt[70]:= $005AE6C8; //verde
  coresalt[71]:= $00FF00FF;
  coresalt[72]:= $00808000;
  coresalt[73]:= $00800000;
  coresalt[74]:= $00000080;
  coresalt[75]:= $0000FF00;
  coresalt[76]:= $00008080;
  coresalt[77]:= $00800080;
  coresalt[78]:= $00FFFF00;
  coresalt[79]:= $00C0DCC0;
  coresalt[80]:= $00A4A0A0;
  coresalt[81]:= $00E049BB;
  coresalt[82]:= $005353FF;
  coresalt[83]:= $000080FF;
  coresalt[84]:= $00800040;
  coresalt[85]:= $00434321;
  coresalt[86]:= $00189AD8;
  coresalt[87]:= $000000C1;
  coresalt[88]:= $00DC0E65;
  coresalt[89]:= $0000AE00;
  coresalt[90]:= $002676CE;
  coresalt[91]:= $008000FF;// índigo
  coresalt[92]:= $00808080; // cinza claro
  coresalt[93]:= $00FF4500; // laranja avermelhado
  coresalt[94]:= $00FFD700; // ouro claro
  coresalt[95]:= $00640000; // marrom escuro
  coresalt[96]:= $008B4513; // marrom de sela
  coresalt[97]:= $00A52A2A; // marrom de fogo
  coresalt[98]:= $00D2691E; // chocolate
  coresalt[99]:= $008B0000; // marrom escuro
  coresalt[100]:= $00B22222; // tijolo
  coresalt[101]:= $00FF6347; // tomate
  coresalt[102]:= $00FF8C00; // laranja escuro
  coresalt[103]:= $00FFA07A; // salmão claro
  coresalt[104]:= $00FF7F50; // coral claro
  coresalt[105]:= $00FF0000; // vermelho claro
  coresalt[106]:= $00CD5C5C; // marrom claro
  coresalt[107]:= $008B0000; // marrom escuro
  coresalt[108]:= $00A52A2A; // marrom de fogo
  coresalt[109]:= $00B22222; // tijolo
  coresalt[110]:= $008B0000; // marrom escuro
  coresalt[111]:= $00A52A2A; // marrom de fogo
  coresalt[112]:= $00B22222; // tijolo
  coresalt[113]:= $008B0000; // marrom escuro
  coresalt[114]:= $00A52A2A; // marrom de fogo
  coresalt[115]:= $00B22222; // tijolo
  coresalt[116]:= $008B0000; // marrom escuro
  coresalt[117]:= $00A52A2A; // marrom de fogo
  coresalt[118]:= $00B22222; // tijolo
  coresalt[119]:= $008B0000; // marrom escuro
  coresalt[120]:= $00A52A2A; // marrom de fogo
  coresalt[121]:= $00B22222; // tijolo
  coresalt[122]:= $00FF69B4; // rosa quente
  coresalt[123]:= $00FFE4E1; // rosa claro
  coresalt[124]:= $00FF1493; // rosa profundo
  coresalt[125]:= $00C71585; // vermelho violeta
  coresalt[126]:= $00DB7093; // roxo claro
  coresalt[127]:= $00DA70D6; // orquídea
  coresalt[128]:= $009932CC; // índigo escuro
  coresalt[129]:= $009ACD32; // verde amarelo

for y := 0 to TIWUserSession(WebApplication.Data).NumAlt - 1 do
  begin
    coresalt1[y] := coresalt[y];
  end;

for y := 0 to Length(coresalt1) - 1 do
  begin
  primeiracor := true;
    for i := 0 to Length(coresalt1) - 1 do
    begin
      if (coresalt1[y] = coresalt1[i]) then
      begin
      if primeiracor then
        begin
          primeiracor := False;
        end
        else
        begin
        // Encontra a próxima cor disponível em coresalt
        g := (i + 5) mod Length(coresalt);
        // Substitui cor repetida pela próxima cor disponível em coresalt
        coresalt1[i] := coresalt[g];
      end;
    end;
  end;
  end;

//*********** TABULAR ************//
//limpando todas as informações iniciais
with grdTabular do
begin
  Clear;
  RowCount := length(indice_alt)+1;
  ColumnCount := NumCrit + 2;
  Cell[0, 0].Text := 'Alternatives';
  Cell[0, 0].Font.Style := [fsbold];
  Cell[0, 1].Text := 'Category';    //Cell[linha,coluna]
  Cell[0, 1].Font.Style := [fsbold];
end;

//Colocando os nomes dos critério no título
for i := 1 to NumCrit do
with grdTabular do
begin
  Cell[0, i + 1].Text := CritSiglas[vtrordem[i - 1]]; //Aqui ele coloca o critério da ordem de preferência
  Cell[0, i + 1].Font.Style := [fsbold];
  Cell[0, i + 1].Wrap := true;
end;

//adicionandos os valores na tabela
with grdTabular do
for i := 0 to length(indice_alt)-1 do
begin
  Cell[i+1, 0].Text := AltSiglas[indice_alt[i]];
  Cell[i+1, 1].Text := IntToStr(class_min[indice_alt[i]]);

  for j := 0 to NumCrit - 1 do
  begin
    Cell[i+1, j + 2].Text := FloatToStr(ConsMatrix[indice_alt[i], vtrordem[j]]);
  end;

  if class_max[indice_alt[i]] <> class_min[indice_alt[i]] then
  for C := 1 to (class_max[indice_alt[i]] - class_min[indice_alt[i]]) do
  begin
    Cell[i+1, 1].Text := grdTabular.Cell[i+1, 1].Text + ', ' + IntToStr(class_min[indice_alt[i]]+C);
  end

end;

//********** ESCALA DE RAZÃO ***********//
setlength(Consrazao, 0, NumCrit);  //Pra zerar as informações anteriores
setlength(Consrazao, length(indice_alt), NumCrit);
setlength(Maxl, NumCrit);
setlength(Minl, NumCrit);
setlength(auxiliar_perfil1, length(perfis) + 1);



// * Buscando maximos e minimos locais (Escala de Razão) *//
for j := 0 to NumCrit - 1 do
begin
  Maxl[j] := ConsMatrix[indice_alt[0], j];
  Minl[j] := ConsMatrix[indice_alt[0], j];
end;

for j := 0 to NumCrit - 1 do
for i := 0 to length(indice_alt) - 1 do
begin
  if ConsMatrix[indice_alt[i], j] >= Maxl[j] then
    Maxl[j] := ConsMatrix[indice_alt[i], j];
  if ConsMatrix[indice_alt[i], j] <= Minl[j] then
    Minl[j] := ConsMatrix[indice_alt[i], j];
end;

for j := 0 to NumCrit - 1 do
begin
for i := 0 to length(indice_alt) - 1 do
  begin
      if Maxl[j] = Minl[j] then
          begin
            TIWUserSession(WebApplication.Data).Consrazao[i, j] := 1;
          end
      else
      begin
        if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
        begin // dos criterios de maximização
          if (Maxl[j] > 0) and (Minl[j] >= 0) then // * ConsequenciaPositivas *//
            TIWUserSession(WebApplication.Data).Consrazao[i, j] := TIWUserSession(WebApplication.Data).ConsMatrix[indice_alt[i], j] / Maxl[j];
          if (Maxl[j] >= 0) and (Minl[j] < 0) then // * Consequencias mistas (+, -, 0)*//
            Consrazao[i, j] :=  ConsMatrix[indice_alt[i], j]/ (Maxl[j] - Minl[j]) + 1 - Maxl[j] / (Maxl[j] - Minl[j]);
          if (Minl[j] < 0) and (Maxl[j] < 0) then // * Consequencias negativas *//
            Consrazao[i, j] := Maxl[j]/ConsMatrix[indice_alt[i], j];
        end; // Fimdoscritérios de maximização

        if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
        begin // inicio dos critérios de minimização
          if (ConsMatrix[i, j] <> 0) and (Minl[j] > 0) then  // * ConsequenciaPositivas *//
            Consrazao[i, j] := (Minl[j] / ConsMatrix[indice_alt[i], j]);
          if (Minl[j] <= 0) and (Maxl[j] >= 0) then // * Consequencias mistas (+, -, 0)*//
            Consrazao[i, j] := ConsMatrix[indice_alt[i], j] / (Minl[j] - Maxl[j]) + 1 - Minl[j] / (Minl[j] - Maxl[j]);
          if (Minl[j] < 0) and (Maxl[j] < 0) then // * Consequencias negativas *//
            Consrazao[i, j] := ConsMatrix[indice_alt[i], j] / Minl[j];
        end; // fim dos critérios de minimização
      end; //else
end; // for i := 0 to length(indice_alt) - 1 do
end; //for j := 0 to NumCrit - 1 do

//********** ATUALIZA GRÁFICOS *********//
    //LIMPAR DADOS ANTIGOS
      With ChartBarGraph do //BAR
      begin
        Title.Clear;
        RemoveAllSeries;  // limpa todas as séries
        BottomAxis.Items.Clear;  // legenda de baixo
        Legend.Visible := true;
        View3D := false;
        BottomAxis.Visible := true;
        SeriesList.ClearValues;
        LeftAxis.Increment := 0.2; // ?
        BottomAxis.LabelsAlternate;
        BottomAxis.Items.Automatic := false;
      end;
      With ChartRadarGraph do //RADAR
      begin
        Title.Clear;
        RemoveAllSeries;
        BottomAxis.Items.Clear;
        Legend.Visible := true;
        View3D := false;
        BottomAxis.Visible := true;
        SeriesList.ClearValues;
        LeftAxis.Increment := 0.2; // ?
        BottomAxis.LabelsAlternate;
        BottomAxis.Items.Automatic := false;

      end;
      With ChartBubbleGraph do //BUBBLE
      begin
        Title.Clear;
        RemoveAllSeries;
        BottomAxis.Items.Clear;
        Legend.Visible := true;
        View3D := false;
        BottomAxis.Visible := true;
        SeriesList.ClearValues;
        LeftAxis.Increment := 0.2; // ?
        BottomAxis.LabelsAlternate;
        BottomAxis.Items.Automatic := false;

      end;
      With ChartGantt do //GANTT
      begin
        Title.Clear;
        RemoveAllSeries;
        BottomAxis.Items.Clear;
        Legend.Visible := true;
        View3D := false;
        SeriesList.ClearValues;
        BottomAxis.Visible := true;
        BottomAxis.LabelsAlternate;
        BottomAxis.Items.Automatic := false;
        LeftAxis.Items.Clear;
        LeftAxis.Increment := 0.2; // ?
      end;

      //setando o tamanho dos vetores auxiliares
      setlength(bubble, length(indice_alt));
      setlength(rad, length(indice_alt));
      setlength(bar, length(indice_alt));
      setlength(gantt, length(indice_alt));

    // * Adicionando séries dos pesos máxmimos e mínimos ao gráfico *//


    for a := 0 to length(indice_alt) - 1 do
      begin
        rad[a] := TRadarSeries.Create(self);
        bar[a] := TBarSeries.Create(self);
        bubble[a] := TBubbleSeries.Create(self);
        gantt[a]:= TGanttSeries.Create(self);
        gantt[a].Color:= coresalt1[a];

        With ChartBarGraph do //BAR
          begin
          AddSeries(bar[a]);
          series[a].Marks.Visible := false;
          series[a].Legend.Text   := TIWUserSession(WebApplication.Data).altsiglas[indice_alt[a]];
          //bar[a].Color := TIWUserSession(WebApplication.Data)
          //.coresalt[indice_alt[a]];
        end;
        With ChartRadarGraph do //RADAR
          begin
          AddSeries(rad[a]);
          series[a].Marks.Visible := false;
          series[a].ColorEachPoint := false;
          series[a].Brush.Style := BsClear;
          series[a].Legend.Text := AltSiglas[indice_alt[a]];
          Legend.Visible := False;
          //rad[a].Color := TIWUserSession(WebApplication.Data)
          //.coresalt[indice_alt[a]];
          rad[a].Pointer.Visible := false;
          rad[a ].Pen.Width := 3;
          rad[a].Pen.Color := bar[a].color;
        end;
        With ChartBubbleGraph do //BUBBLE
        begin
          AddSeries(bubble[a]);
          series[a].Marks.Visible := false;
          series[a].ColorEachPoint := false;
          series[a].Legend.Text := AltSiglas[indice_alt[a]];
          //bubble[a].Color := TIWUserSession(WebApplication.Data)
          //.coresalt[indice_alt[a]];

        end;

        for C := 0 to NumCrit - 1 do
        begin
          ChartBarGraph.series[a].AddXY (C, Consrazao[a, vtrordem[C]], ''); //BAR
          rad[a].AddXY(C, Consrazao[a, vtrordem[C]], CritSiglas[vtrordem[C]]); //RADAR
          bubble[a].AddBubble (C, Consrazao[a, vtrordem[C]], 0.05, ''); //BUBBLE
        end; // for  C
      end; // for A

      //Gantt *****
      for a := 0 to length(indice_alt) - 1 do
      begin
        gantt[a]:= TGanttSeries.Create(self);
        With ChartGantt do //GANT
        begin
          AddSeries(gantt[a]);
          series[a].Marks.Visible := false;
          series[a].ColorEachPoint := false;
          series[a].Legend.Visible := false;
          gantt[a].Color:= coresalt1[a];
        end;
        gantt[a].AddGantt(ValAltMin[indice_alt[a]],ValAltMax[indice_alt[a]],a);
        ChartGantt.LeftAxis.Items.Add(a,AltSiglas[indice_alt[a]]);
      end;
      //***** Fim Gantt

      for i := 0 to NumCrit - 1 do
      begin
         ChartBarGraph.BottomAxis.Items.Add(i, CritSiglas[vtrordem[i]]);
         ChartRadarGraph.BottomAxis.Items.Add(i, CritSiglas[vtrordem[i]]);
         ChartBubbleGraph.BottomAxis.Items.Add(i, CritSiglas[vtrordem[i]]);
      end;

    {Krange[0] := TLineSeries.Create(self);
    Krange[1] := TLineSeries.Create(self);
    Krange[1].SeriesColor := clred;
    Krange[0].SeriesColor := clBlue;
    Krange[1].LineHeight := 2;
    Krange[0].LineHeight := 2;
    Krange[1].Legend.Text := 'Min Value';
    Krange[0].Legend.Text := 'Max Value';
    ChartBubbleGraph.AddSeries(Krange[0]);
    ChartBubbleGraph.AddSeries(Krange[1]);
    ChartBarGraph.AddSeries(Krange[0]);
    ChartBarGraph.AddSeries(Krange[1]);
    ChartRadarGraph.AddSeries(Krange[0]);
    ChartRadarGraph.AddSeries(Krange[1]);



    indCB := -1;
    for i := 0 to Numcrit - 1 do
    begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // * Não inclui o mesmo no gráfico *///
      INC(indCB);
      Krange[0].AddXY(indCB, MaxPeso[i]);
      Krange[1].AddXY(indCB, MinPeso[i]);
    end;

     }




      ChartGantt.BottomAxis.Items.Add(0, FloatToStr(0));
     { for i := 0 to length(perfis) - 1 do
      begin
          ChartGantt.BottomAxis.Items.Add(perfis[i],FloatToStr(perfis[i]));
      end; }
      ChartGantt.BottomAxis.Items.Add(1, FloatToStr(1));


    for i := 0 to length(perfis) - 1 do
      begin
      ChartGantt.BottomAxis.Items.Add(perfis[i],'P' + inttostr(i+1) + ': ' + FloatToStr(perfis[i]));
      end;


    TbCtrlP0Holistica.Visible := True;
    TbCtrlP1Holistica.Visible := True;
    TbCtrlP2Holistica.Visible := True;
    TbCtrlP3Holistica.Visible := True;
    TbCtrlP4Holistica.Visible := True;
    //ChartGantt.Visible := False;

      IWImageBar.Picture.Bitmap.Assign
        (ChartBarGraph.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBar.Width,
            IWImageBar.Height)));
      IWImageRadar.Picture.Bitmap.Assign
        (ChartRadarGraph.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageRadar.Width,
            IWImageRadar.Height)));
      IWImageBubble.Picture.Bitmap.Assign
        (ChartBubbleGraph.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageBubble.Height)));
      IWImageGantt.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
      IWImageGantt1.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
            IWImage12.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
            IWImage7.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
            IWImage11.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
      {IWImageGantt2.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
      IWImageGantt3.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
      IWImageGantt4.Picture.Bitmap.Assign
        (ChartGantt.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImageBubble.Width,
            IWImageGantt.Height)));
       }
      IWImageBar.Visible := true;
      rgnCEstbr.Top := 37;
      rgnCEstbr.Height := 41;
      IWImageRadar.Visible := true;
      rgnstRadar.Top := 37;
      rgnstRadar.Height := 41;
      IWImageBubble.Visible := true;
      rgnCEstBb.Top := 37;
      rgnCEstBb.Height := 41;
      IWImageGantt.Visible := True;

  end; // with
end;

procedure TfrmSortingResults.PLClassificacao;
var
  i, j, K, Nrest, a, b, Z, II, JJ, c: integer; // Contadores
  NumCri, NumAlt, Numl, NAH, NumPOA: integer; // Número de critérios,
  // num de alternativas, num de linhasna Matriz do Modelo de PL e número de restrições
  // provenientes de Avaliações holísticas, número de alternativas potencialmente ótimas
  MatA, MatCons: Array of Array of Double; // Matriz do Modelo de PL e Matriz de Consequências Normalizada
  Criorder: Array of integer; // Vetor que armazena os índices das alternativas
  // potencialmente ótimas do problema, vetor que armazena as alternativas que passaram por uma
  // avaliação holística e vetor que armazena a ordenação dos critérios
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
  ResultVector: array of real;
  // typeprob determina se o problema é contínuo (typeprob = 0) ou binário (typeprob = 1).
  // No caso do fitradeoff, é sempre contínuo pois as constantes de escala são contínuas.
  // dirprob determina se o problema é de minimização (dirprob = 0) ou de maximização
  // (dirprob = 1), SF nos diz se houve solução viável.
  typeprob, dirprob: integer;
  FO, Op: array of string;
  limit: array of real;
  Rmod: array of AnsiString;
  var_int, var_bin: Array of integer;
  /// /vetores que carregam var de decisão inteiras e binárias
  Lp: THandle;
  S1: string;
  MAXDI, MAXDJ: array [0 .. 2] of Double;
  AuxHEz: array of integer; // vetor auxiliar para facilitar a elaboração de res_
  // trições com var binária da HE
  MSSG: integer;

  /// PARA CLASSIFICAÇÃO (MOACIR)
  SFMax, SFMin: integer;

  //PEDRO - auxiliares para critério de parada
  auxvalAltMax, auxvalAltmin : double;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  NumCri := TIWUserSession(WebApplication.Data).numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  NumPOA := TIWUserSession(WebApplication.Data).NumAlt;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 3 + (NumAlt - 1); // número de linhas da matriz do modelo de PPL
  NumDV := NumCri; // número de var de decisão
  setlength(MatCons, NumAlt, NumCri); // Matriz de cons normalizadas
  setlength(Criorder, NumCri); // Ordem dos critérios
  setlength(MatA, Numl, NumCri + 1); // Matriz com o modelo
  setlength(Op, Numl - 1);
  setlength(limit, Numl - 1);
  setlength(Rmod, Numl - 1);
  setlength(TIWUserSession(WebApplication.Data).VetPOA, NumAlt); // Vetor de alt potencialmente ótima
  setlength(LimMax, NumCri - 1); // limites das relações entre os pesos
  setlength(LimMin, NumCri - 1); // limites das relações entre os pesos
  setlength(VetAH, NAH); // NAH setar como zero número de avaliações holísticas
  setlength(OPAH, NAH);
  setlength(FO, NumCri);
  setlength(ResultVector, NumCri + 1);

  // PARA CLASSIFICAÇÃO (MOACIR 08.06.2021)
  setlength(TIWUserSession(WebApplication.Data).ValAltMax, NumAlt);
  setlength(TIWUserSession(WebApplication.Data).ValAltMin, NumAlt);
  TIWUserSession(WebApplication.Data).Alt_nao_classificadas := 0;

  for i  := 0 to Numalt - 1 do
    TIWUserSession(WebApplication.Data).VetPOA[i] :=  i;

  typeprob := 0;
  // Recebendo info das variáveis globais //
  /// Var de decisão são contínuas ///
  for i := 0 to NumAlt - 1 do
  begin
    for j := 0 to NumCri - 1 do
      MatCons[i, j] := TIWUserSession(WebApplication.Data).ConsNorm[i, j];
    // cnsequencias normalizadas
  end;
  for i := 0 to NumCri - 1 do
    Criorder[i] := TIWUserSession(WebApplication.Data).VtrOrdem[i];
  // ordem dos critérios
  for i := 0 to NumCri - 2 do
  begin
    // setlength(LimMin, i + 1);
    LimMin[i] := TIWUserSession(WebApplication.Data).LimMin[i];
    LimMax[i] := TIWUserSession(WebApplication.Data).LimMax[i];
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for j := 0 to NAH - 1 do
    begin
      setlength(VetAH[j], Length(MATAH[j]));
      for i := 0 to Length(MATAH[j]) - 1 do
        VetAH[j, i] := TIWUserSession(WebApplication.Data).MATAH[j, i];
    end;
  end;


  /// ///////////////////////////////////////////////////////////////////////////
  /// Limpando a Matriz do problema de possíveis valores provindos de sua inicialização ///
  for i := 0 to Numl - 1 do
    for j := 0 to NumCri do
      MatA[i, j] := 0;

  /// //////////// Programação Linear - MODELO PROB DE ESCOLHA //////////////////

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
  ///
  for i := a to a + NAH - 1 do
  begin
          /// Seleção ///
          for Z := 2 to Length(VetAH[i - a]) - 1 do
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
              if VetAH[i - a,1]< 0 then //Se a mlr alt for perfil
              begin
              //perfis[i] começa de zero
                MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                  - TIWUserSession(WebApplication.Data).perfis[-1-VetAH[(i - a), 1]];
              end;
              if VetAH[i - a,2]< 0 then //Se a pior alt for perfil
              begin
                MatA[Nrest + 1, j + 1] := TIWUserSession(WebApplication.Data).perfis[-1-VetAH[(i - a), 2]]
                  - MatCons[VetAH[i - a, 1], Criorder[j]];
              end;
            if (VetAH[i - a,2]>=0) and (VetAH[i - a,1]>=0) then
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end;
            end; // j

            MatA[Nrest + 1, 0] := -0.0001;
            Op[Nrest] := '<=';
            INC(Nrest);
          end; // z

  end; // i

  a := Nrest;

  /// Preenchendo as Restrições referentes à Normalização dos Pesos///
  for j := 0 to NumCri - 1 do
    MatA[a + 1, j + 1] := 1;
  MatA[a + 1, 0] := 1;
  Op[a] := '=';
  INC(Nrest);

  a := Nrest;

  /// Adicionando a Restrição da primeira perfunta da Elicitação Flexível ///
  With TIWUserSession(WebApplication.Data) do
    { IdAHeur: índice do critério da consA da pergunta da heurística
      IdBHeur: índice do critério da consB da pergunta da heurística }
    case TIWUserSession(WebApplication.Data).HeurQuest of
      0:
        Begin
          MatA[a + 1, TIWUserSession(WebApplication.Data).IdAHeur + 1] := -WDPHEUR;
          MatA[a + 1, TIWUserSession(WebApplication.Data).IdBHeur + 1] := 1;
          Op[a] := '<=';
          INC(Nrest);
        End;
      1:
        Begin
          MatA[a + 1, IdAHeur + 1] := WDPHEUR;
          MatA[a + 1, IdBHeur + 1] := -1;
          Op[a] := '<=';
          INC(Nrest);
        End;
    end;
  a := Nrest;

  // dirprob := 1;
  /// Problema de maximização ///
  // NumPOA := 0;

  { setando o tamanho do vetor de pesos na user session }
  setlength(TIWUserSession(WebApplication.Data).VetPesosMax, NumAlt);
  setlength(TIWUserSession(WebApplication.Data).VetPesosMin, NumAlt);
  for i := 0 to NumAlt - 1 do
  begin
    setlength(TIWUserSession(WebApplication.Data).VetPesosMax[i], NumCri);
    setlength(TIWUserSession(WebApplication.Data).VetPesosMin[i], NumCri);
  end;

  for K := 0 to NumAlt - 1 do
  begin
    b := a;

    /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
    /// escala e os coeficientes são as consequências da alternativa normalizada ///
    for i := 0 to NumCri - 1 do
    begin
      MatA[0, i + 1] := MatCons[K, Criorder[i]];
      FO[i] := TrocaVP(MatCons[K, Criorder[i]]);
    end;
    /// / Caso hajam var binárias no problema, seus coef na FO devem ser 0 ////
    for i := NumCri to NumDV - 1 do
    begin
      MatA[0, i + 1] := 0;
      FO[i] := '0';
    end;

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

    /// Resolvendo o PPL de maximização (MOACIR 02.06.2021)///
    dirprob := 1;
    SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int, var_bin,
      Rmod, ResultVector, Lp, MSSG);
    SFMax := MSSG;

    if SFMax = 0 then
    begin
      { salvando os valores dos pesos que maximizam o valor da alternativa }
      for i := 0 to NumCri - 1 do
      begin
        TIWUserSession(WebApplication.Data).VetPesosMax[K, i] := ResultVector
          [i + 1];
      end;
    end;

    { salvando o valor maximo da alternativa }
    TIWUserSession(WebApplication.Data).ValAltMax[K] := ResultVector[0];

    /// Resolvendo o PPL de minimização (MOACIR 02.06.2021)///
    dirprob := 0;
    SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int, var_bin,
      Rmod, ResultVector, Lp, MSSG);
    SFMin := MSSG;

    if SFMin = 0 then
    begin
      { salvando os valores dos pesos que maximizam o valor da alternativa alternativa }
      for i := 0 to NumCri - 1 do
      begin
        TIWUserSession(WebApplication.Data).VetPesosMin[K, i] := ResultVector
          [i + 1];
      end;
    end;

    { salvando o valor mínimo da alternativa }
    TIWUserSession(WebApplication.Data).ValAltMin[K] := ResultVector[0];

    Nrest := a;
    setlength(ResultVector, 0);
    setlength(ResultVector, NumDV + 1);
  end;

  classificar(TIWUserSession(WebApplication.Data).ValAltMin, TIWUserSession(WebApplication.Data).ValAltMax);
  /// Critério de parada /////
    TIWUserSession(WebApplication.Data).solucao_encontrada := true;
  for i := 0 to NumAlt - 1 do
    with TIWUserSession(WebApplication.Data) do
      if TIWUserSession(WebApplication.Data).class_min[i] <> TIWUserSession(WebApplication.Data).class_max[i] then
      begin
        auxvalAltMax := Round(ValAltMax[i]*100)/100;
        auxvalAltMin := Round(ValAltMin[i]*100)/100;

        if auxvalAltMax = auxvalAltMin then
        begin
        if (auxValAltMax = TIWUserSession(WebApplication.Data).perfis[class_max[i]-1]) or (auxValAltMin = TIWUserSession(WebApplication.Data).perfis[class_min[i]-1])  then
        continue
        else
        begin
        solucao_encontrada := false;
        INC(TIWUserSession(WebApplication.Data).Alt_nao_classificadas);
        end;
        end
        else
        begin
        solucao_encontrada := false;
        INC(TIWUserSession(WebApplication.Data).Alt_nao_classificadas);
        end;
      end;




  if TIWUserSession(WebApplication.Data).solucao_encontrada = true then
  begin
    /// PARA ANALISE DE SENSIBILIDADE (MOACIR 05.08.2021)
    with TIWUserSession(WebApplication.Data) do
    begin // LEMBRAR DE SUBSTITUIR O CÓDIGO ORIGINAL
      setlength(class_final, Length(class_max));
      for i := 0 to Length(class_final) - 1 do
        class_final[i] := class_max[i];
      setlength(ValAltMax_final, NumAlt);
      setlength(ValAltMin_final, NumAlt);
      for i := 0 to NumAlt - 1 do
      begin
        ValAltMax_final[i] := ValAltMax[i];
        ValAltMin_final[i] := ValAltMin[i];
      end;

    end;
    TIWUserSession(WebApplication.Data).sol := 12;
    //BtnshowresultsClick(self);
  end;

  if (TIWUserSession(WebApplication.Data).sol = 10) then
  begin
    //BtnshowresultsClick(self);
  end;
end;

procedure TfrmSortingResults.classificar(ValorAltMin, ValorAltMax: array of real);
var
  i, K: integer;
  auxValAltMax, auxValAltMin : real;
begin
  for K := 0 to Length(ValorAltMin) - 1 do
  begin
  auxValAltMax := Round(ValorAltMax[k]*100)/100;
  auxValAltMin := Round(ValorAltMin[k]*100)/100;
  TIWUserSession(WebApplication.Data).class_min[K] := 1;

    for i := 0 to Length(TIWUserSession(WebApplication.Data).perfis) - 1 do begin
      if auxValAltMin >= TIWUserSession(WebApplication.Data).perfis[i] then
      TIWUserSession(WebApplication.Data).class_min[K] := 1 + TIWUserSession(WebApplication.Data).class_min[K]
      else
      break;
    end;


     TIWUserSession(WebApplication.Data).class_max[K] := TIWUserSession(WebApplication.Data).class_min[K];
     for i := TIWUserSession(WebApplication.Data).class_min[K] - 1 to Length(TIWUserSession(WebApplication.Data).perfis) - 1 do begin
      if auxValAltMax > TIWUserSession(WebApplication.Data).perfis[i] then
      TIWUserSession(WebApplication.Data).class_max[K] := 1 + TIWUserSession(WebApplication.Data).class_max[K]
      else
      break;
    end

  end;
end;



procedure TfrmSortingResults.English1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\User guide FITradeoff web' + '.pdf', true);
end;

procedure TfrmSortingResults.Fullreport1Click(Sender: TObject);
var
  Summary, inpout, ans, intcrit: array of array of string;
  CombinedHTMLStream: TStringStream;
  i, j, sum, ip, ass, itc, a, b, C, d: integer;
  str: string;
begin
  /// /////////////////////////////////// ALEX ALVES DA SILVA /////////////////////////////////////////////////////////
  d:=5;//numero fixo de colunas para o summary
  /// ////////// SISTEMA DE EXPORTAÇÃO PARA O FORMATO HTML ///////////////////////////////
  TIWUserSession(WebApplication.Data).html := true;
  MenuItem1Click(self);
  TIWUserSession(WebApplication.Data).html := true;
  MenuItem2Click(self);
  CombinedHTMLStream := TStringStream.Create('', TEncoding.UTF8);
  setlength(Summary, grdExportSum.RowCount, d); // setando uma matriz booleana para encontrar linhas vazias do Summary (5 é op numero fixo de colunas da tabela
  setlength(inpout, grdexport.totalrows, TIWUserSession(WebApplication.Data)
      .NumCrit + 1); // setando uma matriz booleana para encontrar linhas vazias do Input output
  setlength(intcrit, grdintracriterio.totalrows, grdintracriterio.Columns.Count);




  /// Formando tabela binaria do summary para eliminar linhas e colunas vazias
  for i := 0 to grdExportSum.RowCount - 1 do
  begin
    for j := 0 to d - 1 do
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

  for j := 0 to d - 1 do
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
  a := 1;
  // Eleminando linhas excedentes do Summary/////
  for i := 0 to grdExportSum.RowCount - 1 do
  begin
    sum := 0;
    for j := 0 to d - 1 do
    begin
      sum := sum + StrToInt(Summary[i, j]); // somando os componentes de linha da matriz booleana, caso a soma seja 0, a linha sera apagada
    end;
    if sum <> 0 then
    begin
      INC(a); // Excluir a linha do grid
    end;

  end;
  grdExportSum.RowCount := a;


  a := 0;
  // Eliminando linhas excedentes da tabela intra criterio
  for i := 0 to grdintracriterio.totalrows - 1 do
  begin
    for J := 0 to grdintracriterio.Columns.Count - 1 do
    begin
      if grdintracriterio.Cells[J, i] <> '' then
      begin
        intcrit[i, J] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
      end
      else
      begin
        intcrit[i, J] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
      end;
    end;

  end;
  // Eliminando linhas vazias do intra-criterio
  for i := 0 to grdintracriterio.RowCount - 1 do
  begin
    itc := 0;
    for J := 0 to grdintracriterio.Columns.Count - 1 do
    begin
      itc := itc + StrToint(intcrit[i, J]); // somando os componentes de linha da matriz booleana, caso a soma seja 0, a linha sera apagada
    end;
    if itc <> 0 then
    begin
      INC(a); // Excluir a linha do grid
    end;

  end;
  grdintracriterio.totalRows := a;




  /// Formando tabela binaria do Imput-output para eliminar linhas e colunas vazias
  b := 0;
  /// E///
  for i := 0 to grdexport.totalrows - 1 do
  begin
    for j := 0 to TIWUserSession(WebApplication.Data).NumCrit + 1 - 1 do
    begin
      if grdexport.Cells[j, i] <> '' then
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
  for j := 0 to TIWUserSession(WebApplication.Data).NumCrit + 1 - 1 do
  begin
    ip := 0;
    for i := 0 to grdexport.totalrows - 1 do
    begin
      ip := ip + StrToInt(inpout[i, j]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a linha sera apagada

    end;
    if ip <> 0 then
    begin
      INC(b);
    end;
    if ip = 0 then
    begin
      grdexport.Columns.Delete(b); // Excluir a coluna do grid
    end;

  end;

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
    CombinedHTMLStream.WriteString(
      '<img src="https://img.hotimg.com/b1d1d797-0ebb-4e3b-9c4f-828420d526a5.jpeg" style="position:absolute;top:20;left:0;width:210px;height:100px;">');
    // Adicionar imagem no canto superior direito e aumentar a largura
    CombinedHTMLStream.WriteString(
      '<img src="https://www.cdsid.org.br/wp-content/uploads/2020/02/CDSID.jpg" style="position:absolute;top:20;right:0;width:205px;height:95px;">');

    // Adicionar div com a palavra "RELATÓRIOS" no meio
    CombinedHTMLStream.WriteString(
      '<div style="position:absolute;top:50;left:50%;transform:translateX(-50%);text-align:center;width:100%;font-size:40px;font-weight:bold;">REPORTS</div>');

    // Título para a primeira grid(grdexport1)
    CombinedHTMLStream.WriteString(
      '<h2 style="margin-top: 120px;">Summary of questions answered</h2>');

    // Tabela para a grdexport1
    CombinedHTMLStream.WriteString(
      '<table border="1" style="margin-top: 20px;">');
    for i := 0 to grdExportSum.RowCount - 1 do
    begin
      CombinedHTMLStream.WriteString('<tr>');
      for j := 0 to d - 1 do
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
    for i := 0 to grdintracriterio.totalRows - 1 do
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

    // FORMANDO GRIND 3
    // Título para a terceira grid(grdexport)
    CombinedHTMLStream.WriteString(
      '<h2 style="margin-top: 20px;">Input Output</h2>');
    // Tabela para a segunda grid(grdexport)
    CombinedHTMLStream.WriteString(
      '<table border="1" style="margin-top: 10px;">');
    for i := 0 to grdexport.totalrows - 1 do
    begin
      CombinedHTMLStream.WriteString('<tr>');
      for j := 0 to TIWUserSession(WebApplication.Data).NumCrit + 1 - 1 do
      begin
        CombinedHTMLStream.WriteString('<td>');
        CombinedHTMLStream.WriteString(grdexport.Cells[j, i]);
        CombinedHTMLStream.WriteString('</td>');
      end;
      CombinedHTMLStream.WriteString('</tr>');
    end;
    CombinedHTMLStream.WriteString('</table>');

    // VERIFICAR SE A ANALISE DE SENCIVILIDADE FOI FEITA
    if TIWUserSession(WebApplication.Data).Sensitivity = true then
    begin
      { if grdexport.RowCount < 100 + TIWUserSession(WebApplication.Data)
        .num_cat then
        begin
        grdexport.TotalRows := 100 + TIWUserSession(WebApplication.Data).num_cat;
        end; }
      TIWUserSession(WebApplication.Data).html := true;
      Preencher_AS;

      lnkSensitivityClassClick(self);
      /// SEPARANDO AS INFORMAÇÕES DA ANALISE DE SENSIBILIDADE QUE ESTA ANEXADA AO GRDEXPORT///

    {  grdsensitivityanalysis.RowCount := IWGridpercent.ColumnCount + 12; // Setando uma quantidade padrão de linhas, cuja a unica nariavel que varia é referente as Classes IWGridpercent
      if (TIWUserSession(WebApplication.Data).NumCrit + 1)
        > IWGridpercent.RowCount then // Verificando qual dentre os três grids da Analize de Sencibilidade é a maior para definir o numero de colunas
      begin
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 3 do // Estou usando o -3 pois no tiwadvwebbgrid esta adicionando mais colunas, alem das 3 que são padrão dele
        begin
          grdsensitivityanalysis.Columns.Add;
        end;

      end
      else
      begin
        for i := 0 to IWGridpercent.RowCount - 3 do // Estou usando o -3 pois no tiwadvwebbgrid esta adicionando mais colunas, alem das 3 que são padrão dele

        begin
          grdsensitivityanalysis.Columns.Add;
        end;

      end;
      for i := 0 to grdsensitivityanalysis.RowCount - 1 do
      begin
        for j := 0 to grdsensitivityanalysis.Columns.Count - 1 do
        begin
          grdsensitivityanalysis.Cells[j, i] := grdexport.Cells
            [j + TIWUserSession(WebApplication.Data).NumCrit + 3, i]
        end;

      end;  }

      setlength(ans, grdsensitivityanalysis.RowCount,
        grdsensitivityanalysis.Columns.Count);
      /// ELIMINANDO COLUNAS EXEDENTES DA ANALISE DE SENCIBILIDADDE///
      for i := 0 to grdsensitivityanalysis.RowCount - 1 do
      begin
        for j := 0 to grdsensitivityanalysis.Columns.Count - 1 do
        begin
          if grdsensitivityanalysis.Cells[j, i] <> '' then
          begin
            ans[i, j] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
          end
          else
          begin
            ans[i, j] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
          end;
        end;
      end;
      a := grdsensitivityanalysis.Columns.Count;
      for j := 0 to a - 1 do
      begin
        ass := 0;
        for i := 0 to grdsensitivityanalysis.RowCount - 1 do
        begin
          ass := ass + StrToInt(ans[i, j]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a coluna sera apagada

        end;
        if ass <> 0 then
        begin
          INC(C);
        end
        else
        begin
          grdsensitivityanalysis.Columns.Delete(C); // Excluir a coluna do grid
        end;

      end;

      // Título para a terceira grid(AdvWgrdASR)
      CombinedHTMLStream.WriteString(
        '<h2 style="margin-top: 20px;">Sensitivity Analysis</h2>');
      // Tabela para a terceira grid(AdvWgrdASR)
      CombinedHTMLStream.WriteString(
        '<table border="1" style="margin-top: 10px;">');
      for i := 0 to grdsensitivityanalysis.totalRows - 1 do
      begin
        CombinedHTMLStream.WriteString('<tr>');
        for j := 0 to grdsensitivityanalysis.Columns.Count - 1 do
        begin
          CombinedHTMLStream.WriteString('<td>');
          CombinedHTMLStream.WriteString(grdsensitivityanalysis.Cells[j, i]);
          CombinedHTMLStream.WriteString('</td>');
        end;
        CombinedHTMLStream.WriteString('</tr>');
      end;
      CombinedHTMLStream.WriteString('</table>');
    end;

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

procedure TfrmSortingResults.Insertanewproblem1Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).heuristica:= false;
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
      SalvarResultBD;
    end;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  SalvarResultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).estagio := 0;
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 2;
  SalvarResultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 13;
  SalvarResultBD;

  // case referente à registro criado na planilha intracrit
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 29;
  SalvarResultBD;

  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;

  // auxiliar que armazena a sequencia de respostas
  TIWUserSession(WebApplication.Data).Ans_seq := ' ';
end;


procedure TfrmSortingResults.iwbtnRefreshDHClick(Sender: TObject);
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
  {iwbtnCloseDH2.Cursor := crWait;}
  iwbtnSaveImageDH2.Cursor := crWait;
  //btnLegendDH2.Cursor := crWait;}
  RHasse_C1.Cursor := crWait;
end;

procedure TfrmSortingResults.iwbtnSaveImageDH2Click(Sender: TObject);
begin
TIWFadeImageC1.Picture.SaveToFile('C:\inetpub\fitradeoff\Images\' +
      'Diagrama de Hasse' + '.jpg');

  WebApplication.SendFile
    ('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' + '.jpg', true);

  DeleteFile(Pchar('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' +
        '.jpg'));
end;

procedure TfrmSortingResults.IWButton10Click(Sender: TObject);
begin
WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
  WebApplication.Terminate();
end;

procedure TfrmSortingResults.IWButton13Click(Sender: TObject);
begin
  //IWLabel63.Visible := false;
  //cmbxgroupindex.Visible := false;
  IWRgnanalisedesensibilidade.Visible := false;
  if TIWUserSession(WebApplication.Data).Problematica = 3 then
    rgnresclassificacao.Show
  else
    //rgnresclassificacao.Show;
  btnstartAS.Enabled := false;

  TIWUserSession(WebApplication.Data).Auxall := 0;
end;

procedure TfrmSortingResults.IWButton16Click(Sender: TObject);
var
id, analyst : string;
begin
// Ewerton
if checkanalista.Checked = false then
begin
WebApplication.ShowMessage('Please let us know if you want to be an analyst');
exit;
end;

if memodescanal.Text = '' then
begin
WebApplication.ShowMessage('Please, describe the reason for your registration as an analyst');
exit;
end;

with UserSession.ZQuery1 do
begin
SQL.Text :=
'SELECT Id, analyst FROM user WHERE email="' +
(TIWUserSession(WebApplication.Data).email_) + '";';
ExecSQL;
open;
id := FieldByName('Id').AsString;
analyst := FieldByName('analyst').AsString;
close;

if analyst <> '2' then
begin
SQL.Text := 'UPDATE user SET analyst = ' + inttostr(2) +
            ', descanalyst = ''' + (memodescanal.Text) + ''' WHERE id = ' + (Id) + ';';
ExecSQL;
end;
end;

with TIWUserSession(WebApplication.Data) do
  begin
  if Problematica = 0 then
  begin
    lblcriterios.caption := 'Number of Criteria: ' + IntToStr(Numcrit)
      + ' criteria.';
    lblPesorecom.caption := 'Number of Alternatives: ' + IntToStr
      (length(VtrAlternatives)) + ' alternatives.';
    labnovodesvio.Visible := true;
    editalternativas.Visible := true;
    butcomp.Visible := true;
    btnrecomenda.Visible := true;
  end;
  if (Problematica = 1) then
  begin
  lblcriterios.caption := 'Number of Criteria: ' + IntToStr(Numcrit)
      + ' criteria.';
   lblPesorecom.caption := 'Number of Alternatives: 2 alternatives.';
    labnovodesvio.Visible := false;
    editalternativas.Visible := false;
    butcomp.Visible := false;
    butranking.Visible := true;
  end;
  if Problematica = 3 then
  begin
  lblcriterios.caption := 'Number of Criteria: ' + IntToStr(Numcrit)
      + ' criteria.';
   lblPesorecom.caption := 'Number of Alternatives: 2 alternatives.';
    labnovodesvio.Visible := false;
    editalternativas.Visible := false;
    butcomp.Visible := false;
    butranking.Visible := true;
  end;

IWRgnHolistica.visible := false;

regionanalyst.visible := false;
rgnrulevizualization.visible := true;
rgnrulevizualization.Align := Talign(5);
end;
end;

Procedure TfrmSortingResults.CriarElementosAS;
var
NumAlt, Numcrit : integer;
NomeAlt, Nomecrit : string;
i, j : integer;
begin
//rgnsav.Align := AlClient;

with TIWUserSession(WebApplication.Data) do
begin
  grdvariation.RowCount := NumCrit;
  grdprofiles.RowCount := length(perfis);
  grdprofiles.Columns[0].enabled := true;
  grdprofiles.Columns[0].ColumnType := ctCheckbox;
  Crias := False;
  AsProfiles := False;

  for i := 0 to Numcrit - 1 do
  begin
   grdvariation.Cells[1,i] := Critsiglas[vtrordem[i]];
   if (Typeofcrit[vtrordem[i]] = 0) or (Typeofcrit[vtrordem[i]] = 2) or (Typeofcrit[vtrordem[i]] = 4) then
    grdvariation.Cells[3,i] := 'Minimization'
   else
    grdvariation.Cells[3,i] := 'Maximization';
   if (Typeofcrit[vtrordem[i]] = 2) or (Typeofcrit[vtrordem[i]] = 3) then
    grdvariation.Cells[2,i] := 'Constructed'
   else
    grdvariation.Cells[2,i] := 'Natural'
  end;

  for i := 0 to length(perfis) - 1 do
  begin
    grdprofiles.Cells[1,i] := 'Profile ' + inttostr(i+1);
    if perfis[i] = perfis_inseridos[i] then
    grdprofiles.Cells[2,i] := 'Interval Scale'
    else
    grdprofiles.Cells[2,i] := 'Ratio Scale';

    grdprofiles.Cells[3,i] := FormatFloat('0.00' ,perfis[i]);
  end;



  grdvariation.Columns[0].ColumnType := ctCheckbox;
  grdvariation.Columns[0].enabled := true;
  SetLength(edtmaxAS, grdvariation.RowCount);
  SetLength(edtminAS, grdvariation.RowCount);
  SetLength(cmbbxmaxAS, grdvariation.RowCount);
  SetLength(cmbbxminAS, grdvariation.RowCount);
  SetLength(lblmax, grdvariation.RowCount);
  SetLength(lblmin, grdvariation.RowCount);
  SetLength(lblvariationmax, grdvariation.RowCount);
  SetLength(lblvariationmin, grdvariation.RowCount);
  SetLength(edtpercentprofilesmax, length(perfis));
  SetLength(edtpercentprofilesmin, length(perfis));
  SetLength(lblmaxprofiles, length(perfis));
  SetLength(lblminprofiles, length(perfis));
  SetLength(lblvariationmaxprofiles, length(perfis));
  SetLength(lblvariationminprofiles, length(perfis));

  for I := 0 to grdprofiles.RowCount - 1 do
  begin
    lblminprofiles[i] := TiwLabel.Create(Self);
    lblminprofiles[i].Parent := iwregion3;
    lblminprofiles[i].Left := 680+15;
    lblminprofiles[i].Top := 26 + i*23;
    lblminprofiles[i].Font.FontName := 'verdana';
    lblminprofiles[i].Caption := '-';
    //lblmin[i].Name := 'lblmin' + inttostr(i);
    lblminprofiles[i].Visible := False;
    lblminprofiles[i].ZIndex := 10000;

    lblmaxprofiles[i] := TiwLabel.Create(Self);
    lblmaxprofiles[i].Parent := iwregion3;
    lblmaxprofiles[i].Left := 880+15;
    lblmaxprofiles[i].Top := 26 + i*23;
    lblmaxprofiles[i].Font.FontName := 'verdana';
    lblmaxprofiles[i].Caption := '+';
    //lblmax[i].Name := 'lblmax' + inttostr(i);
    lblmaxprofiles[i].Visible := False;
    lblmaxprofiles[i].ZIndex := 10000;

    edtpercentprofilesmin[i] := TiwEdit.Create(Self);
    edtpercentprofilesmin[i].Parent := iwregion3;
    edtpercentprofilesmin[i].Left := 680+31;
    edtpercentprofilesmin[i].Top := 26 + i*23;
    edtpercentprofilesmin[i].Font.FontName := 'verdana';
    edtpercentprofilesmin[i].Height := 21;
    edtpercentprofilesmin[i].Width := 56;
    edtpercentprofilesmin[i].Caption := '';
    //edtpercentprofilesmin[i].Name := 'edtminAS' + inttostr(i);
    edtpercentprofilesmin[i].Visible := False;
    edtpercentprofilesmin[i].ZIndex := 10000;


    edtpercentprofilesmax[i] := TiwEdit.Create(Self);
    edtpercentprofilesmax[i].Parent := iwregion3;
    edtpercentprofilesmax[i].Left := 880+31;
    edtpercentprofilesmax[i].Top := 26 + i*23;
    edtpercentprofilesmax[i].Font.FontName := 'verdana';
    edtpercentprofilesmax[i].Height := 21;
    edtpercentprofilesmax[i].Width := 56;
    edtpercentprofilesmax[i].Caption := '';
    //edtpercentprofilesmax[i].Name := 'edtmaxAS' + inttostr(i);
    edtpercentprofilesmax[i].Visible := False;
    edtpercentprofilesmax[i].ZIndex := 10000;

    lblvariationminprofiles[i] := TiwLabel.Create(Self);
    lblvariationminprofiles[i].Parent := iwregion3;
    lblvariationminprofiles[i].Left := 680+92;
    lblvariationminprofiles[i].Top := 26 + i*23;
    lblvariationminprofiles[i].Font.FontName := 'verdana';
    lblvariationminprofiles[i].Caption := '%';
    //lblvariationminprofiles[i].Name := 'lblvariationmin' + inttostr(i);
    lblvariationminprofiles[i].Visible := False;
    lblvariationminprofiles[i].ZIndex := 10000;

    lblvariationmaxprofiles[i] := TiwLabel.Create(Self);
    lblvariationmaxprofiles[i].Parent := iwregion3;
    lblvariationmaxprofiles[i].Left := 880+92;
    lblvariationmaxprofiles[i].Top := 26 + i*23;
    lblvariationmaxprofiles[i].Font.FontName := 'verdana';
    lblvariationmaxprofiles[i].Caption := '%';
    lblvariationmaxprofiles[i].Visible := False;
    lblvariationmaxprofiles[i].ZIndex := 10000;
  end;
  for i := 0 to grdvariation.RowCount - 1 do
  begin
    lblmin[i] := TiwLabel.Create(Self);
    lblmin[i].Parent := iwregion64;
    lblmin[i].Left := 680+15;
    lblmin[i].Top := 26 + i*23;
    lblmin[i].Font.FontName := 'verdana';
    lblmin[i].Caption := '-';
    //lblmin[i].Name := 'lblmin' + inttostr(i);
    lblmin[i].Visible := False;
    lblmin[i].ZIndex := 10000;

    lblmax[i] := TiwLabel.Create(Self);
    lblmax[i].Parent := iwregion64;
    lblmax[i].Left := 880+15;
    lblmax[i].Top := 26 + i*23;
    lblmax[i].Font.FontName := 'verdana';
    lblmax[i].Caption := '+';
    //lblmax[i].Name := 'lblmax' + inttostr(i);
    lblmax[i].Visible := False;
    lblmax[i].ZIndex := 10000;

    if grdvariation.Cells[2,i] = 'Natural' then
    begin
      edtminAS[i] := TiwEdit.Create(Self);
      edtminAS[i].Parent := iwregion64;
      edtminAS[i].Left := 680+31;
      edtminAS[i].Top := 26 + i*23;
      edtminAS[i].Font.FontName := 'verdana';
      edtminAS[i].Height := 21;
      edtminAS[i].Width := 56;
      edtminAS[i].Caption := '';
      //edtminAS[i].Name := 'edtminAS' + inttostr(i);
      edtminAS[i].Visible := False;
      edtminAS[i].ZIndex := 10000;

      edtmaxAS[i] := TiwEdit.Create(Self);
      edtmaxAS[i].Parent := iwregion64;
      edtmaxAS[i].Left := 880+31;
      edtmaxAS[i].Top := 26 + i*23;
      edtmaxAS[i].Font.FontName := 'verdana';
      edtmaxAS[i].Height := 21;
      edtmaxAS[i].Width := 56;
      edtmaxAS[i].Caption := '';
      //edtmaxAS[i].Name := 'edtmaxAS' + inttostr(i);
      edtmaxAS[i].Visible := False;
      edtmaxAS[i].ZIndex := 10000;

      lblvariationmin[i] := TiwLabel.Create(Self);
      lblvariationmin[i].Parent := iwregion64;
      lblvariationmin[i].Left := 680+92;
      lblvariationmin[i].Top := 26 + i*23;
      lblvariationmin[i].Font.FontName := 'verdana';
      lblvariationmin[i].Caption := '%';
      //lblvariationmin[i].Name := 'lblvariationmin' + inttostr(i);
      lblvariationmin[i].Visible := False;
      lblvariationmin[i].ZIndex := 10000;

      lblvariationmax[i] := TiwLabel.Create(Self);
      lblvariationmax[i].Parent := iwregion64;
      lblvariationmax[i].Left := 880+92;
      lblvariationmax[i].Top := 26 + i*23;
      lblvariationmax[i].Font.FontName := 'verdana';
      lblvariationmax[i].Caption := '%';
      //lblvariationmax[i].Name := 'lblvariationmax' + inttostr(i);
      lblvariationmax[i].Visible := False;
      lblvariationmax[i].ZIndex := 10000;
    end;
    if grdvariation.Cells[2,i] = 'Constructed' then
    begin
      cmbbxminAS[i] := tiwComboBox.Create(Self);
      cmbbxminAS[i].Parent := iwregion64;
      cmbbxminAS[i].Left := 680+31;
      cmbbxminAS[i].Top := 26 + i*23;
      cmbbxminAS[i].Font.FontName := 'verdana';
      cmbbxminAS[i].Height := 21;
      cmbbxminAS[i].Width := 56;
      cmbbxminAS[i].Caption := '';
      //cmbbxminAS[i].Name := 'cmbbxminAS' + inttostr(i);
      cmbbxminAS[i].Visible := False;
      cmbbxminAS[i].ZIndex := 10000;

      cmbbxmaxAS[i] := tiwComboBox.Create(Self);
      cmbbxmaxAS[i].Parent := iwregion64;
      cmbbxmaxAS[i].Left := 880+31;
      cmbbxmaxAS[i].Top := 26 + i*23;
      cmbbxmaxAS[i].Font.FontName := 'verdana';
      cmbbxmaxAS[i].Height := 21;
      cmbbxmaxAS[i].Width := 56;
      cmbbxmaxAS[i].Caption := '';
      //cmbbxmaxAS[i].Name := 'cmbbxmaxAS' + inttostr(i);
      cmbbxmaxAS[i].visible := False;
      cmbbxmaxAS[i].ZIndex := 10000;

      j := 0;
      while j <= TIWUserSession(WebApplication.Data).Max[vtrordem[i]] do
      begin
        cmbbxmaxAS[i].Items.Add(floattostr(j));
        cmbbxminAS[i].Items.Add(floattostr(j));
        j := j + 1;
      end;

      lblvariationmin[i] := TiwLabel.Create(Self);
      lblvariationmin[i].Parent := iwregion64;
      lblvariationmin[i].Left := 680+92;
      lblvariationmin[i].Top := 26 + i*23;
      lblvariationmin[i].Font.FontName := 'verdana';
      lblvariationmin[i].Caption := 'Levels';
      //lblvariationmin[i].Name := 'lblvariationmin' + inttostr(i);
      lblvariationmin[i].Visible := False;
      lblvariationmin[i].ZIndex := 10000;

      lblvariationmax[i] := TiwLabel.Create(Self);
      lblvariationmax[i].Parent := iwregion64;
      lblvariationmax[i].Left := 880+92;
      lblvariationmax[i].Top := 26 + i*23;
      lblvariationmax[i].Font.FontName := 'verdana';
      lblvariationmax[i].Caption := 'Levels';
      //lblvariationmax[i].Name := 'lblvariationmax' + inttostr(i);
      lblvariationmax[i].visible := False;
      lblvariationmax[i].ZIndex := 10000;
    end;

 end;
end;

end;

procedure TfrmSortingResults.IWButton1Click(Sender: TObject);
begin
  chrtpesoslim.TeeCreateBitmap(clWhite, rect(0, 0, chrtpesoslim.Width,
      chrtpesoslim.Height)).SaveToFile(
    'C:\Users\CDSID\OneDrive\Área de Trabalho\Pedro - CDSID\ATIVIDADES\FITradeOFF\Classificação\CLASS - 16-12-2022\Scaling Constants Range of Values' + '.jpg');
  WebApplication.SendFile(
    'C:\Users\CDSID\OneDrive\Área de Trabalho\Pedro - CDSID\ATIVIDADES\FITradeOFF\Classificação\CLASS - 16-12-2022\Scaling Constants Range of Values' + '.jpg',
    true);
  DeleteFile('C:\Users\CDSID\OneDrive\Área de Trabalho\Pedro - CDSID\ATIVIDADES\FITradeOFF\Classificação\CLASS - 16-12-2022\Scaling Constants Range of Values' +
      '.jpg');
end;

procedure TfrmSortingResults.IWButton2Click(Sender: TObject);
begin
  with TIWUserSession(WebApplication.Data) do
  begin

    if (Problematica = 3) then
      rgnresclassificacao.Visible := true;
  end;
  IWRgnresultadografico.Visible := false;
  { With TIWUserSession(WebApplication.Data) do
    if (Problematica = 0) and (NDA = 1) then
    crtEhraph.RemoveSeries(1); }

  DeleteFile('C:\Users\CDSID\OneDrive\Área de Trabalho\Pedro - CDSID\ATIVIDADES\FITradeOFF\Classificação\CLASS - 16-12-2022\Scaling Constants Range of Values' +
      '.jpg');
  { DeleteFile(
    'C:\inetpub\fitradeoff\Images\Optimal Alternative Scaling Constants Value'
    + '.jpg'); }
  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarResultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarResultBD;
end;



procedure TfrmSortingResults.IWButton4Click(Sender: TObject);
begin
WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
  WebApplication.Terminate();
end;

procedure TfrmSortingResults.IWButtonexpotClick(Sender: TObject);
begin
  SensivityAnalysis1.Visible := True;
  SensivityAnalysis1Click(Sender);
end;



procedure TfrmSortingResults.IWLink10Click(Sender: TObject);
begin
rgngant1.Visible := true;
end;

procedure TfrmSortingResults.IWLink11Click(Sender: TObject);
var
  i: integer;
  Series2: TBarSeries;
  error: TErrorSeries;
  point: TPointSeries;
begin
  lstbxcritg.Items.Clear;
  IWRgnresultadografico.Visible := True;
  rgnresclassificacao.Visible := false;
  calmaxminweights;
  with TIWUserSession(WebApplication.Data) do
  begin
    chrtpesoslim.series[0].Clear;
    chrtpesoslim.series[1].Clear;
    for i := 0 to Numcrit - 1 do
    begin
      chrtpesoslim.BottomAxis.Items.Add(i, CritSiglas[TIWUserSession(WebApplication.Data).vtrordem[i]]);
      chrtpesoslim.series[0].AddXY(i, MaxPeso[i]);
      chrtpesoslim.series[1].AddXY(i, MinPeso[i]);
      lstbxcritg.Items.Add
        (CritSiglas[vtrordem[i]] + ': ' + NomeCrit[vtrordem[i]]);
    end;

    imgweightslim.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (chrtpesoslim.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgweightslim.Width,
          imgweightslim.Height)));
  end;

end;



procedure TfrmSortingResults.IWLink12Click(Sender: TObject);
begin
IWRegion14.Visible := false;
end;

procedure TfrmSortingResults.IWLink13Click(Sender: TObject);
begin
rgngant1.Visible := false;
end;

procedure TfrmSortingResults.IWLink14Click(Sender: TObject);
begin
IWRegion15.Visible := true;
end;

procedure TfrmSortingResults.IWLink15Click(Sender: TObject);
begin
IWRegion14.Visible := true;
end;

procedure TfrmSortingResults.IWLink16Click(Sender: TObject);
begin
IWRegion15.Visible := false;
end;

procedure TfrmSortingResults.IWLink1Click(Sender: TObject);
begin
iwimagegantt1.Visible := true;
end;

procedure TfrmSortingResults.IWLink20Click(Sender: TObject);
begin
lnkref.Visible := true;
end;

procedure TfrmSortingResults.IWLink2Click(Sender: TObject);
begin
rgngant1.Visible := true;
end;

procedure TfrmSortingResults.IWLink8Click(Sender: TObject);
begin
IWRegion8.Visible := false;
end;

procedure TfrmSortingResults.IWLink9Click(Sender: TObject);
begin
IWRegion8.Visible := true;
end;

procedure TfrmSortingResults.IWRgnHolisticaCreate(Sender: TObject);
begin
//Tela do analista
With TIWUserSession(WebApplication.Data) do
begin
if (heuristica = true) then
begin
btnshowrecommedation2.Visible:= true;
IWImage49.Visible:= true;
end;
end;
//Fim Tela do analista
end;

procedure TfrmSortingResults.IWTimer1Timer(Sender: TObject);
var
  i, K: integer;
begin

  if TIWUserSession(WebApplication.Data).Start = true then
  begin
    case TIWUserSession(WebApplication.Data).Problematica of
      3:
        begin
          // ** Exibindo tabela com as classes **//
          IWRegion24.Height := 140;
          IWRegion26.Visible := true;
          SetLength(TIWUserSession(WebApplication.Data).PerfisAS, length(TIWUserSession(WebApplication.Data).Perfis));
          for i := 0 to length(TIWUserSession(WebApplication.Data).perfis) - 1 do
          TIWUserSession(WebApplication.Data).perfisAS[i] := TIWUserSession(WebApplication.Data).perfis[i];
          // ** Verifica-se quais parâmetros devem ser variados **//
          if TIWUserSession(WebApplication.Data).ASProfiles = true then
            ASPerfis;
          if TIWUserSession(WebApplication.Data).CRIAS = true then
            ASClass;

          Preencher_grid_classes(GrdClassAS);
          // ** Alterando os textos da tela de AS **//
          IWText21.Lines[0] :=
            '% Original category: percentual of simulation instances in which the alternative remains in its original category.';
          IWText22.Lines[0] :=
            '% Change: percentual of simulation instances in which the alternatives category changes';
          IWLabel87.Caption :=
            'Percentage of possible categories:';
          IWLabel85.Caption := 'Deviation from the original category:';
        end;
    end;

  end;

  if TIWUserSession(WebApplication.Data).Finish = true then
  begin
    INC(TIWUserSession(WebApplication.Data).auxas);

    // para a ordenação e Classificação
    IWGrid1.RowCount := 1;
    IWGrid1.ColumnCount := 3;
    IWGrid1.Cell[0, 0].Text := 'Item';
    IWGrid1.Cell[0, 2].Text := 'Upper Bound';
    IWGrid1.Cell[0, 1].Text := 'Lower Bound';
    IWGrid1.Cell[0, 0].Font.Style := [fsbold];
    IWGrid1.Cell[0, 2].Font.Style := [fsbold];
    IWGrid1.Cell[0, 1].Font.Style := [fsbold];

    K := 1;
    with TIWUserSession(WebApplication.Data) do
    begin
      IWTimer1.Enabled := false;
      //btnasok.Enabled := true;
      btnstartAS.Enabled := true;
      //IWButton17.Enabled := true;
      { for i := 0 to Rlevels - 1 do
        cmbxgroupindex.Items.Add('Group ' + IntToStr(i + 1));
        // cmbxgroupindex.ItemIndex := 0; }
        IWRegion24.Visible := true;
        IWLabel88.Visible := true;
        if Crias = True then
        begin
        for i := 0 to NumCrit - 1 do
          if CriSel[i] then
          begin
            INC(K);
            // para ordenação
            IWGrid1.RowCount := K;
            IWGrid1.Cell[K - 1, 0].Text := NomeCrit[vtrordem[i]];
            if (TypeofCrit[vtrordem[i]] = 2) or (TypeofCrit[vtrordem[i]] = 3) then
            begin
             IWGrid1.Cell[k - 1, 2].Text := '+' + FloatToStr(pmax[i]) + ' levels';
             IWGrid1.Cell[k - 1, 1].Text := '-' + FloatToStr(pmin[i]) + ' levels';
            end
            else
            begin
            IWGrid1.Cell[k - 1, 2].Text := '+' + FloatToStr(pmax[i]) + '%';
            IWGrid1.Cell[k - 1, 1].Text := '-' + FloatToStr(pmin[i]) + '%';
            end;
          end; // CriSel
          SensivityAnalysis1.Visible := True;
        end;
        if ASProfiles = True then
        begin
          for i := 0 to Length(perfis) - 1 do
          begin
            if (Pmax_perfil[i] <> 0) and (Pmin_perfil[i] <> 0) then
            begin
              INC(K);
              // para ordenação
              IWGrid1.RowCount := K;
              IWGrid1.Cell[K - 1, 0].Text := 'Profile ' + inttostr(i+1);
              IWGrid1.Cell[K - 1, 2].Text := '+' + FloatToStr(Pmax_perfil[i]) + '%';
              IWGrid1.Cell[K - 1, 1].Text := '-' + FloatToStr(Pmin_perfil[i]) + '%';
            end;
          end;
        end;
      Sensitivity := true;
    end; // with
    IWRgnAS.Visible := false;

    if TIWUserSession(WebApplication.Data).Problematica = 0 then
    // caso seja um problema de escolha
    begin
      // salvar banco de dados na tabela sensitivity
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 9;
      SalvarResultBD;
    end;

    if TIWUserSession(WebApplication.Data).Problematica = 1 then
    // caso seja um problema de escolha
    begin
      // salvar banco de dados na tabela sensitivity_ord
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 10;
      SalvarResultBD;

      // salvar banco de dados na tabela sensitivity_ord_change
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 11;
      SalvarResultBD;
    end;
    rgnsav.Visible := false;
    IWRgnAS.Visible := false;
    if (TIWUserSession(WebApplication.Data).Problematica = 1) or
    (TIWUserSession(WebApplication.Data).Problematica = 3) then
    IWRgnanalisedesensibilidade.Visible := true;
    //cmbbxAS.Items.Clear;
    TIWUserSession(WebApplication.Data).Auxall := -1;
    //IWLblallcrit.Caption := 'Select all the criteria';
    //btnasok.Enabled := true;

  end;
end;

procedure TfrmSortingResults.lblrec1Click(Sender: TObject);
begin
WebApplication.TerminateAndRedirect('https://onlinelibrary.wiley.com/doi/full/10.1111/itor.12958');
end;

procedure TfrmSortingResults.lnkBackASClick(Sender: TObject);
begin
rgnsav.Hide;
rgnresclassificacao.Show;
DestruirElementosAS;
btnSaveAS.Enabled := true;
btnbackas.Enabled := False;
btnstartas.Enabled := False;
grdvariation.Enabled := true;
btnSaveASprofiles.Enabled := true;
btnbackasprofiles.Enabled := False;
btnstartasprofiles.Enabled := False;
grdprofiles.Enabled := true;
end;

procedure TfrmSortingResults.lnkbackrecomClick(Sender: TObject);
begin
rgnrulevizualization.visible := false;
IWRgnHolistica.visible := true;
IWRegion1.visible := true;
TbCtrlvisualizationsHolistica.visible := true;
IWLabel53.visible := true;
IWLabel115.visible := true;
IWImage52.top := 850;
IWImage51.top := 850;
end;

procedure TfrmSortingResults.lnkbackviewrankingC1Click(Sender: TObject);
begin
rgnviewrankingC1.Visible := false;
rgnresclassificacao.Visible := true;
end;

procedure TfrmSortingResults.lnkbarClick(Sender: TObject);
begin
IWImageGantt1.Visible := false;
end;

procedure TfrmSortingResults.lnkbubbleClick(Sender: TObject);
begin
rgngant1.Visible := false;
end;

procedure TfrmSortingResults.lnkCategoriesClick(Sender: TObject);
begin
rgncategories.visible := True;
iwregion25.visible := False;
end;

procedure TfrmSortingResults.lnkcloseaboutClick(Sender: TObject);
begin
  rgnAbout.Hide;
end;

procedure TfrmSortingResults.lnkdominancematrixC1Click(Sender: TObject);
var
  i, J, k, y, l, x, select, NumAltC1: integer;
  NumAlternativas: array of integer;
  SelectedIndex1: array of Integer;
  SelectedItem: array of String;
  nomelinha, nomecoluna, nomelinha1, nomecoluna1, nomelinha2, nomecoluna2: string;
  linha, coluna: integer;
begin
 with TIWUserSession(WebApplication.Data) do
  begin
  NumAltC1 := TIWUserSession(WebApplication.Data).countC1;
     // Limpa o grid antes de adicionar novas linhas
    grdrelationsHord.RowCount := 1;
    grdrelationsHord.ColumnCount := NumAltC1 + 1;

  select := 0;

  if  TIWUserSession(WebApplication.Data).updateC1 = false then
  begin
   checklistboxdominanceC1.Items.Clear;
  // Iterar sobre os itens do CheckListBox e inicialmente selecioná-los
  for i := 0 to Length(TIWUserSession(WebApplication.Data).MatrizGrupo) - 1 do
  begin
    checklistboxdominanceC1.Items.Add('Position ' + IntToStr(i + 1));
    checklistboxdominanceC1.Selected[i] := true;
    INC(select);

    // Verificar se o item está selecionado e, em seguida, processá-lo
    if checklistboxdominanceC1.Selected[i] then
    begin
      // Obtém o nome do item selecionado
      SetLength(SelectedItem, select);
      SetLength(SelectedIndex1, select);
      SelectedItem[select - 1] := 'Position ' + IntToStr(i + 1);
      SelectedIndex1[select - 1] := i + 1;
      end;
      end;
  end;

  if  TIWUserSession(WebApplication.Data).updateC1 = true then
  begin
  SetLength(TIWUserSession(WebApplication.Data).SelectedIndex, 0);
  SetLength(SelectedItem, 0);
  SetLength(SelectedIndex1, 0);
  for i := 0 to checklistboxdominanceC1.Items.Count - 1 do
    begin
    // Verificar se o item está selecionado e, em seguida, processá-lo
    if checklistboxdominanceC1.Selected[i] then
    begin
      // Obtém o nome do item selecionado
      INC(Select);
      SetLength(TIWUserSession(WebApplication.Data).SelectedIndex, select);
      TIWUserSession(WebApplication.Data).SelectedIndex[select - 1] := i;
      SetLength(SelectedItem, select);
      SetLength(SelectedIndex1, select);
      SelectedItem[select - 1] := 'Position ' + IntToStr(i + 1);
      SelectedIndex1[select - 1] := i + 1;
      end;
    end;

  {for i := 0 to Length(TIWUserSession(WebApplication.Data).MatrizGrupo) - 1 do
  begin
    chcklstbxResults.Items.Add('Ranking Position ' + IntToStr(i + 1));
  end;}

   for j := 0 to Length(TIWUserSession(WebApplication.Data).SelectedIndex) - 1 do
    begin
     checklistboxdominanceC1.Selected[TIWUserSession(WebApplication.Data).SelectedIndex[j]] := True;
     end;
    TIWUserSession(WebApplication.Data).updateC1:= false;
  end;

      // Procurar o índice na matriz e adicionar alternativas ao NumAlternativas se encontrado
      SetLength(NumAlternativas, 0);
      for i := 0 to Length(SelectedIndex1) - 1 do
      begin
      for j := 0 to Length(TIWUserSession(WebApplication.Data).MatrizGrupo) - 1 do
      begin
        if TIWUserSession(WebApplication.Data).MatrizGrupo[j, 0] = SelectedIndex1[i] then
        begin
          for y := 1 to High(TIWUserSession(WebApplication.Data).MatrizGrupo[j]) do
          begin
            SetLength(NumAlternativas, Length(NumAlternativas) + 1);
            NumAlternativas[High(NumAlternativas)] := TIWUserSession(WebApplication.Data).MatrizGrupo[j, y];
          end;
        end;
      end;
      end;

      // Adicionar as alternativas ao grid
      for j := 0 to Length(NumAlternativas) - 1 do
      begin
        grdrelationsHord.RowCount := grdrelationsHord.RowCount + 1;
        // Adicione suas alternativas ao grid aqui
      end;


      if TIWUserSession(WebApplication.Data).idioma = 0 then
      begin
        TxtrelHord.Lines[1] := '1 - Dominance Relation - (A dominates B)';
        TxtrelHord.Lines[2] := '-1 - Dominated alternative - (B is dominated by A)';
        TxtrelHord.Lines[3] := '2 - Indifference Relation';
        TxtrelHord.Lines[4] := '0 - Incomparability so far';
        //lblrel.Text := 'Dominance Matrix';
      end
      else
      begin
        TxtrelHord.Lines[1] := '1 - Relação de dominância';
        TxtrelHord.Lines[2] := 'I - Relação de indiferença';
        TxtrelHord.Lines[3] := '0 - Nenhuma relação foi estabelescida';
        TxtrelHord.Text := 'Matriz de dominância';
      end;
      //grdrelations.RowCount := NumAlt + 1;
      //grdrelations.ColumnCount := NumAlt + 1;
      for l := 0 to High(NumAlternativas) do
  begin
      grdrelationsHord.Cell[l+1, 0].Text := TIWUserSession(WebApplication.Data).nomealtC1[NumAlternativas[l]];
  end;


      for i := 1 to NumAltC1 do
      begin
        //grdrelations.Cell[i, 0].Text := AltSiglas[i - 1];
        grdrelationsHord.Cell[0, i].Text := TIWUserSession(WebApplication.Data).nomealtC1[i - 1];
        for J := 0 to High(NumAlternativas) do
          if TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession(WebApplication.Data).Ciclo - 1, i - 1, NumAlternativas[J]] <>2 then
          begin
            grdrelationsHord.Cell[j+1, i].Text := ' ' + IntToStr(ArmazenaParaPar[Ciclo - 1, NumAlternativas[J], i - 1])
           end
           else
            grdrelationsHord.Cell[j+1, i].Text := ' ' + '2';
        end;

    for i := 1 to NumAltC1 do
      begin
        for J := 0 to High(NumAlternativas) do
          if TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession(WebApplication.Data).Ciclo - 1, i - 1, NumAlternativas[J]] = 1 then
          begin
          linha := i;
          coluna := j;
          grdrelationsHord.Cell[j+1, i].Text := ' -1';
            end;
        end;

     for i := 1 to NumAltC1 do
      begin
        for J := 0 to High(NumAlternativas) do
          if TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession(WebApplication.Data).Ciclo - 1, i - 1, NumAlternativas[J]] = 2 then
          begin
          linha := i;
          coluna := j;
          grdrelationsHord.Cell[j+1, i].Text := ' 2';
          end;
        end;
    end; // Ordenação
   tbctrlHolisticRanking1Page0.Visible := true;
   tbctrlRankingC1.ActivePage:= tbctrlHolisticRanking1Page0.TabOrder;
  end;

procedure TfrmSortingResults.Logout1Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).AUXLOGOUT := -363636;
  TFrmEntrada.Create(WebApplication).Show;
end;

procedure TfrmSortingResults.logoutrecomendClick(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
  WebApplication.Terminate();
end;

procedure TfrmSortingResults.MenuItem1Click(Sender: TObject);
var
  i, j: integer;
  Data: string;
  /// Existem dois procedimentos dentro do procedimento do clique, são declarados aqui
  /// pois somente são utilizados neste procedimento.
  procedure Preencher_Inputs_Exp;
  /// preenche a primeira parte da planilha de resultados, referente aos dados de
  /// entrada (matriz de consequencias)
  var
    i, j: integer;
  begin
    with TIWUserSession(WebApplication.Data) do
    begin
      for i := grdexport.Columns.Count to NumCrit + 2 do
        grdexport.Columns.Add;

      grdexport.TotalRows := 7;

      grdexport.Cells[0, 0] := 'Criteria:';
      grdexport.Cells[0, 1] := '0-Cont Min; 1-Cont Max; 2-Disc Min; 3-Disc Max';
      // grdexport.Cells[0, 2] := 'Weights';
      grdexport.Cells[0, 2] := 'Type:';
      grdexport.Cells[0, 3] := 'a:';
      grdexport.Cells[0, 4] := 'b:';
      grdexport.Cells[0, 5] := 'c:';
      grdexport.Cells[0, 6] := 'Alternatives:';

      for i := 0 to NumCrit - 1 do
      begin
        grdexport.Cells[1 + i, 0] := NomeCrit[vtrordem[i]];
        grdexport.Cells[1 + i, 1] := IntToStr(Typeofcrit[vtrordem[i]]);
        grdexport.Cells[1 + i, 2] := IntToStr(FTipo[vtrordem[i]]);
        grdexport.Cells[1 + i, 3] := FloatToStr(parA[vtrordem[i]]);
        grdexport.Cells[1 + i, 4] := FloatToStr(parB[vtrordem[i]]);
        grdexport.Cells[1 + i, 5] := IntToStr(Niveis[vtrordem[i]]);
      end;

      grdexport.Cells[1, 6] := 'Alternatives:';

      grdexport.TotalRows := grdexport.TotalRows + NumAlt;

      for i := 0 to NumAlt - 1 do
      begin
        grdexport.Cells[0, 7 + i] := NomeAlt[i];
        for j := 0 to NumCrit - 1 do
          grdexport.Cells[1 + j, 7 + i] := FloatToStr
            (ConsMatrix[i, vtrordem[j]])
      end;
    end;
  end;

  procedure Preencher_Resultados_Exp;
  /// copia os dados dos grids de resultados perciais na planilha de output
  var
    i, j: integer;
    str: string;
  begin

    // Colocar os "V(X)" na coluna 0 (INDICANDO OS PONTOS QUE FORAM ELICITADOS)
    grdexport.totalrows := grdexport.totalrows + 7;
    grdexport.Cells[0, grdexport.totalrows - 5] :=
      'Elicited points intracriteria:';
    grdexport.Cells[0, grdexport.totalrows - 4] := 'V(X)';
    grdexport.Cells[0, grdexport.totalrows - 3] := '0,25';
    grdexport.Cells[0, grdexport.totalrows - 2] := '0,5';
    grdexport.Cells[0, grdexport.totalrows - 1] := '0,75';

    // Colocar os nomes dos critérios "cabeçalho"
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      grdexport.Cells[i + 1, grdexport.totalrows - 4] := TIWUserSession
        (WebApplication.Data).NomeCrit[i];
    end;

    // Colocar os pontos
    for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      TIWUserSession(WebApplication.Data).StrDInd := j;
      grdexport.Cells[1 + j, grdexport.totalrows - 3] := {FloatToStr}
        Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[3, j]);
      grdexport.Cells[1 + j, grdexport.totalrows - 2] := {FloatToStr}
        Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[2, j]);
      grdexport.Cells[1 + j, grdexport.totalrows - 1] := {FloatToStr}
        Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[4, j]);
    end;

    grdexport.totalrows := grdexport.totalrows + 3;
    grdexport.Cells[0, grdexport.totalrows - 1] :=
      'Number of predefined categories: ' + IntToStr
      (length(TIWUserSession(WebApplication.Data).perfis) + 1);
    grdexport.totalrows := grdexport.totalrows + 2;
    for i := 0 to grdClassesResults.RowCount - 1 do
    begin
      for j := 0 to grdClassesResults.ColumnCount - 1 do
        grdexport.Cells[j, grdexport.totalrows - 1] := grdClassesResults.Cell
          [i, j].Text;
      grdexport.totalrows := grdexport.totalrows + 1;
    end;
    grdexport.totalrows := grdexport.totalrows + 2;
    grdexport.Cells[0, grdexport.totalrows - 1] :=
      'Alternatives sorted into a unique category:';
    for i := 0 to grdResult1.RowCount - 1 do
    begin
      grdexport.totalrows := grdexport.totalrows + 1;
      for j := 0 to grdResult1.ColumnCount - 1 do
        grdexport.Cells[j, grdexport.totalrows - 1] := grdResult1.Cell[i, j]
          .Text;
    end;
    if TIWUserSession(WebApplication.Data).alt_nao_classificadas > 0 then
    begin
      grdexport.totalrows := grdexport.totalrows + 2;
      grdexport.Cells[0, grdexport.totalrows - 1] := 'Unsorted alternatives:';
      for i := 0 to grdResult2.RowCount - 1 do
      begin
        grdexport.totalrows := grdexport.totalrows + 1;
        for j := 0 to grdResult2.ColumnCount - 1 do
          grdexport.Cells[j, grdexport.totalrows - 1] := grdResult2.Cell[i, j]
            .Text;
      end;
    end; // Se houver alt não classificadas
  end;

begin

  Data := datetostr(now);
  for i := 1 to length(Data) - 1 do
    if Data[i] = '/' then
      Data[i] := '_';

  with TIWUserSession(WebApplication.Data) do
  begin
    grdexport.ClearCells;
    Preencher_Inputs_Exp;
    Preencher_Resultados_Exp;

    grdexport.totalrows := grdexport.totalrows + 3;
    grdexport.Cells[0, grdexport.totalrows - 1] :=
      'Scale constants range of values:';
    grdexport.totalrows := grdexport.totalrows + 1;
    for i := 0 to NumCrit - 1 do
      grdexport.Cells[1 + i, grdexport.totalrows - 1] := 'K(' + NomeCrit
        [vtrordem[i]] + ')';
    grdexport.totalrows := grdexport.totalrows + 1;
    grdexport.Cells[0, grdexport.totalrows - 1] := 'Max';
    for i := 0 to NumCrit - 1 do
      grdexport.Cells[1 + i, grdexport.totalrows - 1] := FormatFloat
        ('0.00', TIWUserSession(WebApplication.Data).MaxPeso[i]);
    grdexport.totalrows := grdexport.totalrows + 1;
    grdexport.Cells[0, grdexport.totalrows - 1] := 'Min';
    for i := 0 to NumCrit - 1 do
      grdexport.Cells[1 + i, grdexport.totalrows - 1] := FormatFloat
        ('0.00', TIWUserSession(WebApplication.Data).MinPeso[i]);
    grdexport.totalrows := grdexport.totalrows + 1;
    grdexport.Cells[0, grdexport.totalrows - 1] :=
      'Note: A valid scaling constants vector has its components values within this interval as long as the sum of those values is equal to one.';
   ///Alex Alves da Silva 06/08/2024
    if html = false then //Alex Alves da Silva/// verifica se o botão para gerar o arquivo em html foi feiclicado
    begin
      TIWAdvWebGridExcelIO2.AdvWebGrid := grdexport;
      TIWAdvWebGridExcelIO2.XLSExport
        (Probname + ' ' + Data + ' - Output' + '.xls', WebApplication);
    end;
    Inherited;
  end; // With
  TIWUserSession(WebApplication.Data).html := false; // apos realizar a ação de exportar em html, onde ele tem um valor de "true", o componente será considerado como "false", afim de ser possivel realizar sua exportação em "xls" quando solicitado

end;

procedure TfrmSortingResults.rgnresclassificacaoCreate(Sender: TObject);
var
i, a, ii, j : integer;
d : double;
gantt: array of TGanttSeries;
Maxl, Minl,Maxa,Maxb,Mina,Minb: Array of Double;
begin

  alinhamento;
  if (TIWUserSession(WebApplication.Data).Problematica = 3) then
  begin
    rgnresclassificacao.Visible := true;

    //SetLength(bar,TIWUserSession(WebApplication.Data).num_cat);
    PlClassificacao;
    With TIWUserSession(WebApplication.Data) do begin
    setlength(TIWUserSession(WebApplication.Data).altperfil, (Length(perfis_inseridos)) , NumCrit);
    //CRIAR ALTERNATIVAS PERFIL   = COLOCAR O VALOR DO PERFIL EM TUDO
        //Criar as alternativas perfil não normalizadas
          for i := 0 to Length(TIWUserSession(WebApplication.Data).perfis_inseridos) - 1 do
            for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
            begin
                // Normalização para os critérios de maximização //////////////////////
                if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
                  begin //Maximizar: (perfis[i]*(Solução Ideal - Nadir))+ Nadir
                    d := (perfis_inseridos[i]*(TIWUserSession(WebApplication.Data).MaxCons[j] - TIWUserSession(WebApplication.Data).MinCons[j])) + MinCons[j];
                    TIWUserSession(WebApplication.Data).altperfil[i,j] := d;
                  end;
                /// Normalização para os critérios de minimização //////////////////////
                if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
                  begin //Minimizar: (perfis[i]*(Nadir - Solução Ideal))+ Solução Ideal
                    TIWUserSession(WebApplication.Data).altperfil[i,j] := (TIWUserSession(WebApplication.Data).perfis_inseridos[i]*(TIWUserSession(WebApplication.Data).MinCons[j] - TIWUserSession(WebApplication.Data).MaxCons[j])) + TIWUserSession(WebApplication.Data).MaxCons[j];
                  end;
            end;
    end;

    // **Torna possível a AS para perfis **//
    //TbCtrlP1.Visible := true;
    // ** Plota os resultados de classificação **//
    showsortingresults;
    Preencher_grid_classes(grdClassesResults);
    if (TIWUserSession(WebApplication.Data).countC1 > 1) then
    begin
    lnkviewrankinC1.Visible := true;
    lnkviewrankinC1.Text:= ('View the ranking of C' + (inttostr(length(TIWUserSession(WebApplication.Data).perfis)+1)) + ' alternatives');
    end;

    with TIWUserSession(WebApplication.Data) do
    begin
      if Sol <> -5 then
      begin
        rgnDecompC.Visible := false;
        lnkFinalizeC.Visible := false;
        rgnconfirmClass1.Visible := true;

        if Sol = 12 then
          lnkSensitivityClass.Visible := true
        else
          IWLink11.Left := 680;
      end;

      case Sol of
        10:
        begin
          txtsolclass.Caption :=
            'There are no comparisons to be made in the elicitation by decomposition anymore. You can either continue the decision process though holistic evaluation or finalize the process considering these partial results.';
          rdbtndecomp.enabled := false;
          rdbtnHE.Checked := True;
          rgnDecompC.Visible := true;
          lnkFinalizeC.Visible := true;
          IWLink11.Left := 341;

          IWLabel19.caption := 'You may perform holistic assessments:';
          IWLabel19.Left := 1;
          IWLabel19.Top := 8;
          IWImage29.Visible := false;
          rdbtndecomp.Visible := false;
          rgnDecompC.Height := 251;
          rgnDecompC.left := 951;
          rgnDecompC.Width := 314;
          rgnDecompC.top := 312;
          ImgHE.Top := 56;
          rdbtnHE.Top := 173;
          IWLabel19.Top :=  4;
          //IWLabel19.Left := 8;
          btnbackelicitclass.Top := 202;
        end;
        11:
          txtsolclass.Caption := 'These are the partial results';
        12:
          begin
            txtsolclass.Caption :=
              'All the alternatives have been sorted into a unique category. This is the final result.';
            rgntabunsortedA.Visible := false;
            lblunsortedA.Visible := false;
            //RgnTabSortedA.Height := 363;
            rgnTabSortedA.Width := 865;
            grdResult1.Width := 857;
          end;
      end;
    end;

    Exit;
  end;
end;

procedure TfrmSortingResults.rgnsavCreate(Sender: TObject);
begin
rgnsav.Align := alclient;
end;

procedure TfrmSortingResults.Portuguese1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Guia Rápido Fitradeoff - PT-BR' + '.pdf', true);
end;

procedure TfrmSortingResults.Restartthecurrentproblem1Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).heuristica:= false;
  TIWUserSession(WebApplication.Data).VerificaUnit := -55;
  TFrmEntrada.Create(WebApplication).Show;
  // IWRgnReset2.Visible := false;
end;

procedure TfrmSortingResults.MenuItem2Click(Sender: TObject);
var
  i, j, K, p, N, h, lin_matriz_ciclo, cont: integer;
  Data, somadecision: string;
  matriz_perg: array of array of string; // matriz que armazena as perguntas respondidas
  vet_real_consA_ciclo_aux: Double;
  vet_real_consA_ciclo_aux2: array of string;
  alt_pref_ord, auxalt_pref_ord1: string;
  vet_alt_pref_ord_aux, vtr_final_pref_ord: array of string;
  Stop, inck: Boolean;

  Ciclosintra: string;
  Matrizciclosintra: Array of array of string;
  Z, x, Nciclosintra: integer;

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

  with TIWUserSession(WebApplication.Data) do
  begin

    for i := 0 to 3 do
    begin
      grdExportSum.Columns.Add;
    end;

    begin
      // Retornando dados da planilha elicitação
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 24;
      SalvarResultBD;

      // inicialmente preenchendo uma matriz que armazena todas as informações das perguntas respondidas
      setlength(matriz_perg, length(TIWUserSession(WebApplication.Data)
            .qp_ret_exp) + 2, 5);
      // inicialmente setando informações que são fixas,informações do cabeçalho
      matriz_perg[0, 0] := 'Application report';
      matriz_perg[1, 0] := 'Cycle';
      matriz_perg[1, 1] := 'Consequence A';
      matriz_perg[1, 2] := 'Consequence B';
      matriz_perg[1, 3] := 'Answer';
      matriz_perg[1, 4] := 'Number of unsorted alternatives ';
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

        // inicialmente para saber quantas AH existem no problema realizar a contagem
        // no banco de dados
        // Retornando dados da planilha elicitação
        TIWUserSession(WebApplication.Data).AuxsalvarBD := 22;
        SalvarResultBD;

        // adicionando informações da consequencia A
        if TIWUserSession(WebApplication.Data).vet_idA_ciclo[i - 2] = '-10' then
        begin
          matriz_perg[i, 1] := '';
        end
        else
        begin
          vet_real_consA_ciclo_aux := StrToFloat(vet_real_consA_ciclo[i - 2]);
          // vet_real_consA_ciclo_aux2 := FormatFloat('0.000', vet_real_consA_ciclo_aux);
          matriz_perg[i, 1] := FormatFloat
            ('#,##0.00', vet_real_consA_ciclo_aux) + ' ' + 'of' + ' ' + NomeCrit
            [vtrordem[StrToInt(vet_idA_ciclo[i - 2])]];
        end;

        // adicionando informações dos números de níveis
        matriz_perg[i, 4] := vet_rpos_ciclo[i - 2];

      end; // referente ao for i := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp)- 1 do
      grdExportSum.RowCount := length(matriz_perg) + 1;
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

      sql.Text := 'SELECT Cycles FROM intracrit WHERE id_problem="' +
        (TIWUserSession(WebApplication.Data).ID_Problema)
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
    grdExportSum.RowCount := grdExportSum.RowCount + 3 + Nciclosintra;

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

    //Inserindo 0 ciclo zero
    grdExportSum.Cells[8, 3] := '0';
    grdExportSum.Cells[12, 3] := 'Eliciting...';

    /// /////////Passando os dados da matriz para o grid que faz a exportação Excel///////////////
    for i := 0 to Nciclosintra - 1 do
    begin
      grdExportSum.Cells[8, i + 4] := InttoStr(TIWUserSession(WebApplication.Data).guardaciclos[i]);
      for j := 0 to 4 do
      begin
        grdExportSum.Cells[j + 9, i + 4] := Matrizciclosintra[i, j];

      end; // for j
    end; // for
      ////Alex Alves da Silva /06/08/2024
      ///  Este codigo tem o objetivo de remover as informações do intracriterio do sumario
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

    ////Fim do codigo
     Inherited;

    end;  // referente ao with


      if TIWUserSession(WebApplication.Data).html = false then // verifica se o botão para gerar o arquivo em html foi feiclicado
      begin
        TIWAdvWebGridExcelIO4.AdvWebGrid := grdExportSum;
        TIWAdvWebGridExcelIO4.XLSExport(TIWUserSession(WebApplication.Data)
            .Probname + ' ' + Data + ' - Summary of Elicitation' + '.xls',
          WebApplication);
      end;
  end;
  TIWUserSession(WebApplication.Data).html := false; // apos realizar a ação de exportar em html, onde ele tem um valor de "true", o componente será considerado como "false", afim de ser possivel realizar sua exportação em "xls" quando solicitado
end;

procedure TfrmSortingResults.lnkFinalizeCClick(Sender: TObject);
begin
  rgnconfirmClass2.Visible := true;
end;

procedure TfrmSortingResults.lnkradarClick(Sender: TObject);
begin
rgngant1.Visible := false
end;

procedure TfrmSortingResults.lnkScalesCloseClick(Sender: TObject);
begin
rgncategories.Visible := False;
iwregion25.Visible := true;

end;

procedure TfrmSortingResults.lnkSensitivityClassClick(Sender: TObject);
var
  i, j: integer;
begin

  rgnresclassificacao.Hide;
  // **Prepara para iniciar a AS **//

  rgnsav.Show;
  CriarElementosAS;
  //cmbbxAS.Items.Clear;
  btnstartAS.Enabled := false;
  with TIWUserSession(WebApplication.Data) do
  begin
    ninst := 1000;
    setlength(CriSel, NumCrit);
    setlength(Pmax, NumCrit);
    setlength(Pmin, NumCrit);
    nsel := 0;
    NCV := 0;
    VauxSel := -1;
    //cmbbxAS.Items.Clear;
    for i := 0 to NumCrit - 1 do
    begin
      //cmbbxAS.Items.Add(NomeCrit[vtrordem[i]]);
      /// / Inicializa ós vetores ////
      CriSel[i] := false;
      Pmax[i] := 0;
      Pmin[i] := 0;
    end;
  end;
end;

procedure TfrmSortingResults.PLOrdenacao(Valorep: real);
var
  i, J, k, Nrest, a, B, C, Z, II, JJ, DNrel: integer; // Contadores
  m1, m2, m3: integer;
  dominance: boolean; // Var auxiliar que indica se uma relação de dominância foi estabelecida
  NumCri, NumAltC1, Numl, NAH: integer; // Número de critérios,
  // num de alternativas, num de linhasna Matriz do Modelo de PL e número de restrições
  // provenientes de Avaliações holísticas, número de alternativas potencialmente ótimas
  MatA, MatCons: Array of Array of Double; // Matriz do Modelo de PL e Matriz de Consequências Normalizada
  Criorder: Array of integer; // Vetor que armazena a ordenação dos critérios
  LimMin, LimMax, FO: Array of Double; // Vetores que armazenam os limites inferior e
  // Superior da relação entre os critérios
  VetAH: Array of Array of integer; // Matriz que armazena as informações das AH
  OPAH: Array of string; // Vetor que armazena o operador definido na relação estabelecida na AH
  G, ep: Double;
  // VARIÁVEIS LP SOLVE
  // ResultVector armazena os resultados obtidos pelo LP Solve (a função máxima e
  // coeficientes das variáveis de decisão).
  // FO recebe os coeficientes das variáveis de decisão na função objetivo e será
  // usado no LP Solve.
  // Limit recebe os valores das constantes das restrições e será usado no LP Solve.
  // X armazena
  ResultVector: array of Real;
  // typeprob determina se o problema é contínuo (typeprob = 0) ou binário (typeprob = 1).
  // No caso do fitradeoff, é sempre contínuo pois as constantes de escala são contínuas.
  // dirprob determina se o problema é de minimização (dirprob = 0) ou de maximização
  // (dirprob = 1), SF nos diz se houve solução viável.
  typeprob, dirprob, SF: integer;
  Op: array of string;
  limit: array of Real;
  Rmod: array of AnsiString;
  Lp: THandle;
  S1: string;
  MatrizParaPar: Array of Array of integer; // Armazena as relações de dominÂncia par a par
  MaxDIJ, MaxDJI, MaxDIJaux, MaxDJIaux: Double; // Armazena a máxima diferença entre duas alternativas
  aux1, aux2: Double;
  // VARIÁVEIS PARA A DLL DE C++
  MatB: matriz; // matriz usada pela dll em c++ para colocar as restrições e a função
  // valor Além de ser usada durante as iterações para serem guardados
  // os resultados do simplex até o resultado final
  icase: Pinteger; // ponteiro do c++ para indicar se existe ou não solução possível
  iposv: vetor; // vetor que guarda os subíndices das variáveis básicas
  izrov: vetor; // vetor que guarda os subíndices das variáveis não-básicas
  MinVK: Double;

  index, index1: integer;

  // VARIÁVEIS, VETORES E BOOLEANA PARA VERIFICAÇÃO DE CIRCUITO
  ZeroEnc, TudoZero: boolean;
  DomCount, Indices: Array of integer; // Vetores que recebem o nº de alt j que dominam a alt i, e seus respectivos indices
  IndexToRemove: integer; // Variável responsável por salvar o indice da alternativa que será removida da análise
  auxMatrizParaParlimiar, auxMatrizParaPar2: Array of Array of integer; // Matriz auxiliar que recebe a variável global armazenaparapar para verificação de circuito;
  {Achousol,} teste1: boolean; //Verifica se uma solução foi encontrada sem circuito e considerando o ep
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).Numcrit;
  NumAltC1 := TIWUserSession(WebApplication.Data).countC1;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
  /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
  /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
  /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
  Numl := 2 * (NumCri - 1) + 4 + 2 * length(TIWUserSession(WebApplication.Data).PergNAdj);
  Setlength(MatrizParaPar, NumAltC1, NumAltC1);
  Setlength(auxMatrizParaParlimiar, NumAltC1, NumAltC1);
  Setlength(TIWUserSession(WebApplication.Data).maxDiff, NumAltC1, NumAltC1);
  Setlength(MatCons, NumAltC1, NumCri);
  Setlength(Criorder, NumCri);
  Setlength(MatA, Numl, NumCri + 2);
  Setlength(Op, Numl - 1);
  Setlength(limit, Numl - 1);
  Setlength(Rmod, Numl - 1);
  Setlength(LimMax, NumCri - 1);
  Setlength(LimMin, NumCri - 1);
  Setlength(VetAH, NAH);
  Setlength(OPAH, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);

with TIWUserSession(WebApplication.Data) do
begin
NumRel := 0;
Ciclo := 0;
Setlength(ArmazenaParaPar, 0, 0, 0);
Setlength(ArmazenaParaPar, 1, NumAltC1, NumAltC1);
end;
  for i := 0 to  TIWUserSession(WebApplication.Data).countC1 - 1 do
  begin
  index := TIWUserSession(WebApplication.Data).indicesC1[i];
    for J := 0 to NumCri - 1 do
      MatCons[i, J] := TIWUserSession(WebApplication.Data).ConsNorm[index, J];
  end;
  for i := 0 to NumCri - 1 do
    Criorder[i] := TIWUserSession(WebApplication.Data).vtrordem[i];
  for i := 0 to NumCri - 2 do
  begin
    // setlength(LimMin, i + 1);
    LimMin[i] := TIWUserSession(WebApplication.Data).LimMin[i];
    LimMax[i] := TIWUserSession(WebApplication.Data).LimMax[i];
  end;

  {With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for J := 0 to NAH - 1 do
    begin
      Setlength(VetAH[J], length(MATAH[J]));
      for i := 0 to length(MATAH[J]) - 1 do
        VetAH[J, i] := MATAH[J, i];
    end;
  end; }

  /// ////////// Obtendo relações anteriormente estabelecidas ///////////////////
for i := 0 to NumAltC1 - 1 do
  for J := 0 to NumAltC1 - 1 do
    begin
      MatrizParaPar[i, j] := 0;
      With TIWUserSession(WebApplication.Data) do
      begin
        maxDiff[i, j] := 0;
        {if (TIWUserSession(WebApplication.Data).Ciclo <> 0) and
          (zeramatriz = false) then
          if ArmazenaParaPar[Ciclo - 1, i, j] <> 0 then
            MatrizParaPar[i, j] := TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo - 1, i, j];}
      end;
    end;
  // * Se a matriz já foi zerada, zeramatriz recebe false *//
  TIWUserSession(WebApplication.Data).zeramatriz := false;

  /// ///////////////////////////////////////////////////////////////////////////
  /// Limpando a Matriz do problema de possíveis valores provindos de sua inicialização ///
  for i := 0 to Numl - 1 do
    for J := 0 to NumCri do
      MatA[i, J] := 0;

  m1 := 0;
  m2 := 0;
  m3 := 0;

  /// //////////// Programação Linear - MODELO PROB DE ORDENAÇÃO ///////////////

  /// Preenchendo as Restrições referentes ao limite superior da relação dos critérios ///
  /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
  for i := 0 to NumCri - 2 do
  begin
    MatA[i + 1, i + 1] := (-1) * LimMax[i];
    MatA[i + 1, i + 2] := 1;
    Op[i] := '<=';
    INC(Nrest);
    INC(m1);
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
    INC(m1);
  end;

  a := Nrest;

  /// Preenchendo as Restrições referentes à Avaliação Holística ///
  /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
  {for i := a to a + NAH - 1 do
  begin
    case VetAH[i - a, 0] of
      2:
        begin
          /// Seleção ///
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            /// / Acrescentando espaço para as restrições ///////////////////////
            INC(Numl);
            Setlength(MatA, Numl, NumCri + 1);
            Setlength(Op, Numl - 1);
            Setlength(limit, Numl - 1);
            Setlength(Rmod, Numl - 1);
            /// / Acrescentando espaço para as restrições ///////////////////////
            for J := 0 to NumCri - 1 do
            begin
              MatA[i + 1, J + 1] := MatCons[VetAH[(i - a), Z], Criorder[J]]
                - MatCons[VetAH[i - a, 1], Criorder[J]];
            end; // j
            MatA[i + 1, 0] := 0;
            INC(m1);
            INC(Nrest);
          end; // z
        end; // 2
    end; // case
  end;  }

  a := Nrest;

  /// Adicionando a Restrição da primeira pergunta da Elicitação Flexível ///
  With TIWUserSession(WebApplication.Data) do
    case HeurQuest of
      0:
        Begin
          MatA[a + 1, TIWUserSession(WebApplication.Data).IdAHeur + 1] :=
            -WDPHEUR;
          MatA[a + 1, TIWUserSession(WebApplication.Data).IdBHeur + 1] := 1;
          Op[a] := '<=';
          INC(Nrest);
          INC(m1);
        End;
      1:
        Begin
          MatA[a + 1, IdAHeur + 1] := WDPHEUR;
          MatA[a + 1, IdBHeur + 1] := -1;
          Op[a] := '<=';
          INC(Nrest);
          INC(m1);
        End;
    end;
  a := Nrest;

  // ** Restrições das relações entre critérios não adjascentes **//
  with TIWUserSession(WebApplication.Data) do
  begin
    if length(PergNAdj) > 0 then
    begin
      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := TIWUserSession
          (WebApplication.Data).MLimMin[PergNAdj[i - a, 0], TIWUserSession
          (WebApplication.Data).PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
        INC(m1);
      end;

      a := Nrest;

      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1) * TIWUserSession
          (WebApplication.Data).MLimMax[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := 1;
        Op[i] := '<=';
        INC(Nrest);
        INC(m1);
      end;
    end;
  end;

  a := Nrest;

  /// Preenchendo aa nova restrição Kn > limiar///
  MatA[a + 1, NumCri] := 1;
  MatA[a + 1, 0] := MinVK;
  Op[a] := '>=';
  INC(m2);
  INC(Nrest);

  a := Nrest;

  /// Preenchendo as Restrições referentes à Normalização dos Pesos///
  for J := 0 to NumCri - 1 do
    MatA[a + 1, J + 1] := 1;
  MatA[a + 1, 0] := 1;
  Op[a] := '=';
  INC(Nrest);
  INC(m3);

  a := Nrest;

  /// ////////////////// Verifica as relações de dominância /////////////////////
  for II := 0 to NumAltC1 - 1 do
    for JJ := II + 1 to NumAltC1 - 1 do
      if (MatrizParaPar[II, JJ] = 0) and (MatrizParaPar[JJ, II] = 0) then
      begin
        dominance := false;
        for i := 0 to 103 - 1 do
          for J := 0 to 103 - 1 do
            MatB[i, J] := 0;

        /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
        /// escala e os coeficientes são as diferenças entre as consequências das//
        /// alternativa IJ normalizadas ///
        for i := 0 to NumCri - 1 do
        begin
          MatA[0, i + 1] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
          MatB[1, i + 2] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
          FO[i] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
        end;

        for J := 0 to NumCri - 1 do
          for i := 1 to Numl - 1 do
            if MatA[i, J + 1] <> 0 then
              MatB[i + 1, J + 2] := -MatA[i, J + 1];

        for i := 1 to Numl - 1 do
          MatB[i + 1, 1] := MatA[i, 0];

        /// / Aloca-se espaço de memória dinamica para o pontero icase usado na DLL de C++
        GetMem(icase, SizeOf(integer));

        /// Resolvendo o PPL ///
        simplx(MatB, Nrest, NumCri, m1, m2, m3, icase, izrov, iposv);

        if icase^ = 0 then
        begin
          for i := 1 to NumCri do
          begin
            for J := 1 to Nrest do
            begin
              // iposv é o vetor com os subindices das variáveis básicas depois de
              // obter a solução
              if iposv[J] = i then
              begin
                ResultVector[i - 1] := MatB[J + 1, 1];
              end;
              // do if iposv
            end; // do for de k
          end; // do for de ii
          /// Verificando se há algum K não nulo. ///
          B := 0;
          for i := 0 to NumCri do
            if ResultVector[i] <> 0 then
              break
            else
              INC(B);

          MaxDIJ := 0;
          // Se obtem o valor da alternativa maximizada.
          for J := 0 to NumCri - 1 do
          begin
            MaxDIJ := MaxDIJ + FO[J] * ResultVector[J];
          end;
        end; // end do if viavel = 1

        for i := 0 to 103 - 1 do
          for J := 0 to 103 - 1 do
            MatB[i, J] := 0;

        /// /////////// Limpando o vetor de resultados /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);
        FreeMem(icase, SizeOf(integer));

        /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
        /// escala e os coeficientes são as diferenças entre as consequências das//
        /// alternativa JI normalizadas ///
        for i := 0 to NumCri - 1 do
        begin
          MatA[0, i + 1] := MatCons[JJ, Criorder[i]] - MatCons[II, Criorder[i]];
          MatB[1, i + 2] := MatCons[JJ, Criorder[i]] - MatCons[II, Criorder[i]];
          FO[i] := MatCons[JJ, Criorder[i]] - MatCons[II, Criorder[i]];
        end;

        for J := 0 to NumCri - 1 do
          for i := 1 to Numl - 1 do
            if MatA[i, J + 1] <> 0 then
              MatB[i + 1, J + 2] := -MatA[i, J + 1];

        for i := 1 to Numl - 1 do
          MatB[i + 1, 1] := MatA[i, 0];

        /// / Aloca-se espaço de memória dinamica para o pontero icase usado na DLL de C++
        GetMem(icase, SizeOf(integer));

        /// Resolvendo o PPL ///
        simplx(MatB, Nrest, NumCri, m1, m2, m3, icase, izrov, iposv);

        if icase^ = 0 then
        begin
          for i := 1 to NumCri do
          begin
            for J := 1 to Nrest do
            begin
              // iposv é o vetor com os subindices das variáveis básicas depois de
              // obter a solução
              if iposv[J] = i then
              begin
                ResultVector[i - 1] := MatB[J + 1, 1];
              end;
              // do if iposv
            end; // do for de k
          end; // do for de ii
          /// Verificando se há algum K não nulo. ///
          B := 0;
          for i := 0 to NumCri - 1 do
            if ResultVector[i] <> 0 then
              break
            else
              INC(B);

          MaxDJI := 0;

          // Se obtem o valor da alternativa maximizada.
          for J := 0 to NumCri - 1 do
          begin
            MaxDJI := MaxDJI + FO[J] * ResultVector[J];
          end;
        end; // end do if viavel = 1

        /// /////////// Limpando o vetor de resultados /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);
        FreeMem(icase, SizeOf(integer));
        a := 0; // Contabilizará  número de relações estabelecidas
        B := 0; // Contabilizará  número de relações de indiferença estabelecidas

        if MaxDIJ < 0 then
          aux1 := StrToFloat(FormatFloat('0.000', -MaxDIJ))
        else
          aux1 := StrToFloat(FormatFloat('0.000', MaxDIJ));
        if MaxDJI < 0 then
          aux2 := StrToFloat(FormatFloat('0.000', -MaxDJI))
        else
          aux2 := StrToFloat(FormatFloat('0.000', MaxDJI));

        /// /Se a máx diferença entre as alternativas forem menores que o limiar /////
        /// de indiferença, então as alt são indiferentes /////////////////////
        if (aux1 <= valorep) and (aux2 <= valorep) then
        begin
          MatrizParaPar[II, JJ] := 2;
          MatrizParaPar[JJ, II] := 2;
          dominance := True;
        end
        else
        begin
          /// / Caso contrário, utiliza-se a seguinte regra para verificar a///////
          /// relação de dominância//////////////////////////////////////////////
          MaxDIJaux := RoundTo(MaxDIJ, -3);
          MaxDJIaux := RoundTo(MaxDJI, -3);
          if (MaxDIJaux >= valorep) and (MaxDJIaux <= valorep) then
          begin
            MatrizParaPar[II, JJ] := 1;
            { for i := 0 to NumAlt - 1 do
              begin
              if MatrizParaPar[JJ, i] = 1 then
              MatrizParaPar[II, i] := 1;
              end; }
            dominance := True;
          end;
          if (MaxDIJaux <= valorep) and (MaxDJIaux >= valorep) then
          begin
            MatrizParaPar[JJ, II] := 1;
            { for i := 0 to NumAlt - 1 do
              begin
              if MatrizParaPar[JJ, i] = 1 then
              MatrizParaPar[II, i] := 1;
              end; }
            dominance := True;
          end;
        end;
        if dominance = false then
          with TIWUserSession(WebApplication.Data) do
          begin
            TIWUserSession(WebApplication.Data).maxDiff[II, JJ] := StrToFloat
              (FormatFloat('0.000', MaxDIJ));
            TIWUserSession(WebApplication.Data).maxDiff[JJ, II] := StrToFloat
              (FormatFloat('0.000', MaxDJI));
          end;
      end; // For II

  a := 0;
  B := 0;
  C := 0;
  for i := 0 to NumAltC1 - 1 do
    for J := 0 to NumAltC1 - 1 do
    begin
      case MatrizParaPar[i, J] of
        0:
          INC(a);
        1:
          INC(B);
        2:
          INC(C);
      end;
    end;

 With TIWUserSession(WebApplication.Data) do
  begin
    NumRel := B + Round(C / 2);
    Numind := Round(C / 2);
    NDRl := B; ;
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumAltC1 - 1 do
      for J := 0 to NumAltC1 - 1 do
        TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession(WebApplication.Data).Ciclo, i, J] := MatrizParaPar[i, J];
    INC(Ciclo);
    ConstruirMatrizgrupo;
    if TIWUserSession(WebApplication.Data).NumRel >= (NumAltC1 * (NumAltC1 - 1)) / 2 then
    begin
      // Possíveis soluções
      if Numind = 0 then
        Sol := 3;
      if Numind > 0 then
        Sol := 2;
    end;
  end;
end;

procedure TfrmSortingResults.ConstruirMatrizgrupo;
var
  MatrizKS, MatrizParaPar, MatrizGrupos: Array of array of integer;
  DomCount, Grp, indicesordenados: array of integer;
  i, J, k, NAlt, a, B, C, grupo, temp, index: integer;
  MatInd, Mat: Array of Array of integer;
  Ind: Array of boolean;
  y: TIWUserSession;
begin

  /// / Procedimento responsável por escrever as relações entre as alternativas ////
  /// no grid de resultados na problemática de ordenação. ///////////////////////
  With TIWUserSession(WebApplication.Data) do
  begin
    NAlt := TIWUserSession(WebApplication.Data).countC1;
    Setlength(MatrizParaPar, NAlt, NAlt);
    Setlength(MatrizKS, NAlt, NAlt + 5);
    /// //////////// Resgata as relações de dominância par a par //////////////////
    for i := 0 to NAlt - 1 do
      for J := 0 to NAlt - 1 do
        MatrizParaPar[i, J] := ArmazenaParaPar[Ciclo - 1, i, J];
    /// ///////////////////////////////////////////////////////////////////////////
  end;
  Setlength(DomCount, NAlt);
  Setlength(Ind, NAlt);

  for i := 0 to NAlt - 1 do
  begin
    DomCount[i] := 0;
    /// //Se uma alt tiver uma relação de indiferença, então seu índice /////////
    /// / nesse vetor recebe true////////////////////////////////////////////////
    Ind[i] := false;
  end;

  /// /// Contabiliza o número de alt j que domina cada alternativa i //////////
  for i := 0 to NAlt - 1 do
    for J := 0 to NAlt - 1 do
      if MatrizParaPar[J, i] = 1 then
        DomCount[i] := DomCount[i] + 1;

  for i := 0 to NAlt - 1 do
  begin
    MatrizKS[i, 0] := i + 1;
    MatrizKS[i, 1] := NAlt - (i + 1);
  end;

  /// / Separa as alternativas na matriz com base no número de alternativas que //
  /// lhe domina //////////////////////////////////////////////////////////////
  for i := 0 to NAlt - 1 do
  begin
    a := 0;
    k := MatrizKS[i, 1];
    for J := 0 to NAlt - 1 do
      if DomCount[J] = k then
      begin
        MatrizKS[i, 4 + a] := J;
        INC(a);
      end;
    MatrizKS[i, 2] := a;
  end;

  /// / Calcula o número de alternativas acumuladas à cada linha da matriz //////
  MatrizKS[0, 3] := MatrizKS[0, 2];
  for i := 1 to NAlt - 1 do
    MatrizKS[i, 3] := MatrizKS[i - 1, 3] + MatrizKS[i, 2];

  /// //////////// Contabiliza o número de grupos/posições ////////////////////
  grupo := 0;
  for i := NAlt - 1 downto 0 do
  begin
    if MatrizKS[i, 0] = MatrizKS[i, 3] then
      grupo := grupo + 1;
    /// /////////////// Insere o grupo das alternativas ////////////////////////
    MatrizKS[i, NAlt + 4] := grupo;
  end;
  /// / A Matriz de Grupos armazena os índices das alternativas divididos ///////
  /// entre os grupos/níveis no ranking das alternativas //////////////////////
  Setlength(MatrizGrupos, 0, 0);
  Setlength(MatrizGrupos, grupo, NAlt + 1);
  Setlength(Grp, grupo);
  /// / Preenchendo a primeira coluna da matriz com a posição do ranking ///////
  for i := 0 to grupo - 1 do
    MatrizGrupos[i, 0] := i + 1;

  /// / Escreve os índices daas alternativas nas linhas referentes a cada posição //
  /// do Ranking ////////////////////////////////////////////////////////////////
  for k := 1 to grupo do
  begin
    a := 0;
    for i := NAlt - 1 downto 0 do
      if MatrizKS[i, NAlt + 4] = k then
        if MatrizKS[i, 2] <> 0 then
          for J := 0 to (MatrizKS[i, 2] - 1) do
          begin
            MatrizGrupos[k - 1, a + 1] := MatrizKS[i, J + 4];
            INC(a);
          end;
    Grp[k - 1] := a; // armazena o número de alt por grupo
  end;
  // ** Salva a informação da matriz na var global**//
  With TIWUserSession(WebApplication.Data) do
  begin
    Setlength(MatrizGrupo, grupo);
    for i := 0 to grupo - 1 do
    begin
      Setlength(TIWUserSession(WebApplication.Data).MatrizGrupo[i], Grp[i] + 1);
      for J := 0 to Grp[i] do
        TIWUserSession(WebApplication.Data).MatrizGrupo[i, J] := MatrizGrupos[i, J];
    end;
  end;

  /// / MatInd possui uma linha dedicada a cada grupo e armazena os pares ///////
  /// de alternativas indiferentes de cada grupo //////////////////////////////
  Setlength(MatInd, grupo);
  /// / Mat também possui uma linha para cada grupo e caso uma alternativa //////
  /// não seja indiferente a nenhuma outra de seu grupo, a mesma fica /////////
  /// armazenada em Mat. //////////////////////////////////////////////////////
  Setlength(Mat, grupo);

  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(VAltPositionsO, NAlt);
    for i := 0 to grupo - 1 do
      for J := 0 to Grp[i] - 1 do
        TIWUserSession(WebApplication.Data).VAltPositionsO[MatrizGrupos[i, J + 1]] := MatrizGrupos[i, 0];
  end;

  /// //////////// Obtendo as indiferenças em cada grupo /////////////////////////
  for i := 0 to grupo - 1 do
  begin
    a := 0;
    B := 0;
    C := 0;
    for J := 0 to Grp[i] - 1 do
    begin
      for k := J + 1 to Grp[i] - 1 do
      begin
        if MatrizParaPar[MatrizGrupos[i, J + 1], MatrizGrupos[i, k + 1]]
          = 2 then
        begin
          Setlength(MatInd[i], 2 * a + 2);
          MatInd[i, 2 * a] := MatrizGrupos[i, J + 1];
          MatInd[i, 2 * a + 1] := MatrizGrupos[i, k + 1];
          INC(a);
          Ind[MatrizGrupos[i, J + 1]] := True;
          Ind[MatrizGrupos[i, k + 1]] := True;
        end;
      end;
      if Ind[MatrizGrupos[i, J + 1]] = false then
      begin
        Setlength(Mat[i], B + 1);
        Mat[i, B] := MatrizGrupos[i, J + 1];
        INC(B);
      end
      else
        C := 0;
    end;
  end;
  B := 0;
  With TIWUserSession(WebApplication.Data) do
  begin
    Rlevels := grupo;
    Setlength(MatResultOrd, 0, 0);
    Setlength(MatResultOrd, grupo, 2);
    Setlength(MatResultOrd1, grupo, 2);
    /// ///Insere as aternativas indiferentes de cada grupo na matriz que será/////
    /// utilizada para construir a tabela de resultados /////////////////////////
    for i := 0 to grupo - 1 do
    begin
      B := 0;
      if length(MatInd[i]) > 0 then
        B := Round(length(MatInd[i]) / 2);
      MatResultOrd[i, 0] := IntToStr(i + 1);
      if length(MatInd[i]) > 0 then
        MatResultOrd[i, 1] := '[' + nomealtC1[MatInd[i, 0]] + ', ' + nomealtC1[MatInd[i, 1]] + ']';
      for J := 1 to B - 1 do
      begin
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + nomealtC1
          [MatInd[i, 2 * J]] + ', ' + nomealtC1[MatInd[i, 2 * J + 1]] + ']';
      end;
    end;
    B := 0;
    /// ///Insere as demais aternativas de cada grupo na matriz que será/////
    /// utilizada para construir a tabela de resultados /////////////////////////
    for i := 0 to grupo - 1 do
    begin
      B := (length(Mat[i]));
      MatResultOrd[i, 0] := IntToStr(i + 1);
      if length(Mat[i]) > 0 then
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + nomealtC1[Mat[i, 0]]
          + ']';
      for J := 1 to B - 1 do
      begin
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + nomealtC1[Mat[i, J]]
          + ']';
      end;
    end;
      /// ///Insere as aternativas por posição, sem definir posição
  for i := 0 to grupo - 1 do
  begin
  b := Length(Mat[i]);
  TIWUserSession(WebApplication.Data).MatResultOrd1[i, 0] := IntToStr(i + 1);

  // Verifica se há elementos em Mat[i]
  if b > 0 then
  begin
    // Inicializa um vetor para armazenar os índices ordenados
    SetLength(IndicesOrdenados, b);
    for j := 0 to b - 1 do
      IndicesOrdenados[j] := j;

    // Bubble sort para ordenar os índices com base nos valores correspondentes em Mat[i]
    for j := 0 to b - 2 do
    begin
      for k := 0 to b - 2 - j do
      begin
        if Mat[i, IndicesOrdenados[k]] > Mat[i, IndicesOrdenados[k + 1]] then
        begin
          // Troca os índices
          temp := IndicesOrdenados[k];
          IndicesOrdenados[k] := IndicesOrdenados[k + 1];
          IndicesOrdenados[k + 1] := temp;
        end;
      end;
    end;

    // Preenche MatResultOrd1 com os índices ordenados
    for j := 0 to b - 1 do
    begin
      if j = 0 then
        TIWUserSession(WebApplication.Data).MatResultOrd1[i, 1] := NomeAlt[Mat[i, IndicesOrdenados[j]]]
      else
        TIWUserSession(WebApplication.Data).MatResultOrd1[i, 1] := TIWUserSession(WebApplication.Data).MatResultOrd1[i, 1] + ',' + NomeAlt[Mat[i, IndicesOrdenados[j]]];
    end;
  end;
end;

  end; // With
end;


procedure TfrmSortingResults.lnkviewrankinC1Click(Sender: TObject);
var
ep : double;
j, i, NumAltC1 : integer;
begin
with TIWUserSession(WebApplication.Data) do
begin
NumAltC1 := TIWUserSession(WebApplication.Data).countC1;
ep := 0.01;
Plordenacao(ep);
rgnviewrankingC1.Visible := true;
rgnresclassificacao.Visible := false;
IWLabel22.Text := 'C' + inttostr(length(perfis)+1);
grdalternativesrankingC1.RowCount := Rlevels + 1;
grdalternativesrankingC1.ColumnCount := 2;
grdalternativesrankingC1.Cell[0, 0].Text := 'Ranking Position';
grdalternativesrankingC1.Cell[0, 1].Text := 'Alternatives';
for J := 0 to 2 - 1 do
      begin
        grdalternativesrankingC1.Cell[0, J].Font.Style := [fsbold];
        for i := 0 to Rlevels - 1 do
        begin
          grdalternativesrankingC1.Cell[i + 1, J].Text := TIWUserSession(WebApplication.Data).MatResultOrd[i, J];
          grdalternativesrankingC1.Cell[i + 1, J].Wrap := True;
        end;
      end;
      grdalternativesrankingC1.Font.FontName := 'Verdana';
      grdalternativesrankingC1.Font.Size := 10;
  end;
tbctrlRankingC1.ActivePage:= tbctrlHasseC1.TabOrder;

  // *** Diagrama de Hasse *** //
  With TIWUserSession(WebApplication.Data) do
  begin
    // o diagrama vai ser construido
      //btnhasse1.Visible := True;
      //lnkrelations.Visible := false;

      // Organiza as informações que vão ser inseridas no banco de dados - necessárias para a construção do diagrama
      DomMat := '';
      // Dados da Matriz de Consequências
      for i := 0 to NumAltC1 - 1 do
      begin
        for J := 0 to NumAltC1 - 1 do
        begin
          auxDM := TIWUserSession(WebApplication.Data).ArmazenaParaPar
            [(TIWUserSession(WebApplication.Data).Ciclo) - 1, i, J];
          DomMat := DomMat + IntToStr(auxDM);
        end;
      end;

      {HolMat := '';
      // Dados da Matriz de Avaliação Holística
      for i := 0 to NumAH - 1 do
      begin
        alt1 := TIWUserSession(WebApplication.Data).MATAH[i, 1];
        alt2 := MATAH[i, 2];
        auxHM := IntToStr(alt1) + '/' + IntToStr(alt2);
        HolMat := HolMat + '-' + auxHM;
      end;}
      NomAlt := '';
      // Nomes das consequências
      for i := 0 to NumAltC1 - 1 do
      begin
        TIWUserSession(WebApplication.Data).NomAlt := NomAlt + '§' + nomealtC1[i];
      end;

      // Teste unindo numAlt e Levels
      levels_numalt := IntToStr(Rlevels) + '/' + IntToStr(NumAltC1);

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

      tmrhasse.Enabled := True;
    end;
  end; // with

procedure TfrmSortingResults.SalvarResultBD;
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
  StrAux : string;

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
            auxalt_avaliadas := auxalt_avaliadas + IntToStr(TIWUserSession(WebApplication.Data).MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1, i]);

            if i < length(TIWUserSession(WebApplication.Data).MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1])
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
          // preenchimento da planilha he_question caso o decisor aperte não na primeira pergunta
          // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO BtnOkHET1 (ok) DA REGIÃO IWRgnfinaltabela

          { if rdgrpHEG1.ItemIndex = 0 then
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
          if StrToDate(S) < StrToDate('24/05/2021') then
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
          if StrToDate(S) < StrToDate('24/05/2021') then
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
          if StrToDate(S) < StrToDate('24/05/2021') then
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
          if StrToDate(S) < StrToDate('24/05/2021') then
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
        end; // 35

     26: //(JÚLIA TOMÉ) AH SORTING - holistic_evaluation
        begin
        auxnum_alt := IntToStr(2); //Número de alternativas avaliadas.

        //Quais alternativas foram avaliadas
        auxalt_avaliadas := IntToStr(TIWUserSession(WebApplication.Data).bestAlt);
        auxalt_avaliadas := auxalt_avaliadas + '/';
        auxalt_avaliadas := auxalt_avaliadas + IntToStr(TIWUserSession(WebApplication.Data).notBestAlt);

        auxdecision := IntToStr(2); //preferência
        //Rlevels := (TIWUserSession(WebApplication.Data).Alt_nao_classificadas; //Número de alternativas não classificadas
        //nround = quando a pessoa reinicia o problema o round aumenta em 1
        //id_ah = TotalAH; quantidade de ah na mesma round
        SQL.Text :=
          'INSERT INTO holistic_evaluation (id_problem,num_alt,alt_avaliadas,decision,id_alt_c,id_ah,round,status,vis_he,num_rlevels) VALUES ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + (auxnum_alt) + '","' + (auxalt_avaliadas) + '","' + (auxdecision) + '","' + IntToStr(TIWUserSession(WebApplication.Data).bestAlt) + '","' + IntToStr(TIWUserSession(WebApplication.Data).TotalAH) + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + IntToStr(1) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) +  '","' + IntToStr(TIWUserSession(WebApplication.Data).Alt_nao_classificadas) + '")';
        ExecSQL;

        SQL.Text :=
            'UPDATE current_stage SET heuransw ="-1" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
        ExecSQL;
        end;


     27: //(JÚLIA TOMÉ) AH SORTING - he_question
        begin
          SQL.Text :=
            'INSERT INTO he_question (id_problem,round,id_perg,ans_question_i,ans_question_ii) VALUES  ("' +
            (TIWUserSession(WebApplication.Data).id_problema) + '","' +
            IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' +
            IntToStr(TIWUserSession(WebApplication.Data).NumQuest) + '","' +
            IntToStr(0) + '","' +
            IntToStr(0) + '")';
          ExecSQL;
        end;

     28: // (Pedro) Este caso salva os perfis das alternativas caso já tenham sido definidos
       begin
          TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          StrAux := '';
          with TIWUserSession(WebApplication.Data) do
          begin
            for i := 0 to NumAlt - 1 do
            begin
              if i > 0 then
                StrAux := StrAux + '/';
              if class_min[i] = class_max[i] then
                StrAux := StrAux + IntToStr(class_min[i])
              else
                StrAux := StrAux + '-';
            end;
            // atualizando dandos atuais
            sql.Text := 'UPDATE current_stage SET alt_profiles ="' + (StrAux)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

          end;
        end; // 28

        /// caso criado para BD da planilha Intracritério///
        29: // cria cópia dos dados referentes a round inter, para situação em que decisor deseje reiniciar somente elic INTER
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
          end; // 36

    end;
  end;
end;

procedure TfrmSortingResults.SensivityAnalysis1Click(Sender: TObject);
var
  Data: string;
begin
  Data := datetostr(now);
  with TIWUserSession(WebApplication.Data) do
  begin
    if Sensitivity = true then
    begin
      Preencher_AS;
    end;

    // With
    if html = false then // verifica se o botão para gerar o arquivo em html foi feiclicado
    begin
      TIWAdvWebGridExcelIO5.AdvWebGrid := grdsensitivityanalysis;
      TIWAdvWebGridExcelIO5.XLSExport(TIWUserSession(WebApplication.Data)
          .Probname + ' - Sensitivity Analysis' + '.xls', WebApplication);
    end;
    Inherited;

  end;
  TIWUserSession(WebApplication.Data).html := false; // apos realizar a ação de exportar em html, onde ele tem um valor de "true", o componente será considerado como "false", afim de ser possivel realizar sua exportação em "xls" quando solicitado

end;

initialization

// TfrmSortingResults.SetAsMainForm;

end.
