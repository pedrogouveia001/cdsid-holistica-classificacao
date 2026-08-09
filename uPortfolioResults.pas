unit uPortfolioResults;

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
  IWCompTabControl, IWHelpTip, IWTMSPopup, IWTMSMenus, IWCompCheckbox;

type
  TfrmPortfolioResultados = class(TIWAppForm)
    rgnsav: TIWRegion;
    IWLabel25: TIWLabel;
    rgninstructions: TIWRegion;
    IWLabel26: TIWLabel;
    IWText7: TIWText;
    IWButton17: TIWButton;
    btnstartAS: TIWButton;
    IWText16: TIWText;
    TIWAdvWebGridExcelIO2: TTIWAdvWebGridExcelIO;
    IWRgnReset2: TIWRegion;
    btnResetNovoProblema: TIWButton;
    btnResetRecomcProblema: TIWButton;
    btnResetVoltar: TIWButton;
    btnlgout: TIWButton;
    rgncrisel: TIWRegion;
    IWLabel70: TIWLabel;
    grdcrisel: TIWGrid;
    btninstruc: TIWButton;
    btncrisel: TIWButton;
    IWLabel77: TIWLabel;
    rgnanalystlogin: TIWRegion;
    edtSenha: TIWEdit;
    eduser: TIWEdit;
    imgLogoCDSID: TIWImage;
    lblpleasechoose: TIWLabel;
    lbluserid: TIWLabel;
    lblSenha: TIWLabel;
    btnlogin: TIWButton;
    IWLabel57: TIWLabel;
    link: TIWLink;
    lblpasswarning: TIWLabel;
    btnvoltaranalystpage: TIWButton;
    IWLabel78: TIWLabel;
    lblemailwarning: TIWLabel;
    IWTimer1: TIWTimer;
    IWLabel14: TIWLabel;
    IWImage2: TIWImage;
    IWRegion1: TIWRegion;
    tmr3: TIWTimer;
    IWBtnvarycrit: TIWButton;
    IWRegion3: TIWRegion;
    rgnimagemax: TIWRegion;
    imagemax: TIWImage;
    btnclosemax: TIWButton;
    iwrgnLegendDH: TIWRegion;
    iwImgLegendDh: TIWImage;
    btnlegenddhclose: TIWButton;
    IWLabel89: TIWLabel;
    IWImgcabedh: TIWImage;
    tmrhasse: TIWTimer;
    TIWAdvWebGridExcelIO1: TTIWAdvWebGridExcelIO;
    TIWAdvWebGridExcelIO3: TTIWAdvWebGridExcelIO;
    TIWAdvWebGridExcelIO4: TTIWAdvWebGridExcelIO;
    tbctrlAS: TIWTabControl;
    TbCtrlP0: TIWTabPage;
    TbCtrlP1: TIWTabPage;
    IWLabel27: TIWLabel;
    cmbbxAS: TIWComboBox;
    IWLblallcrit: TIWLabel;
    btnasp: TIWButton;
    btnASwv: TIWButton;
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
    btnasok: TIWButton;
    edtpercentprofilesvar: TIWEdit;
    IWLabel92: TIWLabel;
    IWLabel91: TIWLabel;
    IWButton14: TIWButton;
    IWText8: TIWText;
    pmnResetoption: TPopupMenu;
    Insertanewproblem1: TMenuItem;
    Restartthecurrentproblem1: TMenuItem;
    Logout1: TMenuItem;
    pmnHelp: TPopupMenu;
    About1: TMenuItem;
    UserGuide1: TMenuItem;
    English1: TMenuItem;
    Portuguese1: TMenuItem;
    AnalystLogin1: TMenuItem;
    AnalystLogout1: TMenuItem;
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
    pMnExporting: TPopupMenu;
    InputOutputData1: TMenuItem;
    Summaryofquestionsanswered1: TMenuItem;
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
    IWLabel79: TIWLabel;
    IWRegion46: TIWRegion;
    IWImage20: TIWImage;
    IWLink21: TIWLink;
    IWImage10: TIWImage;
    IWImage54: TIWImage;
    rgnACSSA: TIWRegion;
    IWImage13: TIWImage;
    IWText3: TIWText;
    IWRgnanalisedesensibilidade: TIWRegion;
    imgsensgraph: TIWImage;
    IWLabel28: TIWLabel;
    IWButton19: TIWButton;
    IWLabel23: TIWLabel;
    IWLabel62: TIWLabel;
    IWLabel22: TIWLabel;
    cmbxgroupindex: TIWComboBox;
    IWLabel63: TIWLabel;
    btnback: TIWButton;
    btnmximc: TIWButton;
    IWImage11: TIWImage;
    IWLabel80: TIWLabel;
    IWLabel9: TIWLabel;
    IWImage41: TIWImage;
    IWLink8: TIWLink;
    IWImage56: TIWImage;
    IWImage57: TIWImage;
    IWRegion7: TIWRegion;
    IWText9: TIWText;
    IWText10: TIWText;
    IWImage7: TIWImage;
    IWImage8: TIWImage;
    IWLabel29: TIWLabel;
    chrtsensitivity: TChart;
    Series5: TBarSeries;
    Series4: TBarSeries;
    IWRegion6: TIWRegion;
    grddeviation: TIWGrid;
    IWRegion2: TIWRegion;
    grdaltinout: TIWGrid;
    IWRegion8: TIWRegion;
    grdcrivar: TIWGrid;
    IWRegion40: TIWRegion;
    rgnrulevizualization: TIWRegion;
    lblr01: TIWLabel;
    imgHEsp: TIWImage;
    lblviz: TIWLabel;
    lbltypeofview: TIWLabel;
    IWLabel47: TIWLabel;
    IWLabel48: TIWLabel;
    btnrecommendationpage: TIWButton;
    IWImage15: TIWImage;
    IWLabel10: TIWLabel;
    IWLink2: TIWLink;
    IWImage14: TIWImage;
    IWLabel11: TIWLabel;
    IWImage43: TIWImage;
    txtrecommends: TIWText;
    IWLink10: TIWLink;
    rgnreference: TIWRegion;
    IWText23: TIWText;
    IWButton5: TIWButton;
    IWRegion28: TIWRegion;
    lblRecommendation: TIWLabel;
    lblcriterios: TIWLabel;
    lblProbDev: TIWLabel;
    lblNorecommendation: TIWLabel;
    IWLabel12: TIWLabel;
    IWLabel13: TIWLabel;
    lblPesorecom: TIWLabel;
    IWRegion30: TIWRegion;
    IWText15: TIWText;
    IWLabel59: TIWLabel;
    IWImage16: TIWImage;
    IWRegion29: TIWRegion;
    IWText14: TIWText;
    IWLabel52: TIWLabel;
    IWRegion34: TIWRegion;
    lblAlternativas: TIWLabel;
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
    pMnExportingC: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    pMnExprtingP: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    RestartIntra: TMenuItem;
    Intercriteriaevaluation1: TMenuItem;
    IWRgnfinaltabela: TIWRegion;
    btnResetRgnFinalTabela: TIWButton;
    pmnbROR: TTIWPopupMenuButton;
    btnstopelicitation: TIWButton;
    btnGraficoBarras: TIWButton;
    btnGraficoRadar: TIWButton;
    btnGraficoBolha: TIWButton;
    grdexport: TTIWAdvWebGrid;
    btnrecommendationT: TIWButton;
    grdexport1: TTIWAdvWebGrid;
    IWImage12: TIWImage;
    IWLabel4: TIWLabel;
    IWLabel50: TIWLabel;
    IWImage38: TIWImage;
    IWLink4: TIWLink;
    mmngraphicsT: TTIWMainMenu;
    lblCRFR: TIWLabel;
    pmnbHR: TTIWPopupMenuButton;
    IWImage51: TIWImage;
    IWImage52: TIWImage;
    chcklstbxResults: TTIWCheckListBox;
    btnUpFR: TIWButton;
    CmbxResults: TIWComboBox;
    imgING1: TIWImage;
    imgPORT1: TIWImage;
    txtEVHE: TIWText;
    chckbxhidec: TIWCheckBox;
    RgnAHT: TIWRegion;
    rgnHEG: TIWRegion;
    lblHEG0: TIWLabel;
    IWLabel118: TIWLabel;
    IWLink22: TIWLink;
    RgnHEG4: TIWRegion;
    IWRegion54: TIWRegion;
    lblHERSAFR: TIWLabel;
    txtHEG2: TIWText;
    IWLink24: TIWLink;
    hlptpHESAFR: TTIWHelpTip;
    IWRegion56: TIWRegion;
    lblHEAFR: TIWLabel;
    lblHERSBAFR: TIWLabel;
    IWRegion53: TIWRegion;
    lblHESRPFR: TIWLabel;
    CmbxHE: TIWComboBox;
    IWLink23: TIWLink;
    hlptpHESRPFR: TTIWHelpTip;
    RgnHEG1: TIWRegion;
    rdgrpHEG1: TIWRadioGroup;
    btnHEG1: TIWButton;
    hlptpHEA1: TTIWHelpTip;
    RgnHEG2: TIWRegion;
    lblHEWFR: TIWLabel;
    rdbtnEXp1: TTIWRadioButton;
    rdbtnEXp2: TTIWRadioButton;
    rdbtnEXp3: TTIWRadioButton;
    BtnOKHEG2: TIWButton;
    BtnBackHEG1: TIWButton;
    RgnHEG3: TIWRegion;
    BtnCancelHEG1: TIWButton;
    btnOKHEG3: TIWButton;
    lblWHEG1: TIWLabel;
    IWRegion50: TIWRegion;
    lblHECSAFR: TIWLabel;
    txtHEG1: TIWText;
    IWRegion52: TIWRegion;
    lblHECAltFR: TIWLabel;
    CmbxHEAG1: TIWComboBox;
    IWRegion51: TIWRegion;
    lblHECAFR: TIWLabel;
    rdgrpHEG2: TIWRadioGroup;
    lblHEG1: TIWLabel;
    TbCtrlvisualizations: TIWTabControl;
    TbCtrlP3: TIWTabPage;
    IWImage6: TIWImage;
    lblBGFR: TIWLabel;
    Chart1: TChart;
    IWRegion45: TIWRegion;
    lblBVFCEFR: TIWLabel;
    lblBHCEFR: TIWLabel;
    lblCEFR: TIWLabel;
    txtBCEFR: TIWText;
    lblBLinesFR1: TIWLabel;
    txtLVFFR1: TIWText;
    IWRegion44: TIWRegion;
    lblBNFR: TIWLabel;
    txtBNFR: TIWText;
    TbCtrlvisualizationsPage0: TIWTabPage;
    TbCtrlP2: TIWTabPage;
    lblRGFR: TIWLabel;
    IWImage5: TIWImage;
    Chart3: TChart;
    Series2: TRadarSeries;
    IWRegion32: TIWRegion;
    lblRVFFR: TIWLabel;
    lblRSExpFR: TIWLabel;
    lblRSFR: TIWLabel;
    lblRCEFR: TIWLabel;
    txtRCEFR: TIWText;
    IWRegion42: TIWRegion;
    lblRLFR: TIWLabel;
    lblRCOFR: TIWLabel;
    IWRegion43: TIWRegion;
    txtRNFR: TIWText;
    lblRNFR: TIWLabel;
    TbCtrlP4: TIWTabPage;
    lblHDFR: TIWLabel;
    btnUHDFR: TIWButton;
    btnLHDFR: TIWButton;
    btnSIHDFR: TIWButton;
    btnhasse1: TIWButton;
    IWRegion48: TIWRegion;
    lblhassemessage: TIWLabel;
    TIWFadeImage2: TTIWFadeImage;
    TbCtrlP00: TIWTabPage;
    IWImage4: TIWImage;
    lblBGrFR: TIWLabel;
    Chart2: TChart;
    Series1: TBarSeries;
    IWRegion25: TIWRegion;
    txtBVFFR: TIWText;
    lblBCEFR: TIWLabel;
    lblBBFR: TIWLabel;
    lblBLinesFR: TIWLabel;
    txtLVFFR: TIWText;
    IWRegion26: TIWRegion;
    lblBrNFR: TIWLabel;
    txtBrNFR: TIWText;
    TbCtrlP01: TIWTabPage;
    lnkrelations: TIWLink;
    lnkfinalize: TIWLink;
    PmnlblExporting: TTIWPopupMenuLabel;
    lnkweightsgraph: TIWLink;
    PmnlSensitivity: TTIWPopupMenuLabel;
    RgnRelationsMatrix: TIWRegion;
    lblrel: TIWLabel;
    btnclose: TIWButton;
    lblMexplanation: TIWLabel;
    rgnauxtable: TIWRegion;
    grdrelations: TIWGrid;
    rgnauxrel: TIWRegion;
    Txtrel: TIWText;
    lbllegind: TIWLabel;
    rgntable: TIWRegion;
    grdchoosepoa: TIWGrid;
    lbltitle: TIWLabel;
    lblranking: TIWLabel;
    LblQA: TIWLink;
    lblnQA: TIWLink;
    rgnexporting: TIWRegion;
    IWLabel43: TIWLabel;
    btnexportation: TIWButton;
    IWButton10: TIWButton;
    IWButton12: TIWButton;
    IWLink15: TIWLink;
    rgnasq: TIWRegion;
    IWLabel24: TIWLabel;
    edtinst: TIWEdit;
    IWButton15: TIWButton;
    RgnAttentionT: TIWRegion;
    C: TIWLabel;
    lblWDT1: TIWLabel;
    lblWDT2: TIWLabel;
    IWRegion36: TIWRegion;
    rgnNoteExp: TIWRegion;
    txtSDAFR: TIWText;
    lblHENFR: TIWLabel;
    RgnSteps: TIWRegion;
    txtstepswarning: TIWText;
    lblstepwarning: TIWLabel;
    txtWHEG2: TIWText;
    rgnrusfinishing: TIWRegion;
    lblConfirmFR: TIWLabel;
    IWImage3: TIWImage;
    IWRegion11: TIWRegion;
    txtrusfinishing: TIWText;
    btnYesIFR: TIWButton;
    btnNoIFR: TIWButton;
    iwrgnCaixaDialogoResultado: TIWRegion;
    lblWEEFR: TIWLabel;
    IWImage1: TIWImage;
    rgnwarning: TIWRegion;
    txtCaixaDialogoResults: TIWText;
    IWButton4: TIWButton;
    rgnHEQ0: TIWRegion;
    lblSOCFR: TIWLabel;
    Btnhey: TIWButton;
    IWLink9: TIWLink;
    imgEbD: TIWImage;
    ImgHE: TIWImage;
    rdbtnHEFR: TTIWRadioButton;
    rdbtnEDFR: TTIWRadioButton;
    IWButton21: TIWButton;
    hlptpSOC: TTIWHelpTip;
    btnokhe0: TIWButton;

    procedure IWButton21Click(Sender: TObject);
    procedure IWRgnfinaltabelaCreate(Sender: TObject);
    // procedure ConstruirMatrizCusto;
    procedure Barras(Escala: integer);
    procedure Radar(Escala: integer);
    procedure Bolhas(Escala: integer);
    procedure EscalaRazao;
    procedure IWButton22Click(Sender: TObject);
    procedure IWButton32Click(Sender: TObject);

    procedure IWButton33Click(Sender: TObject);
    procedure IWButton12Click(Sender: TObject);
    procedure btnhenClick(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure IWButton23Click(Sender: TObject);
    // procedure IWRadioGroup1Click(Sender: TObject);
    // procedure IWButton27Click(Sender: TObject);
    // procedure IWButton28Click(Sender: TObject);
    // procedure chcklstbxBarrasAsyncExit(Sender: TObject;
    // EventParams: TStringList);
    // procedure chcklstbxBarrasAsyncChange(Sender: TObject;
    // EventParams: TStringList);
    // procedure IWButton23Click(Sender: TObject);  public
    /// ////////////////////////////////////////////////////////////////////////
    /// /// É necessário rodar as PL's após uma Avaliação Holística ////////////
    Procedure equivalence_Test_HE;
    procedure PLEscolha;
    procedure PLOrdenacao;
    procedure calmaxminweights;
    Procedure ConstruirMatrizgrupo;
    Function TrocaVP(Num: Double): String;
    Function TrocaPV(Num: String): Double;
    procedure btnanalistClick(Sender: TObject);
    procedure btnloginClick(Sender: TObject);
    procedure btnrecommendationTClick(Sender: TObject);
    procedure btnrecommendationpageClick(Sender: TObject);
    procedure btnResetRgnFinalTabelaClick(Sender: TObject);
    procedure btnASClick(Sender: TObject);
    procedure btnasokClick(Sender: TObject);
    procedure IWButton15Click(Sender: TObject);
    procedure btnaspClick(Sender: TObject);
    procedure btnASwvClick(Sender: TObject);
    procedure btnsaveASClick(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWButton17Click(Sender: TObject);
    /// / Procedimentos utilizados para Análise de Sensibilidade ////////////////
    procedure sensitivityA;
    Procedure Normaliza; // alterada em 16.02.22 para alinhar com avaliação Intra
    Procedure altglobalvaluep;
    Procedure PLOAS; // PL de ordenação
    Procedure PLEAS;
    procedure btnstartASClick(Sender: TObject);
    procedure cmbxgroupindexChange(Sender: TObject);
    procedure btnbackClick(Sender: TObject);
    procedure btnhasseClick(Sender: TObject);
    procedure IWButtonexpotClick(Sender: TObject);
    procedure btnexportationClick(Sender: TObject);
    procedure btnsi2Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure SalvarresultBD; // alterada em 16.02.22 para alinhar com avaliação Intra
    procedure btnResetNovoProblemaClick(Sender: TObject);
    procedure btnResetRecomcProblemaClick(Sender: TObject);
    procedure btnResetVoltarClick(Sender: TObject);
    procedure btnlgoutClick(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
    procedure IWButton19Click(Sender: TObject);
    procedure alinhamento;
    procedure btnRelationsClick(Sender: TObject);
    procedure btncloseClick(Sender: TObject);
    procedure btnanalistlogoutClick(Sender: TObject);
    procedure btnvoltaranalystpageClick(Sender: TObject);
    procedure btninstrucClick(Sender: TObject);
    procedure btncriselClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure IWTimer1Timer(Sender: TObject);
    procedure linkClick(Sender: TObject);
    procedure IWBtnvarycritClick(Sender: TObject);
    procedure IWButton13Click(Sender: TObject);
    procedure BtnMaxIClick(Sender: TObject);
    procedure btnclosemaxClick(Sender: TObject);
    procedure rgnhide2Create(Sender: TObject);
    // procedure IWButton14Click(Sender: TObject);
    procedure iwbtnCloseDHClick(Sender: TObject);
    procedure iwbtnSaveImageDHClick(Sender: TObject);
    procedure btnLegendDHClick(Sender: TObject);
    procedure btnlegenddhcloseClick(Sender: TObject);
    procedure tmrhasseTimer(Sender: TObject);
    procedure iwbtnRefreshDHClick(Sender: TObject);
    procedure IWButton10Click(Sender: TObject);

    // ** procedimentos problematica de portfolio**//
    procedure btnhasseDCBClick(Sender: TObject);
    procedure btngraphCBClick(Sender: TObject);
    procedure btnASCProfilesClick(Sender: TObject);
    procedure IWButton14Click(Sender: TObject);
    procedure tbctrlASChange(Sender: TObject);
    function TrocaVP1(Num: String): Double;
    procedure About1Click(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure Portuguese1Click(Sender: TObject);
    procedure TbCtrlvisualizationsChange(Sender: TObject);
    procedure btnhasse1Click(Sender: TObject);
    procedure btnFinalizeEEOClick(Sender: TObject);
    procedure btnfconfirmClick(Sender: TObject);
    procedure lnkrelationsClick(Sender: TObject);
    procedure LnkASClick(Sender: TObject);
    procedure lnkfinalizeClick(Sender: TObject);
    procedure IWButton41Click(Sender: TObject);
    procedure IWButton16Click(Sender: TObject);
    procedure CTabela;
    procedure preencher_Alt_Holistica;
    procedure avalia_niveis;
    procedure CmbxResultsChange(Sender: TObject);
    procedure btnHEG1Click(Sender: TObject);
    procedure btnOKHEG4Click(Sender: TObject);
    procedure IWButton42Click(Sender: TObject);
    procedure BtnOKHEG2Click(Sender: TObject);
    procedure BtnBackHEG1Click(Sender: TObject);
    procedure BtnCancelHEG1Click(Sender: TObject);
    procedure rdbtnHEFRClick(Sender: TObject);
    procedure rdbtnEDFRClick(Sender: TObject);
    procedure lnkcloseaboutClick(Sender: TObject);
    procedure btnokhe0Click(Sender: TObject);
    procedure BtnheyClick(Sender: TObject);
    procedure CmbxHEChange(Sender: TObject);
    procedure btnNaoFinalizarEOClick(Sender: TObject);
    //** Proc e func adicionados 25/11 **//
    Function trescasas(Num: Double): String;
    Procedure CalmaxminOverallValues;

    // procedimentos relacionados à avaliação intracrit
    procedure RestartIntraClick(Sender: TObject);
    procedure Intercriteriaevaluation1Click(Sender: TObject);
    procedure InterpolacaopontosAS(CriNorm: integer); // alterada em 16.02.22 para alinhar com avaliação Intra

  end;

  { var

    ConsRazao: array of array of Double;
    Escala: integer;
    TRE: array of boolean; }

implementation

uses lpsolve51, ServerController, UserSessionUnit,
  untIntro, uIntercritério, uAPI_SolveLP, uCode, uHasseDiagram,
  untIntraCriterio, uPerfis;
{$R *.dfm}

Function TfrmPortfolioResultados.TrocaVP(Num: Double): String;
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

Function TfrmPortfolioResultados.trescasas(Num: Double): String;
var
  S, formato: string;
  i, k: integer;
  inicia: boolean;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    if StrDInd <> -1 then
      formato := TIWUserSession(WebApplication.Data)
        .StrDecimal[TIWUserSession(WebApplication.Data).StrDInd]
    else
      formato := '0.00';

    StrDInd := -1;
  end;
  TIWUserSession(WebApplication.Data).StrDInd := -1;
  inicia := false;
  k := 0;
  S := FloatToStr(Num);
  // ** Contando o número de casas decimais **//
  for i := 2 to length(S) - 1 do
  begin
    if inicia = True then
      INC(k);
    if (S[i] = ',') or (S[i] = '.') then
      inicia := True;
  end;

  if k + 2 >= length(formato) then
    Result := FormatFloat(formato, Num)
  else
    Result := S;
end;

Function TfrmPortfolioResultados.TrocaVP1(Num: String): Double;
var
  S: string;
  i: integer;
begin
  S := Num;
  for i := 2 to length(S) - 1 do
    if S[i] = ',' then
      S[i] := '.';

  Result := StrToFloat(S);
end;

Function TfrmPortfolioResultados.TrocaPV(Num: String): Double;
var
  S: string;
  i: integer;
begin
  S := Num;
  for i := 1 to length(S) - 1 do
    if S[i] = '.' then
      S[i] := ',';

  Result := StrToFloat(S);
end;

procedure TfrmPortfolioResultados.Intercriteriaevaluation1Click
  (Sender: TObject);
begin
  // ** Indica que o problema foi reiniciado antes de ser retomado **//
  // repetindo comando do btn ResetRecom, evitando erro, assim como na unit inter
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).VerificaUnit := -50;
  TFrmEntrada.Create(WebApplication).Show;
  IWRgnReset2.Visible := false;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  SalvarresultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).estagio := 0;
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 2;
  SalvarresultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 13;
  SalvarresultBD;

  // case referente à registro criado na planilha intracrit
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 26;
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;

  // auxiliar que armazena a sequencia de respostas
  TIWUserSession(WebApplication.Data).Ans_seq := ' ';

end;

procedure TfrmPortfolioResultados.RestartIntraClick(Sender: TObject);
begin { alteração 21.02.22 }
  IWRgnReset2.Visible := false;
  TIWUserSession(WebApplication.Data).retornointra := 0; // como está resetando, problema volta para estagio inicial.
  Setlength(TIWUserSession(WebApplication.Data).newFtipo, 0);
  // alteração 22.02.22
  TTFrmIntraCriterio.Create(WebApplication).Show;
end;

procedure TfrmPortfolioResultados.CmbxHEChange(Sender: TObject);
var
  str, strnum: string;
  i: integer;
begin
  TIWUserSession(WebApplication.Data).PAH := true;
  // ** Informa que a Holística foi iniciada para Ordenação **//
  TIWUserSession(WebApplication.Data).AuxRSel := true;
  // ** Verifica o nível selecionado **//
  str := CmbxHE.Items[CmbxHE.ItemIndex];
  strnum := '';
  for i := 18 to length(str) do
    strnum := strnum + str[i];

  // ** Atualiza as visualizações **//
  CmbxResults.ItemIndex := StrToInt(strnum) - 1;
  CmbxResultsChange(self);
  IWButton41Click(self);
  lblstepwarning.Caption := 'Step 2:';
  txtstepswarning.Lines[0] :=
    'Now, use one of the visualizations to define a pair of incomparable alternatives to evaluate, check them in the box below and then click on "update".';
  // ** Exibe os componentes de seleção de alternativas **//
  // IWRegion49.Visible := true;
  chcklstbxResults.Visible := true;
  btnUpFR.Visible := true;
  if TbCtrlvisualizations.ActivePage = 0 then
  begin
    TbCtrlvisualizations.ActivePage := 2;
    TbCtrlvisualizationsChange(self);
  end;
end;

Procedure TfrmPortfolioResultados.equivalence_Test_HE;
var
  i, j, K, Nrest, a, b, C, Z, II, JJ, Numind: integer; // Contadores
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
  typeprob, dirprob, SF: integer;
  FO, Op: array of string;
  limit: array of Real;
  Rmod: array of AnsiString;
  var_int, var_bin: Array of integer;
  /// /vetores que carregam var de decisão inteiras e binárias
  Lp: THandle;
  S1: string;
  MAXDI, MAXDJ: Double;
  AuxHEz: array of integer; // vetor auxiliar para facilitar a elaboração de res_
  // trições com var binária da HE
  Relation: Boolean; // ** Indica se existe alguma relação de indiferença entre as alternativas
  MSSG: integer;
  MinVK: Double;
begin
  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).NumCrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  NumPOA := TIWUserSession(WebApplication.Data).NDA;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 4 + (NumPOA - 1);
  NumDV := NumCri;
  Setlength(MatCons, NumAlt, NumCri);
  Setlength(Criorder, NumCri);
  Setlength(MatA, Numl, NumCri + 1);
  Setlength(Op, Numl - 1);
  Setlength(limit, Numl - 1);
  Setlength(Rmod, Numl - 1);
  Setlength(VetPOA, NumPOA);
  Setlength(LimMax, NumCri - 1);
  Setlength(LimMin, NumCri - 1);
  Setlength(VetAH, NAH);
  Setlength(OPAH, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);

  typeprob := 0;
  /// Var de decisão são contínuas ///
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

  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for j := 0 to NAH - 1 do
    begin
      Setlength(VetAH[j], length(MATAH[j]));
      for i := 0 to length(MATAH[j]) - 1 do
        VetAH[j, i] := MATAH[j, i];
    end;
  end;

  for i := 0 to NumPOA - 1 do
  begin
    VetPOA[i] := TIWUserSession(WebApplication.Data).VetPOA[i];
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
          Setlength(MatA, Numl, NumDV + 1);
          Setlength(Op, Numl - 1);
          Setlength(limit, Numl - 1);
          Setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          Setlength(AuxHEz, length(VetAH[i - a]));
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            for j := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], j];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, j + 1] := MatCons[VetAH[(i - a), 1], Criorder[j]]
                - MatCons[VetAH[i - a, Z], j];
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
            Setlength(MatA, Numl, NumCri + 1);
            Setlength(Op, Numl - 1);
            Setlength(limit, Numl - 1);
            Setlength(Rmod, Numl - 1);
            /// / Acrescentando espaço para as restrições ///////////////////////
            for j := 0 to NumCri - 1 do
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -0.000001;
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end; // 2
    end; // case

  end;
  /// / Adiciona variáveis binárias ao problema caso necessário ////////////////
  Setlength(FO, NumDV);
  Setlength(var_bin, (NumDV - NumCri));
  Setlength(ResultVector, NumDV + 1);
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

  Setlength(ResultVector, 0);
  Setlength(ResultVector, NumDV + 1);
  Numind := 0;
  /// //////////////////////Max diferença////////////////////////////////////////
  /// Preenchendo o lado direito da restrição no vetor utilizado no LP_Solve //
  Setlength(limit, Nrest);
  for i := 0 to Nrest - 1 do
    limit[i] := MatA[i + 1, 0];

  /// Preenchendo as restrições no vetor utilizado no LP_Solve ///
  Setlength(Rmod, Nrest);
  for i := 0 to Nrest - 1 do
  begin
    Rmod[i] := TrocaVP(MatA[i + 1, 1]);
    for j := 2 to NumDV do
      Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, j]);
  end;
  Setlength(Op, Nrest);
  a := 1;
  Setlength(TIWUserSession(WebApplication.Data).MatIndiferenca, NumPOA, NumPOA);
  for i := 0 to NumPOA - 1 do
    for j := 0 to NumPOA - 1 do
      TIWUserSession(WebApplication.Data).MatIndiferenca[i, j] := '0';

  for II := 0 to NumPOA - 1 do
    for JJ := II + 1 to NumPOA - 1 do
    begin
      Relation := false;
      /// ///////// Verifica a max diferença entre II - JJ////////////////////

      /// / Preenche a função objetivo ///////////////////////////////////////
      for K := 0 to NumCri - 1 do
        FO[K] := TrocaVP(MatCons[VetPOA[II], Criorder[K]] - MatCons[VetPOA[JJ],
          Criorder[K]]);

      /// / Caso hajam var binárias no problema, seus coef na FO devem ser 0 ////
      for i := NumCri to NumDV - 1 do
      begin
        FO[i] := '0';
      end;

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

        MAXDI := ResultVector[0];
      end; // If SF

      /// ///////// Verifica a max diferença entre JJ - II////////////////////
      /// / Preenche a função objetivo ///////////////////////////////////////
      for K := 0 to NumCri - 1 do
        FO[K] := TrocaVP(MatCons[VetPOA[JJ], Criorder[K]] - MatCons[VetPOA[II],
          Criorder[K]]);

      /// / Caso hajam var binárias no problema, seus coef na FO devem ser 0 ////
      for i := NumCri to NumDV - 1 do
      begin
        FO[i] := '0';
      end;

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

        MAXDJ := ResultVector[0];
      end; // If SF

      /// / Deve-se considerar o módulo da máx diferença entre as alternativas ////
      if MAXDI < 0 then
        MAXDI := -MAXDI;
      if MAXDJ < 0 then
        MAXDJ := -MAXDJ;

      if (MAXDI <= ep) and (MAXDJ <= ep) then
      begin
        TIWUserSession(WebApplication.Data).MatIndiferenca[II, JJ] := 'I';
        TIWUserSession(WebApplication.Data).MatIndiferenca[JJ, II] := 'I';
        Relation := true;
        INC(Numind);
      end; // if
      if Relation = false then
      begin
        if (MAXDI <= 0.000001) then
          TIWUserSession(WebApplication.Data).MatIndiferenca[II, JJ] := 'NP';
        if (MAXDJ <= 0.000001) then
          TIWUserSession(WebApplication.Data).MatIndiferenca[JJ, II] := 'NP';
      end; //
      MAXDI := 0;
      MAXDJ := 0;
    end; // for JJ

  /// ///////////////////////////////////////////////////////////////////////////
  /// / Se todas as alternativas forem consideradas indiferentes, então o problema
  /// já foi resolvido /////////////////////////////////////////////////////////
  if Numind = (NumPOA * NumPOA - NumPOA) / 2 then
  begin
    TIWUserSession(WebApplication.Data).Sol := 1;
    TfrmPortfolioResultados.Create(WebApplication).Show;
  end;

end;

procedure TfrmPortfolioResultados.About1Click(Sender: TObject);
begin
  rgnAbout.Show;
end;

procedure TfrmPortfolioResultados.alinhamento;
begin
  IWRgnfinaltabela.Align := Talign(5);
  IWRgnresultadografico.Align := Talign(5);
  IWRgnanalisedesensibilidade.Align := Talign(5);
  rgnrulevizualization.Align := Talign(5);
  IWRgnReset2.Left := 454;
  IWRgnReset2.Top := 154;
  rgnanalystlogin.Left := 337;
  rgnanalystlogin.Top := 5;
  rgnsav.Left := 337;
  rgnsav.Top := 5;
  IWRgnAS.Left := 5;
  IWRgnAS.Top := 5;
  rgnimagemax.Top := 169;
  rgnimagemax.Left := 48;
  iwrgnHasseDiagram.Top := 5;
  iwrgnHasseDiagram.Left := 5;
  iwrgnLegendDH.Top := 10;
  iwrgnLegendDH.Left := 10;
  IWRegion9.Top := 406;
  IWRegion9.Left := 42; // ADRIANA
  rgnAbout.Left := 250;
  rgnAbout.Top := 180;

  if TIWUserSession(WebApplication.Data).Problematica <> 3 then
  begin
    TbCtrlP1.Visible := false;
    tbctrlAS.ActivePage := 0;
  end;
end;

procedure TfrmPortfolioResultados.altglobalvaluep;
/// / Equivale a PL de Escolha, porém é rodada apenas para obter o valor global
/// / final de todas as alternativas do problema//////////////////////////////
var
  i, j, K, Nrest, a, b, Z, II, JJ: integer; // Contadores
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
  typeprob, dirprob, SF: integer;
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
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////

  NumCri := TIWUserSession(WebApplication.Data).NumCrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  NumPOA := TIWUserSession(WebApplication.Data).NumAlt;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 3 + (NumPOA - 1);
  NumDV := NumCri;
  Setlength(MatCons, NumAlt, NumCri);
  Setlength(Criorder, NumCri);
  Setlength(MatA, Numl, NumCri + 1);
  Setlength(Op, Numl - 1);
  Setlength(limit, Numl - 1);
  Setlength(Rmod, Numl - 1);
  Setlength(VetPOA, NumPOA);
  Setlength(LimMax, NumCri - 1);
  Setlength(LimMin, NumCri - 1);
  Setlength(VetAH, NAH);
  Setlength(OPAH, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);
  Setlength(TIWUserSession(WebApplication.Data).Altglobalvalue, NumAlt);

  typeprob := 0;
  /// Var de decisão são contínuas ///
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

  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for j := 0 to NAH - 1 do
    begin
      Setlength(VetAH[j], length(MATAH[j]));
      for i := 0 to length(MATAH[j]) - 1 do
        VetAH[j, i] := MATAH[j, i];
    end;
  end;

  for i := 0 to NumAlt - 1 do
  begin
    VetPOA[i] := i;
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
          Setlength(MatA, Numl, NumDV + 1);
          Setlength(Op, Numl - 1);
          Setlength(limit, Numl - 1);
          Setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          Setlength(AuxHEz, length(VetAH[i - a]));
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            for j := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], j];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, j + 1] := MatCons[VetAH[(i - a), 1], Criorder[j]]
                - MatCons[VetAH[i - a, Z], j];
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
            Setlength(MatA, Numl, NumCri + 1);
            Setlength(Op, Numl - 1);
            Setlength(limit, Numl - 1);
            Setlength(Rmod, Numl - 1);
            /// / Acrescentando espaço para as restrições ///////////////////////
            for j := 0 to NumCri - 1 do
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -0.000001;
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end; // 2
    end; // case

  end;
  /// / Adiciona variáveis binárias ao problema caso necessário ////////////////
  Setlength(FO, NumDV);
  Setlength(var_bin, (NumDV - NumCri));
  Setlength(ResultVector, NumDV + 1);
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
    case HeurQuest of
      0:
        Begin
          MatA[a + 1, 1] := -0.5;
          MatA[a + 1, NumCri] := 1;
          Op[a] := '<=';
          INC(Nrest);
        End;
      1:
        Begin
          MatA[a + 1, 1] := 0.5;
          MatA[a + 1, NumCri] := -1;
          Op[a] := '<=';
          INC(Nrest);
        End;
    end;
  a := Nrest;

  dirprob := 1;
  /// Problema de maximização ///
  NumPOA := 0;

  for Z := 0 to TIWUserSession(WebApplication.Data).NumAlt - 1 do
  begin
    K := VetPOA[Z];
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
      begin
        TIWUserSession(WebApplication.Data).Altglobalvalue[Z] := ResultVector
          [0];
      end;

    end;

    /// Limpando as restrições de Otimalidade da Matriz.
    for j := 0 to NumCri do
    begin
      MatA[0, j] := 0;
      for i := a + 1 to Nrest do
        MatA[i, j] := 0;
    end;
    Nrest := a;
    Setlength(ResultVector, 0);
    Setlength(ResultVector, NumDV + 1);
  end;

end;

// ** Calcula os valores máximos e mínimos globais de todas as alternativas para a exportação **//
Procedure TfrmPortfolioResultados.CalmaxminOverallValues;
var
  i, J, k, Nrest, a, B, Z, II, JJ: integer; // Contadores
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
  typeprob, dirprob, SF: integer;
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
  MinVK: Double;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).Numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  NumPOA := TIWUserSession(WebApplication.Data).NumAlt;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 4 + 2 * length(TIWUserSession(WebApplication.Data)
      .PergNAdj);
  NumDV := NumCri;
  Setlength(MatCons, NumAlt, NumCri);
  Setlength(Criorder, NumCri);
  Setlength(MatA, Numl, NumCri + 1);
  Setlength(Op, Numl - 1);
  Setlength(limit, Numl - 1);
  Setlength(Rmod, Numl - 1);
  Setlength(VetPOA, NumPOA);
  Setlength(LimMax, NumCri - 1);
  Setlength(LimMin, NumCri - 1);
  Setlength(VetAH, NAH);
  Setlength(OPAH, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);
  Setlength(TIWUserSession(WebApplication.Data).MatOverallValues, NumAlt, 2);

  typeprob := 0;
  /// Var de decisão são contínuas ///
  for i := 0 to NumAlt - 1 do
  begin
    for J := 0 to NumCri - 1 do
      MatCons[i, J] := TIWUserSession(WebApplication.Data).ConsNorm[i, J];
  end;
  for i := 0 to NumCri - 1 do
    Criorder[i] := TIWUserSession(WebApplication.Data).vtrordem[i];
  for i := 0 to NumCri - 2 do
  begin
    // setlength(LimMin, i + 1);
    LimMin[i] := TIWUserSession(WebApplication.Data).LimMin[i];
    LimMax[i] := TIWUserSession(WebApplication.Data).LimMax[i];
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for J := 0 to NAH - 1 do
    begin
      Setlength(VetAH[J], length(MATAH[J]));
      for i := 0 to length(MATAH[J]) - 1 do
        VetAH[J, i] := TIWUserSession(WebApplication.Data).MATAH[J, i];
    end;
  end;

  for i := 0 to NumAlt - 1 do
  begin
    VetPOA[i] := i;
  end;

  /// ///////////////////////////////////////////////////////////////////////////
  /// Limpando a Matriz do problema de possíveis valores provindos de sua inicialização ///
  for i := 0 to Numl - 1 do
    for J := 0 to NumCri do
      MatA[i, J] := 0;

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
      - 55:
        begin
          /// Exclusão ///
          /// / Incrementa o número de var de decisão /////////////////////////
          NumDV := NumDV + 2 * (length(VetAH[i - a]) - 2);
          /// / Acrescentando espaço para as restrições //////////////////////
          Numl := Numl + 3 * (length(VetAH[i - a]) - 2) + 1;
          Setlength(MatA, Numl, NumDV + 1);
          Setlength(Op, Numl - 1);
          Setlength(limit, Numl - 1);
          Setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          Setlength(AuxHEz, length(VetAH[i - a]));
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            for J := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, J + 1] := MatCons[VetAH[(i - a), Z], Criorder[J]]
                - MatCons[VetAH[i - a, 1], Criorder[J]];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, J + 1] := MatCons[VetAH[(i - a), 1], Criorder[J]]
                - MatCons[VetAH[i - a, Z], Criorder[J]];
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

          for J := 0 to length(AuxHEz) - 1 do
            MatA[Nrest + 1, AuxHEz[J]] := -1;
          MatA[Nrest + 1, 0] := -1;
          Op[Nrest] := '<=';
          INC(Nrest);
          /// ///////////////////////////////////////////////////////////////////
          /// ////////////////////////////////////////////////////////////////
          typeprob := 3;
          /// Var de decisão são mistas ///
        end; // 1

      1:
        begin
          /// Exclusão 2 ///
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
              MatA[Nrest + 1, J + 1] := MatCons[VetAH[(i - a), 1], Criorder[J]]
                - MatCons[VetAH[i - a, Z], Criorder[J]];
            end; // j
            MatA[Nrest + 1, 0] := -Power(10, -5);
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end;

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
              MatA[Nrest + 1, J + 1] := MatCons[VetAH[(i - a), Z], Criorder[J]]
                - MatCons[VetAH[i - a, 1], Criorder[J]];
            end; // j
            MatA[Nrest + 1, 0] := -0.000001;
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end; // 2
    end; // case
  end;
  /// / Adiciona variáveis binárias ao problema caso necessário ////////////////
  Setlength(FO, NumDV);
  Setlength(var_bin, (NumDV - NumCri));
  Setlength(ResultVector, NumDV + 1);
  for J := 0 to length(var_bin) - 1 do
    var_bin[J] := NumCri + J;
  /// //////////////////////////////////////////////////////////////////////////
  a := Nrest;

  // ** Restrições das relações entre critérios não adjascentes **//
  with TIWUserSession(WebApplication.Data) do
  begin
    if length(PergNAdj) > 0 then
    begin
      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := MLimMin[PergNAdj[i - a, 0],
          PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
      end;

      a := Nrest;

      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1)
          * MLimMax[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := 1;
        Op[i] := '<=';
        INC(Nrest);
      end;
    end;
  end;

  a := Nrest;

  /// Preenchendo aa nova restrição Kn > limiar///
  MatA[a + 1, NumCri] := -1;
  MatA[a + 1, 0] := -MinVK;
  Op[a] := '<=';
  INC(Nrest);

  a := Nrest;

  /// Preenchendo as Restrições referentes à Normalização dos Pesos///
  for J := 0 to NumCri - 1 do
    MatA[a + 1, J + 1] := 1;
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

  NumPOA := 0;

  for Z := 0 to TIWUserSession(WebApplication.Data).NumAlt - 1 do
  begin
    k := Z;
    B := a;

    /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
    /// escala e os coeficientes são as consequências da alternativa normalizada ///
    for i := 0 to NumCri - 1 do
    begin
      MatA[0, i + 1] := MatCons[k, Criorder[i]];
      FO[i] := TrocaVP(MatCons[k, Criorder[i]]);
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
      for J := 2 to NumDV do
        Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, J]);
    end;

    /// Problema de maximização ///
    dirprob := 1;
    /// Resolvendo o PPL ///
    SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int, var_bin,
      Rmod, ResultVector, Lp, MSSG);

    SF := MSSG;
    if SF = 0 then
    begin
      /// Verificando se há algum K não nulo. ///
      B := 0;
      for i := 1 to NumCri do
        if ResultVector[i] <> 0 then
          break
        else
          INC(B);

      if B <> NumCri then
      begin
        // ** Salva o valor máximizado da alternativa **//
        TIWUserSession(WebApplication.Data).MatOverallValues[Z, 0] :=
          ResultVector[0];

        // ** Só é preciso solucionar o problema de minimização <=> a alternativa é POA **//
        // ** Além disso, as restrições e a FO é a mesma **//
        /// Problema de minimização ///
        dirprob := 0;
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumDV + 1);
        /// Resolvendo o PPL ///
        SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);
        if MSSG = 0 then
          // ** Salva o valor minimizado da alternativa **//
          TIWUserSession(WebApplication.Data).MatOverallValues[Z, 1] :=
            ResultVector[0];
      end;

    end;

    /// Limpando as restrições de Otimalidade da Matriz.
    for J := 0 to NumCri do
    begin
      MatA[0, J] := 0;
      for i := a + 1 to Nrest do
        MatA[i, J] := 0;
    end;
    Nrest := a;
    Setlength(ResultVector, 0);
    Setlength(ResultVector, NumDV + 1);
  end;

end;

procedure TfrmPortfolioResultados.PLEscolha;
var
  i, j, K, Nrest, a, b, Z, II, JJ: integer; // Contadores
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
  typeprob, dirprob, SF: integer;
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
  MinVK: Double;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).NumCrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  NumPOA := TIWUserSession(WebApplication.Data).NDA;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 4 + (NumPOA - 1) + 2 * length
    (TIWUserSession(WebApplication.Data).PergNAdj);
  NumDV := NumCri;
  Setlength(MatCons, NumAlt, NumCri);
  Setlength(Criorder, NumCri);
  Setlength(MatA, Numl, NumCri + 1);
  Setlength(Op, Numl - 1);
  Setlength(limit, Numl - 1);
  Setlength(Rmod, Numl - 1);
  Setlength(VetPOA, NumPOA);
  Setlength(LimMax, NumCri - 1);
  Setlength(LimMin, NumCri - 1);
  Setlength(VetAH, NAH);
  Setlength(OPAH, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);

  typeprob := 0;
  /// Var de decisão são contínuas ///
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

  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for j := 0 to NAH - 1 do
    begin
      Setlength(VetAH[j], length(MATAH[j]));
      for i := 0 to length(MATAH[j]) - 1 do
        VetAH[j, i] := TIWUserSession(WebApplication.Data).MATAH[j, i];
    end;
  end;

  for i := 0 to NumPOA - 1 do
  begin
    VetPOA[i] := TIWUserSession(WebApplication.Data).VetPOA[i];
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
      - 55:
        begin
          /// Exclusão ///
          /// / Incrementa o número de var de decisão /////////////////////////
          NumDV := NumDV + 2 * (length(VetAH[i - a]) - 2);
          /// / Acrescentando espaço para as restrições //////////////////////
          Numl := Numl + 3 * (length(VetAH[i - a]) - 2) + 1;
          Setlength(MatA, Numl, NumDV + 1);
          Setlength(Op, Numl - 1);
          Setlength(limit, Numl - 1);
          Setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          Setlength(AuxHEz, length(VetAH[i - a]));
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

      1:
        begin
          /// Exclusão 2 ///
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            /// / Acrescentando espaço para as restrições ///////////////////////
            INC(Numl);
            Setlength(MatA, Numl, NumCri + 1);
            Setlength(Op, Numl - 1);
            Setlength(limit, Numl - 1);
            Setlength(Rmod, Numl - 1);
            /// / Acrescentando espaço para as restrições ///////////////////////
            for j := 0 to NumCri - 1 do
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), 1], Criorder[j]]
                - MatCons[VetAH[i - a, Z], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -Power(10, -5);
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end;

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
            for j := 0 to NumCri - 1 do
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -0.000001;
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end; // 2
    end; // case
  end;
  /// / Adiciona variáveis binárias ao problema caso necessário ////////////////
  Setlength(FO, NumDV);
  Setlength(var_bin, (NumDV - NumCri));
  Setlength(ResultVector, NumDV + 1);
  for j := 0 to length(var_bin) - 1 do
    var_bin[j] := NumCri + j;
  /// //////////////////////////////////////////////////////////////////////////
  a := Nrest;

  // ** Restrições das relações entre critérios não adjascentes **//
  with TIWUserSession(WebApplication.Data) do
  begin
    if length(PergNAdj) > 0 then
    begin
      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := MLimMin[PergNAdj[i - a, 0],
          PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
      end;

      a := Nrest;

      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1)
          * MLimMax[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := 1;
        Op[i] := '<=';
        INC(Nrest);
      end;
    end;
  end;

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
          MatA[a + 1, IdAHeur + 1] := -WDPHEUR;
          MatA[a + 1, IdBHeur + 1] := 1;
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

  NumPOA := 0;

  for Z := 0 to TIWUserSession(WebApplication.Data).NDA - 1 do
  begin
    K := VetPOA[Z];
    b := a;

    /// Preenchendo as Restrições de Potencial Otimalidade ///
    /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
    for i := a to a + TIWUserSession(WebApplication.Data).NDA - 1 do
    begin
      if VetPOA[i - a] <> K then
      begin
        for j := 0 to NumCri - 1 do
          MatA[b + 1, j + 1] := MatCons[VetPOA[i - a], Criorder[j]] - MatCons
            [K, Criorder[j]];
        Op[b] := '<=';
        MatA[b + 1, 0] := -TIWUserSession(WebApplication.Data).Epson;
        INC(Nrest);
        INC(b);
      end;
    end;

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

    /// Problema de maximização ///
    dirprob := 1;
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

      Setlength(TIWUserSession(WebApplication.Data).Sconst, NumCri);

      if b <> NumCri then
      begin
        /// Atualização do Vetor de Alternativas Potencialmente Ótimas ///
        INC(NumPOA);
        Setlength(TIWUserSession(WebApplication.Data).VetPOA, NumPOA);
        Setlength(TIWUserSession(WebApplication.Data).VetPesos, NumPOA, NumCri);
        { Setlength(TIWUserSession(WebApplication.Data).VGMax, NumPOA);
          Setlength(TIWUserSession(WebApplication.Data).VGMin, NumPOA); }
        TIWUserSession(WebApplication.Data).VetPOA[NumPOA - 1] := K;
        { TIWUserSession(WebApplication.Data).VGMax[NumPOA - 1] := ResultVector
          [0]; }
        for i := 0 to NumCri - 1 do
        begin
          TIWUserSession(WebApplication.Data).Sconst[i] := ResultVector[i + 1];
          TIWUserSession(WebApplication.Data).VetPesos[NumPOA - 1, i] :=
            ResultVector[i + 1];
        end;
        { // ** Só é preciso solucionar o problema de minimização <=> a alternativa é POA **//
          // ** Além disso, as restrições e a FO é a mesma **//
          /// Problema de minimização ///
          dirprob := 0;
          Setlength(ResultVector, 0);
          Setlength(ResultVector, NumDV + 1);
          /// Resolvendo o PPL ///
          SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);
          if MSSG = 0 then
          TIWUserSession(WebApplication.Data).VGMin[NumPOA - 1] := ResultVector
          [0]; }
      end;

    end;

    /// Limpando as restrições de Otimalidade da Matriz.
    for j := 0 to NumCri do
    begin
      MatA[0, j] := 0;
      for i := a + 1 to Nrest do
        MatA[i, j] := 0;
    end;
    Nrest := a;
    Setlength(ResultVector, 0);
    Setlength(ResultVector, NumDV + 1);
  end;
  // ** Caso nenhuma POA seja encontrada, o problema pode estar no epson **//
  if (NumPOA = 0) and (not TIWUserSession(WebApplication.Data).PAH) then
  begin
    TIWUserSession(WebApplication.Data).Epson := 0;
    PLEscolha;
    Exit;
  end;

  TIWUserSession(WebApplication.Data).NDA := NumPOA;
  Setlength(VetPOA, NumPOA);
  for i := 0 to NumPOA - 1 do
    VetPOA[i] := TIWUserSession(WebApplication.Data).VetPOA[i];

  if TIWUserSession(WebApplication.Data).NDA = 1 then
  begin
    TIWUserSession(WebApplication.Data).Sol := 0;
    IWRgnfinaltabelaCreate(self);
    IWRgnfinaltabela.Show;
  end;

  /// //////////////////////Max diferença////////////////////////////////////////
  if (NumPOA > 1) and (NumPOA <= 3) and (ep <> 0) then
  begin
    /// Preenchendo o lado direito da restrição no vetor utilizado no LP_Solve //
    Setlength(limit, Nrest);
    for i := 0 to Nrest - 1 do
      limit[i] := MatA[i + 1, 0];

    /// Preenchendo as restrições no vetor utilizado no LP_Solve ///
    Setlength(Rmod, Nrest);
    for i := 0 to Nrest - 1 do
    begin
      Rmod[i] := TrocaVP(MatA[i + 1, 1]);
      for j := 2 to NumDV do
        Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, j]);
    end;
    Setlength(Op, Nrest);
    a := 1;

    for II := 0 to NumPOA - 1 do
      for JJ := II + 1 to NumPOA - 1 do
      begin
        /// ///////// Verifica a max diferença entre II - JJ////////////////////

        /// / Preenche a função objetivo ///////////////////////////////////////
        for K := 0 to NumCri - 1 do
          FO[K] := TrocaVP
            (MatCons[VetPOA[II], Criorder[K]] - MatCons[VetPOA[JJ], Criorder[K]]
            );

        /// Resolvendo o PPL ///
        SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);

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

          MAXDI[II] := ResultVector[0];
        end; // If SF

        /// ///////// Verifica a max diferença entre JJ - II////////////////////
        /// / Preenche a função objetivo ///////////////////////////////////////
        for K := 0 to NumCri - 1 do
          FO[K] := TrocaVP
            (MatCons[VetPOA[JJ], Criorder[K]] - MatCons[VetPOA[II], Criorder[K]]
            );

        /// Resolvendo o PPL ///
        SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);

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

          MAXDJ[II] := ResultVector[0];
        end; // If SF
      end; // for JJ

    a := 0;
    /// / Deve-se considerar o módulo da máx diferença entre as alternativas ////
    for i := 0 to NumPOA - 1 do
    begin
      if MAXDI[i] < 0 then
        MAXDI[i] := -MAXDI[i];
      if MAXDJ[i] < 0 then
        MAXDJ[i] := -MAXDJ[i];
    end;

    for i := 0 to NumPOA - 1 do
      if (MAXDI[i] <= ep) and (MAXDJ[i] <= ep) then
        INC(a)
      else
        break;

    // ** Se as POAS forem equivalentes, interrompe a elicitação **//
    if (a = NumPOA) or (TIWUserSession(WebApplication.Data).Epson = 0) then
    begin
      TIWUserSession(WebApplication.Data).Sol := 1;
    end;

    IWRgnfinaltabelaCreate(self);
    IWRgnfinaltabela.Show;

  end; // if numpoa

  // ** Calculando novos limites max e min para os valores dos pesos **//
  calmaxminweights;
end;

procedure TfrmPortfolioResultados.Normaliza;
var
  i, j: integer;
  Zmax, Zmin: Double;
  matriztestesnormal: array of array of Double;
begin
  /// / Esse procedimento realiza a avaliação intracritério para realização da
  /// análise de sensibilidade ///////////////////////////////////////////////
  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(MconsN, NumAlt, NumCrit);

    for j := 0 to NumCrit - 1 do

    // alteração feita em 16.02.22//
    begin
      if TIWUserSession(WebApplication.Data).VtrcritBisec[j] = true then
      // criterio passou pela interpolação para transformar escala
      begin
        InterpolacaopontosAS(j);
      end // if VtrcritBisec[J] = true
      else

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
              end; // 4
          end; // cases

        end; // for i
    end; // for j
  end;

  { //se passou pela avaliação intrac, interpola os pontos da matriz - alteração em 20.01.22
    for j := 0 to TIWUserSession(WebApplication.Data).Numcrit-1 do
    begin
    if TIWUserSession(WebApplication.Data).VtrcritBisec[J] = true then
    // criterio passou pela interpolação para transformar escala
    begin
    InterpolacaopontosAS;
    end; //if VtrcritBisec[J] = true
    end; //for j }
end;

procedure TfrmPortfolioResultados.InterpolacaopontosAS(CriNorm: integer);
/// neste procedimento é realizado o calculo das conseq normalizadas, a partir de interpolação linear
/// utilizando os pontos elicitados  - alterado em 16.02.22
var
  i, j, l, x, q: integer;
  Ct: integer; // Índice do critério que está sendo transformado por meio da interpolação, na ordem da planilha de input
  AuxMatrizfixa: array of array of Double;
  AuxCons: Double;

begin
  with TIWUserSession(WebApplication.Data) do

  begin
    Setlength(AuxMatrizfixa, length(matrizpontosreais), NumCrit);
    Setlength(AuxConsNorm, NumAlt, NumCrit);
    x := CriNorm;

    for i := 0 to 4 do // alteração em 16.02
    begin
      for CriNorm := 0 to length(matrizpontosreais[0]) - 1 do // mtz local pega pontos elicitados, para não mexer na matriz global
      begin
        AuxMatrizfixa[i, CriNorm] := TIWUserSession(WebApplication.Data)
          .matrizpontosreais[i, CriNorm];
      end; // for crinorm
    end; // for i

    for i := 0 to NumAlt - 1 do
    begin
      AuxCons := TIWUserSession(WebApplication.Data).MatrizConsR[i, x]; // Vai ajudar  código a ficar mais limpo e permitir ver  valor da cons em questão

      if Typeofcrit[x] = 1 then // maximização
      begin

        If AuxCons = TIWUserSession(WebApplication.Data).BoundMn[x] then
          AuxConsNorm[i, x] := 0;
        If AuxCons = TIWUserSession(WebApplication.Data).BoundMx[x] then
          AuxConsNorm[i, x] := 1

        else // se não forem os extremos, interpola os intermediarios

          if (AuxCons > AuxMatrizfixa[1, 0]) and
          (AuxCons <= AuxMatrizfixa[3, 0]) then // interpolação 0 e 0,25
        begin
          AuxConsNorm[i, x] := 0.25 * ((AuxCons - AuxMatrizfixa[1, 0]) /
              (AuxMatrizfixa[3, 0] - AuxMatrizfixa[1, 0]));
        end;

        if (AuxCons > AuxMatrizfixa[3, 0]) and (AuxCons <= AuxMatrizfixa[2, 0])
          then // interpolação 0,25 e 0,5
        begin
          TIWUserSession(WebApplication.Data).AuxConsNorm[i, x] := 0.25 +
            (0.25 * ((AuxCons - AuxMatrizfixa[3, 0]) /
                (AuxMatrizfixa[2, 0] - AuxMatrizfixa[3, 0])));
        end;

        if (AuxCons > AuxMatrizfixa[2, 0]) and (AuxCons <= AuxMatrizfixa[4, 0])
          then // interpolação 0,5 e 0,75
        begin
          AuxConsNorm[i, x] := 0.5 +
            (0.25 * ((AuxCons - AuxMatrizfixa[2, 0]) /
                (AuxMatrizfixa[4, 0] - AuxMatrizfixa[2, 0])));
        end;

        if (AuxCons > AuxMatrizfixa[4, 0]) and (AuxCons < AuxMatrizfixa[0, 0])
          then // interpolação 0,75 e 1
        begin
          AuxConsNorm[i, x] := 0.75 +
            (0.25 * ((AuxCons - AuxMatrizfixa[4, 0]) /
                (AuxMatrizfixa[0, 0] - AuxMatrizfixa[4, 0])));
        end;
      end; // typeof =1

      if Typeofcrit[x] = 0 then // minimização
      begin

        If AuxCons = TIWUserSession(WebApplication.Data).BoundMn[x] then
          AuxConsNorm[i, x] := 1;
        If AuxCons = TIWUserSession(WebApplication.Data).BoundMx[x] then
          AuxConsNorm[i, x] := 0

        else // se não forem os extremos, interpola os intermediarios

          if (AuxCons < AuxMatrizfixa[1, 0]) and
          (AuxCons >= AuxMatrizfixa[3, 0]) then // interpolação 0 e 0,25
        begin
          AuxConsNorm[i, x] := 0.25 * ((AuxCons - AuxMatrizfixa[1, 0]) /
              (AuxMatrizfixa[3, 0] - AuxMatrizfixa[1, 0]));
        end;

        if (AuxCons < AuxMatrizfixa[3, 0]) and (AuxCons >= AuxMatrizfixa[2, 0])
          then // interpolação 0,25 e 0,5
        begin
          AuxConsNorm[i, x] := 0.25 +
            (0.25 * ((AuxCons - AuxMatrizfixa[3, 0]) /
                (AuxMatrizfixa[2, 0] - AuxMatrizfixa[3, 0])));
        end;

        if (AuxCons < AuxMatrizfixa[2, 0]) and (AuxCons >= AuxMatrizfixa[4, 0])
          then // interpolação 0,5 e 0,75
        begin
          TIWUserSession(WebApplication.Data).AuxConsNorm[i, x] := 0.5 +
            (0.25 * ((AuxCons - AuxMatrizfixa[2, 0]) /
                (AuxMatrizfixa[4, 0] - AuxMatrizfixa[2, 0])));
        end;

        if (AuxCons < AuxMatrizfixa[4, 0]) and (AuxCons > AuxMatrizfixa[0, 0])
          then // interpolação 0,75 e 1
        begin
          AuxConsNorm[i, x] := 0.75 +
            (0.25 * ((AuxCons - AuxMatrizfixa[4, 0]) /
                (AuxMatrizfixa[0, 0] - AuxMatrizfixa[4, 0])));
        end;
      end; // typeof =0
    end; // for i

    // salvando normalização local na consnorm da AS//
    for i := 0 to NumAlt - 1 do
      TIWUserSession(WebApplication.Data).MconsN[i, x] := AuxConsNorm[i, x];

  end; // webapp
end; // procedimento

procedure TfrmPortfolioResultados.PLEAS;
var
  i, j, K, Nrest, a, b, Z, II, JJ: integer; // Contadores
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
  typeprob, dirprob, SF: integer;
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
  MinVK: Double;
  MLimMinSA, MLimMaxSA: array of array of Real;
  HeurQValue: Real;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  NumCri := TIWUserSession(WebApplication.Data).NumCrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  NumPOA := TIWUserSession(WebApplication.Data).NumAlt;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 4 + (NumPOA - 1) + 2 * length
    (TIWUserSession(WebApplication.Data).PergNAdj);
  NumDV := NumCri;
  Setlength(MatCons, NumAlt, NumCri);
  Setlength(Criorder, NumCri);
  Setlength(MatA, Numl, NumCri + 1);
  Setlength(Op, Numl - 1);
  Setlength(limit, Numl - 1);
  Setlength(Rmod, Numl - 1);
  Setlength(VetPOA, NumPOA);
  Setlength(LimMax, NumCri - 1);
  Setlength(LimMin, NumCri - 1);
  Setlength(VetAH, NAH);
  Setlength(OPAH, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);

  typeprob := 0;
  /// Var de decisão são contínuas ///
  for i := 0 to NumAlt - 1 do
  begin
    for j := 0 to NumCri - 1 do
      MatCons[i, j] := TIWUserSession(WebApplication.Data).MconsN[i, j];
  end;
  for i := 0 to NumCri - 1 do
    Criorder[i] := TIWUserSession(WebApplication.Data).vtrordem[i];

  // ** Pergunta da Heurística **//
  if not TIWUserSession(WebApplication.Data).AsVF then
    HeurQValue := TIWUserSession(WebApplication.Data).WDPHEUR
  else
    HeurQValue := TIWUserSession(WebApplication.Data).WDPHEURAS;

  // ** Obtendo o espaço de pesos **//
  for i := 0 to NumCri - 2 do
  begin
    // setlength(LimMin, i + 1);
    if not TIWUserSession(WebApplication.Data).AsVF then
    begin
      LimMin[i] := TIWUserSession(WebApplication.Data).LimMin[i];
      LimMax[i] := TIWUserSession(WebApplication.Data).LimMax[i];
    end
    else
    begin
      // ** SE for a AS da intra **//
      LimMin[i] := TIWUserSession(WebApplication.Data).LimMinASI[i];
      LimMax[i] := TIWUserSession(WebApplication.Data).LimMaxASI[i];
    end;
  end;

  if length(TIWUserSession(WebApplication.Data).PergNAdj) > 0 then
  begin
    // ** Recebe os limites entre não adjascentes **//
    Setlength(MLimMinSA, NumCri, NumCri);
    Setlength(MLimMaxSA, NumCri, NumCri);
    for i := 0 to NumCri - 1 do
      for j := i + 1 to NumCri - 1 do
        if not TIWUserSession(WebApplication.Data).AsVF then
        begin
          MLimMinSA[i, j] := TIWUserSession(WebApplication.Data).MLimMin[i, j];
          MLimMaxSA[i, j] := TIWUserSession(WebApplication.Data).MLimMax[i, j];
        end
        else
        begin
          // ** SE for a AS da intra **//
          MLimMinSA[i, j] := TIWUserSession(WebApplication.Data)
            .MLimMinASI[i, j];
          MLimMaxSA[i, j] := TIWUserSession(WebApplication.Data)
            .MLimMaxASI[i, j];
        end;

  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for j := 0 to NAH - 1 do
    begin
      Setlength(VetAH[j], length(MATAH[j]));
      for i := 0 to length(MATAH[j]) - 1 do
        VetAH[j, i] := MATAH[j, i];
    end;
  end;

  for i := 0 to NumPOA - 1 do
  begin
    VetPOA[i] := i;
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
      - 55:
        begin
          /// Exclusão ///
          /// / Incrementa o número de var de decisão /////////////////////////
          NumDV := NumDV + 2 * (length(VetAH[i - a]) - 2);
          /// / Acrescentando espaço para as restrições //////////////////////
          Numl := Numl + 3 * (length(VetAH[i - a]) - 2) + 1;
          Setlength(MatA, Numl, NumDV + 1);
          Setlength(Op, Numl - 1);
          Setlength(limit, Numl - 1);
          Setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          Setlength(AuxHEz, length(VetAH[i - a]));
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            for j := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, j + 1] := TIWUserSession(WebApplication.Data)
                .ConsNorm[VetAH[(i - a), Z], Criorder[j]] - TIWUserSession
                (WebApplication.Data).ConsNorm[VetAH[i - a, 1], Criorder[j]];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, j + 1] := TIWUserSession(WebApplication.Data)
                .ConsNorm[VetAH[(i - a), 1], Criorder[j]] - TIWUserSession
                (WebApplication.Data).ConsNorm[VetAH[i - a, Z], Criorder[j]];
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
        end; // -55

      1:
        begin
          /// Exclusão 2 ///
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            /// / Acrescentando espaço para as restrições ///////////////////////
            INC(Numl);
            Setlength(MatA, Numl, NumCri + 1);
            Setlength(Op, Numl - 1);
            Setlength(limit, Numl - 1);
            Setlength(Rmod, Numl - 1);
            /// / Acrescentando espaço para as restrições ///////////////////////
            for j := 0 to NumCri - 1 do
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), 1], Criorder[j]]
                - MatCons[VetAH[i - a, Z], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -Power(10, -5);
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end;

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
            for j := 0 to NumCri - 1 do
            begin
              MatA[Nrest + 1, j + 1] := TIWUserSession(WebApplication.Data)
                .ConsNorm[VetAH[(i - a), Z], Criorder[j]] - TIWUserSession
                (WebApplication.Data).ConsNorm[VetAH[i - a, 1], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -0.000001;
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end; // 2
    end; // case

  end;
  /// / Adiciona variáveis binárias ao problema caso necessário ////////////////
  Setlength(FO, NumDV);
  Setlength(var_bin, (NumDV - NumCri));
  Setlength(ResultVector, NumDV + 1);
  for j := 0 to length(var_bin) - 1 do
    var_bin[j] := NumCri + j;
  /// //////////////////////////////////////////////////////////////////////////
  a := Nrest;

  // ** Restrições das relações entre critérios não adjascentes **//
  with TIWUserSession(WebApplication.Data) do
  begin
    if length(PergNAdj) > 0 then
    begin
      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := MLimMinSA[PergNAdj[i - a, 0],
          PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
      end;

      a := Nrest;

      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1)
          * MLimMaxSA[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := 1;
        Op[i] := '<=';
        INC(Nrest);
      end;
    end;
  end;

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
          MatA[a + 1, IdAHeur + 1] := -HeurQValue;
          MatA[a + 1, IdBHeur + 1] := 1;
          Op[a] := '<=';
          INC(Nrest);
        End;
      1:
        Begin
          MatA[a + 1, IdAHeur + 1] := HeurQValue;
          MatA[a + 1, IdBHeur + 1] := -1;
          Op[a] := '<=';
          INC(Nrest);
        End;
    end;
  a := Nrest;

  dirprob := 1;
  /// Problema de maximização ///
  NumPOA := 0;

  for Z := 0 to TIWUserSession(WebApplication.Data).NumAlt - 1 do
  begin
    K := Z;
    b := a;
    /// Preenchendo as Restrições de Potencial Otimalidade ///
    /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
    for i := a to a + TIWUserSession(WebApplication.Data).NumAlt - 1 do
    begin
      if VetPOA[i - a] <> K then
      begin
        for j := 0 to NumCri - 1 do
          MatA[b + 1, j + 1] := MatCons[i - a, Criorder[j]] - MatCons
            [K, Criorder[j]];
        Op[b] := '<=';
        INC(Nrest);
        INC(b);
      end;
    end;

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
    try
      /// Resolvendo o PPL ///
      SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int, var_bin,
        Rmod, ResultVector, Lp, MSSG);

    Except
      if MSSG = -3 then
        WebApplication.ShowMessage(
          'An unexpected error occurred with the constraints in LP_Solve. It would be better if you close the page and access FITradeoff again. We appologize for this inconvenience.');
    end;

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
      begin
        /// Atualização do Vetor de Alternativas Potencialmente Ótimas ///
        INC(NumPOA);
        Setlength(TIWUserSession(WebApplication.Data).VetSol, NumPOA);
        TIWUserSession(WebApplication.Data).VetSol[NumPOA - 1] := K;
      end;
    end;

    /// Limpando as restrições de Otimalidade da Matriz.
    for j := 0 to NumCri do
    begin
      MatA[0, j] := 0;
      for i := a + 1 to Nrest do
        MatA[i, j] := 0;
    end;
    Nrest := a;
    Setlength(ResultVector, 0);
    Setlength(ResultVector, NumDV + 1);
  end;

  if NumPOA = 0 then
    TIWUserSession(WebApplication.Data).UnfeasibleR := true
  else
    TIWUserSession(WebApplication.Data).UnfeasibleR := false;
end;

procedure TfrmPortfolioResultados.sensitivityA;
var
  i, j, K, auxc, Alt, G, Z: integer;
  Float, LS, LI: Double;
  Mxc, Mnc, R: Array of Double;
  nsol: integer;
  FSol: Array [0 .. 1] of integer;
  AInc, Aexc: Array of Boolean;
  FInc, Fexc, PAlt, NPOA: Array of integer;
  Matrizprofile: array of array of string;
  Profile: String;
  Exc, P, POA: Boolean;
  level: array of Boolean; // Indica se um determinado nível foi alterado
begin
  K := 0;
  FSol[0] := 0;
  FSol[1] := 0;
  grdaltinout.RowCount := 1;
  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(Mxc, NumCrit);
    Setlength(Mnc, NumCrit);
    Setlength(MatrizConsR, NumAlt, NumCrit);
    Setlength(vtrASordchange, NumAlt);
    // ** Vetor auxiliar para a construção do perfil ** //
    Setlength(R, 5);

    /// //// Inicializando importantes vetores da AS de Escolha ///////////////
    if Problematica = 4 then
    begin
      // ** vetor que Armazena a frequência de exclusão das alternativas ** //
      Setlength(Fexc, NumAlt);
      Setlength(TIWUserSession(WebApplication.Data).AuxFexc, NumAlt);
      // ** vetor que Armazena a frequência de inclusão das alternativas ** //
      Setlength(FInc, NumAlt);
      Setlength(TIWUserSession(WebApplication.Data).AuxFInc, NumAlt);
      // ** vetor que Armazena o número de perfis distintos das alternativas ** //
      Setlength(PAlt, NumAlt);
      for i := 0 to NumAlt - 1 do
      begin
        FInc[i] := 0;
        Fexc[i] := 0;
      end;
    end;
    /// ///////////////////////////////////////////////////////////////////////
    /// //// Inicializando var  da AS de Ordenação ///////////////
    if Problematica = 1 then
    begin
      // ** Inicia a var com 0 para que posteriormente seja preenchida com a maior quantidade de níveis encontrada ** //
      NumLevels := 0;
      Setlength(MatrizprofileOrdenacao, 0, 0, 0);
      Setlength(MatrizprofileOrdenacao, NumAlt, NumAlt, 2);
      for i := 0 to NumAlt - 1 do
        for j := 0 to NumAlt - 1 do
          for G := 0 to 2 - 1 do
            MatrizprofileOrdenacao[i, j, G] := '0';

      for i := 0 to length(Marizpercent) - 1 do
        for j := 0 to length(Marizpercent[i]) - 1 do
          Marizpercent[i, j] := 0;
      Setlength(Flevelsc, 0);
      Setlength(Flevelsc, Rlevels);
      Setlength(level, 0);
      Setlength(level, TIWUserSession(WebApplication.Data).Rlevels);
      for i := 0 to Rlevels - 1 do
        Flevelsc[i] := 0;

    end;
    /// ///////////////////////////////////////////////////////////////////////
    /// / Inicio da construção dos cenários aleatórios /////////////////////////
    while K < ninst do
    begin
      auxc := -1;

      for i := 0 to NumCrit - 1 do
      begin
        for j := 0 to NumAlt - 1 do
        begin

          /// / Caso o critério tenha sido selecionado para a análise, gera-se as conseq
          /// / aleatoriamente ///////////////////////////////////////////////////////////
          if CriSel[i] then
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
            if (ConsMatrix[j, vtrordem[i]] * (1 + Pmax[i] / 100))
              <= Max[vtrordem[i]] then
              LS := (ConsMatrix[j, vtrordem[i]] * (1 + Pmax[i] / 100))
            else
              LS := Max[vtrordem[i]];
            if (ConsMatrix[j, vtrordem[i]] * (1 - Pmin[i] / 100))
              >= Min[vtrordem[i]] then
              LI := (ConsMatrix[j, vtrordem[i]] * (1 - Pmin[i] / 100))
            else
              LI := Min[vtrordem[i]];

            /// / Esse comando escreve a nova conseq para a alternativa, e é possível
            /// observar que ela será no mínimo a consequência mínima do espaço de
            /// consequências original e no máximo a consequência máxima quando
            /// float = 1////////////////////////////////////////////////////////
            MatrizConsR[j, vtrordem[i]] := Float * (LS - LI) + LI;
            // ** Caso o critério seja discreto, arrendonda-se a conseq **//
            if (Typeofcrit[vtrordem[i]] = 3) or (Typeofcrit[vtrordem[i]] = 2)
              then
              MatrizConsR[j, vtrordem[i]] := Round(MatrizConsR[j, vtrordem[i]]);

            /// / Este comando garante que nenhuma consequência vai ser maior
            /// que a maior consequência real, nem menor que a menor consequência
            /// real ////////////////////////////////////////////////////////////
            if MatrizConsR[j, vtrordem[i]] > Max[vtrordem[i]] then
              MatrizConsR[j, vtrordem[i]] := Max[vtrordem[i]];
            if MatrizConsR[j, vtrordem[i]] < Min[vtrordem[i]] then
              MatrizConsR[j, vtrordem[i]] := Min[vtrordem[i]];

          end // If crisel
          else
            /// / Caso o critério não esteja sofrendo variação, a conseq continua a
            /// sendo a consequência original ////////////////////////////////////
            MatrizConsR[j, vtrordem[i]] := ConsMatrix[j, i];

          /// / Inicializa os vetores com a primeira consequência da Matriz
          if j = 0 then
          begin
            Mnc[i] := MatrizConsR[j, i];
            Mxc[i] := MatrizConsR[j, i];
          end;

          /// / Verificando as maiores e menores consequências
          if MatrizConsR[j, vtrordem[i]] > Mxc[i] then
            Mxc[i] := MatrizConsR[j, vtrordem[i]];
          if MatrizConsR[j, vtrordem[i]] < Mnc[i] then
            Mnc[i] := MatrizConsR[j, vtrordem[i]];
        end; // J

        /// / Este comando garante que haverão a maior e a menor consequência real
        /// no novo espaço de consequências ///////////////////////////////////
        for j := 0 to NumAlt - 1 do
        begin
          if MatrizConsR[j, vtrordem[i]] = Mxc[i] then
          begin
            MatrizConsR[j, vtrordem[i]] := Max[vtrordem[i]];
            break;
          end;
        end;

        for j := 0 to NumAlt - 1 do
        begin
          if MatrizConsR[j, vtrordem[i]] = Mnc[i] then
          begin
            MatrizConsR[j, vtrordem[i]] := Min[vtrordem[i]];
            break;
          end;
        end;
      end; // I

      Normaliza;

      // ** Escolha ** //
      if Problematica = 4 then
      begin
        // ** Matriz que armazena os perfis das alternativas incluídas ** //
        Setlength(Matrizprofile, NumAlt);
        // ** vetor que sinaliza as alternativas incluídas ** //
        Setlength(AInc, 0);
        Setlength(AInc, NumAlt);

        // ** vetor que sinaliza as alternativas Excluídas ** //
        Setlength(Aexc, 0);
        Setlength(Aexc, NumAlt);
        // ** Vetor auxiliar para verificação se a alt pertence ou não ao conjunto original **//
        Setlength(NPOA, 0);
        Setlength(NPOA, NumAlt);
        auxc := 0;
        /// / Chama a PL com as novas consequências ////
        PLEAS;
        nsol := length(VetSol);
        for G := 0 to NumAlt - 1 do
        begin
          AInc[G] := false;
          Aexc[G] := false;
          NPOA[G] := 0;
          auxc := 0;
          POA := false;
        end;
        /// / Pode ser que o vetor solução seja igual ///
        if nsol = NDA then
        begin
          /// / Se o conjunto solução for o mesmo, as alternativas aparecerão na mesma ordem
          /// devido a ordem em que a PL é rodada ////////////////////////////////
          for i := 0 to nsol - 1 do
            if VetPOA[i] = VetSol[i] then
            begin
              INC(FInc[VetPOA[i]]);
              auxc := auxc + 1;
            end;
          /// /Caso a solução seja igual, incrementa-se FSOL[0] que armazena a quantidade
          /// de vezes em que o conjunto sol ficou inalterado. Caso contrário
          /// incrementa´se FSol[1]////////////////////////////////////////////
          if auxc = nsol then
            INC(FSol[0], 1)
          else
            INC(FSol[1]);
        end // Nda = nsol
        else
          INC(FSol[1]);

        if auxc <> nsol then
        begin
          G := 0;
          /// //// Verifica se alguma alternativa foi incluída ////////
          for i := 0 to nsol - 1 do
            for j := 0 to NDA - 1 do
              if VetSol[i] = VetPOA[j] then
              begin
                INC(FInc[VetSol[i]]);
              end
              else
                INC(NPOA[VetSol[i]]);

          for i := 0 to NumAlt - 1 do
            if NPOA[i] = NDA then
              AInc[i] := true;

          /// //// Verifica se alguma alternativa foi Excluída ////////
          for i := 0 to NDA - 1 do
            for j := 0 to nsol - 1 do
              if VetPOA[i] <> VetSol[j] then
              begin
                Aexc[VetPOA[i]] := true;
              end
              else
              begin
                Aexc[VetPOA[i]] := false;
                break;
              end;

          for i := 0 to NumAlt - 1 do
          begin
            if AInc[i] then
            begin
              INC(FInc[i]);
            end; // Se a alt foi incluída

            if Aexc[i] then
            begin
              INC(Fexc[i]);
            end; // Se a alt foi excluída
          end; // I

        end; // AuxC <> NDA

        // adicionando Finc e Fexc a variaveis globais
        for i := 0 to NumAlt - 1 do
        begin
          // if True then

          TIWUserSession(WebApplication.Data).AuxFInc[i] := FInc[i];
          TIWUserSession(WebApplication.Data).AuxFexc[i] := Fexc[i];
        end;
      end; // Problemática = 0
      INC(K);
    end; // While K

    // ** Limpando os dados contidos nas séries ** //
    chrtsensitivity.series[0].Clear;
    chrtsensitivity.series[1].Clear;

    // ** Armazena a informação da mudança do resultado original **//
    auxfsol[0] := FSol[0];
    auxfsol[1] := FSol[1];

    if Problematica = 4 then
    begin
      // ** Adiciona as alternativas originais ao gráfico ** //
      for i := 0 to NDA - 1 do
      begin
        chrtsensitivity.series[0].AddXY
          (VetPOA[i], (100 - (Fexc[VetPOA[i]] / ninst) * 100), FloatToStr
            (100 - (Fexc[VetPOA[i]] / ninst) * 100) + '%');

        // ** Coloca o nome da alt no eixo x ** //
        chrtsensitivity.BottomAxis.Items.Add(VetPOA[i], AltSiglas[VetPOA[i]]);
      end;
      grddeviation.Cell[0, 0].Text := 'Original Subset of P.O.A';
      grddeviation.Cell[0, 1].Text := 'Number of Alternatives';
      grddeviation.Cell[0, 2].Text := '% Original Subset';
      grddeviation.Cell[0, 3].Text := '% Change';

      // ** Escreve o conjunto das POAS no Grid ** //
      grddeviation.Cell[1, 0].Text := '{';
      for i := 0 to NDA - 1 do
      begin
        grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + AltSiglas
          [VetPOA[i]];
        if i < (NDA - 1) then
          grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + ', '
        else
          grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + '}';
      end;
      grddeviation.Cell[1, 1].Text := IntToStr(NumAlt);
      grddeviation.Cell[1, 2].Text := FloatToStr((FSol[0] / ninst) * 100);
      grddeviation.Cell[1, 3].Text := FloatToStr((FSol[1] / ninst) * 100);

      grdaltinout.Cell[0, 0].Text := 'Included(Inc)/Excluded(Exc) Alternative';
      // grdaltinout.Cell[0, 1].Text := 'Profile(';
      K := 0;
      grdaltinout.Cell[0, 1].Text := '% Ocurrence';

      K := 1;
      for i := 0 to NumAlt - 1 do
      begin
        if (Fexc[i] > 0) or (FInc[i] > 0) then
        // ** Significa que há ao menos um perfil para o qual a alt i é inc ou exc do conjunto solução ** //
        begin
          // ** Se a Alternativa foi excluída do conjunto original ** //
          if Fexc[i] > 0 then
          begin
            INC(K);
            grdaltinout.RowCount := K;
            grdaltinout.Cell[K - 1, 0].Text := AltSiglas[i] + '(Exc)';
            grdaltinout.Cell[K - 1, 1].Text := FloatToStr
              ((Fexc[i] / ninst) * 100);
          end;

          // ** Se a Alternativa foi incluída no conjunto original ** //
          for G := 0 to NDA - 1 do
            if i = VetPOA[G] then
              POA := true;

          if (FInc[i] > 0) then
          begin
            if not POA then
            begin
              INC(K);
              grdaltinout.RowCount := K;
              grdaltinout.Cell[K - 1, 0].Text := AltSiglas[i] + '(Inc)';
              grdaltinout.Cell[K - 1, 1].Text := FloatToStr
                ((FInc[i] / ninst) * 100);

              // ** Adiciona as alternativas incluídas ao gráfico ** //
              chrtsensitivity.series[1].AddXY(i, ((FInc[i] / ninst) * 100),
                FloatToStr((FInc[i] / ninst) * 100) + '%');

              // ** Coloca o nome da alt no eixo x ** //
              chrtsensitivity.BottomAxis.Items.Add(i, AltSiglas[i]);
            end;

          end;
          POA := false;
        end; // PALT > 0
      end; // FOR I -> NUMALT

      chrtsensitivity.LeftAxis.Increment := 0.2; // ?

      chrtsensitivity.BottomAxis.LabelsAlternate;
      chrtsensitivity.BottomAxis.Items.Automatic := false;
      chrtsensitivity.LeftAxis.Maximum := 100;
      chrtsensitivity.LeftAxis.MaximumOffset := 16;
      chrtsensitivity.LeftAxis.Minimum := 0;
      chrtsensitivity.LeftAxis.Increment := 20;

      imgsensgraph.Picture.Bitmap.Assign(chrtsensitivity.TeeCreateBitmap
          (clWebPURPLE, rect(0, 0, imgsensgraph.Width, imgsensgraph.Height)));
      imagemax.Picture.Bitmap.Assign
        (chrtsensitivity.TeeCreateBitmap(clWebPURPLE, rect
            (0, 0, imagemax.Width, imagemax.Height)));
    end; // PROBLEMATICA  = 0

    // Limpar nome das alternativas do eixo X
    chrtsensitivity.BottomAxis.Items.Clear;
    TIWUserSession(WebApplication.Data).Finish := true;

  end; // With
end;

procedure TfrmPortfolioResultados.tbctrlASChange(Sender: TObject);
begin
  case tbctrlAS.ActivePage of
    0:
      begin
        // ** Atualizando instruções **//
        IWLabel26.Caption :=
          'In order to perform the Sensitivity Analysis, first select varying either the consequence space or the profiles.';
        IWText7.Lines[0] :=
          '1) To vary the consequences space for a criterion, click on "Percentage" and enter the variation percentage values; or';
        IWText8.Lines[0] :=
          '2) Click on "Without Variation" if you do not want to vary the original consequences space for the selected criterion.';
        IWText16.Lines[0] :=
          '3) If you click on "Start" before having selected all the criteria you wanted to vary, the non-selected criteria will not be varyied.';
      end;
    1:
      begin
        // ** Atualizando instruções **//
        IWText7.Lines[0] :=
          '1) To vary the profiles it is necessary to introduce a percentage value to be considered in the profiles variation;';
        IWText8.Lines[0] :=
          '2) Click on "Start" to initiate the sensitivity analysis of the profiles;';
        IWText16.Lines[0] :=
          '3) The same percentage value is applyied for all the defined profiles.';

      end;
  end;
end;

procedure TfrmPortfolioResultados.TbCtrlvisualizationsChange(Sender: TObject);
begin

  // **Determina se o aviso de seleção de alternativas deve estar visível **//
  if (RgnHEG4.Visible) and (txtHEG2.Lines.Count = 0) then
    txtWHEG2.Visible := true;
  // ** Define o tamanho da caixa de ajuda **//
  if (RgnHEG4.Visible) then
    RgnSteps.Height := 346 + 31;

  if TbCtrlvisualizations.ActivePage = TbCtrlP00.TabOrder then
  begin
    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '3';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 3;

    /// /Se a holística está sendo realizada, não deve mostrar os elementos para
    /// seleção de alternativas até que o nível seja esclhido
    if (RgnHEG4.Visible) and (lblstepwarning.Caption = 'Step 1:') then
      Exit;
    // ** Exibe os componentes de seleção de alternativas **//
    // IWRegion49.Visible := true;
    chcklstbxResults.Visible := true;
    btnUpFR.Visible := true;
    if (not TIWUserSession(WebApplication.Data).AuxRSel) and
      (TIWUserSession(WebApplication.Data).Problematica = 1) then
      CmbxResults.Visible := true
    else
      CmbxResults.Visible := false;
  end;

  if TbCtrlvisualizations.ActivePage = TbCtrlP01.TabOrder then
  begin
    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '0';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 0;

    // ** Controla os componentes de seleção de alternativas **//
    if (TIWUserSession(WebApplication.Data).Problematica = 1) then
      if (TIWUserSession(WebApplication.Data).AuxRSel) then
      begin
        // IWRegion49.Visible := true;
        chcklstbxResults.Visible := true;
        btnUpFR.Visible := true;
      end
      else
      begin
        CmbxResults.Visible := false;
        // IWRegion49.Visible := false;
        chcklstbxResults.Visible := false;
        txtWHEG2.Visible := false;
        btnUpFR.Visible := false;
      end;

    if (TIWUserSession(WebApplication.Data).Problematica = 4) and
      (TIWUserSession(WebApplication.Data).Sol = -5) then
    begin
      // IWRegion49.Visible := true;
      chcklstbxResults.Visible := true;
      btnUpFR.Visible := true;
    end;

  end;

  if TbCtrlvisualizations.ActivePage = TbCtrlP2.TabOrder then
  begin
    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '1';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 1;

    /// /Se a holística está sendo realizada, não deve mostrar os elementos para
    /// seleção de alternativas até que o nível seja esclhido
    if (RgnHEG4.Visible) and (lblstepwarning.Caption = 'Step 1:') then
      Exit;
    // ** Exibe os componentes de seleção de alternativas **//
    // IWRegion49.Visible := true;
    chcklstbxResults.Visible := true;
    btnUpFR.Visible := true;
    if (not TIWUserSession(WebApplication.Data).AuxRSel) and
      (TIWUserSession(WebApplication.Data).Problematica = 1) then
      CmbxResults.Visible := true
    else
      CmbxResults.Visible := false;
  end;

  if TbCtrlvisualizations.ActivePage = TbCtrlP3.TabOrder then
  begin
    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '2';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 2;

    /// /Se a holística está sendo realizada, não deve mostrar os elementos para
    /// seleção de alternativas até que o nível seja esclhido
    if (RgnHEG4.Visible) and (lblstepwarning.Caption = 'Step 1:') then
      Exit;
    // ** Exibe os componentes de seleção de alternativas **//
    // IWRegion49.Visible := true;
    chcklstbxResults.Visible := true;
    btnUpFR.Visible := true;
    if (not TIWUserSession(WebApplication.Data).AuxRSel) and
      (TIWUserSession(WebApplication.Data).Problematica = 1) then
      CmbxResults.Visible := true
    else
      CmbxResults.Visible := false;
  end;

  if TbCtrlvisualizations.ActivePage = TbCtrlP4.TabOrder then
  begin
    // ** Oculta os componentes da seleção de alternativas para não confundir o DM **//
    // IWRegion49.Visible := false;
    chcklstbxResults.Visible := false;
    btnUpFR.Visible := false;
    CmbxResults.Visible := false;
    txtWHEG2.Visible := false;
    RgnSteps.Height := 131;
  end;
end;

procedure TfrmPortfolioResultados.rdbtnEDFRClick(Sender: TObject);
begin
  rdbtnEDFR.Checked := true;
  rdbtnHEFR.Checked := false;
end;

procedure TfrmPortfolioResultados.rdbtnHEFRClick(Sender: TObject);
begin
  rdbtnEDFR.Checked := false;
  rdbtnHEFR.Checked := true;
end;

procedure TfrmPortfolioResultados.tmrhasseTimer(Sender: TObject);
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
    lblhassemessage.Caption :=
      'An unexpected error has occurred, please, use the update button to generate diagram once again.';
    lblhassemessage.Visible := false;
    TbCtrlvisualizationsChange(self);
    // btnhasse.Enabled := true;
    tmrhasse.Enabled := false;
    btnhasse1.Enabled := true;
    iwbtnRefreshDH.Cursor := crAuto;
    iwbtnCloseDH.Cursor := crAuto;
    iwbtnSaveImageDH.Cursor := crAuto;
    btnLegendDH.Cursor := crAuto;
    iwrgnHasseDiagram.Cursor := crAuto;
  end;
end;

procedure TfrmPortfolioResultados.PLOAS;
/// / PL utilizada na Análise de Sensibilidade para problemática de Ordenação ///
var
  i, j, K, Nrest, a, b, C, Z, II, JJ, DNrel: integer; // Contadores
  m1, m2, m3: integer;
  NumCri, NumAlt, Numl, NAH: integer; // Número de critérios,
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
  MaxDIJ, MaxDJI: Double; // Armazena a máxima diferença entre duas alternativas
  Aux1, Aux2: Double;
  // VARIÁVEIS PARA A DLL DE C++
  MatB: matriz; // matriz usada pela dll em c++ para colocar as restrições e a função
  // valor Além de ser usada durante as iterações para serem guardados
  // os resultados do simplex até o resultado final
  icase: Pinteger; // ponteiro do c++ para indicar se existe ou não solução possível
  iposv: vetor; // vetor que guarda os subíndices das variáveis básicas
  izrov: vetor; // vetor que guarda os subíndices das variáveis não-básicas
  /// ////////// ** Para gerar a matriz de grupo ** /////////////////////////////
  MatrizKS, MatrizGrupos: Array of array of integer;
  DomCount, Grp: array of integer;
  grupo: integer;
  MinVK: Double;
  /// ///////////////////////////////////////////////////////////////////////////
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).NumCrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
  /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
  /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
  /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
  Numl := 2 * (NumCri - 1) + NAH + 4;
  Setlength(MatrizParaPar, NumAlt, NumAlt);
  Setlength(MatCons, NumAlt, NumCri);
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
  for i := 0 to NumAlt - 1 do
  begin
    for j := 0 to NumCri - 1 do
      MatCons[i, j] := TIWUserSession(WebApplication.Data).MconsN[i, j];
  end;
  for i := 0 to NumCri - 1 do
    Criorder[i] := TIWUserSession(WebApplication.Data).vtrordem[i];
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
      Setlength(VetAH[j], length(MATAH[j]));
      for i := 0 to length(MATAH[j]) - 1 do
        VetAH[j, i] := MATAH[j, i];
    end;
  end;

  for i := 0 to NumAlt - 1 do
    for j := 0 to NumAlt - 1 do
    begin
      MatrizParaPar[i, j] := 0;
    end;

  /// ///////////////////////////////////////////////////////////////////////////
  /// Limpando a Matriz do problema de possíveis valores provindos de sua inicialização ///
  for i := 0 to Numl - 1 do
    for j := 0 to NumCri do
      MatA[i, j] := 0;

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
  for i := a to a + NAH - 1 do
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
            for j := 0 to NumCri - 1 do
            begin
              MatA[i + 1, j + 1] := TIWUserSession(WebApplication.Data)
                .ConsNorm[VetAH[(i - a), Z], Criorder[j]] - TIWUserSession
                (WebApplication.Data).ConsNorm[VetAH[i - a, 1], Criorder[j]];
            end; // j
            MatA[i + 1, 0] := 0;
            INC(m1);
            INC(Nrest);
          end; // z
        end; // 2
    end; // case
  end;

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
          INC(m1);
        End;
      1:
        Begin
          MatA[a + 1, IdAHeur + 1] := 0.5;
          MatA[a + 1, IdBHeur + 1] := -1;
          Op[a] := '<=';
          INC(Nrest);
          INC(m1);
        End;
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
  for j := 0 to NumCri - 1 do
    MatA[a + 1, j + 1] := 1;
  MatA[a + 1, 0] := 1;
  Op[a] := '=';
  INC(Nrest);
  INC(m3);

  a := Nrest;
  /// ////////////////// Verifica as relações de dominância /////////////////////
  for II := 0 to NumAlt - 1 do
    for JJ := II + 1 to NumAlt - 1 do
      if (MatrizParaPar[II, JJ] = 0) and (MatrizParaPar[JJ, II] = 0) then
      begin

        for i := 0 to 103 - 1 do
          for j := 0 to 103 - 1 do
            MatB[i, j] := 0;

        /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
        /// escala e os coeficientes são as diferenças entre as consequências das//
        /// alternativa IJ normalizadas ///
        for i := 0 to NumCri - 1 do
        begin
          MatA[0, i + 1] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
          MatB[1, i + 2] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
          FO[i] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
        end;

        for j := 0 to NumCri - 1 do
          for i := 1 to Numl - 1 do
            if MatA[i, j + 1] <> 0 then
              MatB[i + 1, j + 2] := -MatA[i, j + 1];

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
            for j := 1 to Nrest do
            begin
              // iposv é o vetor com os subindices das variáveis básicas depois de
              // obter a solução
              if iposv[j] = i then
              begin
                ResultVector[i - 1] := MatB[j + 1, 1];
              end;
              // do if iposv
            end; // do for de k
          end; // do for de ii
          /// Verificando se há algum K não nulo. ///
          b := 0;
          for i := 0 to NumCri do
            if ResultVector[i] <> 0 then
              break
            else
              INC(b);

          MaxDIJ := 0;
          // Se obtem o valor da alternativa maximizada.
          for j := 0 to NumCri - 1 do
          begin
            MaxDIJ := MaxDIJ + FO[j] * ResultVector[j];
          end;
        end; // end do if viavel = 1

        for i := 0 to 103 - 1 do
          for j := 0 to 103 - 1 do
            MatB[i, j] := 0;

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

        for j := 0 to NumCri - 1 do
          for i := 1 to Numl - 1 do
            if MatA[i, j + 1] <> 0 then
              MatB[i + 1, j + 2] := -MatA[i, j + 1];

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
            for j := 1 to Nrest do
            begin
              // iposv é o vetor com os subindices das variáveis básicas depois de
              // obter a solução
              if iposv[j] = i then
              begin
                ResultVector[i - 1] := MatB[j + 1, 1];
              end;
              // do if iposv
            end; // do for de k
          end; // do for de ii
          /// Verificando se há algum K não nulo. ///
          b := 0;
          for i := 0 to NumCri - 1 do
            if ResultVector[i] <> 0 then
              break
            else
              INC(b);

          MaxDJI := 0;

          // Se obtem o valor da alternativa maximizada.
          for j := 0 to NumCri - 1 do
          begin
            MaxDJI := MaxDJI + FO[j] * ResultVector[j];
          end;
        end; // end do if viavel = 1

        /// /////////// Limpando o vetor de resultados /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);
        FreeMem(icase, SizeOf(integer));
        a := 0; // Contabilizará  número de relações estabelecidas
        b := 0; // Contabilizará  número de relações de indiferença estabelecidas

        if MaxDIJ < 0 then
          Aux1 := -MaxDIJ
        else
          Aux1 := MaxDIJ;
        if MaxDJI < 0 then
          Aux2 := -MaxDJI
        else
          Aux2 := MaxDJI;

        /// /Se a máx diferença entre as alternativas forem menores que o limiar /////
        /// de indiferença, então as alt são indiferentes /////////////////////
        if (Aux1 < ep) and (Aux2 < ep) then
        begin
          MatrizParaPar[II, JJ] := 2;
          MatrizParaPar[JJ, II] := 2;
        end
        else
        begin
          /// / Caso contrário, utiliza-se a seguinte regra para verificar a///////
          /// relação de dominância//////////////////////////////////////////////
          if (MaxDIJ > 0.000001) and (MaxDJI <= 0.000001) then
          begin
            MatrizParaPar[II, JJ] := 1;
            { for i := 0 to NumAlt - 1 do
              begin
              if MatrizParaPar[JJ, i] = 1 then
              MatrizParaPar[II, i] := 1;
              end; }
          end;
          if (MaxDIJ <= 0.000001) and (MaxDJI > 0.000001) then
          begin
            MatrizParaPar[JJ, II] := 1;
            { for i := 0 to NumAlt - 1 do
              begin
              if MatrizParaPar[JJ, i] = 1 then
              MatrizParaPar[II, i] := 1;
              end; }
          end;
        end;
      end; // For II

  Setlength(TIWUserSession(WebApplication.Data).MatrizSol, NumAlt, NumAlt);

  for i := 0 to NumAlt - 1 do
    for j := 0 to NumAlt - 1 do
      TIWUserSession(WebApplication.Data).MatrizSol[i, j] := MatrizParaPar
        [i, j];

  /// / Parte do procedimento para gerar o ranking das alternativas ////////////

  Setlength(MatrizKS, NumAlt, NumAlt + 5);
  Setlength(DomCount, NumAlt);

  for i := 0 to NumAlt - 1 do
  begin
    DomCount[i] := 0;
  end;

  /// /// Contabiliza o número de alt j que domina cada alternativa i //////////
  for i := 0 to NumAlt - 1 do
    for j := 0 to NumAlt - 1 do
      if MatrizParaPar[j, i] = 1 then
        DomCount[i] := DomCount[i] + 1;

  for i := 0 to NumAlt - 1 do
  begin
    MatrizKS[i, 0] := i + 1;
    MatrizKS[i, 1] := NumAlt - (i + 1);
  end;

  /// / Separa as alternativas na matriz com base no número de alternativas que //
  /// lhe domina //////////////////////////////////////////////////////////////
  for i := 0 to NumAlt - 1 do
  begin
    a := 0;
    K := MatrizKS[i, 1];
    for j := 0 to NumAlt - 1 do
      if DomCount[j] = K then
      begin
        MatrizKS[i, 4 + a] := j;
        INC(a);
      end;
    MatrizKS[i, 2] := a;
  end;

  /// / Calcula o número de alternativas acumuladas à cada linha da matriz //////
  MatrizKS[0, 3] := MatrizKS[0, 2];
  for i := 1 to NumAlt - 1 do
    MatrizKS[i, 3] := MatrizKS[i - 1, 3] + MatrizKS[i, 2];

  /// //////////// Contabiliza o número de grupos/posições ////////////////////
  grupo := 0;
  for i := NumAlt - 1 downto 0 do
  begin
    if MatrizKS[i, 0] = MatrizKS[i, 3] then
      grupo := grupo + 1;
    /// /////////////// Insere o grupo das alternativas ////////////////////////
    MatrizKS[i, NumAlt + 4] := grupo;
  end;
  /// / A Matriz de Grupos armazena os índices das alternativas divididos ///////
  /// entre os grupos/níveis no ranking das alternativas //////////////////////
  Setlength(MatrizGrupos, 0, 0);
  Setlength(TIWUserSession(WebApplication.Data).MatrizGruposAS, 0, 0);
  Setlength(MatrizGrupos, grupo, NumAlt + 1);
  Setlength(TIWUserSession(WebApplication.Data).MatrizGruposAS, grupo,
    NumAlt + 1);
  Setlength(Grp, grupo);
  /// / Armazena a maior quantidade de níveis gerados na análise de sensibilidade ////
  if TIWUserSession(WebApplication.Data).NumLevels < grupo then
    TIWUserSession(WebApplication.Data).NumLevels := grupo;
  /// / Preenchendo a primeira coluna da matriz com a posição do ranking ///////
  for i := 0 to grupo - 1 do
    MatrizGrupos[i, 0] := i + 1;

  /// / Escreve os índices daas alternativas nas linhas referentes a cada posição //
  /// do Ranking ////////////////////////////////////////////////////////////////
  for K := 1 to grupo do
  begin
    a := 0;
    for i := NumAlt - 1 downto 0 do
      if MatrizKS[i, NumAlt + 4] = K then
        if MatrizKS[i, 2] <> 0 then
          for j := 0 to (MatrizKS[i, 2] - 1) do
          begin
            MatrizGrupos[K - 1, a + 1] := MatrizKS[i, j + 4];
            TIWUserSession(WebApplication.Data).MatrizGruposAS[K - 1, a + 1] :=
              MatrizKS[i, j + 4];
            INC(a);
          end;
    Grp[K - 1] := a; // armazena o número de alt por grupo
  end;

  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(VAltPositions, NumAlt);
    for i := 0 to grupo - 1 do
      for j := 0 to Grp[i] - 1 do
        TIWUserSession(WebApplication.Data)
          .VAltPositions[MatrizGrupos[i, j + 1]] := MatrizGrupos[i, 0];

  end;

end;

procedure TfrmPortfolioResultados.calmaxminweights;
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
  Numl := 2 * (NumCri - 1) + 4 + 2 * length(TIWUserSession(WebApplication.Data)
      .PergNAdj);
  Setlength(MatCons, NumAlt, NumCri);
  Setlength(Criorder, NumCri);
  Setlength(MatA, Numl, NumCri + 1);
  Setlength(Op, Numl - 1);
  Setlength(limit, Numl - 1);
  Setlength(Rmod, Numl - 1);
  Setlength(LimMax, NumCri - 1);
  Setlength(LimMin, NumCri - 1);
  Setlength(VetAH, NAH);
  Setlength(OPAH, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);
  Setlength(MaxP, NumCri);
  Setlength(MinP, NumCri);
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
      Setlength(VetAH[j], length(MATAH[j]));
      for i := 0 to length(MATAH[j]) - 1 do
        VetAH[j, i] := MATAH[j, i];
    end;

    Setlength(MaxPeso, NumCri);
    Setlength(MinPeso, NumCri);
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
      - 55:
        begin
          /// Exclusão ///
          /// / Incrementa o número de var de decisão /////////////////////////
          NumDV := NumDV + 2 * (length(VetAH[i - a]) - 2);
          /// / Acrescentando espaço para as restrições //////////////////////
          Numl := Numl + 3 * (length(VetAH[i - a]) - 2) + 1;
          Setlength(MatA, Numl, NumDV + 1);
          Setlength(Op, Numl - 1);
          Setlength(limit, Numl - 1);
          Setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          Setlength(AuxHEz, length(VetAH[i - a]));
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
        end; // -55

      1:
        begin
          /// Exclusão 2 ///
          for Z := 2 to length(VetAH[i - a]) - 1 do
          begin
            /// / Acrescentando espaço para as restrições ///////////////////////
            INC(Numl);
            Setlength(MatA, Numl, NumCri + 1);
            Setlength(Op, Numl - 1);
            Setlength(limit, Numl - 1);
            Setlength(Rmod, Numl - 1);
            /// / Acrescentando espaço para as restrições ///////////////////////
            for j := 0 to NumCri - 1 do
            begin
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), 1], Criorder[j]]
                - MatCons[VetAH[i - a, Z], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -Power(10, -5);
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end;

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
  Setlength(FO, NumDV);
  Setlength(var_bin, (NumDV - NumCri));
  Setlength(ResultVector, NumDV + 1);
  for j := 0 to length(var_bin) - 1 do
    var_bin[j] := NumCri + j;
  /// //////////////////////////////////////////////////////////////////////////
  a := Nrest;

  // ** Restrições das relações entre critérios não adjascentes **//
  with TIWUserSession(WebApplication.Data) do
  begin
    if length(PergNAdj) > 0 then
    begin
      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, TIWUserSession(WebApplication.Data).PergNAdj[i - a, 0] + 1]
          := TIWUserSession(WebApplication.Data)
          .MLimMin[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
      end;

      a := Nrest;

      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1)
          * MLimMax[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := 1;
        Op[i] := '<=';
        INC(Nrest);
      end;
    end;
  end;

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
          MatA[a + 1, TIWUserSession(WebApplication.Data).IdAHeur + 1] :=
            -WDPHEUR;
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
    Setlength(ResultVector, 0);
    Setlength(ResultVector, NumDV + 1);

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
  Setlength(ResultVector, 0);
  Setlength(ResultVector, NumDV + 1);

  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumCri - 1 do
    begin
      MaxPeso[i] := MaxP[i];
      MinPeso[i] := MinP[i];
    end;
  end;

end;

procedure TfrmPortfolioResultados.PLOrdenacao;
var
  i, j, K, Nrest, a, b, C, Z, II, JJ, DNrel: integer; // Contadores
  m1, m2, m3: integer;
  NumCri, NumAlt, Numl, NAH: integer; // Número de critérios,
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
  MaxDIJ, MaxDJI: Double; // Armazena a máxima diferença entre duas alternativas
  Aux1, Aux2: Double;
  // VARIÁVEIS PARA A DLL DE C++
  MatB: matriz; // matriz usada pela dll em c++ para colocar as restrições e a função
  // valor Além de ser usada durante as iterações para serem guardados
  // os resultados do simplex até o resultado final
  icase: Pinteger; // ponteiro do c++ para indicar se existe ou não solução possível
  iposv: vetor; // vetor que guarda os subíndices das variáveis básicas
  izrov: vetor; // vetor que guarda os subíndices das variáveis não-básicas
  MinVK: Double;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).NumCrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
  /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
  /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
  /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
  Numl := 2 * (NumCri - 1) + NAH + 4;
  Setlength(MatrizParaPar, NumAlt, NumAlt);
  Setlength(MatCons, NumAlt, NumCri);
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

  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for j := 0 to NAH - 1 do
    begin
      Setlength(VetAH[j], length(MATAH[j]));
      for i := 0 to length(MATAH[j]) - 1 do
        VetAH[j, i] := MATAH[j, i];
    end;
  end;

  /// ////////// Obtendo relações anteriormente estabelecidas ///////////////////
  for i := 0 to NumAlt - 1 do
    for j := 0 to NumAlt - 1 do
    begin
      MatrizParaPar[i, j] := 0;
      With TIWUserSession(WebApplication.Data) do
      begin
        if Ciclo <> 0 then
          if ArmazenaParaPar[Ciclo - 1, i, j] <> 0 then
            MatrizParaPar[i, j] := TIWUserSession(WebApplication.Data)
              .ArmazenaParaPar[Ciclo - 1, i, j];
      end;
    end;

  /// ///////////////////////////////////////////////////////////////////////////
  /// Limpando a Matriz do problema de possíveis valores provindos de sua inicialização ///
  for i := 0 to Numl - 1 do
    for j := 0 to NumCri do
      MatA[i, j] := 0;

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
  for i := a to a + NAH - 1 do
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
            for j := 0 to NumCri - 1 do
            begin
              MatA[i + 1, j + 1] := MatCons[VetAH[(i - a), Z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end; // j
            MatA[i + 1, 0] := 0;
            INC(m1);
            INC(Nrest);
          end; // z
        end; // 2
    end; // case
  end;

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
          INC(m1);
        End;
      1:
        Begin
          MatA[a + 1, IdAHeur + 1] := 0.5;
          MatA[a + 1, IdBHeur + 1] := -1;
          Op[a] := '<=';
          INC(Nrest);
          INC(m1);
        End;
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
  for j := 0 to NumCri - 1 do
    MatA[a + 1, j + 1] := 1;
  MatA[a + 1, 0] := 1;
  Op[a] := '=';
  INC(Nrest);
  INC(m3);

  a := Nrest;
  { typeprob := 0;
    /// Var de decisão são contínuas ///
    dirprob := 1;
    /// Problema de maximização ///

    /// Preenchendo o lado direito da restrição no vetor utilizado no LP_Solve ///
    for i := 0 to Numl - 2 do
    limit[i] := MatA[i + 1, 0];

    /// Preenchendo as restrições no vetor utilizado no LP_Solve ///
    for i := 0 to Numl - 2 do
    begin
    Rmod[i] := TrocaVP(MatA[i + 1, 1]);
    for j := 2 to NumCri do
    Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, j]);
    end; }

  /// ////////////////// Verifica as relações de dominância /////////////////////
  for II := 0 to NumAlt - 1 do
    for JJ := II + 1 to NumAlt - 1 do
      if (MatrizParaPar[II, JJ] = 0) and (MatrizParaPar[JJ, II] = 0) then
      begin

        for i := 0 to 103 - 1 do
          for j := 0 to 103 - 1 do
            MatB[i, j] := 0;

        /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
        /// escala e os coeficientes são as diferenças entre as consequências das//
        /// alternativa IJ normalizadas ///
        for i := 0 to NumCri - 1 do
        begin
          MatA[0, i + 1] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
          MatB[1, i + 2] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
          FO[i] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
        end;

        for j := 0 to NumCri - 1 do
          for i := 1 to Numl - 1 do
            if MatA[i, j + 1] <> 0 then
              MatB[i + 1, j + 2] := -MatA[i, j + 1];

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
            for j := 1 to Nrest do
            begin
              // iposv é o vetor com os subindices das variáveis básicas depois de
              // obter a solução
              if iposv[j] = i then
              begin
                ResultVector[i - 1] := MatB[j + 1, 1];
              end;
              // do if iposv
            end; // do for de k
          end; // do for de ii
          /// Verificando se há algum K não nulo. ///
          b := 0;
          for i := 0 to NumCri do
            if ResultVector[i] <> 0 then
              break
            else
              INC(b);

          MaxDIJ := 0;
          // Se obtem o valor da alternativa maximizada.
          for j := 0 to NumCri - 1 do
          begin
            MaxDIJ := MaxDIJ + FO[j] * ResultVector[j];
          end;
        end; // end do if viavel = 1

        for i := 0 to 103 - 1 do
          for j := 0 to 103 - 1 do
            MatB[i, j] := 0;

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

        for j := 0 to NumCri - 1 do
          for i := 1 to Numl - 1 do
            if MatA[i, j + 1] <> 0 then
              MatB[i + 1, j + 2] := -MatA[i, j + 1];

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
            for j := 1 to Nrest do
            begin
              // iposv é o vetor com os subindices das variáveis básicas depois de
              // obter a solução
              if iposv[j] = i then
              begin
                ResultVector[i - 1] := MatB[j + 1, 1];
              end;
              // do if iposv
            end; // do for de k
          end; // do for de ii
          /// Verificando se há algum K não nulo. ///
          b := 0;
          for i := 0 to NumCri - 1 do
            if ResultVector[i] <> 0 then
              break
            else
              INC(b);

          MaxDJI := 0;

          // Se obtem o valor da alternativa maximizada.
          for j := 0 to NumCri - 1 do
          begin
            MaxDJI := MaxDJI + FO[j] * ResultVector[j];
          end;
        end; // end do if viavel = 1

        /// /////////// Limpando o vetor de resultados /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);
        FreeMem(icase, SizeOf(integer));
        a := 0; // Contabilizará  número de relações estabelecidas
        b := 0; // Contabilizará  número de relações de indiferença estabelecidas

        if MaxDIJ < 0 then
          Aux1 := -MaxDIJ
        else
          Aux1 := MaxDIJ;
        if MaxDJI < 0 then
          Aux2 := -MaxDJI
        else
          Aux2 := MaxDJI;

        /// /Se a máx diferença entre as alternativas forem menores que o limiar /////
        /// de indiferença, então as alt são indiferentes /////////////////////
        if (Aux1 < ep) and (Aux2 < ep) then
        begin
          MatrizParaPar[II, JJ] := 2;
          MatrizParaPar[JJ, II] := 2;
        end
        else
        begin
          /// / Caso contrário, utiliza-se a seguinte regra para verificar a///////
          /// relação de dominância//////////////////////////////////////////////
          if (MaxDIJ > 0.000001) and (MaxDJI <= 0.000001) then
          begin
            MatrizParaPar[II, JJ] := 1;
            { for i := 0 to NumAlt - 1 do
              begin
              if MatrizParaPar[JJ, i] = 1 then
              MatrizParaPar[II, i] := 1;
              end; }
          end;
          if (MaxDIJ <= 0.000001) and (MaxDJI > 0.000001) then
          begin
            MatrizParaPar[JJ, II] := 1;
            { for i := 0 to NumAlt - 1 do
              begin
              if MatrizParaPar[JJ, i] = 1 then
              MatrizParaPar[II, i] := 1;
              end; }
          end;
        end;
      end; // For II

  a := 0;
  b := 0;
  C := 0;
  for i := 0 to NumAlt - 1 do
    for j := 0 to NumAlt - 1 do
    begin
      case MatrizParaPar[i, j] of
        0:
          INC(a);
        1:
          INC(b);
        2:
          INC(C);
      end;
    end;

  With TIWUserSession(WebApplication.Data) do
  begin
    NumRel := b + Round(C / 2);
    Numind := Round(C / 2);
    NDRl := b; ;
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumAlt - 1 do
      for j := 0 to NumAlt - 1 do
        ArmazenaParaPar[Ciclo, i, j] := MatrizParaPar[i, j];
    INC(Ciclo);
    ConstruirMatrizgrupo;
    if NumRel >= (NumAlt * (NumAlt - 1)) / 2 then
    begin
      // Possíveis soluções
      if Numind = 0 then
        Sol := 3;
      if Numind > 0 then
        Sol := 2;
    end;
    IWRgnfinaltabelaCreate(self);
    IWRgnfinaltabela.Show;
  end;
end;

procedure TfrmPortfolioResultados.Portuguese1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Guia rapido Fitradeoff web' + '.pdf', true);
end;

procedure TfrmPortfolioResultados.CmbxResultsChange(Sender: TObject);
var
  i, j: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    // ** Atualiza-se o vetor para plotagem dos gráficos **//
    Setlength(VtrAlternatives, length(Matrizgrupo[CmbxResults.ItemIndex]) - 1);
    for i := 1 to length(Matrizgrupo[CmbxResults.ItemIndex]) - 1 do
      VtrAlternatives[i - 1] := TIWUserSession(WebApplication.Data)
        .Matrizgrupo[CmbxResults.ItemIndex, i];

    // **Atualiza o listBox de seleção**//
    { -------- LISTBOX DE ALTERNATIVAS EXIBIDAS ---------- }
    With TIWUserSession(WebApplication.Data) do
    begin
      j := length(VtrAlternatives);
      chcklstbxResults.Items.Clear;
      for i := 0 to j - 1 do
      begin
        chcklstbxResults.Items.Add(AltSiglas[VtrAlternatives[i]]);
        chcklstbxResults.Selected[i] := true;
      end;
    end;

    Escala := 0;
    Radar(Escala);
    Barras(Escala);
    Bolhas(Escala);
  end;
end;

procedure TfrmPortfolioResultados.ConstruirMatrizgrupo;
var
  MatrizKS, MatrizParaPar, MatrizGrupos: Array of array of integer;
  DomCount, Grp: array of integer;
  i, j, K, NAlt, a, b, C, grupo: integer;
  MatInd, Mat: Array of Array of integer;
  ind: Array of Boolean;
begin

  /// / Procedimento responsável por escrever as relações entre as alternativas ////
  /// no grid de resultados na problemática de ordenação. ///////////////////////
  With TIWUserSession(WebApplication.Data) do
  begin
    NAlt := NumAlt;
    Setlength(MatrizParaPar, NAlt, NAlt);
    Setlength(MatrizKS, NAlt, NAlt + 5);
    /// //////////// Resgata as relações de dominância par a par //////////////////
    for i := 0 to NumAlt - 1 do
      for j := 0 to NumAlt - 1 do
        MatrizParaPar[i, j] := ArmazenaParaPar[Ciclo - 1, i, j];
    /// ///////////////////////////////////////////////////////////////////////////
  end;
  Setlength(DomCount, NAlt);
  Setlength(ind, NAlt);

  for i := 0 to NAlt - 1 do
  begin
    DomCount[i] := 0;
    /// //Se uma alt tiver uma relação de indiferença, então seu índice /////////
    /// / nesse vetor recebe true////////////////////////////////////////////////
    ind[i] := false;
  end;

  /// /// Contabiliza o número de alt j que domina cada alternativa i //////////
  for i := 0 to NAlt - 1 do
    for j := 0 to NAlt - 1 do
      if MatrizParaPar[j, i] = 1 then
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
    K := MatrizKS[i, 1];
    for j := 0 to NAlt - 1 do
      if DomCount[j] = K then
      begin
        MatrizKS[i, 4 + a] := j;
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
  for K := 1 to grupo do
  begin
    a := 0;
    for i := NAlt - 1 downto 0 do
      if MatrizKS[i, NAlt + 4] = K then
        if MatrizKS[i, 2] <> 0 then
          for j := 0 to (MatrizKS[i, 2] - 1) do
          begin
            MatrizGrupos[K - 1, a + 1] := MatrizKS[i, j + 4];
            INC(a);
          end;
    Grp[K - 1] := a; // armazena o número de alt por grupo
  end;
  // ** Salva a informação da matriz na var global**//
  With TIWUserSession(WebApplication.Data) do
  begin
    Setlength(Matrizgrupo, grupo);
    for i := 0 to grupo - 1 do
    begin
      Setlength(Matrizgrupo[i], Grp[i] + 1);
      for j := 0 to Grp[i] do
        Matrizgrupo[i, j] := MatrizGrupos[i, j];
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
    for i := 0 to grupo - 1 do
      for j := 0 to Grp[i] - 1 do
        VAltPositionsO[MatrizGrupos[i, j + 1]] := MatrizGrupos[i, 0];
  end;

  /// //////////// Obtendo as indiferenças em cada grupo /////////////////////////
  for i := 0 to grupo - 1 do
  begin
    a := 0;
    b := 0;
    C := 0;
    for j := 0 to Grp[i] - 1 do
    begin
      for K := j + 1 to Grp[i] - 1 do
      begin
        if MatrizParaPar[MatrizGrupos[i, j + 1], MatrizGrupos[i, K + 1]]
          = 2 then
        begin
          Setlength(MatInd[i], 2 * a + 2);
          MatInd[i, 2 * a] := MatrizGrupos[i, j + 1];
          MatInd[i, 2 * a + 1] := MatrizGrupos[i, K + 1];
          INC(a);
          ind[MatrizGrupos[i, j + 1]] := true;
          ind[MatrizGrupos[i, K + 1]] := true;
        end;
      end;
      if ind[MatrizGrupos[i, j + 1]] = false then
      begin
        Setlength(Mat[i], b + 1);
        Mat[i, b] := MatrizGrupos[i, j + 1];
        INC(b);
      end
      else
        C := 0;
    end;
  end;
  b := 0;
  With TIWUserSession(WebApplication.Data) do
  begin
    Rlevels := grupo;
    Setlength(MatResultOrd, 0, 0);
    Setlength(MatResultOrd, grupo, 2);
    /// ///Insere as aternativas indiferentes de cada grupo na matriz que será/////
    /// utilizada para construir a tabela de resultados /////////////////////////
    for i := 0 to grupo - 1 do
    begin
      b := 0;
      if length(MatInd[i]) > 0 then
        b := Round(length(MatInd[i]) / 2);
      MatResultOrd[i, 0] := IntToStr(i + 1);
      if length(MatInd[i]) > 0 then
        MatResultOrd[i, 1] := '[' + NomeAlt[MatInd[i, 0]] + ', ' + NomeAlt
          [MatInd[i, 1]] + ']';
      for j := 1 to b - 1 do
      begin
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + NomeAlt
          [MatInd[i, 2 * j]] + ', ' + NomeAlt[MatInd[i, 2 * j + 1]] + ']';
      end;
    end;
    b := 0;
    /// ///Insere as demais aternativas de cada grupo na matriz que será/////
    /// utilizada para construir a tabela de resultados /////////////////////////
    for i := 0 to grupo - 1 do
    begin
      b := (length(Mat[i]));
      MatResultOrd[i, 0] := IntToStr(i + 1);
      if length(Mat[i]) > 0 then
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + NomeAlt[Mat[i, 0]]
          + ']';
      for j := 1 to b - 1 do
      begin
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + NomeAlt[Mat[i, j]]
          + ']';
      end;
    end;
  end; // With

end;

procedure TfrmPortfolioResultados.English1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\User guide FITradeoff web' + '.pdf', true);
end;

// Transforma os valores da consMatrix em uma escala de razão
procedure TfrmPortfolioResultados.EscalaRazao;
var
  i, j: integer;
  Maxl, Minl: Array of Double;
  AuxVetPOA: array of integer;
  // ConsRazao: array of array of Double;
begin

  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(Consrazao, NumAlt, NumCrit);
    Setlength(Maxl, NumCrit);
    Setlength(Minl, NumCrit);
    Setlength(AuxVetPOA, length(VtrAlternatives));

    for i := 0 to length(VtrAlternatives) - 1 do
    begin
      AuxVetPOA[i] := TIWUserSession(WebApplication.Data).VtrAlternatives[i];
    end;

    // ** Buscando maximos e minimos locais (Escala de Razão) **//
    for j := 0 to NumCrit - 1 do
    begin
      Maxl[j] := ConsMatrix[AuxVetPOA[0], j];
      Minl[j] := ConsMatrix[AuxVetPOA[0], j];
    end;
    for j := 0 to NumCrit - 1 do
      for i := 0 to length(VtrAlternatives) - 1 do
      begin
        if ConsMatrix[AuxVetPOA[i], j] > Maxl[j] then
          Maxl[j] := ConsMatrix[AuxVetPOA[i], j];
        if ConsMatrix[AuxVetPOA[i], j] < Minl[j] then
          Minl[j] := ConsMatrix[AuxVetPOA[i], j];
      end;

    for j := 0 to NumCrit - 1 do
      if Maxl[j] = Minl[j] then
      begin
        /// /Caso as alternativas tenham a mesma consequêquencia no critério j, então
        /// independente se for max ou min a conseq nrmalizada será igual a 1 na escala
        /// de razão, esse comado se faz necessário para evitar erros nos casos de critérios
        /// mistos ///////////////////////////////////////////////////////////////////////
        for i := 0 to length(VtrAlternatives) - 1 do
          TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j] := 1;
      end
      else
        for i := 0 to length(VtrAlternatives) - 1 do
        begin
          if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
          begin // dos criterios de maximização

            // * ConsequenciaPositivas ou zero *//
            if (Maxl[j] > 0) and (Minl[j] >= 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j] :=
                (TIWUserSession(WebApplication.Data)
                  .ConsMatrix[AuxVetPOA[i], j] / Maxl[j]);
            // fim caso para consequencias são diferente de zero

            // * Consequencias mistas (+, -, 0)*//
            if (Maxl[j] >= 0) and (Minl[j] < 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j] :=
                TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], j]
                / (Maxl[j] - Minl[j]) + 1 - Maxl[j] / (Maxl[j] - Minl[j]);

            // * Consequencias negativas *//
            if (Minl[j] < 0) and (Maxl[j] < 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j] :=
                Maxl[j] / TIWUserSession(WebApplication.Data)
                .ConsMatrix[AuxVetPOA[i], j];

          end; // Fimdoscritérios de maximização

          if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
          begin // inicio dos critérios de minimização

            // * ConsequenciaPositivas *//
            if (ConsMatrix[i, j] <> 0) and (Minl[j] > 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j] :=
                (Minl[j] / TIWUserSession(WebApplication.Data)
                  .ConsMatrix[AuxVetPOA[i], j]);
            // para consequencias diferentes de zero

            // * Consequencias mistas (+, -, 0)*//
            if (Minl[j] <= 0) and (Maxl[j] >= 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j] :=
                TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], j]
                / (Minl[j] - Maxl[j]) + 1 - Minl[j] / (Minl[j] - Maxl[j]);

            // * Consequencias negativas *//
            if (Minl[j] < 0) and (Maxl[j] < 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j] :=
                TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], j]
                / Minl[j];

          end; // fim dos critérios de minimização
        end; // i

  end; // with
end; // fim do procedimento

procedure TfrmPortfolioResultados.iwbtnCloseDHClick(Sender: TObject);
begin
  iwrgnHasseDiagram.Hide;
  with TIWUserSession(WebApplication.Data) do
  begin
    if (Problematica = 1) then
      IWRgnfinaltabela.Visible := true;
  end;
  iwrgnLegendDH.Visible := false;
end;

// CONSTRUIR GRÁFICO BOLHA
procedure TfrmPortfolioResultados.Bolhas(Escala: integer);
var
  a, C, i, auxSeries, y, g: integer;
  bubble: array of TBubbleSeries;
  qntPOA, indCB: integer;
  AuxVetPOA: array of integer;
  Krange: Array [0 .. 1] of TLineSeries;
  coresalt, coresalt1: array of Tcolor;
  primeiracor: boolean;
begin
  With TIWUserSession(WebApplication.Data) do
  begin

    Chart1.Title.Clear;
    Chart1.RemoveAllSeries;
    Chart1.BottomAxis.Items.Clear;
    Chart1.Legend.Visible := true;

    Chart1.View3D := false;
    Chart1.BottomAxis.Visible := true;
    Chart1.SeriesList.ClearValues;
    // Chart1.Title.Text.Add('Bubble Graph');

    Setlength(AuxVetPOA, length(VtrAlternatives));
    Setlength(bubble, NumAlt);

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

    qntPOA := length(AuxVetPOA);
    EscalaRazao; // Constroi o vetor ConsRazao
    auxSeries := 0;

    for i := 0 to length(VtrAlternatives) - 1 do
    begin
      AuxVetPOA[i] := TIWUserSession(WebApplication.Data).VtrAlternatives[i];
    end;

    /// /////////////////////////////////////////////////////////////////
    for a := 0 to qntPOA - 1 do
    begin
      if chcklstbxResults.Selected[a] = true then // Alternativa selecionada
      begin
        bubble[a - auxSeries] := TBubbleSeries.Create(self);
        Chart1.AddSeries(bubble[a - auxSeries]);
        bubble[a - auxSeries].Color := coresalt1[AuxVetPOA[a]];
        Chart1.series[a - auxSeries].Marks.Visible := false;
        Chart1.series[a - auxSeries].ColorEachPoint := false;
        Chart1.series[a - auxSeries].Legend.Text := AltSiglas[AuxVetPOA[a]];

        indCB := -1;
        for C := 0 to NumCrit - 1 do
        begin
          // ** Se todas as alternativas tiverem a mesmca consequência no critério
          // ** Não inclui o mesmo no gráfico **///
          if esconderCrit[vtrordem[C]] then // ** O preenchimento deste vetor é feito no procedimento do gráfico radar **//
            continue;

          INC(indCB);

          if Escala = 0 then // ESCALA DE RAZÃO
            bubble[a - auxSeries].AddBubble
              (indCB, Consrazao[AuxVetPOA[a], vtrordem[C]], 0.05, '');
          if Escala = 1 then // ESCALA INTERVALAR
            bubble[a - auxSeries].AddBubble
              (indCB, ConsNorm[AuxVetPOA[a], vtrordem[C]], 0.05, '');

        end;
      end
      else
        auxSeries := auxSeries + 1;
    end;

    // ** Adicionando séries dos pesos máxmimos e mínimos ao gráfico **//
    Krange[0] := TLineSeries.Create(self);
    Krange[1] := TLineSeries.Create(self);
    Krange[1].SeriesColor := clred;
    Krange[0].SeriesColor := clBlue;
    Krange[1].LineHeight := 2;
    Krange[0].LineHeight := 2;
    Krange[1].Legend.Text := 'Min Value';
    Krange[0].Legend.Text := 'Max Value';
    Chart1.AddSeries(Krange[0]);
    Chart1.AddSeries(Krange[1]);

    indCB := -1;
    for i := 0 to NumCrit - 1 do
    begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // ** Não inclui o mesmo no gráfico **///
      if esconderCrit[vtrordem[i]] then // ** O preenchimento deste vetor é feito no procedimento do gráfico radar **//
        continue;
      INC(indCB);
      Krange[0].AddXY(indCB, MaxPeso[i]);
      Krange[1].AddXY(indCB, MinPeso[i]);
    end;

    indCB := -1;
    for i := 0 to NumCrit - 1 do
    begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // ** Não inclui o mesmo no gráfico **///
      if esconderCrit[vtrordem[i]] then
        continue;
      INC(indCB);
      Chart1.BottomAxis.Items.Add(indCB, CritSiglas[vtrordem[i]]);
    end;

    Chart1.BottomAxis.LabelsAlternate := true;
    Chart1.BottomAxis.Items.Automatic := false;

    if auxSeries = qntPOA then
      Chart1.Legend.Visible := false;

    Chart1.LeftAxis.Increment := 0.2;

    IWImage6.Picture.Bitmap.Assign
      (Chart1.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImage6.Width,
          IWImage6.Height)));

  end;
end;

// CONSTRUIR GRÁFICO RADAR
procedure TfrmPortfolioResultados.Radar(Escala: integer);
var
  rad: array of TRadarSeries;
  a, i, C, g, y: integer;
  qntPOA: integer;
  auxSeries: integer;
  AuxVetPOA: array of integer;
  fc: integer;
  ConseqG: Real;
  coresalt, coresalt1: array of Tcolor;
  primeiracor: boolean;
begin
  With TIWUserSession(WebApplication.Data) do
  begin

    Chart3.Title.Clear;
    Chart3.RemoveAllSeries;
    Chart3.BottomAxis.Items.Clear;

    Chart3.View3D := false;
    Chart3.BottomAxis.Visible := true;
    Chart3.SeriesList.ClearValues;
    // Chart3.Title.Text.Add('Radar Graph');
    Chart3.Legend.Visible := true;

    Setlength(AuxVetPOA, length(VtrAlternatives));
    Setlength(rad, NumAlt);
    Setlength(esconderCrit, NumCrit);

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

    qntPOA := length(AuxVetPOA);
    EscalaRazao; // Constroi o vetor ConsRazao
    auxSeries := 0;

    for i := 0 to length(VtrAlternatives) - 1 do
    begin
      AuxVetPOA[i] := TIWUserSession(WebApplication.Data).VtrAlternatives[i];
    end;

    if not(chckbxhidec.Checked) then
      for i := 0 to NumCrit - 1 do
        TIWUserSession(WebApplication.Data).esconderCrit[i] := false;
    // ** Elimina critérios da visualização **//
    if chckbxhidec.Checked then
      for i := 0 to NumCrit - 1 do
      begin
        // ** Supõe que todas as alternativas têm o mesmo desempenho no critério I **//
        esconderCrit[i] := true;
        // ** Inicializa a ver com a primeira consequência no critério I **//
        for a := 0 to qntPOA - 1 do
          if chcklstbxResults.Selected[a] then
          begin
            ConseqG := ConsMatrix[AuxVetPOA[a], i];
            break;
          end;
        for C := 0 to qntPOA - 1 do
          if (ConsMatrix[AuxVetPOA[C], i] <> ConseqG) and
            (chcklstbxResults.Selected[C]) then
          begin
            esconderCrit[i] := false;
            break;
          end;
      end;

    for a := 0 to qntPOA - 1 do
    begin

      if chcklstbxResults.Selected[a] = true then
      begin

        rad[a - auxSeries] := TRadarSeries.Create(self);
        Chart3.AddSeries(rad[a - auxSeries]);
        rad[a - auxSeries].Color := coresalt1[AuxVetPOA[a]];
        Chart3.series[a - auxSeries].Marks.Visible := false;
        Chart3.series[a - auxSeries].ColorEachPoint := false;
        Chart3.series[a - auxSeries].Brush.Style := BsClear;
        rad[a - auxSeries].Pointer.Visible := false;
        rad[a - auxSeries].Pen.Width := 3;
        rad[a - auxSeries].Pen.Color := coresalt1[AuxVetPOA[a]];
        Chart3.series[a - auxSeries].Legend.Text := AltSiglas[AuxVetPOA[a]];

        for C := 0 to NumCrit - 1 do
        begin
          // ** Se todas as alternativas tiverem a mesmca consequência no critério
          // ** Não inclui o mesmo no gráfico **///
          if esconderCrit[vtrordem[C]] then
            continue;
          if C = 0 then
            fc := 0
          else
            fc := NumCrit - C;

          if Escala = 0 then // ESCALA DE RAZÃO
            rad[a - auxSeries].AddXY(fc, Consrazao[AuxVetPOA[a], vtrordem[C]],
              CritSiglas[vtrordem[C]]);
          if Escala = 1 then // ESCALA INTERVALAR
            rad[a - auxSeries].AddXY(fc, ConsNorm[AuxVetPOA[a], vtrordem[C]],
              CritSiglas[vtrordem[C]]);

        end;
      end
      else
        auxSeries := auxSeries + 1;
    end;

    if auxSeries = qntPOA then
      Chart3.Legend.Visible := false;

    Chart3.LeftAxis.Increment := 0.2; // teste ?

    IWImage5.Picture.Bitmap.Assign
      (Chart3.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImage5.Width,
          IWImage5.Height)));
  end;
end;

procedure TfrmPortfolioResultados.rgnhide2Create(Sender: TObject);
begin

end;

// CONSTRUIR GRÁFICO BARRAS
procedure TfrmPortfolioResultados.Barras(Escala: integer);
var
  bar: array of TBarSeries;
  a, i, C, j, auxSeries, y: integer;
  qntPOA, G: integer;
  auxnumcrit: integer;
  AuxVetPOA: array of integer;
  indCB: integer;
  Krange: Array [0 .. 1] of TLineSeries;
  coresalt, coresalt1: array of Tcolor;
  primeiracor: boolean;
begin

  auxnumcrit := TIWUserSession(WebApplication.Data).NumCrit;

  With TIWUserSession(WebApplication.Data) do
  begin
    Sol := -5;
    Setlength(AuxVetPOA, length(VtrAlternatives));

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

    qntPOA := length(AuxVetPOA);
    G := length(AuxVetPOA);
    Chart2.Title.Clear;
    Chart2.RemoveAllSeries; // limpa todas as séries
    Chart2.BottomAxis.Items.Clear; // legenda de baixo
    // Chart2.Title.Text.Add('Bar Graph');
    Chart2.Legend.Visible := true;
    Chart2.View3D := false;
    Setlength(bar, qntPOA);
    Setlength(TRE, qntPOA);
    auxSeries := 0;

    EscalaRazao; // Constroi o vetor ConsRazao

    // deu um erro a função mas o procedimento funcione direitinho sem ela
    // Chart2.Series[a].Clear; //limpa antes de construir

    for i := 0 to length(VtrAlternatives) - 1 do
    begin
      AuxVetPOA[i] := TIWUserSession(WebApplication.Data).VtrAlternatives[i];
    end;

    for a := 0 to qntPOA - 1 do
    begin

      if chcklstbxResults.Selected[a] = true then // Alternativa selecionada
      begin

        bar[a - auxSeries] := TBarSeries.Create(self);
        Chart2.AddSeries(bar[a - auxSeries]);
        bar[a - auxSeries].Color := coresalt1[AuxVetPOA[a]];
        Chart2.series[a - auxSeries].Marks.Visible := false;
        Chart2.series[a - auxSeries].Legend.Text := AltSiglas[AuxVetPOA[a]];

        indCB := -1;
        for C := 0 to NumCrit - 1 do
        begin
          // ** Se todas as alternativas tiverem a mesmca consequência no critério
          // ** Não inclui o mesmo no gráfico **///
          if esconderCrit[vtrordem[C]] then // ** O preenchimento deste vetor é feito no procedimento do gráfico radar **//
            continue;

          INC(indCB);

          if Escala = 0 then // ESCALA DE RAZÃO
            Chart2.series[a - auxSeries].AddXY
              (indCB, Consrazao[AuxVetPOA[a], vtrordem[C]], '');
          if Escala = 1 then // ESCALA INTERVALAR
            Chart2.series[a - auxSeries].AddXY
              (indCB, ConsNorm[AuxVetPOA[a], vtrordem[C]], '');

        end; // for c
      end // if
      else
        auxSeries := auxSeries + 1;
    end; // for a

    // ** Adicionando séries dos pesos máxmimos e mínimos ao gráfico **//
    Krange[0] := TLineSeries.Create(self);
    Krange[1] := TLineSeries.Create(self);
    Krange[1].SeriesColor := clred;
    Krange[0].SeriesColor := clBlue;
    Krange[1].LineHeight := 2;
    Krange[0].LineHeight := 2;
    Krange[1].Legend.Text := 'Min Value';
    Krange[0].Legend.Text := 'Max Value';
    Chart2.AddSeries(Krange[0]);
    Chart2.AddSeries(Krange[1]);
    indCB := -1;
    for i := 0 to NumCrit - 1 do
    begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // ** Não inclui o mesmo no gráfico **///
      if esconderCrit[vtrordem[i]] then // ** O preenchimento deste vetor é feito no procedimento do gráfico radar **//
        continue;
      INC(indCB);

      Krange[0].AddXY(indCB, MaxPeso[i]);
      Krange[1].AddXY(indCB, MinPeso[i]);
    end;

    if auxSeries = qntPOA - 1 then
      Chart2.Legend.Visible := false;

    Chart2.LeftAxis.Increment := 0.2; // ?

    Chart2.BottomAxis.LabelsAlternate;
    Chart2.BottomAxis.Items.Automatic := false;

    indCB := -1;
    for j := 0 to NumCrit - 1 do
    begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // ** Não inclui o mesmo no gráfico **///
      if esconderCrit[vtrordem[j]] then
        continue;
      INC(indCB);
      Chart2.BottomAxis.Items.Add(indCB, CritSiglas[vtrordem[j]]);
    end;

    IWImage4.Picture.Bitmap.Assign
      (Chart2.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImage4.Width,
          IWImage4.Height)));

  end; // with
end; // proc

procedure TfrmPortfolioResultados.btnanalistClick(Sender: TObject);
begin
  rgnanalystlogin.Show;
  IWRgnfinaltabela.Hide;

end;

procedure TfrmPortfolioResultados.btnanalistlogoutClick(Sender: TObject);
begin
  With TIWUserSession(WebApplication.Data) do
  begin
    Analystkey := -1;
    email := '';
    senha := '';
  end;
  // **Permite o login do analista **//
  AnalystLogin1.Visible := true;
  AnalystLogout1.Visible := false;
  btnrecommendationT.Visible := false;

end;

procedure TfrmPortfolioResultados.btngraphCBClick(Sender: TObject);
var
  i: integer;
  Series2: TBarSeries;
  error: TErrorSeries;
  point: TPointSeries;
begin
  lstbxcritg.Items.Clear;
  IWRgnresultadografico.Visible := true;
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
      lstbxcritg.Items.Add
        (CritSiglas[vtrordem[i]] + ': ' + NomeCrit[vtrordem[i]]);
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

procedure TfrmPortfolioResultados.btnhasseDCBClick(Sender: TObject);
begin
  // TfrmhasseD.Create(WebApplication).Show;
  iwrgnHasseDiagram.Show;
  TIWFadeImage1.Visible := true;
end;

procedure TfrmPortfolioResultados.btnHEG1Click(Sender: TObject);
begin
  if rdgrpHEG1.ItemIndex = 0 then
  begin
    // **Está preparado para realizar a HE **
    RgnHEG1.Visible := false;
    lblHEG0.Text := 'Holistic Evaluation when you are ready.';
    // IWLabel117.Visible := false;
    // ** Problemática de escolha **//
    if TIWUserSession(WebApplication.Data).Problematica = 4 then
    begin
      preencher_Alt_Holistica;
      RgnHEG3.Visible := true;
      lnkfinalize.Visible := false;
      // **Libera a matriz de indiferença **//
      lnkrelations.Visible := true;
    end;
    // ** Problemática de Ordenação **//
    if TIWUserSession(WebApplication.Data).Problematica = 1 then
    begin
      avalia_niveis;
      txtHEG2.Lines.Clear;
      // **Reposicinando os componentes da seleção de alternativas **//
      // IWRegion49.Top := 538 + 29;
      // IWRegion49.Width := 180;
      chcklstbxResults.Top := 402 + 29;
      chcklstbxResults.Width := 175;
      btnUpFR.Top := 507 + 29;
      btnUpFR.Width := 181;
      RgnSteps.Top := 261;
      RgnSteps.Height := 346 + 31;

      // ** Esconde o combobox de mudança de nível para dar visibilidade ao principal **//
      CmbxResults.Visible := false;
      RgnSteps.Visible := true;
      RgnHEG4.Visible := true;

      // **Direciona o DM para o diagrama **//
      TbCtrlvisualizations.ActivePage := 0;
      TbCtrlvisualizationsChange(self);
    end;
  end
  else
  begin
    // **Não está preparado **//
    RgnHEG1.Visible := false;
    RgnHEG2.Visible := true;
  end;
end;

procedure TfrmPortfolioResultados.btnhasse1Click(Sender: TObject);
begin
  IWRgnfinaltabela.Hide;
  iwrgnHasseDiagram.Show;
  TIWFadeImage1.Visible := true;
end;

procedure TfrmPortfolioResultados.btnhasseClick(Sender: TObject);
begin
  IWRgnfinaltabela.Hide;
  // TfrmhasseD.Create(WebApplication).Show;
  iwrgnHasseDiagram.Show;
  TIWFadeImage1.Visible := true;
end;

procedure TfrmPortfolioResultados.btnhenClick(Sender: TObject);
begin

  // salvar banco de dados na tabela he_question
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 14;
  SalvarresultBD;
  // ** Caso sejam os resultados finais oculta a matriz de indiferença **//
  if TIWUserSession(WebApplication.Data).Sol <> -5 then
  begin
    lnkrelations.Visible := false;
  end;
  rgnHEQ0.Visible := false;
end;

procedure TfrmPortfolioResultados.BtnheyClick(Sender: TObject);
begin
  if TIWUserSession(WebApplication.Data).Problematica = 4 then
    equivalence_Test_HE;
  // ** Exibe a região da pergunta **//
  RgnAHT.Visible := true;
  /// / Ativa o botão 1 da HE.
  TIWUserSession(WebApplication.Data).PAH := true;
  /// / Informa que uma HE está sendo realizada.
  rgnHEQ0.Visible := false;
  with TIWUserSession(WebApplication.Data) do
  begin
    /// / Ao realizar uma avaliação holística é possível acessar a área do analista ////
    if Analystkey <> 1 then
    else
    begin
      btnrecommendationT.Visible := true;
      if HeurQuest <> -1 then
      begin
        /// /////////////////////////////////////////////////////////////////////////////////
        /// / Ativa a visibilidade da região que mostra o tipo de distribuição dos pesos ////
        RgnAttentionT.Visible := true;
        /// ////////////////////////////////////////////////////////////////////////////////
        if HeurQuest = 1 then
        /// Respondeu B
        begin
          lblWDT2.Visible := true;
        end
        else
        begin
          lblWDT1.Visible := true;
        end;
      end;
    end;
    // ** Não foram selecionadas alternativas **//
    Aux0501 := false;
  end;
  INC(TIWUserSession(WebApplication.Data).auxid_ah);
end;

{ procedure TfrmPortfolioResultados.chcklstbxBarrasAsyncExit(Sender: TObject;
  EventParams: TStringList);
  var i: integer;
  begin
  Escala := 0;
  setlength(TRE,chcklstbxBarras.Items.Count);
  for I := 0 to chcklstbxBarras.Items.Count - 1 do
  if chcklstbxBarras.Selected[i] then
  TRE[i] := true
  else
  TRE[i] := false;

  Barras(Escala);
  end; }

{ procedure TfrmPortfolioResultados.chcklstbxBarrasAsyncCheckClick(Sender: TObject;
  EventParams: TStringList);
  begin
  Escala := 0;
  Barras(Escala);
  end; }

procedure TfrmPortfolioResultados.btnsaveASClick(Sender: TObject);
var
  i, j: integer;
  auxnumlinhas, auccrirest: integer;
  K: Real;
begin
  TbCtrlP1.Visible := false;

  // **Preparação para AS Classificação **//
  if (TIWUserSession(WebApplication.Data).Problematica = 3) then
  begin
    with TIWUserSession(WebApplication.Data) do
    begin
      tipoAS := 0;
      ASProfiles := false;
      Setlength(contadorAS, NumAlt, length(perfis) + 2);
      // numero de classes + 1
      for i := 0 to length(perfis) + 1 do
        for j := 0 to NumAlt - 1 do
          contadorAS[j, i] := 0;
      ninst := 1000;
    end;
  end; // classificação

  if TIWUserSession(WebApplication.Data).Auxall <> 968654 then
  begin
    if (edtpmax.Text = '') or (edtpmin.Text = '') then
    begin
      WebApplication.ShowMessage('Please, fill the fields.');
      Exit;
    end;

    try
      K := StrToFloat(edtpmax.Text);
      K := StrToFloat(edtpmax.Text);
    except
      WebApplication.ShowMessage('Please, fill in the fields with numbers.');
      Exit;
    end;

    with TIWUserSession(WebApplication.Data) do
    begin
      INC(NCV);
      grdcrisel.RowCount := NCV + 1;
      grdcrisel.ColumnCount := 3;
      if NCV = 1 then
      begin
        grdcrisel.Cell[0, 0].Text := 'Criteria';
        grdcrisel.Cell[0, 1].Text := 'Upper Bound';
        grdcrisel.Cell[0, 2].Text := 'Lower Bound';
        rgncrisel.Visible := true;
        rgninstructions.Visible := false;
        btninstruc.Visible := true;
      end;

      grdcrisel.Cell[NCV, 0].Text := NomeCrit[vtrordem[VauxSel]];
      Pmax[VauxSel] := Abs(StrToFloat(edtpmax.Text));
      edtpmax.Text := '10';
      Pmin[VauxSel] := Abs(StrToFloat(edtpmin.Text));
      edtpmin.Text := '10';
      grdcrisel.Cell[NCV, 1].Text := '+' + FloatToStr(Abs(Pmax[VauxSel])) + '%';
      grdcrisel.Cell[NCV, 2].Text := '-' + FloatToStr(Abs(Pmin[VauxSel])) + '%';
      CriSel[VauxSel] := true;
      btnstartAS.Enabled := true;
      i := cmbbxAS.ItemIndex;
      cmbbxAS.Items.Delete(i);
      cmbbxAS.ItemIndex := -1;
    end;
    rgnasper.Hide;
    cmbbxAS.Enabled := true;
    if TIWUserSession(WebApplication.Data).NCV = TIWUserSession
      (WebApplication.Data).NumCrit then
    begin
      cmbbxAS.Enabled := false;
      rgnACSSA.Visible := true;
      IWLabel27.Visible := false;
    end;
  end; // referente a auxall<>968654

  if TIWUserSession(WebApplication.Data).Auxall = 968654 then
  begin
    if (edtpmax.Text = '') or (edtpmin.Text = '') then
    begin
      WebApplication.ShowMessage('Please, fill the fields.');
      Exit;
    end;

    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      if TIWUserSession(WebApplication.Data).Pmax[i] <> -10 then
      begin
        INC(auxnumlinhas);
      end;

    end;

    grdcrisel.RowCount := auxnumlinhas + 1;
    grdcrisel.ColumnCount := 3;
    grdcrisel.Cell[0, 0].Text := 'Criteria';
    grdcrisel.Cell[0, 1].Text := 'Upper Bound';
    grdcrisel.Cell[0, 2].Text := 'Lower Bound';
    rgncrisel.Visible := true;
    rgninstructions.Visible := false;
    btninstruc.Visible := true;
    auccrirest := 0;
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      if (TIWUserSession(WebApplication.Data).CriSel[i] = false) and
        (TIWUserSession(WebApplication.Data).Pmax[i] = 0) and
        (TIWUserSession(WebApplication.Data).Pmin[i] = 0) then
      begin
        INC(auccrirest);
        grdcrisel.Cell[TIWUserSession(WebApplication.Data).NCV + auccrirest, 0]
          .Text := TIWUserSession(WebApplication.Data)
          .NomeCrit[TIWUserSession(WebApplication.Data).vtrordem[i]];
        with TIWUserSession(WebApplication.Data) do
        begin
          TIWUserSession(WebApplication.Data).Pmax[i] := Abs
            (StrToFloat(edtpmax.Text));
          TIWUserSession(WebApplication.Data).Pmin[i] := Abs
            (StrToFloat(edtpmin.Text));
          grdcrisel.Cell[TIWUserSession(WebApplication.Data).NCV + auccrirest,
            1].Text := '+' + FloatToStr(Abs(Pmax[i])) + '%';
          grdcrisel.Cell[TIWUserSession(WebApplication.Data).NCV + auccrirest,
            2].Text := '-' + FloatToStr(Abs(Pmin[i])) + '%';
        end;
        TIWUserSession(WebApplication.Data).CriSel[i] := true;
        // cmbbxAS.Items.Delete(i);
      end; // referente ao if
    end; // referente ao for
    edtpmax.Text := '10';
    edtpmin.Text := '10';
    cmbbxAS.Items.Clear;
    rgnasper.Hide;
    btnstartAS.Enabled := true;

    TIWUserSession(WebApplication.Data).NCV := TIWUserSession
      (WebApplication.Data).NCV + auccrirest;

    if TIWUserSession(WebApplication.Data).NCV = TIWUserSession
      (WebApplication.Data).NumCrit then
    begin
      cmbbxAS.Enabled := false;
      rgnACSSA.Visible := true;
      IWLabel27.Visible := false;
    end;

  end; // referente a Auxall=96865

end;

procedure TfrmPortfolioResultados.btnstartASClick(Sender: TObject);
var
  i, K, j: integer;
begin
  TbCtrlP0.Visible := true;
  TbCtrlP1.Visible := true;
  IWButton14.Enabled := true;
  IWRgnAS.Visible := true;
  rgnsav.Visible := false;
  TIWUserSession(WebApplication.Data).Start := true;
  TIWUserSession(WebApplication.Data).Finish := false;
  IWTimer1.Enabled := true;
  btnasok.Enabled := false;
  btnstartAS.Enabled := false;
  IWButton17.Enabled := false;
  IWLblallcrit.Caption := 'Select all the criteria';
  cmbbxAS.Enabled := true;
  rgnACSSA.Visible := false;
  IWLabel27.Visible := true;
end;

procedure TfrmPortfolioResultados.btnvoltaranalystpageClick(Sender: TObject);
begin
  rgnanalystlogin.Hide;
  IWRgnfinaltabela.Show;
end;

procedure TfrmPortfolioResultados.cmbxgroupindexChange(Sender: TObject);
var
  i, j, K, auxc: integer;
begin

  // ** Limpando os dados contidos nas séries ** //
  chrtsensitivity.series[0].Clear;
  chrtsensitivity.series[1].Clear;
  chrtsensitivity.BottomAxis.Items.Clear;

  grdaltinout.RowCount := 1;

  with TIWUserSession(WebApplication.Data) do
  begin

    IWLabel63.Visible := true;
    cmbxgroupindex.Visible := true;

    IWLabel28.Caption := 'Deviation from the Group ' + IntToStr
      (cmbxgroupindex.ItemIndex + 1) + ' original subset of Alternatives:';
    IWLabel23.Caption :=
      'Alternatives Included in and Excluded from the original Group ' +
      IntToStr(cmbxgroupindex.ItemIndex + 1) +
      ' subset throughout Sensitivity Analysis interations:';
    chrtsensitivity.Title.Caption :=
      'Alternatives found in the Group ' + IntToStr
      (cmbxgroupindex.ItemIndex + 1) +
      ' subset while performing Sensitivity Analysis';

    /// ///////////////////////////////////////////////////////////////////////
    // ** Escreve as alt originais no Grid ** //

    grddeviation.Cell[0, 0].Text := 'Original Subset of Alternatives';
    grddeviation.Cell[0, 1].Text := 'Number of Simulations';
    grddeviation.Cell[0, 2].Text := '% Original Subset';
    grddeviation.Cell[0, 3].Text := '% Change';

    auxc := 0;
    for i := 0 to NumAlt - 1 do
      if TIWUserSession(WebApplication.Data).VAltPositionsO[i] =
        (cmbxgroupindex.ItemIndex + 1) then
        INC(auxc);

    grddeviation.Cell[1, 0].Text := '{';
    i := 0;
    K := 0;
    while i < auxc do
    begin
      if VAltPositionsO[K] = (cmbxgroupindex.ItemIndex + 1) then
      begin
        grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + AltSiglas
          [K];
        INC(i);
        if i < (auxc) then
          grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + ', ';
      end;
      INC(K);
      if i = (auxc) then
        grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + '}';
    end;
    grddeviation.Cell[1, 1].Text := IntToStr(ninst);
    grddeviation.Cell[1, 2].Text := FloatToStr
      (100 * Flevelsc[cmbxgroupindex.ItemIndex] / ninst);
    grddeviation.Cell[1, 3].Text := FloatToStr
      (100 * (1 - (Flevelsc[cmbxgroupindex.ItemIndex] / ninst)));
    /// ///////////////////////////////////////////////////////////////////////

    // ** Adicionando alternativas incluídas e excluídas ao GRID ** //
    grdaltinout.Cell[0, 0].Text := 'Included(Inc)/Excluded(Exc) Alternative';
    grdaltinout.Cell[0, 1].Text := 'Profile(';
    K := 0;
    for i := 0 to NumCrit - 1 do
    begin
      if CriSel[i] then
      begin
        grdaltinout.Cell[0, 1].Text := grdaltinout.Cell[0, 1].Text + NomeCrit
          [vtrordem[i]];
        INC(K);
        if K < NCV then
          grdaltinout.Cell[0, 1].Text := grdaltinout.Cell[0, 1].Text + ', ';
      end;
      if K = NCV then
      begin
        grdaltinout.Cell[0, 1].Text := grdaltinout.Cell[0, 1].Text + ')';
        break;
      end;

    end;
    grdaltinout.Cell[0, 2].Text := '% Ocurrence';

    K := 1;
    for i := 0 to NumAlt - 1 do
    begin

      if TIWUserSession(WebApplication.Data).MatrizprofileOrdenacao
        [cmbxgroupindex.ItemIndex, i, 0] = '+' then
      // ** Alt Incluída **//
      begin
        INC(K);
        grdaltinout.RowCount := K;
        grdaltinout.Cell[K - 1, 0].Text := AltSiglas[i] + '(Inc)';
        grdaltinout.Cell[K - 1, 2].Text := FloatToStr
          ((StrToFloat(MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i, 1])
              / ninst) * 100);

        // ** Adiciona as alternativas incluídas ao gráfico ** //
        chrtsensitivity.series[1].AddXY
          (i, ((StrToFloat(MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i,
                1]) / ninst) * 100), FloatToStr
            ((StrToFloat(MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i,
                1]) * 100 / ninst)) + '%');

        // ** Coloca o nome da alt no eixo x ** //
        chrtsensitivity.BottomAxis.Items.Add(i, AltSiglas[i]);
      end;

      if TIWUserSession(WebApplication.Data).MatrizprofileOrdenacao
        [cmbxgroupindex.ItemIndex, i, 0] = '-' then
      // ** Alt Excluída **//
      begin
        INC(K);
        grdaltinout.RowCount := K;
        grdaltinout.Cell[K - 1, 0].Text := AltSiglas[i] + '(Exc)';
        grdaltinout.Cell[K - 1, 2].Text := FloatToStr
          ((StrToFloat(MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i, 1])
              / ninst) * 100);
        // ** Coloca o nome da alt no eixo x ** //
        chrtsensitivity.BottomAxis.Items.Add(i, ' ');
      end;

      if VAltPositionsO[i] = cmbxgroupindex.ItemIndex + 1 then
      // ** Alt ORIGINAIS **//
      begin
        // ** Adiciona as alternativas originais ao gráfico ** //
        chrtsensitivity.series[0].AddXY
          (i, (100 - 100 * (StrToFloat(MatrizprofileOrdenacao
                  [cmbxgroupindex.ItemIndex, i, 1]) / ninst)), FloatToStr
            ((100 - 100 * (StrToFloat(MatrizprofileOrdenacao
                    [cmbxgroupindex.ItemIndex, i, 1]) / ninst))) + '%');

        // ** Coloca o nome da alt no eixo x ** //
        chrtsensitivity.BottomAxis.Items.Add(i, AltSiglas[i]);
      end;

      if (MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i, 0] = '+') or
        (MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i, 0] = '-') then
      begin
        for j := 2 to length(TIWUserSession(WebApplication.Data)
            .MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i]) - 1 do
          grdaltinout.Cell[K - 1, 1].Text := grdaltinout.Cell[K - 1, 1].Text +
            MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i, j];
      end;
    end; // i|NumAlt

    chrtsensitivity.LeftAxis.Increment := 0.2; // ?

    chrtsensitivity.BottomAxis.LabelsAlternate;
    chrtsensitivity.BottomAxis.Items.Automatic := false;

    imgsensgraph.Picture.Bitmap.Assign(chrtsensitivity.TeeCreateBitmap
        (clWebPURPLE, rect(0, 0, imgsensgraph.Width, imgsensgraph.Height)));
  end;
end;

procedure TfrmPortfolioResultados.IWButton21Click(Sender: TObject);
begin
  IWRgnfinaltabela.Visible := false;
  TIWUserSession(WebApplication.Data).stage := 3;
  TIWUserSession(WebApplication.Data).auxgoback := -56231;
  Tfrmaintercriterio.Create(WebApplication).Show;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarresultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarresultBD;

end;

procedure TfrmPortfolioResultados.btnFinalizeEEOClick(Sender: TObject);
begin
  // **Finalizando o problema e reavaliando os limites dos pesos **//
  TIWUserSession(WebApplication.Data).Sol := 11;
  TfrmPortfolioResultados.Create(WebApplication).Show;
  calmaxminweights;
  lnkfinalize.Visible := false;
end;

procedure TfrmPortfolioResultados.btnbackClick(Sender: TObject);
begin
  IWLabel63.Visible := false;
  cmbxgroupindex.Visible := false;
  IWRgnanalisedesensibilidade.Visible := false;
  if TIWUserSession(WebApplication.Data).Problematica <> 3 then
    IWRgnfinaltabela.Show;
  btnstartAS.Enabled := false;
  rgninstructions.Visible := true;
  rgncrisel.Visible := false;
  btncrisel.Visible := false;
  btninstruc.Visible := false;
  grdcrisel.RowCount := 0;
  grdcrisel.ColumnCount := 0;
  TIWUserSession(WebApplication.Data).Auxall := 0;
end;

procedure TfrmPortfolioResultados.btncancelClick(Sender: TObject);
begin

  { rdgrpHET.enabled := false;
    rdgrpHEB.enabled := false;
    rdgrpHEBR.enabled := false;
    rdgrpHER.enabled := false;

    // ** Desativa a visibilidade da barra lateral **//
    RgnAHT.Visible := false;
    RgnAHR.Visible := false;
    RgnAHBR.Visible := false;
    RgnAHB.Visible := false;

    // ** Ativa a visibilidade da pergunta 0 da Holística **//
    rgnHEQ0.Visible := true;
    rgnHEQ0R.Visible := true;
    rgnHEQ0B.Visible := true;
    rgnHEQ0BR.Visible := true;

    // ** Desativa o botão 2  da barra lateraç **//
    BtnOkHET2.Visible := false;
    BtnOkHEB2.Visible := false;
    BtnOkHEBR2.Visible := false;
    BtnOkHER2.Visible := false;

    // ** Desativa a regão de seleção da alternativa preferida/excluída **//
    rgnHEDecisionT.Visible := false;
    rgnHEDecisionB.Visible := false;
    rgnHEDecisionBR.Visible := false;
    rgnHEDecisionR.Visible := false;

    // ** Desativa o botão recomendação **//
    btnrecommendationT.enabled := false;
    btnrecommendationBR.enabled := false;
    btnrecommendationB.enabled := false;
    btnrecommendationR.enabled := false;

    lbldecisionHET.Caption := 'Please, choose an option:';
    lbldecisionHER.Caption := 'Please, choose an option:';
    lbldecisionHEB.Caption := 'Please, choose an option:';
    lbldecisionHEBR.Caption := 'Please, choose an option:';

    chcklstbxHET.Items.Clear;
    chcklstbxHEBR.Items.Clear;
    chcklstbxHEB.Items.Clear;
    chcklstbxHER.Items.Clear; }

  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;
  TfrmPortfolioResultados.Create(WebApplication).Show;

  // salvar banco de dados na tabela he_question
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 16;
  SalvarresultBD;
end;

procedure TfrmPortfolioResultados.BtnCancelHEG1Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;
  // salvar banco de dados na tabela he_question
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 16;
  SalvarresultBD;
  // **Para seguir direto para a decomposição **//
  if TIWUserSession(WebApplication.Data).Sol = -5 then
  begin
    TIWUserSession(WebApplication.Data).stage := 3;
    TIWUserSession(WebApplication.Data).auxgoback := -56231;
    Tfrmaintercriterio.Create(WebApplication).Show;
  end
  else
    TfrmPortfolioResultados.Create(WebApplication).Show;
end;

procedure TfrmPortfolioResultados.btncloseClick(Sender: TObject);
begin
  RgnRelationsMatrix.Visible := false;
  rgntable.Visible := true;
end;

procedure TfrmPortfolioResultados.btnclosemaxClick(Sender: TObject);
begin
  rgnimagemax.Hide;
end;

procedure TfrmPortfolioResultados.btncriselClick(Sender: TObject);
begin
  rgninstructions.Visible := false;
  rgncrisel.Visible := true;
  btninstruc.Visible := true;
  btncrisel.Visible := false;
end;

procedure TfrmPortfolioResultados.IWBtnvarycritClick(Sender: TObject);
begin
  rgnasper.Show;
  // auxiliar que indica se o usuário optou por variar todos os criterios
  TIWUserSession(WebApplication.Data).Auxall := 968654;
  btnasok.Enabled := false;
end;

procedure TfrmPortfolioResultados.IWButton10Click(Sender: TObject);
var
  i, j, K, P, N, h, lin_matriz_ciclo, cont: integer;
  Data: string;
  auxpoa, auxpoa1, auxnomealtexp, vet_real_consA_ciclo_aux2, auxrethc: string;
  vet_poa_ciclo_aux, vtr_final_pref_ord: array of string;
  vet_real_consA_ciclo_aux: Double;
  alt_avaliadas, somadecision, auxalt_avaliadas1, auxalt_avaliadasexp: string;
  matriz_perg: array of array of string; // matriz que armazena as perguntas respondidas
  matriz_AHR: array of array of string; // matriz que armazena as informações da AH realizadas
  auxrethc1: string;
  matriz_ciclo_ah: array of array of string;
  vet_ret_hc_aux, vet_alt_avaliadas_aux, vetorciclo_ah,
    vet_alt_pref_ord_aux: array of string;
  Stop, inck: Boolean;
  alt_pref_ord, auxalt_pref_ord1: string;

begin
  Data := datetostr(now);
  for i := 1 to length(Data) - 1 do
    if Data[i] = '/' then
      Data[i] := '_';

  with TIWUserSession(WebApplication.Data) do
  begin

    for i := 0 to 10 do
    begin
      grdexport1.Columns.Add;
    end;

    if Problematica = 4 then
    begin

      // Retornando dados da planilha elicitação
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 17;
      SalvarresultBD;

      if not avaliable then
      begin
        WebApplication.ShowMessage(
          'The application sumary is only avaliable for problems registered after May 24th. We appologize for this inconvenience.');
        Exit;
      end;

      // inicialmente preenchendo uma matriz que armazena todas as informações das perguntas
      // respondidas
      Setlength(matriz_perg, length(TIWUserSession(WebApplication.Data)
            .qp_ret_exp) + 2, 5);
      // inicialmente setando informações que são fixas,informações do cabeçalho
      matriz_perg[0, 0] := 'Application report';
      matriz_perg[1, 0] := 'Cycle';
      matriz_perg[1, 1] := 'Consequence A';
      matriz_perg[1, 2] := 'Consequence B';
      matriz_perg[1, 3] := 'Answer';
      matriz_perg[1, 4] := 'Potentially optimal alternatives';
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
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + FloatToStr
              (MaxCons[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]) + ')';

          if (Typeofcrit[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]] = 0) or
            (Typeofcrit[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]] = 2) then
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + FloatToStr
              (MinCons[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]) + ')';

        end; // referente ao else

        // adicionando informações da consequencia A
        if vet_idA_ciclo[i - 2] = '-10' then
        begin
          matriz_perg[i, 1] := '';
        end
        else
        begin
          vet_real_consA_ciclo_aux := StrToFloat(vet_real_consA_ciclo[i - 2]);
          vet_real_consA_ciclo_aux2 := FormatFloat('0.000',
            vet_real_consA_ciclo_aux);
          matriz_perg[i, 1] := vet_real_consA_ciclo_aux2 + ' ' + 'of' + ' ' +
            NomeCrit[vtrordem[StrToInt(vet_idA_ciclo[i - 2])]];
        end;

        // adicionando informações das POA
        auxpoa := TIWUserSession(WebApplication.Data).vet_poa_ciclo[i - 2];
        P := 0;
        for j := 1 to length(auxpoa) do
        begin
          if auxpoa[j] <> ',' then
            auxpoa1 := auxpoa1 + auxpoa[j];
          if (auxpoa[j] = ',') and (j <> 1) then
          begin
            INC(P);
            Setlength(vet_poa_ciclo_aux, P);
            vet_poa_ciclo_aux[P - 1] := auxpoa1;
            auxpoa1 := '';
          end; // referente ao if  auxpoa[j]=','
          if j = length(auxpoa) then
          begin
            INC(P);
            Setlength(vet_poa_ciclo_aux, P);
            vet_poa_ciclo_aux[P - 1] := auxpoa1;
            auxpoa1 := '';
          end; // referente ao if j= Length(auxpoa)
        end; // referente ao for for j := 1 to Length(auxpoa)
        for h := 0 to length(vet_poa_ciclo_aux) - 1 do
        begin
          auxnomealtexp := auxnomealtexp + NomeAlt
            [StrToInt(vet_poa_ciclo_aux[h])];
          if h < length(vet_poa_ciclo_aux) - 1 then
            auxnomealtexp := auxnomealtexp + ',';
        end; // do for h  := 0 to Length(vet_poa_ciclo_aux) - 1 do
        matriz_perg[i, 4] := auxnomealtexp;
        auxnomealtexp := '';

      end; // referente ao for i := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp)- 1 do

      // adicionando informações da AH no
      // inicialmente para saber quantas AH existem no problema realizar a contagem
      // no banco de dados
      // Retornando dados da planilha elicitação
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 21;
      SalvarresultBD;
      Setlength(matriz_AHR, (TIWUserSession(WebApplication.Data).auxquantdeah)
          + 2, 5);

      matriz_AHR[0, 0] := 'Application report';
      matriz_AHR[1, 0] := 'Cycle';
      matriz_AHR[1, 1] := 'Holistic Evaluation (HE) performed?';
      matriz_AHR[1, 2] := 'Alternatives compared in HE';
      matriz_AHR[1, 3] := 'Answer(HE)';
      matriz_AHR[1, 4] := 'Potentially optimal alternatives after HE';

      // pegando informações do BD
      // Retornando dados da planilha elicitação
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 21;
      SalvarresultBD;

      // transformando TIWUserSession(WebApplication.Data).vet_ret_hc[i] em uma matriz, a qual tem o numero d elinhas
      // igual ao numero de ciclos e o numero de colunas em cada linha igual ao numero de AH realizadas no ciclo
      lin_matriz_ciclo := 0;
      for i := 0 to length(TIWUserSession(WebApplication.Data).vet_ret_hc) - 1
        do
      begin
        if TIWUserSession(WebApplication.Data).vet_ret_hc[i] = '0' then
        begin
          Setlength(matriz_ciclo_ah, i + 1, TIWUserSession(WebApplication.Data)
              .NumAlt);
          matriz_ciclo_ah[i, 0] := TIWUserSession(WebApplication.Data)
            .vet_ret_hc[i];
        end // referente a if TIWUserSession(WebApplication.Data).vet_ret_hc[i]='0' then
        else // referente a if TIWUserSession(WebApplication.Data).vet_ret_hc[i]<>'0' then
        begin

          auxrethc := TIWUserSession(WebApplication.Data).vet_ret_hc[i];
          P := 0;
          for j := 1 to length(auxrethc) do
          begin
            if auxrethc[j] <> '.' then
              auxrethc1 := auxrethc1 + auxrethc[j];
            if (auxrethc[j] = '.') and (j <> 1) then
            begin
              INC(P);
              Setlength(vet_ret_hc_aux, P);
              vet_ret_hc_aux[P - 1] := auxrethc1;
              auxrethc1 := '';
            end; // referente ao if  auxpoa[j]=','
            if j = length(auxrethc) then
            begin
              INC(P);
              Setlength(vet_ret_hc_aux, P);
              vet_ret_hc_aux[P - 1] := auxrethc1;
              auxrethc1 := '';
            end; // referente ao if j= Length(auxrethc)
          end; // referente ao for for j := 1 to Length(auxrethc)
          INC(cont);
          Setlength(matriz_ciclo_ah, i + 1, TIWUserSession(WebApplication.Data)
              .NumAlt);
          for h := 0 to length(vet_ret_hc_aux) - 1 do
          begin
            matriz_ciclo_ah[i, h] := vet_ret_hc_aux[h];
          end; // referente a for h := 0 to length(vet_ret_hc_aux) - 1 do
        end; // referente ao else if TIWUserSession(WebApplication.Data).vet_ret_hc[i]<>'0' then

      end; // referente a for i := 0 to length(TIWUserSession(WebApplication.Data).vet_ret_hc) - 1 do

      // depois que  matriz_ciclo_ah foi preenchida será necessário criar um vetor que armazena os
      // ciclos que a ah foi realizada para porteriormente serem adicionados na matriz_ahr
      P := 0;
      for i := 0 to length(TIWUserSession(WebApplication.Data).vtr_id_ah_sum)
        - 1 do
      begin
        for j := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp)
          - 1 do
        begin
          for h := 0 to length(matriz_ciclo_ah[j]) - 1 do
          begin
            if TIWUserSession(WebApplication.Data).vtr_id_ah_sum[i] =
              (matriz_ciclo_ah[j, h]) then
            begin
              Setlength(vetorciclo_ah, P + 1);
              vetorciclo_ah[P] := IntToStr(j);
              INC(P);
            end;
          end; // referente a for h := 0 to length(matriz_ciclo_ah[j]) - 1 do

        end; // referente a  for j := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp) - 1 do

      end; // refernte ao for I := 0 to length(TIWUserSession(WebApplication.Data).vtr_id_ah_sum) - 1 do

      // se no final o tamanho de vetorciclo_ah<> vtr_id_ah_sum então se deve
      // igualar os tamanhos preenchendo os valores de vetorciclo_ah com o tamanho
      // do vetor ciclo sem ser da ah
      P := length(vetorciclo_ah);
      if length(vetorciclo_ah) <> length(TIWUserSession(WebApplication.Data)
          .vtr_id_ah_sum) then
      begin
        for i := length(vetorciclo_ah) - 1 to length
          (TIWUserSession(WebApplication.Data).vtr_id_ah_sum) - 1 do
        begin
          Setlength(vetorciclo_ah, P + 1);
          vetorciclo_ah[P] := IntToStr
            (length(TIWUserSession(WebApplication.Data).qp_ret_exp) - 1);
          INC(P);
        end;
      end; // referente a if Length(vetorciclo_ah)<>length(TIWUserSession(WebApplication.Data).vtr_id_ah_sum) then

      /// iniciando a adição das informações da AH na matriz_AHR

      for i := 2 to (TIWUserSession(WebApplication.Data).auxquantdeah + 2) - 1
        do
      begin
        // inicialmente preenchendo yes
        matriz_AHR[i, 1] := 'YES';

        // preenchendo a decisão
        if TIWUserSession(WebApplication.Data).vtr_decision_sum[i - 2]
          = '1' then
        begin
          // ou seja se uma alternativa foi exluida
          somadecision := NomeAlt[StrToInt(TIWUserSession(WebApplication.Data)
              .vtr_id_alt_e_sum[i - 2])] + ' ' + 'is eliminated';
        end // referente a if decision=2
        else // if decision=2 then
        begin
          somadecision := NomeAlt[StrToInt(TIWUserSession(WebApplication.Data)
              .vtr_id_alt_c_sum[i - 2])] + ' ' + 'is preferred';
        end; // referente ao else
        matriz_AHR[i, 3] := somadecision;
        somadecision := '';

        // pegando as alternativas avaliadas na HE

        alt_avaliadas := TIWUserSession(WebApplication.Data)
          .vtr_alt_avaliadas_sum[i - 2];

        P := 0;
        for j := 1 to length(alt_avaliadas) do
        begin
          if alt_avaliadas[j] <> '/' then
            auxalt_avaliadas1 := auxalt_avaliadas1 + alt_avaliadas[j];
          if (alt_avaliadas[j] = '/') and (j <> 1) then
          begin
            INC(P);
            Setlength(vet_alt_avaliadas_aux, P);
            vet_alt_avaliadas_aux[P - 1] := auxalt_avaliadas1;
            auxalt_avaliadas1 := '';
          end; // referente ao if  auxpoa[j]=','
          if j = length(alt_avaliadas) then
          begin
            INC(P);
            Setlength(vet_alt_avaliadas_aux, P);
            vet_alt_avaliadas_aux[P - 1] := auxalt_avaliadas1;
            auxalt_avaliadas1 := '';
          end; // referente ao if j= Lengthalt_avaliadas)
        end; // referente ao for for j := 1 to Length(alt_avaliadas)
        for h := 0 to length(vet_alt_avaliadas_aux) - 1 do
        begin
          auxalt_avaliadasexp := auxalt_avaliadasexp + NomeAlt
            [StrToInt(vet_alt_avaliadas_aux[h])];
          if h < length(vet_alt_avaliadas_aux) - 1 then
            auxalt_avaliadasexp := auxalt_avaliadasexp + ',';
        end; // do for h  := 0 to Length(vet_poa_ciclo_aux) - 1 do
        matriz_AHR[i, 2] := auxalt_avaliadasexp;
        auxalt_avaliadasexp := '';


        // pegando as alternativas potencialmente otimas

        auxpoa := TIWUserSession(WebApplication.Data).vtr_poa_sum[i - 2];
        P := 0;
        for j := 1 to length(auxpoa) do
        begin
          if auxpoa[j] <> ',' then
            auxpoa1 := auxpoa1 + auxpoa[j];
          if (auxpoa[j] = ',') and (j <> 1) then
          begin
            INC(P);
            Setlength(vet_poa_ciclo_aux, P);
            vet_poa_ciclo_aux[P - 1] := auxpoa1;
            auxpoa1 := '';
          end; // referente ao if  auxpoa[j]=','
          if j = length(auxpoa) then
          begin
            INC(P);
            Setlength(vet_poa_ciclo_aux, P);
            vet_poa_ciclo_aux[P - 1] := auxpoa1;
            auxpoa1 := '';
          end; // referente ao if j= Length(auxpoa)
        end; // referente ao for for j := 1 to Length(auxpoa)
        for h := 0 to length(vet_poa_ciclo_aux) - 1 do
        begin
          auxnomealtexp := auxnomealtexp + NomeAlt
            [StrToInt(vet_poa_ciclo_aux[h])];
          if h < length(vet_poa_ciclo_aux) - 1 then
            auxnomealtexp := auxnomealtexp + ',';
        end; // do for h  := 0 to Length(vet_poa_ciclo_aux) - 1 do
        matriz_AHR[i, 4] := auxnomealtexp;
        auxnomealtexp := '';

        // pegando o ciclo
        matriz_AHR[i, 0] := vetorciclo_ah[i - 2];

      end; // referenet a  for i := 2 to (TIWUserSession(WebApplication.Data).auxquantdeah+2) - 1 do

      // plotando o sumario do  matriz_AHR
      grdexport1.Cells[5, 2] := 'Holistic Evaluation (HE) performed?';
      grdexport1.Cells[6, 2] := 'Alternatives compared in HE';
      grdexport1.Cells[7, 2] := 'Answer(HE)';
      grdexport1.Cells[8, 2] := 'Potentially optimal alternatives after HE';

      grdexport1.TotalRows := length(matriz_perg) + length(matriz_AHR);
      K := 0; // indica a linha atual a ser escrita
      P := 0; // indica a linha da matriz de holistica
      Stop := false; // indica se já pode ou não parar o processo
      cont := 0; // indica se alguma holistica foi plotada no ciclo
      inck := false; // indica se o k foi incrementado dentro da holistica
      for i := 0 to length(matriz_perg) - 1 do
      begin

        // plota a pergunta do ciclo
        for j := 0 to length(matriz_perg[i]) - 1 do
        begin
          grdexport1.Cells[j, K + 1] := matriz_perg[i, j];
        end; // referente a for j := 0 to Length(matriz_perg[k]) - 1 do

        if i >= 2 then
        begin

          // plota as holisticas do ciclo
          // caso não tenham holisticas para plotar ele não entrará no laço mas precisa receber o
          // 'no' e incrementar K
          if P + 2 = length(matriz_AHR) then
          begin
            grdexport1.Cells[5, K + 1] := 'no';
            inck := true;
            INC(K);
          end // referente a  if p+2= length(matriz_AHR) then
          else if P < length(matriz_AHR) - 1 then
            // caso hajam holisticas remanescentes
            while not Stop do
            begin
              // se a holistica pertencer ao ciclo
              if matriz_AHR[P + 2, 0] = matriz_perg[i, 0] then
              begin
                grdexport1.Cells[5, K + 1] := 'yes';
                for j := 1 to length(matriz_AHR[0]) - 1 do
                  grdexport1.Cells[5 + j, K + 1] := matriz_AHR[P + 2, j + 1];
                INC(P);
                INC(cont);
                inck := true;
                INC(K);
              end; // referente a  if matriz_AHR[P,0]=inttostr(i) then

              // se todas as holisticas já tiverem sido alocadas
              if P + 2 = length(matriz_AHR) then
              begin
                Stop := true;
                break; // quebra o laço
              end // referente a if p+2=length(matriz_AHR) then
              else // if p+2<>length(matriz_AHR) then
              begin
                // se a holistica não pertencer ao ciclo
                if matriz_AHR[P + 2, 0] <> matriz_perg[i, 0] then
                begin
                  if cont = 0 then
                  begin
                    grdexport1.Cells[5, K + 1] := 'no';
                    inck := true;
                    INC(K);
                  end; // referente a if cont=0 then
                  Stop := true;
                end; // referente a if matriz_AHR[P,0]<>inttostr(i) then
              end; // referente ao else if p+2<>length(matriz_AHR) then
            end; // referente ao while not stop do
        end; // referente a  if i>=2 then
        if inck = false then
        begin
          INC(K);
        end // refrente a   if inck=false then
        else
          inck := false;
        cont := 0;
        Stop := false;
      end; // referente a  for i := 0 to length(matriz_perg) - 1 do

    end; // referente a problematica igual a 0

    if Problematica = 1 then
    begin
      // salvando relatorio para o caso da problematica de ordenação

      // Retornando dados da planilha elicitação
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
      SalvarresultBD;

      if not avaliable then
      begin
        WebApplication.ShowMessage(
          'The application sumary is only avaliable for problems registered after May 24th. We appologize for this inconvenience.');
        Exit;
      end;

      // inicialmente preenchendo uma matriz que armazena todas as informações das perguntas
      // respondidas
      Setlength(matriz_perg, length(TIWUserSession(WebApplication.Data)
            .qp_ret_exp) + 2, 5);
      // inicialmente setando informações que são fixas,informações do cabeçalho
      matriz_perg[0, 0] := 'Application report';
      matriz_perg[1, 0] := 'Cycle';
      matriz_perg[1, 1] := 'Consequence A';
      matriz_perg[1, 2] := 'Consequence B';
      matriz_perg[1, 3] := 'Answer';
      matriz_perg[1, 4] := 'Number of levels';
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
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + FloatToStr
              (MaxCons[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]) + ')';

          if (Typeofcrit[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]] = 0) or
            (Typeofcrit[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]] = 2) then
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + FloatToStr
              (MinCons[vtrordem[StrToInt(vet_idB_ciclo[i - 2])]]) + ')';

        end; // referente ao else

        // adicionando informações da consequencia A
        if vet_idA_ciclo[i - 2] = '-10' then
        begin
          matriz_perg[i, 1] := '';
        end
        else
        begin
          vet_real_consA_ciclo_aux := StrToFloat(vet_real_consA_ciclo[i - 2]);
          vet_real_consA_ciclo_aux2 := FormatFloat('0.000',
            vet_real_consA_ciclo_aux);
          matriz_perg[i, 1] := vet_real_consA_ciclo_aux2 + ' ' + 'of' + ' ' +
            NomeCrit[vtrordem[StrToInt(vet_idA_ciclo[i - 2])]];
        end;

        // adicionando informações dos números de níveis
        matriz_perg[i, 4] := vet_rpos_ciclo[i - 2];

      end; // referente ao for i := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp)- 1 do

      // adicionando informações da AH no
      // inicialmente para saber quantas AH existem no problema realizar a contagem
      // no banco de dados
      // Retornando dados da planilha elicitação
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 22;
      SalvarresultBD;
      Setlength(matriz_AHR, (TIWUserSession(WebApplication.Data).auxquantdeah)
          + 2, 5);

      matriz_AHR[0, 0] := 'Application report';
      matriz_AHR[1, 0] := 'Cycle';
      matriz_AHR[1, 1] := 'Holistic Evaluation (HE) performed?';
      matriz_AHR[1, 2] := 'Alternatives compared in HE';
      matriz_AHR[1, 3] := 'Answer(HE)';
      matriz_AHR[1, 4] := 'Number of levels after HE';

      // pegando informações do BD
      // Retornando dados da planilha elicitação
      { TIWUserSession(WebApplication.Data).AuxsalvarBD := 21;
        SalvarresultBD; }

      // transformando TIWUserSession(WebApplication.Data).vet_ret_hc[i] em uma matriz, a qual tem o numero d elinhas
      // igual ao numero de ciclos e o numero de colunas em cada linha igual ao numero de AH realizadas no ciclo
      lin_matriz_ciclo := 0;
      for i := 0 to length(TIWUserSession(WebApplication.Data).vet_ret_hc) - 1
        do
      begin
        if TIWUserSession(WebApplication.Data).vet_ret_hc[i] = '0' then
        begin
          Setlength(matriz_ciclo_ah, i + 1, TIWUserSession(WebApplication.Data)
              .NumAlt);
          matriz_ciclo_ah[i, 0] := TIWUserSession(WebApplication.Data)
            .vet_ret_hc[i];
        end // referente a if TIWUserSession(WebApplication.Data).vet_ret_hc[i]='0' then
        else // referente a if TIWUserSession(WebApplication.Data).vet_ret_hc[i]<>'0' then
        begin

          auxrethc := TIWUserSession(WebApplication.Data).vet_ret_hc[i];
          P := 0;
          for j := 1 to length(auxrethc) do
          begin
            if auxrethc[j] <> '.' then
              auxrethc1 := auxrethc1 + auxrethc[j];
            if (auxrethc[j] = '.') and (j <> 1) then
            begin
              INC(P);
              Setlength(vet_ret_hc_aux, P);
              vet_ret_hc_aux[P - 1] := auxrethc1;
              auxrethc1 := '';
            end; // referente ao if  auxpoa[j]=','
            if j = length(auxrethc) then
            begin
              INC(P);
              Setlength(vet_ret_hc_aux, P);
              vet_ret_hc_aux[P - 1] := auxrethc1;
              auxrethc1 := '';
            end; // referente ao if j= Length(auxrethc)
          end; // referente ao for for j := 1 to Length(auxrethc)
          INC(cont);
          Setlength(matriz_ciclo_ah, i + 1, TIWUserSession(WebApplication.Data)
              .NumAlt);
          for h := 0 to length(vet_ret_hc_aux) - 1 do
          begin
            matriz_ciclo_ah[i, h] := vet_ret_hc_aux[h];
          end; // referente a for h := 0 to length(vet_ret_hc_aux) - 1 do
        end; // referente ao else if TIWUserSession(WebApplication.Data).vet_ret_hc[i]<>'0' then

      end; // referente a for i := 0 to length(TIWUserSession(WebApplication.Data).vet_ret_hc) - 1 do

      // depois que  matriz_ciclo_ah foi preenchida será necessário criar um vetor que armazena os
      // ciclos que a ah foi realizada para porteriormente serem adicionados na matriz_ahr
      P := 0;
      for i := 0 to length(TIWUserSession(WebApplication.Data).vtr_id_ah_sum)
        - 1 do
      begin
        for j := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp)
          - 1 do
        begin
          for h := 0 to length(matriz_ciclo_ah[j]) - 1 do
          begin
            if TIWUserSession(WebApplication.Data).vtr_id_ah_sum[i] =
              (matriz_ciclo_ah[j, h]) then
            begin
              Setlength(vetorciclo_ah, P + 1);
              vetorciclo_ah[P] := IntToStr(j);
              INC(P);
            end;
          end; // referente a for h := 0 to length(matriz_ciclo_ah[j]) - 1 do

        end; // referente a  for j := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp) - 1 do

      end; // refernte ao for I := 0 to length(TIWUserSession(WebApplication.Data).vtr_id_ah_sum) - 1 do

      // se no final o tamanho de vetorciclo_ah<> vtr_id_ah_sum então se deve
      // igualar os tamanhos preenchendo os valores de vetorciclo_ah com o tamanho
      // do vetor ciclo sem ser da ah
      P := length(vetorciclo_ah);
      if length(vetorciclo_ah) <> length(TIWUserSession(WebApplication.Data)
          .vtr_id_ah_sum) then
      begin
        for i := length(vetorciclo_ah) - 1 to length
          (TIWUserSession(WebApplication.Data).vtr_id_ah_sum) - 1 do
        begin
          Setlength(vetorciclo_ah, P + 1);
          vetorciclo_ah[P] := IntToStr
            (length(TIWUserSession(WebApplication.Data).qp_ret_exp) - 1);
          INC(P);
        end;
      end; // referente a if Length(vetorciclo_ah)<>length(TIWUserSession(WebApplication.Data).vtr_id_ah_sum) then

      /// iniciando a adição das informações da AH na matriz_AHR

      for i := 2 to (TIWUserSession(WebApplication.Data).auxquantdeah + 2) - 1
        do
      begin
        // inicialmente preenchendo yes
        matriz_AHR[i, 1] := 'YES';


        // preenchendo a decisão
        // nesse caso sempre a decisão vai ser 2, ja que não é peritida a exclusão de alternativas
        // e sempre as informações vão estar no  vtr_id_alt_c_sum , sendo o primeiro número que aparece
        // no campo o preferivel, por exemplo, se estiver 0/8, a alternativa 0 foi preferivel a alternativa 8

        alt_pref_ord := TIWUserSession(WebApplication.Data)
          .vtr_id_alt_c_sum[i - 2];

        P := 0;
        for j := 1 to length(alt_pref_ord) do
        begin
          if alt_pref_ord[j] <> '/' then
            auxalt_pref_ord1 := auxalt_pref_ord1 + alt_pref_ord[j];
          if (alt_pref_ord[j] = '/') and (j <> 1) then
          begin
            INC(P);
            Setlength(vet_alt_pref_ord_aux, P);
            vet_alt_pref_ord_aux[P - 1] := auxalt_pref_ord1;
            auxalt_pref_ord1 := '';
          end; // referente ao if  auxpoa[j]=','
          if j = length(alt_pref_ord) then
          begin
            INC(P);
            Setlength(vet_alt_pref_ord_aux, P);
            vet_alt_pref_ord_aux[P - 1] := auxalt_pref_ord1;
            auxalt_pref_ord1 := '';
          end; // referente ao if j= Length( alt_pref_ord)
        end; // referente ao for for j := 1 to Length( alt_pref_ord)
        Setlength(vtr_final_pref_ord, TIWUserSession(WebApplication.Data)
            .auxquantdeah);
        vtr_final_pref_ord[i - 2] := NomeAlt[StrToInt(vet_alt_pref_ord_aux[0])];
        somadecision := vtr_final_pref_ord[i - 2] + ' ' + 'is preferred';
        matriz_AHR[i, 3] := somadecision;
        somadecision := '';

        // pegando as alternativas avaliadas na HE

        alt_avaliadas := TIWUserSession(WebApplication.Data)
          .vtr_alt_avaliadas_sum[i - 2];

        P := 0;
        for j := 1 to length(alt_avaliadas) do
        begin
          if alt_avaliadas[j] <> '/' then
            auxalt_avaliadas1 := auxalt_avaliadas1 + alt_avaliadas[j];
          if (alt_avaliadas[j] = '/') and (j <> 1) then
          begin
            INC(P);
            Setlength(vet_alt_avaliadas_aux, P);
            vet_alt_avaliadas_aux[P - 1] := auxalt_avaliadas1;
            auxalt_avaliadas1 := '';
          end; // referente ao if  auxpoa[j]=','
          if j = length(alt_avaliadas) then
          begin
            INC(P);
            Setlength(vet_alt_avaliadas_aux, P);
            vet_alt_avaliadas_aux[P - 1] := auxalt_avaliadas1;
            auxalt_avaliadas1 := '';
          end; // referente ao if j= Lengthalt_avaliadas)
        end; // referente ao for for j := 1 to Length(alt_avaliadas)
        for h := 0 to length(vet_alt_avaliadas_aux) - 1 do
        begin
          auxalt_avaliadasexp := auxalt_avaliadasexp + NomeAlt
            [StrToInt(vet_alt_avaliadas_aux[h])];
          if h < length(vet_alt_avaliadas_aux) - 1 then
            auxalt_avaliadasexp := auxalt_avaliadasexp + ',';
        end; // do for h  := 0 to Length(vet_poa_ciclo_aux) - 1 do
        matriz_AHR[i, 2] := auxalt_avaliadasexp;
        auxalt_avaliadasexp := '';

        // adicionando informações dos números de níveis
        matriz_AHR[i, 4] := vtr_num_rlevels_sum[i - 2];

        // pegando o ciclo
        matriz_AHR[i, 0] := vetorciclo_ah[i - 2];

      end; // referenet a  for i := 2 to (TIWUserSession(WebApplication.Data).auxquantdeah+2) - 1 do

      // plotando o sumario do  matriz_AHR
      grdexport1.Cells[5, 2] := 'Holistic Evaluation (HE) performed?';
      grdexport1.Cells[6, 2] := 'Alternatives compared in HE';
      grdexport1.Cells[7, 2] := 'Answer(HE)';
      grdexport1.Cells[8, 2] := 'Number of levels after HE';

      grdexport1.TotalRows := length(matriz_perg) + length(matriz_AHR);
      K := 0; // indica a linha atual a ser escrita
      P := 0; // indica a linha da matriz de holistica
      Stop := false; // indica se já pode ou não parar o processo
      cont := 0; // indica se alguma holistica foi plotada no ciclo
      inck := false; // indica se o k foi incrementado dentro da holistica
      for i := 0 to length(matriz_perg) - 1 do
      begin

        // plota a pergunta do ciclo
        for j := 0 to length(matriz_perg[i]) - 1 do
        begin
          grdexport1.Cells[j, K + 1] := matriz_perg[i, j];
        end; // referente a for j := 0 to Length(matriz_perg[k]) - 1 do

        if i >= 2 then
        begin

          // plota as holisticas do ciclo
          // caso não tenham holisticas para plotar ele não entrará no laço mas precisa receber o
          // 'no' e incrementar K
          if P + 2 = length(matriz_AHR) then
          begin
            grdexport1.Cells[5, K + 1] := 'no';
            inck := true;
            INC(K);
          end // referente a  if p+2= length(matriz_AHR) then
          else if P < length(matriz_AHR) - 1 then
            // caso hajam holisticas remanescentes
            while not Stop do
            begin
              // se a holistica pertencer ao ciclo
              if matriz_AHR[P + 2, 0] = matriz_perg[i, 0] then
              begin
                grdexport1.Cells[5, K + 1] := 'yes';
                for j := 1 to length(matriz_AHR[0]) - 1 do
                  grdexport1.Cells[5 + j, K + 1] := matriz_AHR[P + 2, j + 1];
                INC(P);
                INC(cont);
                inck := true;
                INC(K);
              end; // referente a  if matriz_AHR[P,0]=inttostr(i) then

              // se todas as holisticas já tiverem sido alocadas
              if P + 2 = length(matriz_AHR) then
              begin
                Stop := true;
                break; // quebra o laço
              end // referente a if p+2=length(matriz_AHR) then
              else // if p+2<>length(matriz_AHR) then
              begin
                // se a holistica não pertencer ao ciclo
                if matriz_AHR[P + 2, 0] <> matriz_perg[i, 0] then
                begin
                  if cont = 0 then
                  begin
                    grdexport1.Cells[5, K + 1] := 'no';
                    inck := true;
                    INC(K);
                  end; // referente a if cont=0 then
                  Stop := true;
                end; // referente a if matriz_AHR[P,0]<>inttostr(i) then
              end; // referente ao else if p+2<>length(matriz_AHR) then
            end; // referente ao while not stop do
        end; // referente a  if i>=2 then
        if inck = false then
        begin
          INC(K);
        end // refrente a   if inck=false then
        else
          inck := false;
        cont := 0;
        Stop := false;
      end; // referente a  for i := 0 to length(matriz_perg) - 1 do

    end; // problematica igual a 1

    TIWAdvWebGridExcelIO2.AdvWebGrid := grdexport1;


    // TIWAdvWebGridExcelIO2.AdvWebGrid.Components[1] := grdexport;

    TIWAdvWebGridExcelIO2.XLSExport(Probname + ' ' + Data +
        ' - Summary of Elicitation' + '.xls', WebApplication);
    Inherited;

  end; // referente ao with

end;

procedure TfrmPortfolioResultados.btnNaoFinalizarEOClick(Sender: TObject);
begin
  rgnrusfinishing.Visible := false;
end;

procedure TfrmPortfolioResultados.IWButton12Click(Sender: TObject);
var
  i: integer;
  Series2: TBarSeries;
  error: TErrorSeries;
  point: TPointSeries;
begin
  lstbxcritg.Items.Clear;
  IWRgnresultadografico.Visible := true;
  IWRgnfinaltabela.Visible := false;
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
    { if (Problematica = 4) and (NDA = 1) then
      begin
      error := TErrorSeries.Create(self);
      for i := 0 to crtEhraph.SeriesCount - 1 do
      crtEhraph.series[i].Clear;

      for i := 0 to numcrit - 1 do
      begin
      crtEhraph.series[0].AddXY(i, TIWUserSession(WebApplication.Data)
      .Sconst[i], '', clwebred);
      error.AddErrorBar(i, 0.5 * (MaxPeso[i] + MinPeso[i]), 0.5 *
      (MaxPeso[i] - MinPeso[i]), '', clwebblack);
      crtEhraph.BottomAxis.Items.Add(i, 'C' + IntToStr(i + 1));
      end;

      crtEhraph.AddSeries(error);
      // crtEhraph.AddSeries(point);
      crtEhraph.View3D := false;
      IWRegion9.Visible := true;
      btnsi2.Visible := true;

      imgegraph.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (crtEhraph.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgegraph.Width,
      imgegraph.Height)));

      end
      else
      begin
      IWRegion9.Visible := false;
      btnsi2.Visible := false;
      end; }
  end;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarresultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarresultBD;

end;

procedure TfrmPortfolioResultados.IWButton13Click(Sender: TObject);
begin
  IWLabel63.Visible := false;
  cmbxgroupindex.Visible := false;
  IWRgnanalisedesensibilidade.Visible := false;
  if TIWUserSession(WebApplication.Data).Problematica <> 3 then
    IWRgnfinaltabela.Show;
  btnstartAS.Enabled := false;
  rgninstructions.Visible := true;
  rgncrisel.Visible := false;
  btncrisel.Visible := false;
  btninstruc.Visible := false;
  grdcrisel.RowCount := 0;
  grdcrisel.ColumnCount := 0;
end;

procedure TfrmPortfolioResultados.IWButton14Click(Sender: TObject);
var
  i: integer;
begin
  TbCtrlP0.Visible := false;
  tbctrlAS.ActivePage := 0;
  IWButton14.Enabled := false;
  if edtpercentprofilesvar.Text = '' then
  begin
    WebApplication.ShowMessage(
      'Please, inform the profiles variation percentage.');
    Exit;
  end;
  with TIWUserSession(WebApplication.Data) do
  begin
    tipoAS := 1;
    Setlength(Pmax_perfil, length(perfis));
    Setlength(Pmin_perfil, length(perfis));
    try
      for i := 0 to length(Pmax_perfil) - 1 do
      begin
        Pmax_perfil[i] := Abs(StrToFloat(edtpercentprofilesvar.Text));
        Pmin_perfil[i] := Abs(StrToFloat(edtpercentprofilesvar.Text));
      end; // for
    except
      WebApplication.ShowMessage(
        'Please, inform the profiles variation percentage with numbers only.');
      Exit;
    end;
    Setlength(contadorAS, NumAlt, length(perfis) + 2);
    TIWUserSession(WebApplication.Data).ASProfiles := true;
    // numero de classes + 1
  end; // with
  btnstartAS.Enabled := true;
end;

procedure TfrmPortfolioResultados.BtnMaxIClick(Sender: TObject);
begin
  rgnimagemax.Show;
end;

procedure TfrmPortfolioResultados.btnokhe0Click(Sender: TObject);
begin
  if rdbtnEDFR.Checked then
    IWButton21Click(self);
  if rdbtnHEFR.Checked then
    BtnheyClick(self);
end;

procedure TfrmPortfolioResultados.BtnOKHEG2Click(Sender: TObject);
begin
  // salvar banco de dados na tabela he_question
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 15;
  SalvarresultBD;
  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;
  // **Para seguir direto para a decomposição **//
  if TIWUserSession(WebApplication.Data).Sol = -5 then
  begin
    TIWUserSession(WebApplication.Data).stage := 3;
    TIWUserSession(WebApplication.Data).auxgoback := -56231;
    Tfrmaintercriterio.Create(WebApplication).Show;
  end
  else
    TfrmPortfolioResultados.Create(WebApplication).Show;
end;

procedure TfrmPortfolioResultados.btnOKHEG4Click(Sender: TObject);
var
  str: string;
  nonsel: array of integer;
  Selected, i, l, P, Y, K: integer;
  Stop: Boolean;
  ComboBox: TIWComboBox;
  POASB: array of integer;
begin
  /// ////////////////////** Confirma a Avaliação Holística **/////////////////////
  With TIWUserSession(WebApplication.Data) do
  begin

    if Problematica = 4 then
    begin
      // ** Verifica se trata-se de seleção ou exclusão **//
      Case rdgrpHEG2.ItemIndex of
        0:
          begin
            AHType := 2;
            str := 'select as the best one';
          end;
        1:
          begin
            AHType := 1;
            str := 'exclude from the subset';
          end;
      End;

      // ** Verifica se a alternativa foi selecionada **//
      if CmbxHEAG1.ItemIndex = -1 then
      begin
        WebApplication.ShowMessage(
          'Please, inform which alternative you wish to ' + str + '.');
        Exit;
      end;
      // ** Recebe o componente que possui a informação **//
      ComboBox := CmbxHEAG1;
    end;

    { if Problematica = 1 then
      begin
      // ** Para ordenação sempre se trata de seleção da melhor alternativa **//
      AHType := 2;
      str := 'select as the best one';

      // ** Verifica se a alternativa foi selecionada **//
      if CmbxHEAG2.ItemIndex = -1 then
      begin
      WebApplication.ShowMessage(
      'Please, inform which alternative you wish to ' + str + '.');
      Exit;
      end;
      // ** Recebe o componente que possui a informação **//
      ComboBox := CmbxHEAG2;
      end; }

    // ** Separando as alternativas em selecionada ou não selecionada **//
    Setlength(nonsel, 0);
    for i := 0 to length(IAltAH) - 1 do
      if i = ComboBox.ItemIndex then
        Selected := TIWUserSession(WebApplication.Data).IAltAH[i]
      else
      begin
        Setlength(nonsel, length(nonsel) + 1);
        nonsel[length(nonsel) - 1] := IAltAH[i];
      end;

    /// ///////////////////////////////////////////////////////////////////////
    /// Verifica-se alternativas indiferentes no caso de o decisor escolher a
    /// melhor alternativa na prob de escolha ///////////////////////////////
    if (AHType = 2) and (Problematica = 4) then
      for i := 0 to length(nonsel) - 1 do
      begin
        for l := 0 to TIWUserSession(WebApplication.Data).NDA - 1 do
        begin
          if Selected = VetPOA[l] then
            P := l;
          if nonsel[i] = TIWUserSession(WebApplication.Data).VetPOA[l] then
            Y := l;
        end;
        if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y] = 'I') or
          (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y] = 'NP') then
        begin
          if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y] = 'I')
            then
            WebApplication.ShowMessage(
              'It is not possible to state this relations because alternatives '
                + AltSiglas[Selected] + ' and ' + AltSiglas[nonsel[i]] +
                ' has already been considered indifferent. Please inform a different relation of dominance.');
          if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y] = 'NP')
            then
            WebApplication.ShowMessage(
              'It is not possible to state this relations because according to the current iformation level, ' + AltSiglas[Selected]
                + ' cannot dominate ' + AltSiglas[nonsel[i]]
                + ' in all the feasible weight space. Please inform a different relation of dominance.');

          Stop := true;
        end; // se há indiferença
      end;
    /// / Trava para exclusão envolvendo alternativas não domináveis pelo grupo
    /// de alternativas remanescente ///////////////////////////////////////
    if (AHType = 1) and (Problematica = 4) then
      for i := 0 to length(nonsel) - 1 do
      begin
        for l := 0 to TIWUserSession(WebApplication.Data).NDA - 1 do
        begin
          if Selected = VetPOA[l] then
            P := l;
          if nonsel[i] = TIWUserSession(WebApplication.Data).VetPOA[l] then
            Y := l;
        end;
        /// / Se a alt não selecionada Y for indiferente ou não for capaz de dominar
        /// a alternativa eliminada P  incrmenta o contador M, se M = número de
        /// alternativas não selecionadas, ou seja, alternativas remanecentes
        /// significa que nenhuma alternativa daquele grupo é capaz de dominar
        /// Y, por isso, bloqueia-se o processo /////////////////////////////
        if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y] = 'I') or
          (TIWUserSession(WebApplication.Data).MatIndiferenca[Y, P] = 'NP') then
        begin
          INC(K);
          if K = length(nonsel) then
            Stop := true;
        end; // se há indiferença
      end;

    /// / Caso as verificações tenham identificado algum problema, o processo
    /// é interrompido ////////////////////////////////////////////////////
    if Stop = true then
    begin
      TIWUserSession(WebApplication.Data).PAH := false;
      TfrmPortfolioResultados.Create(WebApplication).Show;
      Exit;
    end;

    // **Caso nenhum problema tenha sido identificado **//
    /// / A HE foi utilizada para selecionar a melhor alternativa ////
    INC(NumAH);
    /// / Adicionando colunas de acordo ao número HE resalizadas, essa matriz
    /// permite armazenar os índices de todas as HE realizadas, ainda que tenham
    /// sido eliminadas, de forma que não haja duplicação de índices ////////
    INC(TotalAH);
    Setlength(HEINDEX, 2, TotalAH);
    /// / Incrementa  contador de Avaliações Holísticas ////
    Setlength(MATAH, NumAH);
    Setlength(VetVisualization, NumAH);
    /// / Adiciona mais uma linha à matriz de
    /// avaliações holísticas ////
    Setlength(TIWUserSession(WebApplication.Data).MATAH[NumAH - 1], length
        (IAltAH) + 1);
    /// Seta
    ///
    /// / Salva o tipo de visualização utilizada para a AH ////
    VetVisualization[NumAH - 1] := visualization;
    NumRAH := NumRAH + length(IAltAH) - 1;
    /// / Obtém as demais alternativas ////
    MATAH[NumAH - 1, 0] := AHType;
    /// / Salva o tipo de AH na matriz coluna 0 ////
    AHType := -5;
    MATAH[NumAH - 1, 1] := Selected;
    /// / Salva a alternativa escolhida ////
    /// / Salva as alternativas não escolhidas ////
    for i := 1 to length(IAltAH) - 1 do
    begin
      TIWUserSession(WebApplication.Data).MATAH[NumAH - 1, i + 1] := nonsel
        [i - 1];
    end;

    if Problematica = 0 then
    begin
      // ** Se for Holística de exclusão, deve-se testar a resposta **//
      if MATAH[NumAH - 1, 0] = 1 then
      begin
        Setlength(POASB, NDA);
        for i := 0 to NDA - 1 do
          POASB[i] := VetPOA[i];
      end;
      PLEscolha;
      // ** Se não houverem mais Poas, o DM foi inconsistente **//
      if NDA = 0 then
      begin
        // ** Devolve a informação anterior **//
        Setlength(VetPOA, length(POASB));
        for i := 0 to length(POASB) - 1 do
          VetPOA[i] := POASB[i];

        // ** Exibe mensagem **//
        iwrgnCaixaDialogoResultado.Visible := true;
        txtCaixaDialogoResults.Lines.Clear;
        if idioma = 0 then
          txtCaixaDialogoResults.Lines.Add(
            'According to the current weight space, there is not any weight vector for which the information you have just given is supported. It is recomended to evaluate a subset with fewer alternatives.')
        else
          txtCaixaDialogoResults.Lines.Add(
            'De acordo com o atual espaço de pesos, não existe nenhum vetor de pesos para o qual a informação dada é válida. É recomendável avaliar conjuntos com menos alternativas.');

        Setlength(MATAH, NumAH - 1);
        INC(NumAH, -1);
        Exit;
      end;
    end;

    // ** Preenchendo o índice real de cada Avaliação Holística **//
    for i := 0 to length(HEINDEX[0]) - 1 do
      HEINDEX[0, i] := i + 1;
    // ** Preenche o índice atual da Avaliação holística **//
    HEINDEX[1, length(HEINDEX[1]) - 1] := NumAH;

    /// ///////////////////////////////////////////////////////////////////////
    /// / Obs.: Índice real da HA é o índice único que cada avaliação holística do
    /// problema tem e não muda mesmo que alguma tenha sido excluída. Índice
    /// atual é a posição da linha que a restrição ocupa na MATAH que varia
    /// com a exclusão de restrições do problema.////////////////////////////
    if Problematica = 4 then
      PLEscolha;
    if Problematica = 1 then
      PLOrdenacao;
  end;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 8;
  SalvarresultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 12;
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;
  TfrmPortfolioResultados.Create(WebApplication).Show;
end;

procedure TfrmPortfolioResultados.btnexportationClick(Sender: TObject);
// exportação de dados para problematicas 0 e 1
var
  i, j, K, P, N, h: integer;
  Data: string;
  auxpoa, auxpoa1, auxnomealtexp: string;
  vet_poa_ciclo_aux: array of string;
begin
  Data := datetostr(now);
  for i := 1 to length(Data) - 1 do
    if Data[i] = '/' then
      Data[i] := '_';

  with TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumCrit + nsel + 6 do
    begin
      grdexport.Columns.Add;
    end;

    if Problematica = 4 then
    begin
     grdexport.TotalRows := 25 + NumAlt + NDA;
      if TIWUserSession(WebApplication.Data).idioma = 1 then
      begin
        grdexport.Cells[0, 14 + NumAlt + NDA] :=
          'Intervalo de valores das constantes de escala:';
        grdexport.Cells[0, 10 + NumAlt] := 'Resultados:';
        grdexport.Cells[0, 18 + NumAlt + NDA] :=
          'Nota: Um vetor de constantes de escala viável tem os valores de seus componentes dentro deste intervalo e a soma destes valores é igual a um.'
      end
      else
      begin
        grdexport.Cells[0, 14 + NumAlt + NDA] :=
          'Scaling Constants Range of values:';
        grdexport.Cells[0, 10 + NumAlt] := 'Results:';
        grdexport.Cells[0, 18 + NumAlt + NDA] :=
          'Note: A valid scaling constants vector has its components values within this interval as long as the sum of those values is equal to one.';

      end;
      grdexport.Cells[0, 16 + NumAlt + NDA] := 'Max';
      grdexport.Cells[0, 17 + NumAlt + NDA] := 'Min';
      for J := 0 to Numcrit - 1 do
      begin
        grdexport.Cells[1 + J, 15 + NumAlt + NDA] := 'K(' + NomeCrit
          [vtrordem[J]] + ')';
        grdexport.Cells[1 + J, 16 + NumAlt + NDA] := FormatFloat
          ('0.00', MaxPeso[J]);
        grdexport.Cells[1 + J, 17 + NumAlt + NDA] := FormatFloat
          ('0.00', MinPeso[J]);
      end;
      for i := 0 to NDA - 1 do
      begin
        grdexport.Cells[0, 12 + NumAlt + i] := NomeAlt[VetPOA[i]];

        for J := 0 to Numcrit - 1 do
        begin
          grdexport.Cells[1 + J, 11 + NumAlt] := NomeCrit[vtrordem[J]];
          grdexport.Cells[1 + J, 12 + NumAlt + i] := FloatToStr
            (ConsMatrix[VetPOA[i], vtrordem[J]]);
        end;
      end;
    end;

    { no componente advwebgrid o endereçamento de celulas segue o padrão AdvWebGrid.Cells[coluna, linha]:= }

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

    for i := 0 to NumAlt - 1 do
    begin
      if Problematica = 0 then
      begin
        if TIWUserSession(WebApplication.Data).idioma = 1 then
        begin
          grdexport.Cells[Numcrit + 1, 6] := 'Max Valor Global';
          grdexport.Cells[Numcrit + 2, 6] := 'Min Valor Global';
        end
        else
        begin
          grdexport.Cells[Numcrit + 1, 6] := 'Max Overall Value';
          grdexport.Cells[Numcrit + 2, 6] := 'Min Overall Value';
        end;

        grdexport.Cells[Numcrit + 1, 7 + i] := FormatFloat
          ('0.00', MatOverallValues[i, 0]);
        grdexport.Cells[Numcrit + 2, 7 + i] := FormatFloat
          ('0.00', MatOverallValues[i, 1]);
      end;

      grdexport.Cells[0, 7 + i] := NomeAlt[i];
      for J := 0 to Numcrit - 1 do
        grdexport.Cells[1 + J, 7 + i] := FloatToStr(ConsMatrix[i, vtrordem[J]])
    end;

    TIWAdvWebGridExcelIO2.AdvWebGrid := grdexport;

    // TIWAdvWebGridExcelIO2.AdvWebGrid.Components[1] := grdexport;

    TIWAdvWebGridExcelIO2.XLSExport
      (Probname + ' ' + Data + ' - Output' + '.xls', WebApplication);
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

procedure TfrmPortfolioResultados.btnfconfirmClick(Sender: TObject);
begin
  // **Finalizando o problema e reavaliando os limites dos pesos **//
  TIWUserSession(WebApplication.Data).Sol := 11;
  TfrmPortfolioResultados.Create(WebApplication).Show;
  calmaxminweights;
  lnkfinalize.Visible := false;
end;

procedure TfrmPortfolioResultados.IWButtonexpotClick(Sender: TObject);

begin
  if TIWUserSession(WebApplication.Data).Problematica = 1 then
    btnexportationClick(self);
end;

procedure TfrmPortfolioResultados.btnASClick(Sender: TObject);
begin
  // rgnasq.Show;
  IWButton15Click(self);
end;

procedure TfrmPortfolioResultados.btnASCProfilesClick(Sender: TObject);
var
  i: integer;
begin

end;

procedure TfrmPortfolioResultados.IWButton15Click(Sender: TObject);
var
  i, j: integer;

begin
  if StrToInt(edtinst.Text) > 10000 then
  begin
    WebApplication.ShowMessage(
      'It has a limit of 10.000 instances for this version. We apologize for this inconvenience.');
    Exit;
  end;

  rgnsav.Show;
  IWRgnfinaltabela.Hide;
  cmbbxAS.Items.Clear;
  with TIWUserSession(WebApplication.Data) do
  begin
    ninst := StrToInt(edtinst.Text);
    Setlength(CriSel, NumCrit);
    Setlength(Pmax, NumCrit);
    Setlength(Pmin, NumCrit);
    nsel := 0;
    NCV := 0;
    VauxSel := -1;
    cmbbxAS.Items.Clear;
    for i := 0 to NumCrit - 1 do
    begin
      cmbbxAS.Items.Add(NomeCrit[vtrordem[i]]);
      /// / Inicializa ós vetores ////
      CriSel[i] := false;
      Pmax[i] := 0;
      Pmin[i] := 0;
    end;
  end;

  // limpando vetores da AS de ordenação
  Setlength(TIWUserSession(WebApplication.Data).vtrASordchange, TIWUserSession
      (WebApplication.Data).NumAlt);
  for j := 0 to TIWUserSession(WebApplication.Data).NumAlt - 1 do
  begin
    TIWUserSession(WebApplication.Data).vtrASordchange[j] := 0;
  end;

end;

procedure TfrmPortfolioResultados.IWButton16Click(Sender: TObject);
var
  i: integer;
  Series2: TBarSeries;
  error: TErrorSeries;
  point: TPointSeries;
begin
  lstbxcritg.Items.Clear;
  IWRgnresultadografico.Visible := true;
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

procedure TfrmPortfolioResultados.iwbtnSaveImageDHClick(Sender: TObject);
begin
  TIWFadeImage1.Picture.SaveToFile('C:\inetpub\fitradeoff\Images\' +
      'Diagrama de Hasse' + '.jpg');

  WebApplication.SendFile
    ('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' + '.jpg', true);

  DeleteFile(Pchar('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' +
        '.jpg'));

  iwrgnLegendDH.Visible := false;
end;

procedure TfrmPortfolioResultados.IWButton17Click(Sender: TObject);
begin
  rgnsav.Hide;
  TbCtrlP0.Visible := true;
  TbCtrlP1.Visible := true;
  IWButton14.Enabled := true;
  IWRgnfinaltabela.Show;
  btnstartAS.Enabled := false;
  rgninstructions.Visible := true;
  rgncrisel.Visible := false;
  btncrisel.Visible := false;
  btninstruc.Visible := false;
  grdcrisel.RowCount := 0;
  grdcrisel.ColumnCount := 0;
  cmbbxAS.Items.Clear;
  cmbbxAS.Enabled := true;
  TIWUserSession(WebApplication.Data).Auxall := 0;
  IWLblallcrit.Caption := 'Select all the criteria';
  cmbbxAS.ItemIndex := -1;
  btnasp.Enabled := false;
  btnASwv.Enabled := false;
  IWBtnvarycrit.Enabled := true;
  IWLblallcrit.Enabled := true;
  btnasok.Enabled := true;
  rgnasper.Visible := false;
  cmbbxAS.Enabled := true;
  rgnACSSA.Visible := false;
  IWLabel27.Visible := true;
end;

procedure TfrmPortfolioResultados.BtnBackHEG1Click(Sender: TObject);
begin
  // ** Voltando a pergunta se deseja seguir a Holística **//
  rdbtnEXp1.Checked := false;
  rdbtnEXp2.Checked := false;
  rdbtnEXp3.Checked := false;
  RgnHEG2.Visible := false;
  RgnHEG1.Visible := true;
end;

procedure TfrmPortfolioResultados.iwbtnRefreshDHClick(Sender: TObject);
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

procedure TfrmPortfolioResultados.IWButton19Click(Sender: TObject);
begin
  btnexportationClick(self);

end;

procedure TfrmPortfolioResultados.IWButton1Click(Sender: TObject);
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

procedure TfrmPortfolioResultados.IWButton22Click(Sender: TObject);
// Bolha Razão
begin
  /// Indica a escala e chama o procedimento de construção do gráfico
  TIWUserSession(WebApplication.Data).Escala := 0; // ESCALA DE RAZÃO
  Bolhas(TIWUserSession(WebApplication.Data).Escala);

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
  SalvarresultBD;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
  SalvarresultBD;

end;

procedure TfrmPortfolioResultados.IWButton23Click(Sender: TObject);
begin
  IWRgnfinaltabela.Show;
  with TIWUserSession(WebApplication.Data) do
  begin
    if PAH = true then
      visualization := 0;
  end;
  // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
  TIWUserSession(WebApplication.Data).BDgraph := '0';
  TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
    (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
    .BDgraph;

end;

procedure TfrmPortfolioResultados.IWButton2Click(Sender: TObject);
begin

  IWRgnfinaltabela.Visible := true;

  IWRgnresultadografico.Visible := false;
  { With TIWUserSession(WebApplication.Data) do
    if (Problematica = 4) and (NDA = 1) then
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

procedure TfrmPortfolioResultados.IWButton32Click(Sender: TObject);
begin
  Bolhas(TIWUserSession(WebApplication.Data).Escala);
end;

procedure TfrmPortfolioResultados.IWButton33Click(Sender: TObject);
begin
  Radar(TIWUserSession(WebApplication.Data).Escala);
end;

procedure TfrmPortfolioResultados.IWButton3Click(Sender: TObject);
begin
  rgnasper.Hide;
  btnasp.Enabled := true;
  btnASwv.Enabled := true;
  if TIWUserSession(WebApplication.Data).Auxall = 968654 then
  begin
    btnasp.Enabled := false;
    btnASwv.Enabled := false;
    btnasok.Enabled := true;
    TIWUserSession(WebApplication.Data).Auxall := 0;
    IWLblallcrit.Caption := 'Select all the criteria';
  end;

end;

procedure TfrmPortfolioResultados.CTabela;
var
  a, i, C, j: integer;
  qntPOA, G: integer;
  auxnumcrit: integer;
  AuxVetPOA: array of integer;

begin

  auxnumcrit := TIWUserSession(WebApplication.Data).NumCrit;

  With TIWUserSession(WebApplication.Data) do
  begin
    grdchoosepoa.RowCount := 1;
    grdchoosepoa.ColumnCount := NumCrit + 1;
    Setlength(AuxVetPOA, length(VtrAlternatives));
    if Problematica = 1 then
    begin
      lblranking.Hide;
      lbltitle.Show;
    end;
    grdchoosepoa.Cell[0, 0].Text := 'Alternatives';
    // **Reescreve os critérios (necessário em ordenação) **//
    for i := 0 to grdchoosepoa.ColumnCount - 2 do
    begin
      grdchoosepoa.Cell[0, i + 1].Text := NomeCrit[vtrordem[i]];
      grdchoosepoa.Cell[0, i + 1].Font.Style := [fsbold];
      grdchoosepoa.Cell[0, i + 1].Wrap := true;
    end;

    qntPOA := length(AuxVetPOA);
    G := length(AuxVetPOA);

    for i := 0 to length(VtrAlternatives) - 1 do
    begin
      AuxVetPOA[i] := TIWUserSession(WebApplication.Data).VtrAlternatives[i];
    end;

    for a := 0 to qntPOA - 1 do
    begin

      if chcklstbxResults.Selected[a] then // Alternativa selecionada
      begin
        grdchoosepoa.RowCount := grdchoosepoa.RowCount + 1;
        for C := 0 to NumCrit - 1 do
          grdchoosepoa.Cell[grdchoosepoa.RowCount - 1, C + 1].Text := FloatToStr
            (ConsMatrix[AuxVetPOA[a], vtrordem[C]]);
        grdchoosepoa.Cell[grdchoosepoa.RowCount - 1, 0].Text := AltSiglas
          [AuxVetPOA[a]];
        grdchoosepoa.Cell[grdchoosepoa.RowCount - 1, 0].Font.Style := [fsbold];
      end; // if
    end; // a
  end; // with
end;

procedure TfrmPortfolioResultados.preencher_Alt_Holistica;
var
  i, altsel1: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    altsel1 := 0;
    // **Problemática de escolha **
    if Problematica = 4 then
    begin
      txtHEG1.Lines.Clear;
      CmbxHEAG1.Items.Clear;
      for i := 0 to length(VtrAlternatives) - 1 do
        if chcklstbxResults.Selected[i] then
        begin

          // **Recebe as alternativas selecionadas para a avaliação holística **//
          txtHEG1.Lines.Add(AltSiglas[VtrAlternatives[i]]);
          // Escreve para o usuário
          CmbxHEAG1.Items.Add(AltSiglas[VtrAlternatives[i]]);
          INC(altsel1);
          Setlength(IAltAH, altsel1);
          IAltAH[altsel1 - 1] := VtrAlternatives[i];
        end;
      // ** Seleção da melhor alternativa com default **//
      rdgrpHEG2.ItemIndex := 0;
      // **Controle dos componentes da tela com base no número de alt selecionadas **//
      lblWHEG1.Visible := false;
      rdgrpHEG2.Visible := false;
      btnOKHEG3.Enabled := true;
      lblHEG1.Visible := false;
      if altsel1 > 2 then
        rdgrpHEG2.Visible := true;
      if altsel1 = 2 then
        lblHEG1.Visible := true;
      if altsel1 < 2 then
      begin
        /// / Caso menos de duas alt tenham sido delecionadas, exibe o aviso e bloqueia
        /// a avaliação ////////////////////////////////////////////////////////////
        lblWHEG1.Visible := true;
        btnOKHEG3.Enabled := false;
      end;
    end;

    { if Problematica = 1 then
      begin
      txtHEG2.Lines.Clear;
      CmbxHEAG2.Items.Clear;
      for i := 0 to length(VtrAlternatives) - 1 do
      if chcklstbxResults.Selected[i] then
      begin
      INC(altsel);
      Setlength(IAltAH, altsel);
      IAltAH[altsel - 1] := VtrAlternatives[i];
      end;
      // ** Controle dos componentes da tela com base no número de alt selecionadas **//
      if altsel = 2 then
      begin
      txtHEG2.Lines.Clear;
      CmbxHEAG2.Items.Clear;
      // **Verifica se já há a relação de dominância entre as alternativas **//
      if (ArmazenaParaPar[Ciclo - 1, IAltAH[0], IAltAH[1]] <> 0) or
      (ArmazenaParaPar[Ciclo - 1, IAltAH[1], IAltAH[0]] <> 0) then
      begin
      if ArmazenaParaPar[Ciclo - 1, IAltAH[0], IAltAH[1]] = 1 then
      txtHEG2.Lines.Add
      (NomeAlt[IAltAH[0]] + ' already dominates ' + NomeAlt[IAltAH[1]]
      + '.');
      if ArmazenaParaPar[Ciclo - 1, IAltAH[1], IAltAH[0]] = 1 then
      txtHEG2.Lines.Add
      (NomeAlt[IAltAH[1]] + ' already dominates ' + NomeAlt[IAltAH[0]]
      + '.');
      if ArmazenaParaPar[Ciclo - 1, IAltAH[0], IAltAH[1]] = 2 then
      txtHEG2.Lines.Add(NomeAlt[IAltAH[0]] +
      ' has been considered indifferent to ' + NomeAlt[IAltAH[1]]
      + '.');
      // WebApplication.ShowMessage('Since the selected alternatives are not incomparable at this point, they cannot be holistically evaluated. Please, check the hasse diagram and select a different pair of alternatives.');
      txtWHEG2.Visible := true;
      Exit;
      end;

      lblstepwarning.Caption := 'Step 3:';
      txtstepswarning.Lines[0] :=
      'Finally, use one of the visualizations to define a dominance relation between the alternatives. You can visualize different pairs before stating your preference.';

      // ** Caso as alternativas possam ser avaliadas holisticamente **//
      for i := 0 to altsel - 1 do
      begin
      txtHEG2.Lines.Add(NomeAlt[IAltAH[i]]);
      CmbxHEAG2.Items.Add(NomeAlt[IAltAH[i]]);
      end;
      txtWHEG2.Visible := false;
      btnOKHEG4.Enabled := true;
      end;
      if altsel <> 2 then
      begin
      /// / Caso menos de duas alt tenham sido delecionadas, exibe o aviso e bloqueia
      /// a avaliação ////////////////////////////////////////////////////////////
      txtWHEG2.Visible := true;
      btnOKHEG4.Enabled := false;
      end;

      end; }

  end;
end;

procedure TfrmPortfolioResultados.avalia_niveis;
var
  RelacaoAlternativas: array of integer;
  i, j, d, C, K, l, a, Z: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    CmbxHE.Items.Clear;
    // Verificação para exibição de níveis disponíveis para realização da AH
    Setlength(RelacaoAlternativas, grdchoosepoa.RowCount - 1);

    for i := 1 to length(Matrizgrupo) do
      RelacaoAlternativas[i - 1] := 0;

    for d := 1 to length(Matrizgrupo) do
    begin
      for C := 0 to length(TIWUserSession(WebApplication.Data)
          .Matrizgrupo[d - 1]) - 3 do
      begin
        RelacaoAlternativas[d - 1] := RelacaoAlternativas[d - 1] + length
          (TIWUserSession(WebApplication.Data).Matrizgrupo[d - 1]) - 1 - (C + 1)
      end;
    end;

    for i := 1 to length(Matrizgrupo) do
      if length(Matrizgrupo[i - 1]) > 2 then
      begin
        l := 0;
        for K := 0 to length(TIWUserSession(WebApplication.Data)
            .Matrizgrupo[i - 1]) - 3 do
        begin
          for Z := K + 1 to length(TIWUserSession(WebApplication.Data)
              .Matrizgrupo[i - 1]) - 2 do
          begin
            if (TIWUserSession(WebApplication.Data).ArmazenaParaPar
                [TIWUserSession(WebApplication.Data).Ciclo - 1, TIWUserSession
                (WebApplication.Data).Matrizgrupo[i - 1, K + 1], TIWUserSession
                (WebApplication.Data).Matrizgrupo[i - 1, Z + 1]] = 0) and
              (ArmazenaParaPar[Ciclo - 1, Matrizgrupo[i - 1, Z + 1],
              Matrizgrupo[i - 1, K + 1]] = 0) then
            begin
              a := -1;
              break;
            end
            else // Alternativas já tem relações estabelecidas
              INC(l);

          end; // for z
          if a = -1 then
            break;
        end; // for k

        if l <> RelacaoAlternativas[i - 1] then
        begin
          // Preenche o listbx de todas as regiões com os grupos
          CmbxHE.Items.Add('Ranking Position ' + IntToStr(i));
        end; // if

      end; // i
  end; // With usersession
end;

procedure TfrmPortfolioResultados.IWButton41Click(Sender: TObject);
begin
  Radar(0);
  Barras(0);
  Bolhas(0);
  with TIWUserSession(WebApplication.Data) do
  begin
    if (Problematica = 4) or (PAH) then
      CTabela;

    if PAH then
      preencher_Alt_Holistica;
  end;
end;

procedure TfrmPortfolioResultados.IWButton42Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;
  // salvar banco de dados na tabela he_question
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 16;
  SalvarresultBD;

  // **Para seguir direto para a decomposição **//
  if TIWUserSession(WebApplication.Data).Sol = -5 then
  begin
    TIWUserSession(WebApplication.Data).stage := 3;
    TIWUserSession(WebApplication.Data).auxgoback := -56231;
    Tfrmaintercriterio.Create(WebApplication).Show;
  end
  else
    TfrmPortfolioResultados.Create(WebApplication).Show;
end;

procedure TfrmPortfolioResultados.IWButton4Click(Sender: TObject);
begin
  iwrgnCaixaDialogoResultado.Visible := false;
end;

procedure TfrmPortfolioResultados.btnasokClick(Sender: TObject);
var
  i: integer;
begin
  if cmbbxAS.ItemIndex <> -1 then
  begin
    cmbbxAS.Enabled := false;
    btnasp.Enabled := true;
    btnASwv.Enabled := true;
    btnstartAS.Enabled := false;
    IWLblallcrit.Caption := 'Select all the remaining criteria ';
    with TIWUserSession(WebApplication.Data) do
    begin
      /// / Verifica qual o critério selecionado, pois o decisor pode selecionar em
      /// uma ordem aleatória, especialmente útil após apagar o critério selecionado
      /// anteriormente por ele./////////////////////////////////////////////////
      for i := 0 to NumCrit - 1 do
        if cmbbxAS.Items[cmbbxAS.ItemIndex] = NomeCrit[vtrordem[i]] then
        begin
          VauxSel := i;
        end;
      INC(nsel);
    end;
  end
  else
    WebApplication.ShowMessage('Please select a criterion.');
end;

procedure TfrmPortfolioResultados.btnaspClick(Sender: TObject);
begin
  btnasp.Enabled := false;
  btnASwv.Enabled := false;
  rgnasper.Show;
end;

procedure TfrmPortfolioResultados.btnsi2Click(Sender: TObject);
begin
  crtEhraph.TeeCreateBitmap
    (clWhite, rect(0, 0, chrtpesoslim.Width, chrtpesoslim.Height)).SaveToFile(
    'C:\inetpub\fitradeoff\Images\Optimal Alternative Scaling Constants Value'
      + '.jpg');
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Optimal Alternative Scaling Constants Value'
      + '.jpg', true);
  DeleteFile(
    'C:\inetpub\fitradeoff\Images\Optimal Alternative Scaling Constants Value'
      + '.jpg');
end;

procedure TfrmPortfolioResultados.btnASwvClick(Sender: TObject);
var
  i: integer;
begin
  btnasp.Enabled := false;
  btnASwv.Enabled := false;
  cmbbxAS.Enabled := true;
  i := cmbbxAS.ItemIndex;
  cmbbxAS.Items.Delete(i);
  if TIWUserSession(WebApplication.Data).NCV <> 0 then
  begin
    btnstartAS.Enabled := true;
  end;
  TIWUserSession(WebApplication.Data).Pmax[TIWUserSession(WebApplication.Data)
    .VauxSel] := -10;
  TIWUserSession(WebApplication.Data).Pmin[TIWUserSession(WebApplication.Data)
    .VauxSel] := -10;
  cmbbxAS.ItemIndex := -1;
end;

procedure TfrmPortfolioResultados.btnrecommendationpageClick(Sender: TObject);
begin
  rgnrulevizualization.Hide;
  with TIWUserSession(WebApplication.Data) do
    { case visualization of
      0:
      IWRgnfinaltabela.Show;
      1:
      IWRgnresultadoradar.Show;
      2:
      IWRgnbubble.Show;
      3:
      IWRgngraficobarras.Show;
      end; }
  end;

  procedure TfrmPortfolioResultados.btnrecommendationTClick(Sender: TObject);
  var
    a: integer;
  begin
    with TIWUserSession(WebApplication.Data) do
    begin
      if (visualization = -1) or (IWRgnfinaltabela.Visible) then
      begin
        visualization := 0;
        IWRgnfinaltabela.Visible := true;
      end;
      lblcriterios.Caption := 'Considering That Problem Has' + ' ' + IntToStr
        (NumCrit) + ' criteria.';
      lblAlternativas.Caption := 'Evaluating' + ' ' + IntToStr(NumAltAH)
        + ' alternatives.';

      if HeurQuest <> -1 then
        if HeurQuest = 2 then
          lblPesorecom.Caption := 'The Weight distribution' + ' ' +
            'Can be approximately equal.'
        else
          lblPesorecom.Caption := 'The Weight distribution is' + ' ' +
            'Markedly Different.';

      a := -1;
      lblProbDev.Visible := true;
      lblRecommendation.Visible := false;
      lblNorecommendation.Visible := false;

      case visualization of
        0:
          begin
            /// / Tabular ////
            lbltypeofview.Caption := 'Tabular';

            /// / Distribuição aprox igual ////
            if HeurQuest = 1 then
            begin
              if (NumCrit = 4) then
              begin
                case NumAltAH of
                  3:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.88 and the Standard Deviation is less than 0.40.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Possible Use';
                      a := 0;
                    end;
                  4:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.55 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use';
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.73 and the Standard Deviation is less than 0.40.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Possible Use';
                      a := 0;
                    end;
                end;
                // case of
              end; // numcri
              if NumAltAH = 4 then
              begin
                case NumCrit of
                  3:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.39 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization.';
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.78 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use';
                      a := 0;
                    end;
                end;
                // Case of
              end; // NumALtAH
              if (NumAltAH = 2) and (NumCrit = 7) then
              begin
                lblProbDev.Caption :=
                  'The pobability of success is 0.78 and the Standard Deviation is less than 0.50.';
                txtrecommends.Visible := true;
                lblRecommendation.Visible := true;
                lblRecommendation.Caption := 'Risk in Use';
                a := 0;
              end;
            end;
            // Heurquest

            /// / Distribuição marcadamente diferente ////
            if (HeurQuest <> 1) and (HeurQuest <> -1) then
            begin
              if (NumCrit = 4) then
              begin
                case NumAltAH of
                  3:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.45 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                  4:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.16 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.08 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                end; // case of
              end; // numcri
              if NumAltAH = 4 then
              begin
                case NumCrit of
                  3:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.59 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use.';
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.47 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                end; // Case of
              end; // NumALtAH
              if NumAltAH = 2 then
              begin
                case NumCrit of
                  4:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.54 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use.';
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.93 and the Standard Deviation is less than 0.30.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Use with Confidence.';
                      a := 0;
                    end;
                  6:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.49 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization.';
                      a := 0;
                    end;
                  7:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.27 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization.';
                      a := 0;
                    end;
                end;
              end;
            end; // Heurquest

            /// ////  Não Há recomendação ////////
            if a = -1 then
            begin
              lblNorecommendation.Visible := true;
              txtrecommends.Visible := false;
              lblProbDev.Visible := false;
            end;

          end;
        1:
          begin
            /// / Radar ///
            lbltypeofview.Caption := 'Radar Graph';
            if HeurQuest = 1 then
            begin
              if (NumAltAH = 2) and (NumCrit = 7) then
              begin
                lblProbDev.Caption :=
                  'The pobability of success is 0.81 and the Standard Deviation is less than 0.40.';
                txtrecommends.Visible := true;
                lblRecommendation.Visible := true;
                lblRecommendation.Caption := 'Possible Use';
                a := 0;
              end;
              // if
            end; // HeurQuest

            if HeurQuest <> 1 then
            begin
              if (NumAltAH = 2) then
                case NumCrit of
                  4:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.57 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use';
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.78 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use';
                      a := 0;
                    end;
                  6:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.40 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                  7:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.46 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                end; // Case of
            end; // HeurQuest
            /// ////  Não Há recomendação ////////
            if a = -1 then
            begin
              lblNorecommendation.Visible := true;
              txtrecommends.Visible := false;
              lblProbDev.Visible := false;
            end;
          end;
        2:
          begin
            /// Bolha ///
            lbltypeofview.Caption := 'Bubble Graph';
            lblNorecommendation.Visible := true;
            txtrecommends.Visible := false;
            lblProbDev.Visible := false;

          end;
        3:
          begin
            /// / Bar /////
            lbltypeofview.Caption := 'Bar Graph';

            /// / Distribuição aprox igual ////
            if HeurQuest = 1 then
            begin
              if (NumCrit = 4) then
              begin
                case NumAltAH of
                  3:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.88 and the Standard Deviation is less than 0.40.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Caption := 'Possible Use';
                      lblRecommendation.Visible := true;
                      a := 0;
                    end;
                  4:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.55 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use';
                      lblRecommendation.Visible := true;
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.73 and the Standard Deviation is less than 0.40.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Caption := 'Possible Use';
                      lblRecommendation.Visible := true;
                      a := 0;
                    end;
                end;
                // case of
              end; // numcri
              if NumAltAH = 4 then
              begin
                case NumCrit of
                  3:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.39 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization.';
                      lblRecommendation.Visible := true;
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.78 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use';
                      lblRecommendation.Visible := true;
                      a := 0;
                    end;
                end;
                // Case of
              end; // NumALtAH
              if (NumAltAH = 2) and (NumCrit = 7) then
              begin
                lblProbDev.Caption :=
                  'The pobability of success is 0.31 and the Standard Deviation is less than 0.50.';
                txtrecommends.Visible := true;
                lblRecommendation.Visible := true;
                lblRecommendation.Caption := 'Do not use the visualization';
                a := 0;
              end;
            end; // Heurquest

            /// / Distribuição marcadamente diferente ////
            if (HeurQuest <> 1) and (HeurQuest <> -1) then
            begin
              if (NumCrit = 4) then
              begin
                case NumAltAH of
                  3:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.45 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                  4:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.16 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.08 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                end; // case of
              end; // numcri
              if NumAltAH = 4 then
              begin
                case NumCrit of
                  3:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.59 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use.';
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.47 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization';
                      a := 0;
                    end;
                end; // Case of
              end; // NumALtAH
              if NumAltAH = 2 then
              begin
                case NumCrit of
                  4:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.75 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use.';
                      a := 0;
                    end;
                  5:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.91 and the Standard Deviation is less than 0.30.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Use with Confidence.';
                      a := 0;
                    end;
                  6:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.60 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption := 'Risk in Use.';
                      a := 0;
                    end;
                  7:
                    begin
                      lblProbDev.Caption :=
                        'The pobability of success is 0.31 and the Standard Deviation is less than 0.50.';
                      txtrecommends.Visible := true;
                      lblRecommendation.Visible := true;
                      lblRecommendation.Caption :=
                        'Do not use the visualization.';
                      a := 0;
                    end;
                end;
              end;
            end; // Heurquest

            /// ////  Não Há recomendação ////////
            if a = -1 then
            begin
              lblNorecommendation.Visible := true;
              txtrecommends.Visible := false;
              lblProbDev.Visible := false;
            end;
            if a = 0 then
              lblNorecommendation.Visible := false;
          end;
      end;
    end;
    rgnrulevizualization.Visible := true;
    IWRgnfinaltabela.Visible := false;
  end;

  procedure TfrmPortfolioResultados.btnRelationsClick(Sender: TObject);
  var
    i, j: integer;
  begin
    with TIWUserSession(WebApplication.Data) do
    begin
      if Problematica = 4 then
      begin
        equivalence_Test_HE;
        lblMexplanation.Caption :=
          'This matrix presents the relations of indifference between the potentially optimal alternatives.';
        lblrel.Text := 'Indifference Matrix';
        Txtrel.Lines[1] := 'I - Indifference Relation';
        Txtrel.Lines[2] := '0 - No Relations stablished at this point';
        grdrelations.RowCount := NDA + 1;
        grdrelations.ColumnCount := NDA + 1;
        for i := 1 to NDA do
        begin
          grdrelations.Cell[i, 0].Text := AltSiglas[VetPOA[i - 1]];
          grdrelations.Cell[0, i].Text := AltSiglas[VetPOA[i - 1]];
          for j := 1 to NDA do
            if MatIndiferenca[i - 1, j - 1] = 'NP' then
              grdrelations.Cell[i, j].Text := ' 0'
            else
              grdrelations.Cell[i, j].Text := ' ' + MatIndiferenca
                [i - 1, j - 1];
        end;
      end; // Escolha
      if Problematica = 1 then
      begin
        Txtrel.Lines[1] := '1 - Dominance Relation';
        Txtrel.Lines[2] := 'I - Indifference Relation';
        Txtrel.Lines[3] := '0 - No Relations stablished at this point';
        lblrel.Text := 'Dominance Matrix';
        grdrelations.RowCount := NumAlt + 1;
        grdrelations.ColumnCount := NumAlt + 1;
        for i := 1 to NumAlt do
        begin
          grdrelations.Cell[i, 0].Text := AltSiglas[i - 1];
          grdrelations.Cell[0, i].Text := AltSiglas[i - 1];
          for j := 1 to NumAlt do
            if ArmazenaParaPar[Ciclo - 1, i - 1, j - 1] <> 2 then
              grdrelations.Cell[i, j].Text := ' ' + IntToStr
                (ArmazenaParaPar[Ciclo - 1, i - 1, j - 1])
            else
              grdrelations.Cell[i, j].Text := ' ' + 'I';
        end;
      end; // Ordenação
    end;
    rgntable.Visible := false;
    RgnRelationsMatrix.Visible := true;
  end;

  procedure TfrmPortfolioResultados.btnResetNovoProblemaClick(Sender: TObject);
  begin
    TIWUserSession(WebApplication.Data).VerificaUnit := -55;
    TFrmEntrada.Create(WebApplication).Show;
    IWRgnReset2.Visible := false;
  end;

  procedure TfrmPortfolioResultados.btnResetRecomcProblemaClick
    (Sender: TObject);
  begin

    Setlength(TIWUserSession(WebApplication.Data).vetorgrafico, 0);
    Setlength(TIWUserSession(WebApplication.Data).vordem, 0);
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, 0);

    { TIWUserSession(WebApplication.Data).VerificaUnit := -50;
      TFrmEntrada.Create(WebApplication).Show;
      IWRgnReset2.Visible := false; }

    with TIWUserSession(WebApplication.Data) do
      if Problematica = 3 then
      begin
        ClassRestart := true;
        elicitarperfis := true;
        Setlength(class_min, 0);
        Setlength(class_max, 0);
        Setlength(class_min, NumAlt);
        Setlength(class_max, NumAlt);

        // ** Indica que o problema foi reiniciado antes de ser retomado **//
        TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
        SalvarresultBD;
      end;

    // alteração em 19.01.22- acrescimo do submenu restart Intra e Inter//
    // salvar banco de dados na tabela problem
    { TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
      SalvarresultBD;

      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).estagio := 0;
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 2;
      SalvarresultBD;

      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 13;
      SalvarresultBD;

      TIWUserSession(WebApplication.Data).PAH := false;
      TIWUserSession(WebApplication.Data).Aux0501 := false;

      // auxiliar que armazena a sequencia de respostas
      TIWUserSession(WebApplication.Data).Ans_seq := ' '; }

  end;

  procedure TfrmPortfolioResultados.btnResetRgnFinalTabelaClick
    (Sender: TObject);
  begin
    IWRgnfinaltabela.Visible := false;
    IWRgnReset2.Visible := true;
    TIWUserSession(WebApplication.Data).PAH := false;
    TIWUserSession(WebApplication.Data).Aux0501 := false;

  end;

  procedure TfrmPortfolioResultados.btnResetVoltarClick(Sender: TObject);
  begin
    with TIWUserSession(WebApplication.Data) do
    begin

      if (Problematica = 4) then
        IWRgnfinaltabela.Visible := true;
    end;
    IWRgnReset2.Visible := false;
    TIWUserSession(WebApplication.Data).PAH := false;
    TIWUserSession(WebApplication.Data).Aux0501 := false;
  end;

  procedure TfrmPortfolioResultados.btninstrucClick(Sender: TObject);
  begin
    rgninstructions.Visible := true;
    rgncrisel.Visible := false;
    btninstruc.Visible := false;
    btncrisel.Visible := true;
  end;

  procedure TfrmPortfolioResultados.btnLegendDHClick(Sender: TObject);
  begin
    iwrgnLegendDH.Visible := true;
    // iwrgnHasseDiagram.Visible := false;
    // btnLegendDH.enabled := false;
    // IWButton14.enabled := false;
  end;

  procedure TfrmPortfolioResultados.btnlegenddhcloseClick(Sender: TObject);
  begin
    iwrgnLegendDH.Visible := false;
  end;

  procedure TfrmPortfolioResultados.btnlgoutClick(Sender: TObject);
  begin
    TIWUserSession(WebApplication.Data).AUXLOGOUT := -363636;
    TFrmEntrada.Create(WebApplication).Show;
    IWRgnReset2.Visible := false;
  end;

  procedure TfrmPortfolioResultados.btnloginClick(Sender: TObject);
  var
    analista: string;
  begin
    with UserSession.ZQuery1 do
    begin
      TIWUserSession(WebApplication.Data).analyst := -1;
      SQL.Text := 'SELECT analyst FROM user WHERE email="' + (eduser.Text)
        + '"';
      ExecSQL;
      open;
      analista := FieldByName('analyst').AsString;
      close;
      if analista <> '' then
      begin
        TIWUserSession(WebApplication.Data).analyst := StrToInt(analista);
        lblemailwarning.Visible := false;
      end
      else
      begin
        lblemailwarning.Visible := true;
        Exit;
      end;
      if TIWUserSession(WebApplication.Data).analyst = 0 then
      begin
        TIWUserSession(WebApplication.Data).email := eduser.Text;
        SQL.Text := 'SELECT password FROM user WHERE email ="' + (eduser.Text)
          + '"';
        ExecSQL;
        open;
        TIWUserSession(WebApplication.Data).senha := FieldByName('password')
          .AsString;
        close;

      end
      else
        WebApplication.ShowMessage(
          'This account has no access to the analyst features, please verify the email and try again.');
    end;
    if (eduser.Text = TIWUserSession(WebApplication.Data).email) and
      (edtSenha.Text = TIWUserSession(WebApplication.Data).senha) then
    begin
      rgnanalystlogin.Hide;
      IWRgnfinaltabela.Show;
      AnalystLogin1.Visible := false;
      AnalystLogout1.Visible := true;
      TIWUserSession(WebApplication.Data).Analystkey := 1;
      btnrecommendationT.Visible := true;
      if (TIWUserSession(WebApplication.Data).PAH = true) and
        (TIWUserSession(WebApplication.Data).HeurQuest <> -1) then
      begin
        /// /////////////////////////////////////////////////////////////////////////////////
        /// / Ativa a visibilidade da região que mostra o tipo de distribuição dos pesos ////
        RgnAttentionT.Visible := true;
        /// ////////////////////////////////////////////////////////////////////////////////
        if TIWUserSession(WebApplication.Data).HeurQuest = 1 then
        /// Respondeu B
        begin
          lblWDT2.Visible := true;
        end
        else
        begin
          lblWDT1.Visible := true;
        end; // A
      end; // PAH Heurquest
      lblpasswarning.Visible := false;
      lblemailwarning.Visible := false;
    end // Senha correta
    else
      lblpasswarning.Visible := true;
  end;

  { procedure TfrmPortfolioResultados.IWButton27Click(Sender: TObject);
    begin
    btnGraficoBarrasClick;
    end;

    procedure TfrmPortfolioResultados.IWButton28Click(Sender: TObject);
    begin
    btnGraficoBolhaClick(Sender: TObject);
    end; }

  procedure TfrmPortfolioResultados.IWRgnfinaltabelaCreate(Sender: TObject);
  var
    i, j: integer;
    Mat: ARRAY OF ARRAY OF STRING;
    Str1, str2: string;
    M, N: integer;
    teste: cardinal;
  begin
    alinhamento;

    RgnAttentionT.Visible := false;

    /// / Preenche as alternativas potencialmente ótimas no grid de resultados ////
    With TIWUserSession(WebApplication.Data) do
    begin
      visualization := 0;

      if (Sol = -2) OR (Sol = -1) OR (Sol = 0) OR (Sol = 1) OR (Sol = 2) OR
        (Sol = 10) OR (Sol = 3) OR (Sol = 11) then
      begin
        btnGraficoBarras.Visible := false;
        btnGraficoBolha.Visible := false;
        btnGraficoRadar.Visible := false;
        iwrgnCaixaDialogoResultado.Visible := true;
        txtCaixaDialogoResults.Lines.Clear;
        if Problematica = 4 then
          lnkrelations.Visible := false;
        case Sol of
          - 2:
            txtCaixaDialogoResults.Lines.Add(
              'A partial pre-order has been found');
          -1:
            txtCaixaDialogoResults.Lines.Add('A partial order has been found.');
          0:
            txtCaixaDialogoResults.Lines.Add('A Solution has been found.');
          1:
            txtCaixaDialogoResults.Lines.Add(
              'According to the equivalent distance, a solution with ' +
                IntToStr(NDA) + ' alternatives has been found.');
          // according com o que
          2:
            txtCaixaDialogoResults.Lines.Add(
              'A complete pre-order has been found.');
          3:
            txtCaixaDialogoResults.Lines.Add
              ('A complete order has been found.');

          10:
            txtCaixaDialogoResults.Lines.Add(
              'There are no comparisons to be made in the elicitation by decomposition anymore. You can either continue the decision process though holistic evaluation or finalize the process considering these partial results.');
          11:
            txtCaixaDialogoResults.Lines.Add('These are the partial results');

        end;
      end;

      CmbxResults.Visible := false;
      TbCtrlvisualizations.ActivePage := 0;
      if TIWUserSession(WebApplication.Data).idioma = 1 then
      begin
        lnkrelations.caption := 'Matriz de Indiferença';
        grdchoosepoa.Cell[0, 0].Text := 'Alternativas';
      end
      else
      begin
        lnkrelations.caption := 'Indifference Matrix';
        grdchoosepoa.Cell[0, 0].Text := 'Alternatives';
      end;

      txtEVHE.Top := 235;
      lbltitle.Visible := True;
      grdchoosepoa.RowCount := NDA + 1;
      grdchoosepoa.ColumnCount := Numcrit + 3;

      grdchoosepoa.Cell[0, 0].Font.Style := [fsbold];
      Setlength(VtrAlternatives, NDA);
      visualization := 3;

      // ** Preenche o vetor de alternativas a serem plotadas nos gráficos //**
      for i := 0 to NDA - 1 do
        VtrAlternatives[i] := VetPOA[i];

      for J := 0 to Numcrit - 1 do
      begin
        grdchoosepoa.Cell[0, J + 1].Text := NomeCrit[vtrordem[J]];
        grdchoosepoa.Cell[0, J + 1].Wrap := True;
        grdchoosepoa.Cell[0, J + 1].Font.Style := [fsbold];
        for i := 0 to NDA - 1 do
        begin
          grdchoosepoa.Cell[i + 1, 0].Text := AltSiglas[VetPOA[i]];
          grdchoosepoa.Cell[i + 1, 0].Font.Style := [fsbold];
          TIWUserSession(WebApplication.Data).StrDInd := TIWUserSession
            (WebApplication.Data).vtrordem[J];
          grdchoosepoa.Cell[i + 1, J + 1].Text := trescasas
            (ConsMatrix[VetPOA[i], vtrordem[J]]);
        end;
      end;

      /// /////////////// ** Valores globais na tabela **////////////////////////
      CalmaxminOverallValues;
      if idioma = 1 then
      begin
        str1 := 'Max Valor Global';
        str2 := 'Min Valor Global';
      end
      else
      begin
        str1 := 'Max Overall Value';
        str2 := 'Min Overall Value';
      end;

      grdchoosepoa.Cell[0, Numcrit + 1].Text := str1;
      grdchoosepoa.Cell[0, Numcrit + 1].Wrap := True;
      grdchoosepoa.Cell[0, Numcrit + 1].Font.Style := [fsbold];
      grdchoosepoa.Cell[0, Numcrit + 2].Text := str2;
      grdchoosepoa.Cell[0, Numcrit + 2].Wrap := True;
      grdchoosepoa.Cell[0, Numcrit + 2].Font.Style := [fsbold];
      for i := 0 to NDA - 1 do
      begin
        grdchoosepoa.Cell[i + 1, Numcrit + 1].Text := FormatFloat
          ('0.00', MatOverallValues[VetPOA[i], 0]);
        grdchoosepoa.Cell[i + 1, Numcrit + 2].Text := FormatFloat
          ('0.00', MatOverallValues[VetPOA[i], 1]);
      end;

      if Sol <> -5 then
      begin
        IWButton21.Visible := false;
        btnstopelicitation.Visible := false;
        /// / Se uma (pré)ordem completa, ou se uma solução for encontrada com alt indiferentes
        /// então não é preciso perguntar se o DM quer realizar uma holística ////
        if ((Sol >= 0) and (Sol <= 3)) or (Sol = 11) then
        begin
          rgnHEQ0.Visible := false;
          lnkrelations.Visible := false;
          // TIWRadioButton2.Enabled := false;
        end;
        TbCtrlP00.Visible := false;
        TbCtrlP2.Visible := false;
        TbCtrlP3.Visible := false;
        TbCtrlvisualizations.ActivePage := 0;
        PmnlSensitivity.Visible := true;
        PmnlSensitivity.Enabled := true;
        lnkfinalize.Visible := false;
        // ** Ocultar componentes da seleção **//
        // IWRegion49.Visible := false;
        chcklstbxResults.Visible := false;
        btnUpFR.Visible := false;
        // salvar banco de dados na tabela problem
        TIWUserSession(WebApplication.Data).AuxsalvarBD := 3;
        SalvarresultBD;
        // salvar banco de dados na tabela problem
        TIWUserSession(WebApplication.Data).estagio := 5;
        TIWUserSession(WebApplication.Data).AuxsalvarBD := 2;
        SalvarresultBD;

      end
      else
      begin
        { -------- LISTBOX DE ALTERNATIVAS EXIBIDAS ---------- }
        With TIWUserSession(WebApplication.Data) do
        begin
          j := length(VtrAlternatives);
          chcklstbxResults.Items.Clear;
          for i := 0 to j - 1 do
          begin
            chcklstbxResults.Items.Add(AltSiglas[VtrAlternatives[i]]);
            chcklstbxResults.Selected[i] := true;
          end;
        end;
        Escala := 0;
        Radar(Escala);
        Barras(Escala);
        Bolhas(Escala);
      end;
    end; // With
    IWRgnfinaltabela.Align := Talign(5);

  end;

  procedure TfrmPortfolioResultados.IWTimer1Timer(Sender: TObject);
  var
    i, K: integer;
  begin

    if TIWUserSession(WebApplication.Data).Start = true then
    begin
      case TIWUserSession(WebApplication.Data).Problematica of
        4:
          sensitivityA;
      end;

      if TIWUserSession(WebApplication.Data).Finish = true then
      begin
        INC(TIWUserSession(WebApplication.Data).auxas);
        // Para escolha
        grdcrivar.Cell[0, 0].Text := 'Criterion';
        grdcrivar.Cell[0, 2].Text := 'Upper Bound';
        grdcrivar.Cell[0, 1].Text := 'Lower Bound';
        grdcrivar.Cell[0, 0].Font.Style := [fsbold];
        grdcrivar.Cell[0, 2].Font.Style := [fsbold];
        grdcrivar.Cell[0, 1].Font.Style := [fsbold];

        K := 1;
        with TIWUserSession(WebApplication.Data) do
        begin
          IWTimer1.Enabled := false;
          btnasok.Enabled := true;
          btnstartAS.Enabled := true;
          IWButton17.Enabled := true;
          cmbxgroupindex.Items.Clear;
          { for i := 0 to Rlevels - 1 do
            cmbxgroupindex.Items.Add('Group ' + IntToStr(i + 1));
            // cmbxgroupindex.ItemIndex := 0; }

          if TIWUserSession(WebApplication.Data).ASProfiles = true then
          begin
            TIWUserSession(WebApplication.Data).ASProfiles := false;
          end
          else
          begin
            for i := 0 to NumCrit - 1 do
              if CriSel[i] then
              begin
                INC(K);
                grdcrivar.RowCount := K;
                grdcrivar.Cell[K - 1, 0].Text := NomeCrit[vtrordem[i]];
                grdcrivar.Cell[K - 1, 2].Text := '+' + FloatToStr(Pmax[i])
                  + '%';
                grdcrivar.Cell[K - 1, 1].Text := '-' + FloatToStr(Pmin[i])
                  + '%';
              end; // CriSel
          end; // else
          Sensitivity := true;
        end; // with
        if TIWUserSession(WebApplication.Data).Problematica = 4 then
          IWRgnanalisedesensibilidade.Show;
        IWRgnAS.Visible := false;

        if TIWUserSession(WebApplication.Data).Problematica = 4 then
        // caso seja um problema de escolha
        begin
          // salvar banco de dados na tabela sensitivity
          TIWUserSession(WebApplication.Data).AuxsalvarBD := 9;
          SalvarresultBD;
        end;

        rgnsav.Visible := false;
        IWRgnAS.Visible := false;
        if TIWUserSession(WebApplication.Data).Problematica = 4 then
          IWRgnanalisedesensibilidade.Visible := true;
        cmbbxAS.Items.Clear;
        TIWUserSession(WebApplication.Data).Auxall := -1;
        IWLblallcrit.Caption := 'Select all the criteria';
        btnasok.Enabled := true;

      end;
    end;
  end;

  procedure TfrmPortfolioResultados.linkClick(Sender: TObject);
  begin
    WebApplication.GoToURL('http://cdsid.org.br/');
  end;

  procedure TfrmPortfolioResultados.LnkASClick(Sender: TObject);
  var
    i, j: integer;

  begin
    if StrToInt(edtinst.Text) > 10000 then
    begin
      WebApplication.ShowMessage(
        'It has a limit of 10.000 instances for this version. We apologize for this inconvenience.');
      Exit;
    end;

    rgnsav.Show;
    IWRgnfinaltabela.Hide;
    cmbbxAS.Items.Clear;
    with TIWUserSession(WebApplication.Data) do
    begin
      ninst := StrToInt(edtinst.Text);
      Setlength(CriSel, NumCrit);
      Setlength(Pmax, NumCrit);
      Setlength(Pmin, NumCrit);
      nsel := 0;
      NCV := 0;
      VauxSel := -1;
      cmbbxAS.Items.Clear;
      for i := 0 to NumCrit - 1 do
      begin
        cmbbxAS.Items.Add(NomeCrit[vtrordem[i]]);
        /// / Inicializa ós vetores ////
        CriSel[i] := false;
        Pmax[i] := 0;
        Pmin[i] := 0;
      end;
    end;

  end;

  procedure TfrmPortfolioResultados.lnkcloseaboutClick(Sender: TObject);
  begin
    rgnAbout.Hide;
  end;

  procedure TfrmPortfolioResultados.lnkfinalizeClick(Sender: TObject);
  begin
    rgnrusfinishing.Visible := true;
  end;

  procedure TfrmPortfolioResultados.lnkrelationsClick(Sender: TObject);
  var
    i, j: integer;
  begin
    with TIWUserSession(WebApplication.Data) do
    begin
      if Problematica = 4 then
      begin
        equivalence_Test_HE;
        lblMexplanation.Caption :=
          'This matrix presents the relations of indifference between the potentially optimal alternatives.';
        lblrel.Text := 'Indifference Matrix';
        Txtrel.Lines[1] := 'I - Indifference Relation';
        Txtrel.Lines[2] := '0 - No Relations stablished at this point';
        grdrelations.RowCount := NDA + 1;
        grdrelations.ColumnCount := NDA + 1;
        for i := 1 to NDA do
        begin
          grdrelations.Cell[i, 0].Text := AltSiglas[VetPOA[i - 1]];
          grdrelations.Cell[0, i].Text := AltSiglas[VetPOA[i - 1]];
          for j := 1 to NDA do
            if MatIndiferenca[i - 1, j - 1] = 'NP' then
              grdrelations.Cell[i, j].Text := ' 0'
            else
              grdrelations.Cell[i, j].Text := ' ' + MatIndiferenca
                [i - 1, j - 1];
        end;
      end; // Escolha
      if Problematica = 1 then
      begin
        Txtrel.Lines[1] := '1 - Dominance Relation';
        Txtrel.Lines[2] := 'I - Indifference Relation';
        Txtrel.Lines[3] := '0 - No Relations stablished at this point';
        lblrel.Text := 'Dominance Matrix';
        grdrelations.RowCount := NumAlt + 1;
        grdrelations.ColumnCount := NumAlt + 1;
        for i := 1 to NumAlt do
        begin
          grdrelations.Cell[i, 0].Text := AltSiglas[i - 1];
          grdrelations.Cell[0, i].Text := AltSiglas[i - 1];
          for j := 1 to NumAlt do
            if ArmazenaParaPar[Ciclo - 1, i - 1, j - 1] <> 2 then
              grdrelations.Cell[i, j].Text := ' ' + IntToStr
                (ArmazenaParaPar[Ciclo - 1, i - 1, j - 1])
            else
              grdrelations.Cell[i, j].Text := ' ' + 'I';
        end;
      end; // Ordenação
    end;
    rgntable.Visible := false;
    RgnRelationsMatrix.Visible := true;

  end;

  procedure TfrmPortfolioResultados.SalvarresultBD;
  var
    AuxsalvarBD, tamauxid_alt, K: integer;
    time, auxmx_value, auxmin_value, auxid_criteria, auxid_alt_inc,
      auxid_alt_exc, aux_finc, aux_fexc, auxprofile_inct,
      auxprofile_exct: string;
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

    /// auxiliares utilizadas nos casos referentes á etapa intracriterio- 19.01.22///
    Auxroundinter: integer;
    AuxBoundMx, AuxBoundMn, AuxFtipoOrig, AuxverificaIntra, AuxLinearIntra,
      AuxChangeLinear, AuxCritElicit, Auxpercentcrit, AuxMatInterpol,
      AuxPointsBisec: string;

  begin
    NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
    Setlength(vtrAuxPOA, NumAlt);
    Setlength(vtrVouFPOA, NumAlt);
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
            // ESSE PROCEDIMENTO FOI CHAMADO NO TfrmPortfolioResultados.IWRgnfinaltabelaCreate(Sender: TObject);
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
                  (TIWUserSession(WebApplication.Data).nround)
                  + '"AND name="' + (TIWUserSession(WebApplication.Data)
                    .NomeAlt[i]) + '";';
                ExecSQL;
              end;
            end
            else
            begin

              for i := 0 to NumAlt - 1 do
              begin
                for j := 0 to length(TIWUserSession(WebApplication.Data)
                    .VetPOA) - 1 do
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
            SQL.Text := 'UPDATE problem SET conclusion_date ="' +
              (auxdatafinal) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).id_problema) + '";';
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
                'INSERT INTO alternatives (name,id_problem,id_alternative,round) VALUES ("'
                + (TIWUserSession(WebApplication.Data).NomeAlt[i]) + '","' +
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
            // ESSE PROCEDIMENTO FOI CHAMADO NO TfrmPortfolioResultados.IWRgnfinaltabelaCreate(Sender: TObject);

            if length(TIWUserSession(WebApplication.Data).VAltPositionsO)
              = 0 then
            begin
              Setlength(TIWUserSession(WebApplication.Data).VAltPositionsO,
                NumAlt);
              for i := 0 to NumAlt - 1 do
              begin
                TIWUserSession(WebApplication.Data).VAltPositionsO[i] := 0;
              end;
            end;

            for i := 0 to NumAlt - 1 do
            begin
              SQL.Text :=
                'UPDATE alternatives SET ranking_position ="' + IntToStr
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
            if TIWUserSession(WebApplication.Data).Problematica = 4 then
            begin
              // para o caso de escolha
              // pegando a alternativa excluida ou preferida
              auxaltexcoupre := IntToStr(TIWUserSession(WebApplication.Data)
                  .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1, 1]);

              // pegando as outras alternativas que foram comparadas
              for i := 2 to length(TIWUserSession(WebApplication.Data)
                  .MATAH[(TIWUserSession(WebApplication.Data).NumAH) - 1]) - 1
                do
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
            for i := 0 to length(TIWUserSession(WebApplication.Data).Pmax) - 1
              do
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

            for i := 0 to length(TIWUserSession(WebApplication.Data).AuxFInc)
              - 1 do
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
            for i := 0 to length(TIWUserSession(WebApplication.Data).Pmax) - 1
              do
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
            Setlength(vtrpercigual, length(TIWUserSession(WebApplication.Data)
                  .vtrASordchange));
            for i := 0 to length(TIWUserSession(WebApplication.Data)
                .vtrASordchange) - 1 do
            begin
              vtrpercigual[i] :=
                (1 - ((TIWUserSession(WebApplication.Data).vtrASordchange[i]) /
                    (TIWUserSession(WebApplication.Data).ninst))) * 100;
            end;

            // agrupando por linha da matriz o percentual de mudança em cada round

            Setlength(vtrniveis, NumAlt);
            Setlength(auxmarizpercent1, NumAlt, TIWUserSession
                (WebApplication.Data).NumLevels);
            for i := 0 to NumAlt - 1 do
            begin
              for j := 0 to TIWUserSession(WebApplication.Data).NumLevels - 1 do
              begin
                auxmarizpercent1[i, j] := (TIWUserSession(WebApplication.Data)
                    .Marizpercent[i, j] / (TIWUserSession(WebApplication.Data)
                      .ninst)) * 100;
                auxvtrniveis := auxvtrniveis + FloatToStr
                  (auxmarizpercent1[i, j]);
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
            for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)
              - 1 do
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
              'INSERT INTO he_question (id_problem,round,ans_question_i,id_perg) VALUES  ("'
              + (TIWUserSession(WebApplication.Data).id_problema)
              + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround)
              + '","' + IntToStr(1) + '","' + IntToStr
              (TIWUserSession(WebApplication.Data).NumQuest) + '")';
            ExecSQL;
          end;

        15:
          begin
            // preenchimento da planilha he_question caso o decisor aperte não na primeira pergunta
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
            ExecSQL;
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
              'SELECT COUNT(id_problem) FROM elicitation WHERE id_problem = "'
              + (TIWUserSession(WebApplication.Data).id_problema)
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
                if (id_pro = TIWUserSession(WebApplication.Data).id_problema)
                  and (id_round = TIWUserSession(WebApplication.Data).nround)
                  then
                begin
                  INC(P);
                  Setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_poa_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_preferences_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_real_consA_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
                  TIWUserSession(WebApplication.Data).qp_ret_exp[i] :=
                    FieldByName('perg').AsString;
                  TIWUserSession(WebApplication.Data).vet_poa_ciclo[i] :=
                    FieldByName('poa').AsString;
                  if TIWUserSession(WebApplication.Data)
                    .qp_ret_exp[i] = '0' then
                  begin
                    TIWUserSession(WebApplication.Data).vet_preferences_ciclo
                      [i] := '-10';
                    TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                      '-10';
                    TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                      '-10';
                    TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                      := '-10';
                    TIWUserSession(WebApplication.Data).vet_ret_hc[i] := '0';
                  end // referente ao se esta na pergunta 0
                  else
                  begin
                    TIWUserSession(WebApplication.Data).vet_preferences_ciclo
                      [i] := FieldByName('preference').AsString;
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
              'SELECT COUNT(id_problem) FROM elicitation WHERE id_problem = "'
              + (TIWUserSession(WebApplication.Data).id_problema)
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
                if (id_pro = TIWUserSession(WebApplication.Data).id_problema)
                  and (id_round = TIWUserSession(WebApplication.Data).nround)
                  then
                begin
                  INC(P);
                  Setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_rpos_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_preferences_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_real_consA_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
                  TIWUserSession(WebApplication.Data).qp_ret_exp[i] :=
                    FieldByName('perg').AsString;
                  TIWUserSession(WebApplication.Data).vet_rpos_ciclo[i] :=
                    FieldByName('num_rpos').AsString;
                  if TIWUserSession(WebApplication.Data)
                    .qp_ret_exp[i] = '0' then
                  begin
                    TIWUserSession(WebApplication.Data).vet_preferences_ciclo
                      [i] := '-10';
                    TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                      '-10';
                    TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                      '-10';
                    TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                      := '-10';
                    TIWUserSession(WebApplication.Data).vet_ret_hc[i] := '0';
                  end // referente ao se esta na pergunta 0
                  else
                  begin
                    TIWUserSession(WebApplication.Data).vet_preferences_ciclo
                      [i] := FieldByName('preference').AsString;
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
            for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)
              - 1 do
            begin
              auxpoa := auxpoa + IntToStr(TIWUserSession(WebApplication.Data)
                  .VetPOA[i]);
              if i < length(TIWUserSession(WebApplication.Data).VetPOA) - 1 then
              begin
                auxpoa := auxpoa + '/';
              end; // referente a  if i < length(TIWUserSession(WebApplication.Data).VetPOA) - 1

            end; // referente a   for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)

            for i := 0 to length(TIWUserSession(WebApplication.Data).Pmax) - 1
              do
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
            Setlength(TIWUserSession(WebApplication.Data).vtr_id_ah_sum,
              TIWUserSession(WebApplication.Data).auxquantdeah);
            Setlength(TIWUserSession(WebApplication.Data)
                .vtr_alt_avaliadas_sum, TIWUserSession(WebApplication.Data)
                .auxquantdeah);
            Setlength(TIWUserSession(WebApplication.Data).vtr_decision_sum,
              TIWUserSession(WebApplication.Data).auxquantdeah);
            Setlength(TIWUserSession(WebApplication.Data).vtr_id_alt_e_sum,
              TIWUserSession(WebApplication.Data).auxquantdeah);
            Setlength(TIWUserSession(WebApplication.Data).vtr_id_alt_c_sum,
              TIWUserSession(WebApplication.Data).auxquantdeah);
            Setlength(TIWUserSession(WebApplication.Data).vtr_poa_sum,
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

              if (id_pro_ = TIWUserSession(WebApplication.Data).id_problema)
                and (id_round_ = IntToStr(TIWUserSession(WebApplication.Data)
                    .nround)) then
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
                TIWUserSession(WebApplication.Data).vtr_poa_sum[i] :=
                  FieldByName('poa').AsString;
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
            Setlength(TIWUserSession(WebApplication.Data).vtr_id_ah_sum,
              TIWUserSession(WebApplication.Data).auxquantdeah);
            Setlength(TIWUserSession(WebApplication.Data)
                .vtr_alt_avaliadas_sum, TIWUserSession(WebApplication.Data)
                .auxquantdeah);
            Setlength(TIWUserSession(WebApplication.Data).vtr_decision_sum,
              TIWUserSession(WebApplication.Data).auxquantdeah);
            Setlength(TIWUserSession(WebApplication.Data).vtr_id_alt_c_sum,
              TIWUserSession(WebApplication.Data).auxquantdeah);
            Setlength(TIWUserSession(WebApplication.Data).vtr_num_rlevels_sum,
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

              if (id_pro_ = TIWUserSession(WebApplication.Data).id_problema)
                and (id_round_ = IntToStr(TIWUserSession(WebApplication.Data)
                    .nround)) then
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
              'SELECT COUNT(id_problem) FROM elicitation WHERE id_problem = "'
              + (TIWUserSession(WebApplication.Data).id_problema)
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
                if (id_pro = TIWUserSession(WebApplication.Data).id_problema)
                  and (id_round = TIWUserSession(WebApplication.Data).nround)
                  then
                begin
                  INC(P);
                  Setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_rpos_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_recomend_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_preferences_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_real_consA_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
                  TIWUserSession(WebApplication.Data).qp_ret_exp[i] :=
                    FieldByName('perg').AsString;
                  TIWUserSession(WebApplication.Data).vet_rpos_ciclo[i] :=
                    FieldByName('num_rpos').AsString;
                  TIWUserSession(WebApplication.Data).vet_recomend_ciclo[i] :=
                    FieldByName('recomendacao_atual').AsString;

                  if TIWUserSession(WebApplication.Data)
                    .qp_ret_exp[i] = '0' then
                  begin
                    TIWUserSession(WebApplication.Data).vet_preferences_ciclo
                      [i] := '-10';
                    TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                      '-10';
                    TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                      '-10';
                    TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                      := '-10';
                    TIWUserSession(WebApplication.Data).vet_ret_hc[i] := '0';
                  end // referente ao se esta na pergunta 0
                  else
                  begin
                    TIWUserSession(WebApplication.Data).vet_preferences_ciclo
                      [i] := FieldByName('preference').AsString;
                    TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                      FieldByName('id_cria').AsString;
                    TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                      FieldByName('id_crib').AsString;
                    TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                      := FieldByName('real_cons_a').AsString;
                    TIWUserSession(WebApplication.Data).vet_ret_hc[i] :=
                      FieldByName('holistic_e').AsString;
                    TIWUserSession(WebApplication.Data).vet_recomend_ciclo[i]
                      := FieldByName('recomendacao_atual').AsString;
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
              'SELECT COUNT(id_problem) FROM elicitation WHERE id_problem = "'
              + (TIWUserSession(WebApplication.Data).id_problema)
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
                if (id_pro = TIWUserSession(WebApplication.Data).id_problema)
                  and (id_round = TIWUserSession(WebApplication.Data).nround)
                  then
                begin
                  INC(P);
                  Setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_rpos_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_recomend_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_preferences_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo,
                    P);
                  Setlength(TIWUserSession(WebApplication.Data)
                      .vet_real_consA_ciclo, P);
                  Setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
                  TIWUserSession(WebApplication.Data).qp_ret_exp[i] :=
                    FieldByName('perg').AsString;
                  TIWUserSession(WebApplication.Data).vet_rpos_ciclo[i] :=
                    FieldByName('alt_nao_class').AsString;

                  if TIWUserSession(WebApplication.Data)
                    .qp_ret_exp[i] = '0' then
                  begin
                    TIWUserSession(WebApplication.Data).vet_preferences_ciclo
                      [i] := '-10';
                    TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                      '-10';
                    TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                      '-10';
                    TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                      := '-10';
                    TIWUserSession(WebApplication.Data).vet_ret_hc[i] := '0';
                  end // referente ao se esta na pergunta 0
                  else
                  begin
                    TIWUserSession(WebApplication.Data).vet_preferences_ciclo
                      [i] := FieldByName('preference').AsString;
                    TIWUserSession(WebApplication.Data).vet_idA_ciclo[i] :=
                      FieldByName('id_cria').AsString;
                    TIWUserSession(WebApplication.Data).vet_idB_ciclo[i] :=
                      FieldByName('id_crib').AsString;
                    TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]
                      := FieldByName('real_cons_a').AsString;
                    TIWUserSession(WebApplication.Data).vet_ret_hc[i] :=
                      FieldByName('holistic_e').AsString;
                    TIWUserSession(WebApplication.Data).vet_recomend_ciclo[i]
                      := FieldByName('recomendacao_atual').AsString;
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

        // caso criado para planilha Intracriterio do BD///
        26: // cria cópia dos dados referentes a round inter -1, para situação em que decisor deseje reiniciar somente elic INTER
          // ESTE CASO É CHAMADO NO BTN "RESET AND RESTAR PROBLEM" DA RGN DE RESULTADOS
          begin

            SQL.Text := 'SELECT round FROM current_stage WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).id_problema) + '";';
            ExecSQL;
            open;
            TIWUserSession(WebApplication.Data).nround := FieldByName('round')
              .AsInteger;
            close;

            // Auxroundinter := (TIWUserSession(WebApplication.Data).nround) - 1;

            for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
            // infos que são vetores
            begin
              AuxBoundMx := AuxBoundMx + FloatToStr
                (TIWUserSession(WebApplication.Data).BoundMx[i]) + '/';
              AuxBoundMn := AuxBoundMn + FloatToStr
                (TIWUserSession(WebApplication.Data).BoundMn[i]) + '/';
              AuxFtipoOrig := AuxFtipoOrig + IntToStr
                (TIWUserSession(WebApplication.Data).FTipo[i]) + '/';
              AuxverificaIntra := AuxverificaIntra + BoolToStr
                (TIWUserSession(WebApplication.Data).VerificaIntra[i]) + '/';
              AuxLinearIntra := AuxLinearIntra + IntToStr
                (TIWUserSession(WebApplication.Data).vtrLinearintra[i]) + '/';
              AuxChangeLinear := AuxChangeLinear + IntToStr
                (TIWUserSession(WebApplication.Data).vtrChangeLin[i]) + '/';
              AuxCritElicit := AuxCritElicit + BoolToStr
                (TIWUserSession(WebApplication.Data).VtrcritBisec[i]) + '/';
              Auxpercentcrit := Auxpercentcrit + FloatToStr
                (TIWUserSession(WebApplication.Data).perc[i]) + '/';
            end; // for i

            /// informações que são matrizes///
            for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
            begin
              for i := 0 to NumAlt - 1 do
              begin
                AuxMatInterpol := AuxMatInterpol + FloatToStr
                  (TIWUserSession(WebApplication.Data).ConsNorm[i, j]) + '/';
              end; // for i
            end; // for j

            for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
            begin
              for i := 0 to 5 - 1 do
              begin
                AuxPointsBisec := AuxPointsBisec + FloatToStr
                  (TIWUserSession(WebApplication.Data).matrizpontosreais[i, j])
                  + '/';
              end; // for i
            end; // for j

            SQL.Text :=
              'INSERT INTO intracrit (Id_problem, round, RoundIntra, stage, BoundMx, BoundMn, OriginalFtipo, Verificaintra, LinearIntra, ChangeLinear, CritsElicitados, percent, NormalizaInterpol, PointsBisec) VALUES ("' + (TIWUserSession(WebApplication.Data).id_problema) + '", "' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '", "' + IntToStr(TIWUserSession(WebApplication.Data).fvround) + '", "' + IntToStr(TIWUserSession(WebApplication.Data).estagiointra) + '", "' + AuxBoundMx + '", "' + AuxBoundMn + '" , "' + AuxFtipoOrig + '", "' + AuxverificaIntra + '", "' + AuxLinearIntra + '", "' + AuxChangeLinear + '", "' + AuxCritElicit + '", "' + Auxpercentcrit + '", "' + AuxMatInterpol + '", "' + AuxPointsBisec + '");';
            ExecSQL;

          end; // case 26

      end; // cases
    end;
  end;

initialization

// TIWForm3.SetAsMainForm;

end.
