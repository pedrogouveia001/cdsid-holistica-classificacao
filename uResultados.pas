unit uResultados;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompEdit,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWCompLabel,
  Controls, Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, TeeGDIPlus, IWCompButton, TeEngine, ExtCtrls,
  TeeProcs, Chart, IWExtCtrls, IWWebGrid, IWAdvWebGrid, BubbleCh, TeePolar,
  IWCompListbox, IWCompRadioButton, IWTMSCheckList, series, IWGrids, TeeLisB,
  TeeSeriesTextEd, Buttons, Math, pngimage, CheckLst,
  ShellApi, TeeLegendScrollBar, Spin, ToolWin, StdActns,
  TeeURL, TeeXML, AppEvnts, IWCompDynamicChart, IWVCLComponent, TeeProCo,
  Windows, Messages, Variants, Graphics, Dialogs, ComCtrls, Menus, StdCtrls,
  jpeg, ComObj, Grids, IWCompText, IWHTMLControls, ErrorBar,
  IWAdvWebGridExcel, SimpleGraph, IWProgressIndicator, IWDBGrids,
  IWCompProgressBar, IWBaseComponent, IWBaseHTMLComponent,
  IWBaseHTML40Component, IWColorComboBox, IWTMSImgCtrls, IWTMSCtrls,
  IWCompTabControl, IWTMSPopup, IWTMSMenus, RpDefine, RpRender, RpRenderText,
  IWAdvCheckGroup, IWDBAdvCheckGroup, IWHelpTip, IWCompCheckbox, GanttCh,
  IWCompMemo;

type
  TfrmResultados = class(TIWAppForm)
    TIWAdvWebGridExcelIO2: TTIWAdvWebGridExcelIO;
    IWRgnReset2: TIWRegion;
    btnResetNovoProblema: TIWButton;
    btnResetRecomcProblema: TIWButton;
    btnResetVoltar: TIWButton;
    btnlgout: TIWButton;
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
    rgnimagemax: TIWRegion;
    imagemax: TIWImage;
    btnclosemax: TIWButton;
    iwrgnLegendDH: TIWRegion;
    iwImgLegendDh: TIWImage;
    btnlegenddhclose: TIWButton;
    IWLabel89: TIWLabel;
    IWImgcabedh: TIWImage;
    tmrhasse: TIWTimer;
    pMnExporting: TPopupMenu;
    InputOutputData1: TMenuItem;
    Summaryofquestionsanswered1: TMenuItem;
    pmnHelp: TPopupMenu;
    About1: TMenuItem;
    UserGuide1: TMenuItem;
    English1: TMenuItem;
    Portuguese1: TMenuItem;
    AnalystLogin1: TMenuItem;
    AnalystLogout1: TMenuItem;
    pmnResetoption: TPopupMenu;
    restartproblem1: TMenuItem;
    newproblem1: TMenuItem;
    RestartIntra: TMenuItem;
    Intercriteriaevaluation1: TMenuItem;
    IWRgnresultadografico: TIWRegion;
    btnSISC: TIWButton;
    BtnCSC: TIWButton;
    imgegraph: TIWImage;
    btnsi2: TIWButton;
    imgweightslim: TIWImage;
    lblSCBG: TIWLabel;
    IWImage9: TIWImage;
    IWLabel71: TIWLabel;
    IWLink5: TIWLink;
    IWLabel75: TIWLabel;
    IWImage36: TIWImage;
    IWImage26: TIWImage;
    IWImage53: TIWImage;
    imgIngles: TIWImage;
    imgportugues: TIWImage;
    IWRegion9: TIWRegion;
    lblLinesSC: TIWLabel;
    lblGLSC: TIWLabel;
    txtLinesSC: TIWText;
    txtNoteSC: TIWText;
    lblNoteSC: TIWLabel;
    IWRegion10: TIWRegion;
    lstbxcritg: TIWListbox;
    lblCLSC: TIWLabel;
    chrtpesoslim: TChart;
    LineSeries2: TLineSeries;
    LineSeries3: TLineSeries;
    crtEhraph: TChart;
    Series3: TPointSeries;
    IWRegion37: TIWRegion;
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
    RgnAHT: TIWRegion;
    rgnHEG: TIWRegion;
    lblHEG0: TIWLabel;
    IWLabel118: TIWLabel;
    IWLink22: TIWLink;
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
    TbCtrlvisualizations: TIWTabControl;
    TbCtrlvisualizationsPage0: TIWTabPage;
    TbCtrlP3: TIWTabPage;
    IWImage6: TIWImage;
    lblBGFR: TIWLabel;
    Chart1: TChart;
    IWRegion45: TIWRegion;
    lblBVFCEFR: TIWLabel;
    lblBHCEFR: TIWLabel;
    lblCEFR: TIWLabel;
    txtBCEFR: TIWText;
    IWRegion44: TIWRegion;
    lblBNFR: TIWLabel;
    txtBNFR: TIWText;
    TbCtrlP4: TIWTabPage;
    lblHDFR: TIWLabel;
    btnUHDFR: TIWButton;
    btnLHDFR: TIWButton;
    btnSIHDFR: TIWButton;
    btnhasse1: TIWButton;
    IWRegion48: TIWRegion;
    lblhassemessage: TIWLabel;
    TbCtrlP0: TIWTabPage;
    IWImage4: TIWImage;
    lblBGrFR: TIWLabel;
    Chart2: TChart;
    Series1: TBarSeries;
    IWRegion25: TIWRegion;
    txtBVFFR: TIWText;
    lblBCEFR: TIWLabel;
    lblBBFR: TIWLabel;
    IWRegion26: TIWRegion;
    lblBrNFR: TIWLabel;
    txtBrNFR: TIWText;
    TbCtrlP2: TIWTabPage;
    lblRGFR: TIWLabel;
    IWImage5: TIWImage;
    Chart3: TChart;
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
    TbCtrlP1: TIWTabPage;
    lnkrelations: TIWLink;
    lnkfinalize: TIWLink;
    PmnlblExporting: TTIWPopupMenuLabel;
    lnkweightsgraph: TIWLink;
    rgntable: TIWRegion;
    grdchoosepoa: TIWGrid;
    lbltitle: TIWLabel;
    lblranking: TIWLabel;
    RgnRelationsMatrix: TIWRegion;
    lblrel: TIWLabel;
    btnclose: TIWButton;
    lblMexplanation: TIWLabel;
    rgnauxtable: TIWRegion;
    grdrelations: TIWGrid;
    rgnauxrel: TIWRegion;
    Txtrel: TIWText;
    lbllegind: TIWLabel;
    iwrgnCaixaDialogoResultado: TIWRegion;
    lblWEEFR: TIWLabel;
    IWImage1: TIWImage;
    rgnwarning: TIWRegion;
    txtCaixaDialogoResults: TIWText;
    IWButton4: TIWButton;
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
    IWRgnanalisedesensibilidade: TIWRegion;
    imgING3: TIWImage;
    imgsensgraph: TIWImage;
    lblDOSCSA: TIWLabel;
    btnexpRCSA: TIWButton;
    lblAIExcCSA: TIWLabel;
    lblVPVCSA: TIWLabel;
    lblCSA: TIWLabel;
    cmbxgroupindex: TIWComboBox;
    IWLabel63: TIWLabel;
    btnback: TIWButton;
    btnmximc: TIWButton;
    IWImage11: TIWImage;
    IWLabel80: TIWLabel;
    IWLabel92: TIWLabel;
    IWImage41: TIWImage;
    IWLink8: TIWLink;
    IWImage56: TIWImage;
    IWImage57: TIWImage;
    imgPORT3: TIWImage;
    IWRegion7: TIWRegion;
    txtAOSCSA: TIWText;
    TxtAnOSCSA: TIWText;
    IWImage7: TIWImage;
    IWImage8: TIWImage;
    lblLCSA: TIWLabel;
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
    rgnAbout: TIWRegion;
    IWImage13: TIWImage;
    IWImage58: TIWImage;
    IWImage59: TIWImage;
    IWLink25: TIWLink;
    IWLabel116: TIWLabel;
    lblFMAbout: TIWLabel;
    lnkcloseabout: TIWLink;
    IWRegion58: TIWRegion;
    IWRegion59: TIWRegion;
    txtAboutS: TIWText;
    IWRgnAS: TIWRegion;
    lblWSAL: TIWLabel;
    lblPISAL: TIWLabel;
    IWLabel99: TIWLabel;
    IWLink19: TIWLink;
    IWImage50: TIWImage;
    IWImage55: TIWImage;
    IWImage22: TIWImage;
    IWRegion4: TIWRegion;
    txtsesanw: TIWText;
    IWRegion47: TIWRegion;
    iwrgnHasseDiagram: TIWRegion;
    btnLegendDH: TIWButton;
    iwbtnSaveImageDH: TIWButton;
    iwbtnCloseDH: TIWButton;
    lblHD: TIWLabel;
    TIWFadeImage1: TTIWFadeImage;
    iwbtnRefreshDH: TIWButton;
    IWImage25: TIWImage;
    IWLabel76: TIWLabel;
    IWLabel90: TIWLabel;
    IWImage39: TIWImage;
    IWLink1: TIWLink;
    IWRegion33: TIWRegion;
    Chartaux: TChart;
    rgnMatrizDistancias: TIWRegion;
    lblmxdifranking: TIWLabel;
    btnmaxmin: TIWButton;
    IWRegion5: TIWRegion;
    IWGrid2: TIWGrid;
    IWLabel1: TIWLabel;
    rgnHolisticaOrd: TIWRegion;
    lblholisticranking: TIWLabel;
    IWImage18: TIWImage;
    IWLabel3: TIWLabel;
    IWImage19: TIWImage;
    IWLink3: TIWLink;
    IWRegion13: TIWRegion;
    tbctrlHolisticRanking1: TIWTabControl;
    tbctrlHasseHR: TIWTabPage;
    lblHDHR: TIWLabel;
    btnUHHER: TIWButton;
    btnhasse2: TIWButton;
    RHasse_Holistic: TIWRegion;
    TbCtrlvisualizationsHR: TIWTabControl;
    tbctrlRadH: TIWTabPage;
    lblRadarHER: TIWLabel;
    tbctrlBubH: TIWTabPage;
    lblBubbleHER: TIWLabel;
    tbctrlTabH: TIWTabPage;
    rgnTabHER: TIWRegion;
    lblTVHER: TIWLabel;
    tbctrlBarHR: TIWTabPage;
    IWImage27: TIWImage;
    lblBarHER: TIWLabel;
    LblQA: TIWLink;
    lblnQA: TIWLink;
    txtEVHE: TIWText;
    tbctrlbarHPage0: TIWTabPage;
    ImgING6: TIWImage;
    imgPORT6: TIWImage;
    lblap: TIWLabel;
    chckbxhidec: TIWCheckBox;
    rgnHERCtrl: TIWRegion;
    lblSRPHER: TIWLabel;
    CmbxHER: TIWComboBox;
    lblAlt1HER: TIWLabel;
    lblAlt2HER: TIWLabel;
    cmbxHEA1: TIWComboBox;
    cmbxHEA2: TIWComboBox;
    IWRegion12: TIWRegion;
    txtNHER: TIWText;
    IWImage28: TIWImage;
    IWImage29: TIWImage;
    rgnWHER: TIWRegion;
    btnWOKHE: TIWButton;
    btnWRHEC: TIWButton;
    rdbtnEXp1R: TTIWRadioButton;
    rdbtnEXp2R: TTIWRadioButton;
    rdbtnEXp3R: TTIWRadioButton;
    IWRegion39: TIWRegion;
    txtWhyRHE: TIWText;
    IWLabel6: TIWLabel;
    Series2: TRadarSeries;
    ETBtn: TMenuItem;
    rgnCEQT: TIWRegion;
    lblWCEQT: TIWLabel;
    edtMaxdif: TIWEdit;
    btnOkEQT: TIWButton;
    IWLabel8: TIWLabel;
    IWRegion15: TIWRegion;
    IWText1: TIWText;
    IWLabel2: TIWLabel;
    IWLabel7: TIWLabel;
    IWLabel9: TIWLabel;
    IWText2: TIWText;
    IWLabel10: TIWLabel;
    IWText3: TIWText;
    IWButton1: TIWButton;
    RgnSelBAO: TIWRegion;
    CmbxHEAG2: TIWComboBox;
    lblWOIBHER: TIWLabel;
    btnOKHEG4: TIWButton;
    hlptpExploreHER: TTIWHelpTip;
    TIWFadeImage2: TTIWFadeImage;
    PmnlSensitivity: TTIWPopupMenuLabel;
    pmnSensitivityAnalysis: TPopupMenu;
    mnBtnConsequences1: TMenuItem;
    mnBtnValueFunction1: TMenuItem;
    TIWAdvWebGridExcelIO1: TTIWAdvWebGridExcelIO;
    AdvWgrdASR: TTIWAdvWebGrid;
    SensitivityAnalysisReport1: TMenuItem;
    Problematic1: TMenuItem;
    Choice1: TMenuItem;
    Ranking1: TMenuItem;
    lnksensitanalysis: TIWLink;
    tbctrlHolisticRanking: TIWTabPage;
    IWRegion14: TIWRegion;
    IWGrid3: TIWGrid;
    IWLabel11: TIWLabel;
    rgnHERCtrl2: TIWRegion;
    rgnapresentacaoauto: TIWRegion;
    btnNxtV: TIWButton;
    BtnPrevV: TIWButton;
    lblCP: TIWLabel;
    lnksavefurther: TIWLink;
    lblSV: TIWLabel;
    cmbxSPairs: TIWComboBox;
    lblcurpair: TIWLabel;
    lblNPP: TIWLabel;
    LBLNUMCOMB: TIWLabel;
    lnkfinishpr: TIWLink;
    hlptppairsHE: TTIWHelpTip;
    lnkpresentpairs: TIWLink;
    lnkbackavord: TIWLink;
    tbctrlHolisticRanking1Page0: TIWTabPage;
    lnkmaxdif: TIWLink;
    lnkhide: TIWLink;
    HLPTPmAXdIF: TTIWHelpTip;
    lnkmaxdifhol: TIWLink;
    lnkmaxdifhohide: TIWLink;
    TIWHelpTip1: TTIWHelpTip;
    TIWHelpTip2: TTIWHelpTip;
    hptpEQT: TTIWHelpTip;
    IWButton2: TIWButton;
    lnkweightsgraphDH: TIWLink;
    lnkfinalizeDH: TIWLink;
    lnksensitanalysisDH: TIWLink;
    PmnlblExportingDH: TTIWPopupMenuLabel;
    IWRegion17: TIWRegion;
    imgPORT2: TIWImage;
    imgING2: TIWImage;
    lblRSA: TIWLabel;
    lblDORRSA: TIWLabel;
    lblVPVRSA: TIWLabel;
    lblCRSA: TIWButton;
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
    txtOPRSA: TIWText;
    txtCPRSA: TIWText;
    IWImage23: TIWImage;
    IWImage24: TIWImage;
    lblLRSA: TIWLabel;
    IWRegion21: TIWRegion;
    IWGriddeviation: TIWGrid;
    IWRegion24: TIWRegion;
    IWGrid1: TIWGrid;
    ChartASord: TChart;
    IWRegion38: TIWRegion;
    BarSeries1: TBarSeries;
    BarSeries2: TBarSeries;
    IWRegion31: TIWRegion;
    txtinformation: TIWText;
    IWLabel15: TIWLabel;
    IWImage42: TIWImage;
    IWButton8: TIWButton;
    IWRegion35: TIWRegion;
    IWText6: TIWText;
    IWLabel16: TIWLabel;
    IWImage44: TIWImage;
    IWButton9: TIWButton;
    IWLink7: TIWLink;
    rgnsav: TIWRegion;
    lblSAV: TIWLabel;
    lblSOCSAV: TIWLabel;
    btnsaveas: TIWButton;
    IWLink21: TIWLink;
    IWImage10: TIWImage;
    IWLabel17: TIWLabel;
    IWImage20: TIWImage;
    IWImage30: TIWImage;
    btnbackAS: TIWButton;
    LBLInformation: TIWLabel;
    btnstartas: TIWButton;
    IWRegion46: TIWRegion;
    IWRegion3: TIWRegion;
    grdvariation: TTIWAdvWebGrid;
    rgninformation: TIWRegion;
    txtnotedisc: TIWText;
    IWText5: TIWText;
    IWText10: TIWText;
    lnkBackAS: TIWLink;
    IWLink11: TIWLink;
    IWGridlm: TIWGrid;
    rgnaltpositions: TIWRegion;
    lblPAinPRSA: TIWLabel;
    IWRegion23: TIWRegion;
    IWGridpercent: TIWGrid;
    IWLabel26: TIWLabel;
    cmbbxposicoes: TIWComboBox;
    lblpercentualposicoes: TIWLabel;
    lnkCategories: TIWLink;
    IWLink20: TIWLink;
    IWLink26: TIWLink;
    lblsetabarra1: TIWLabel;
    lblsetabarra3: TIWLabel;
    lblsetabarra2: TIWLabel;
    lblsetabarra4: TIWLabel;
    lblsetaradar: TIWLabel;
    lblsetaradar1: TIWLabel;
    lblsetaradar2: TIWLabel;
    lblsetaradar3: TIWLabel;
    lblsetabolha: TIWLabel;
    lblsetabolha1: TIWLabel;
    lblsetabolha2: TIWLabel;
    lblsetabolha3: TIWLabel;
    rgnCEBR: TIWRegion;
    txtBVFFR1: TIWText;
    lblBCEFR1: TIWLabel;
    lblBBFR1: TIWLabel;
    lblBrNFR1: TIWLabel;
    txtBrNFR1: TIWText;
    btnmaxCEBr: TIWButton;
    rgnRGexp: TIWRegion;
    lblRCEFR1: TIWLabel;
    btnmaxCER: TIWButton;
    IWRegion16: TIWRegion;
    lblRVFFR1: TIWLabel;
    lblRSExpFR1: TIWLabel;
    lblRSFR1: TIWLabel;
    txtRCEFR1: TIWText;
    IWRegion18: TIWRegion;
    lblRLFR1: TIWLabel;
    lblRCOFR1: TIWLabel;
    IWRegion19: TIWRegion;
    txtRNFR1: TIWText;
    lblRNFR1: TIWLabel;
    rgnCEBb: TIWRegion;
    lblBHCEFR1: TIWLabel;
    lblCEFR1: TIWLabel;
    txtBCEFR1: TIWText;
    txtBNFR1: TIWText;
    lblBNFR1: TIWLabel;
    btnmaxCEBb: TIWButton;
    IWRegion57: TIWRegion;
    IWLabel29: TIWLabel;
    IWLabel30: TIWLabel;
    IWLabel31: TIWLabel;
    IWLabel32: TIWLabel;
    IWRegion60: TIWRegion;
    IWLabel18: TIWLabel;
    IWLabel22: TIWLabel;
    IWLabel33: TIWLabel;
    IWLabel34: TIWLabel;
    IWRegion61: TIWRegion;
    IWLabel35: TIWLabel;
    IWLabel36: TIWLabel;
    IWLabel37: TIWLabel;
    IWLabel38: TIWLabel;
    lnkdominancematrix: TIWLink;
    checklistboxdominance: TTIWCheckListBox;
    tbctrlHolisticRanking1Page1: TIWTabPage;
    lnkdominancematrixHord: TIWLink;
    IWLabel39: TIWLabel;
    rgntabledmHord: TIWRegion;
    grdrelationsHord: TIWGrid;
    checklistboxdominanceHord: TTIWCheckListBox;
    btnUpFRHord: TIWButton;
    lnkselectapositionHord: TIWLink;
    TxtrelHord: TIWText;
    lbllegindHord: TIWLabel;
    txtHordDominance: TIWText;
    btncloseHord: TIWButton;
    txtexpcolchetes: TIWText;
    lnkexpcolchetes: TIWLink;
    txtexpcolcheteHord: TIWText;
    lnkexpcolchetesHord: TIWLink;
    lnkdominancematrixDH: TIWLink;
    IWImage48: TIWImage;
    btnshowrecommedation: TIWButton;
    IWImage49: TIWImage;
    btnshowrecommedation1: TIWButton;
    rgnrulevizualization: TIWRegion;
    imgING5: TIWImage;
    lblr01: TIWLabel;
    imgHEsp: TIWImage;
    lblviz: TIWLabel;
    IWLabel47: TIWLabel;
    IWLabel48: TIWLabel;
    txtrecommends: TIWText;
    IWLink10: TIWLink;
    IWImage14: TIWImage;
    IWImage17: TIWImage;
    imgPORT5: TIWImage;
    btnrecomenda: TIWButton;
    combograf: TIWComboBox;
    butranking: TIWButton;
    IWRegion28: TIWRegion;
    lblcriterios: TIWLabel;
    lblProbDev: TIWLabel;
    IWLabel5: TIWLabel;
    IWLabel42: TIWLabel;
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
    IWText15: TIWText;
    IWLabel59: TIWLabel;
    IWImage16: TIWImage;
    IWRegion29: TIWRegion;
    IWText14: TIWText;
    IWLabel52: TIWLabel;
    IWRegion34: TIWRegion;
    IWImage15: TIWImage;
    IWLink2: TIWLink;
    IWLabel41: TIWLabel;
    logoutrecomend: TIWButton;
    lnkbackrecom: TIWLink;
    regionanalyst: TIWRegion;
    IWLabel44: TIWLabel;
    IWButton11: TIWButton;
    IWLabel45: TIWLabel;
    TIWHelpTip3: TTIWHelpTip;
    IWButton16: TIWButton;
    IWLabel46: TIWLabel;
    IWLabel49: TIWLabel;
    IWLabel51: TIWLabel;
    checkanalista: TIWCheckBox;
    IWLabel53: TIWLabel;
    memodescanal: TIWMemo;
    lnkref: TIWRegion;
    lblrec1: TIWLink;
    txtport: TIWText;
    IWImage43: TIWImage;
    btninf: TIWButton;
    IWText12: TIWText;
    IWText13: TIWText;
    Fullreport1: TMenuItem;
    IWRegion62: TIWRegion;
    grdintracriterio: TTIWAdvWebGrid;
    grdranking: TTIWAdvWebGrid;
    grdkendall: TTIWAdvWebGrid;
    grdmatrizdominacia: TTIWAdvWebGrid;
    rgnAS: TIWRegion;
    IWImage32: TIWImage;
    IWImage35: TIWImage;
    IWImage31: TIWImage;
    IWLabel19: TIWLabel;
    TIWRadioButton1: TTIWRadioButton;
    TIWPopupMenuButton1: TTIWPopupMenuButton;
    TIWPopupMenuButton3: TTIWPopupMenuButton;
    IWButton7: TIWButton;
    IWLink14: TIWLink;
    IWLabel12: TIWLabel;
    IWLink17: TIWLink;
    rgaboutresult: TIWRegion;
    lblaboutstatustau: TIWLabel;
    IWImage47: TIWImage;
    IWButton333: TIWButton;
    IWText4: TIWText;
    IWRegion49: TIWRegion;
    IWText9: TIWText;
    IWLabel28: TIWLabel;
    IWImage46: TIWImage;
    IWButton35: TIWButton;
    RgCorpo: TIWRegion;
    btnVoltarInput: TIWButton;
    btnGo: TIWButton;
    IWButton5: TIWButton;
    bttnavançar: TIWButton;
    IWButton6: TIWButton;
    rgnSA2: TIWRegion;
    IWLabel27: TIWLabel;
    IWLink18: TIWLink;
    IWRegion55: TIWRegion;
    grdtautable: TIWGrid;
    IWLabel21: TIWLabel;
    IWLink13: TIWLink;
    IWImage37: TIWImage;
    IWButton3: TIWButton;
    IWRegion41: TIWRegion;
    IWText8: TIWText;
    IWLabel25: TIWLabel;
    IWImage45: TIWImage;
    IWButton14: TIWButton;
    IWRegion27: TIWRegion;
    IWLabel20: TIWLabel;
    IWText7: TIWText;
    IWText11: TIWText;
    IWLabel13: TIWLabel;
    lblstatustau: TIWLabel;
    cmbbxalpha: TIWComboBox;
    IWLink16: TIWLink;
    IWLabel23: TIWLabel;
    IWLink12: TIWLink;
    txtabout: TIWText;
    txtrejected: TIWText;
    IWLabel40: TIWLabel;
    txtnorejected: TIWText;
    IWText20: TIWText;
    IWLink27: TIWLink;
    lblasteristico: TIWLabel;
    rgndetalheskendall: TIWRegion;
    imgKendall: TIWImage;
    txtnivelsignificancia: TIWText;
    txtporcentagens: TIWText;
    IWText17: TIWText;
    IWLink28: TIWLink;
    IWRegion22: TIWRegion;
    IWRegion63: TIWRegion;
    chrtKendall: TChart;
    Series6: TPieSeries;
    rgnValorP: TIWRegion;
    imgValorP: TIWImage;
    txtnivelsignificancia2: TIWText;
    txtporcentagens2: TIWText;
    IWText19: TIWText;
    IWLink29: TIWLink;
    chrtValorP: TChart;
    IWLink30: TIWLink;
    IWLink31: TIWLink;
    Series7: TLineSeries;
    Series8: TPointSeries;
    Series9: TLineSeries;

    procedure IWButton21Click(Sender: TObject);
    procedure IWRgnfinaltabelaCreate(Sender: TObject);
    procedure Barras(Escala: integer);
    procedure Radar(Escala: integer);
    procedure Bolhas(Escala: integer);
    procedure EscalaRazao;
    procedure IWButton32Click(Sender: TObject);
    procedure IWButton33Click(Sender: TObject);
    procedure IWButton12Click(Sender: TObject);
    procedure BtnheyClick(Sender: TObject);
    procedure btnhenClick(Sender: TObject);
    procedure salvarimageClick(Sender: TObject);
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
    procedure PLOrdenacao(Valorep: real);
    procedure LPsOrdenacao;
    procedure calmaxminweights;
    Procedure CalmaxminOverallVelues;
    Procedure ConstruirMatrizgrupo;
    Procedure CriarElementosAS;
    Procedure DestruirElementosAS;
    Function TrocaVP(Num: Double): String;
    Function TrocaVP1(Num: String): Double;
    function Rounding(Value: Double): String;
    procedure btnanalistClick(Sender: TObject);
    procedure btnloginClick(Sender: TObject);
    procedure btnrecommendationTClick(Sender: TObject);
    procedure btnrecommendationpageClick(Sender: TObject);
    procedure btnResetRgnFinalTabelaClick(Sender: TObject);
    procedure btnASClick(Sender: TObject);
    procedure IWButton15Click(Sender: TObject);
    // procedure IWButton17Click(Sender: TObject);
    /// / Procedimentos utilizados para Análise de Sensibilidade ////////////////
    procedure sensitivityA;
    Procedure Normaliza;
    Procedure altglobalvaluep;
    Procedure PLOAS; // PL de ordenação
    Procedure LPsOAS;
    Procedure PLEAS;
    procedure cmbxgroupindexChange(Sender: TObject);
    procedure btnbackClick(Sender: TObject);
    procedure btnhasseClick(Sender: TObject);
    procedure IWButtonexpotClick(Sender: TObject);
    procedure btnexportationClick(Sender: TObject); // PL de esco
    procedure btnsi2Click(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure SalvarresultBD;
    procedure btnResetNovoProblemaClick(Sender: TObject);
    procedure btnResetRecomcProblemaClick(Sender: TObject);
    procedure btnResetVoltarClick(Sender: TObject);
    procedure btnlgoutClick(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
    procedure IWButton19Click(Sender: TObject);
    procedure alinhamento;
    procedure btnRelationsClick(Sender: TObject);
    procedure btncloseClick(Sender: TObject);
    procedure btncloseHordClick(Sender: TObject);
    procedure btnanalistlogoutClick(Sender: TObject);
    procedure btnvoltaranalystpageClick(Sender: TObject);
    procedure btncancelClick(Sender: TObject);
    procedure IWTimer1Timer(Sender: TObject);
    procedure linkClick(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure BtnMaxIClick(Sender: TObject);
    procedure btnclosemaxClick(Sender: TObject);
    // procedure IWButton14Click(Sender: TObject);
    procedure iwbtnCloseDHClick(Sender: TObject);
    procedure iwbtnSaveImageDHClick(Sender: TObject);
    procedure btnLegendDHClick(Sender: TObject);
    procedure btnlegenddhcloseClick(Sender: TObject);
    procedure tmrhasseTimer(Sender: TObject);
    procedure iwbtnRefreshDHClick(Sender: TObject);
    procedure TbCtrlvisualizationsChange(Sender: TObject);
    procedure btnUpFRClick(Sender: TObject);
    procedure CmbxResultsChange(Sender: TObject);
    procedure CTabela;
    procedure preencher_Alt_Holistica;
    procedure avalia_niveis;
    procedure btnHEG1Click(Sender: TObject);
    procedure CmbxHEChange(Sender: TObject);
    procedure IWButton42Click(Sender: TObject);
    procedure btnOKHEG4Click(Sender: TObject);
    procedure IWLink22Click(Sender: TObject);
    procedure IWLink23Click(Sender: TObject);
    procedure IWLink24Click(Sender: TObject);
    /// /
    procedure lnkfinalizeClick(Sender: TObject);
    procedure lnkrelationsClick(Sender: TObject);
    procedure IWLink9Click(Sender: TObject);
    procedure BtnOKHEG2Click(Sender: TObject);
    procedure rdbtnEXp1Click(Sender: TObject);
    procedure rdbtnEXp2Click(Sender: TObject);
    procedure rdbtnEXp3Click(Sender: TObject);
    procedure BtnBackHEG1Click(Sender: TObject);
    /// ////
    procedure About1Click(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure Portuguese1Click(Sender: TObject);
    procedure lnkcloseaboutClick(Sender: TObject);
    procedure btnhasse1Click(Sender: TObject);
    procedure btnokhe0Click(Sender: TObject);
    procedure rdbtnEDFRClick(Sender: TObject);
    procedure rdbtnHEFRClick(Sender: TObject);
    procedure BtnCancelHEG1Click(Sender: TObject);
    procedure IWButton5Click(Sender: TObject);
    procedure IWButton6Click(Sender: TObject);
    procedure IWLink4Click(Sender: TObject);

    /// /////////////////////////////////////////////////////////////
    procedure RestartIntraClick(Sender: TObject);
    procedure Intercriteriaevaluation1Click(Sender: TObject);
    procedure InterpolacaopontosAS(CriNorm: integer);
    procedure btnBackSAVClick(Sender: TObject);
    procedure imgportuguesClick(Sender: TObject);
    procedure imgInglesClick(Sender: TObject);
    procedure Definir_Idioma;
    procedure btnHERCFRClick(Sender: TObject);
    procedure btnNoIFRClick(Sender: TObject);
    procedure btnYesIFRClick(Sender: TObject);
    procedure BtnCSCClick(Sender: TObject);
    procedure btnSISCClick(Sender: TObject);
    procedure btnexpRCSAClick(Sender: TObject);
    procedure lblCRSAClick(Sender: TObject);
    procedure Graficoaux;
    procedure plotar_max_diff;
    procedure delete_grid_max_diff;
    procedure btnmaxminClick(Sender: TObject);
    procedure cmbxHEA1Change(Sender: TObject);
    procedure btnWRHECClick(Sender: TObject);
    procedure btnWOKHEClick(Sender: TObject);
    procedure cmbxHEA2Change(Sender: TObject);
    // procedure chckbxhidecChange(Sender: TObject);
    procedure gerar_combinacoes;
    Function Fatorial(Num: integer): integer;
    procedure lnkpresentpairsClick(Sender: TObject);
    procedure NextView;
    procedure btnNxtVClick(Sender: TObject);
    procedure BtnPrevVClick(Sender: TObject);
    procedure lnksavefurtherClick(Sender: TObject);
    procedure cmbxSPairsChange(Sender: TObject);
    procedure lnkfinishprClick(Sender: TObject);
    Function trescasas(Num: Double): String;
    procedure ETBtnClick(Sender: TObject);
    procedure btnOkEQTClick(Sender: TObject);
    procedure btnmaxCEBrClick(Sender: TObject);
    procedure btnmaxCERClick(Sender: TObject);
    procedure btnmaxCEBbClick(Sender: TObject);
    procedure AsValueFunction;
    procedure mnBtnConsequences1Click(Sender: TObject);
    procedure mnBtnValueFunction1Click(Sender: TObject);
    procedure SensitivityAnalysisReport1Click(Sender: TObject);
    // ** Armazena os dados das ASs **//
    Procedure Preencher_MatDadosAS;
    procedure Choice1Click(Sender: TObject);
    procedure Ranking1Click(Sender: TObject);
    procedure pmnbRORAsyncMenuClick(Sender: TObject; EventParams: TStringList;
      AMenuItem: TMenuItem);
    procedure lnksensitanalysisClick(Sender: TObject);
    procedure lnkmaxdifClick(Sender: TObject);
    procedure lnkbackavordClick(Sender: TObject);
    procedure lnkhideClick(Sender: TObject);
    procedure lnkmaxdifholClick(Sender: TObject);
    procedure lnkmaxdifhohideClick(Sender: TObject);
    procedure IWButton7Click(Sender: TObject);
    procedure Summaryofquestionsanswered1Click(Sender: TObject);
    // Proposta AS - PEDRO
    procedure Correlation;  // Mudança Teste de Kendall - Pedro 30/10/2024
    procedure TauforNRep;   // Mudança Teste de Kendall - Pedro 30/10/2024
    procedure btngoresultasClick(Sender: TObject);
    procedure rgnASCreate(Sender: TObject);
    procedure cmbbxposicoesChange(Sender: TObject);
    procedure tabelaKendall;           // Mudança Teste de Kendall - Pedro 30/10/2024
    procedure lnkCategoriesClick(Sender: TObject);
    procedure IWButton8Click(Sender: TObject);
    procedure IWLink7Click(Sender: TObject);
    procedure IWButton9Click(Sender: TObject);
    procedure IWLink13Click(Sender: TObject);
    procedure IWButton35Click(Sender: TObject);
    procedure IWLink12Click(Sender: TObject);
    procedure IWButton14Click(Sender: TObject);
    procedure rgnsavCreate(Sender: TObject);
    procedure IWLink16Click(Sender: TObject);
    procedure IWButton333Click(Sender: TObject);
    procedure grdvariationCheckClick(Sender: TObject; RowIndex,
      ColumnIndex: Integer);
    procedure btnstartasClick(Sender: TObject);
    procedure btnsaveasClick(Sender: TObject);
    procedure btnbackASClick(Sender: TObject);
    procedure IWLabel26AsyncClick(Sender: TObject; EventParams: TStringList);
    procedure lnkBackASClick(Sender: TObject);
    procedure IWLink11Click(Sender: TObject);
    procedure cmbbxalphaChange(Sender: TObject);
    procedure IWLink17Click(Sender: TObject);
    procedure mecanismoveto;
    procedure IWLink18Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure IWLink20Click(Sender: TObject);
    procedure IWLink26Click(Sender: TObject);
    procedure lnkdominancematrixHordClick(Sender: TObject);
    procedure btnUpFRHordClick(Sender: TObject);
    procedure rgnHolisticaOrdCreate(Sender: TObject);
    procedure butrankingClick(Sender: TObject);
    procedure btnrecomendaClick(Sender: TObject);
    procedure butcompClick(Sender: TObject);
    procedure IWLink10Click(Sender: TObject);
    procedure btnshowrecommedationClick(Sender: TObject);
    procedure logoutrecomendClick(Sender: TObject);
    procedure lnkbackrecomClick(Sender: TObject);
    procedure btnshowrecommedation1Click(Sender: TObject);
    procedure IWButton16Click(Sender: TObject);
    procedure IWButton11Click(Sender: TObject);
    procedure btninfClick(Sender: TObject);
    procedure lblrec1Click(Sender: TObject);
    procedure Fullreport1Click(Sender: TObject);
    procedure IWLink27Click(Sender: TObject);
    procedure IWLink28Click(Sender: TObject);
    function InverseNormalCDF(p: Double): Double;  // Mudança Teste de Kendall - Pedro 30/10/2024
    function NormalCDF(z: Double): Double; //   Mudança Teste de Kendall - Pedro 22/04/2025
    function ZToPValue(z: Double): Double;
    procedure IWLink30Click(Sender: TObject);
    procedure IWLink31Click(Sender: TObject);
    procedure IWLink29Click(Sender: TObject);

  end;

  {

    procedure lnkfinishprClick(Sender: TObject);
    procedure lnkpresentpairsClick(Sender: TObject);   procedure cmbxHEA2Change(Sender: TObject); var

    ConsRazao: array of array of Double;
    Escala: integer;
    TRE: array of boolean; }

implementation

uses lpsolve51, ServerController, UserSessionUnit,
  untIntro, uIntercritério, uAPI_SolveLP, uCode, untIntraCriterio,
  untPortfolioresults, untSortingResults, uPerfis, uPortfolioResults;
{$R *.dfm}

Function TfrmResultados.TrocaVP(Num: Double): String;
var
  S: string;
  i: integer;
begin
  S := FloatToStr(Num);
  for i := 2 to length(S) - 1 do
    if S[i] = ',' then
      S[i] := '.';

  Result := S;
end;

Function TfrmResultados.TrocaVP1(Num: String): Double;
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

/// FUNÇÃO REPONSAVEL POR REALIZAR O ARREDONDAMENTO DAS CONSEQUÊNCIAS 7
/// MOSTRADAS AO USUÁRIO - Yara
function TfrmResultados.Rounding(Value: Double): String;
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


procedure TfrmResultados.mnBtnValueFunction1Click(Sender: TObject);
var
  i: integer;
begin
  TIWUserSession(WebApplication.Data).AsVF := True;
  TIWUserSession(WebApplication.Data).Start := True;
  IWRgnfinaltabela.Hide;
  IWRgnAS.Show;
  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(CriSel, Numcrit);
    for i := 0 to Numcrit - 1 do
      if VtrcritBisec[i] then
        CriSel[i] := True;
  end;

  IWTimer1.Enabled := True;
end;

Function TfrmResultados.Fatorial(Num: integer): integer;
var
  S: integer;
  i: integer;
begin
  S := Num;
  if S < 0 then
    WebApplication.ShowMessage(
      'Something went wrong. We apologize for the inconvenience.');
  if S > 0 then
  begin
    for i := (Num - 1) Downto 1 do
      S := S * i;
  end
  else
    S := 1;
  Result := S;
end;

procedure TfrmResultados.Fullreport1Click(Sender: TObject);
var
  Summary, intcrit, inpout, ans, ranking: array of array of string;
  CombinedHTMLStream: TStringStream;
  i, J, sum, itc, ip, ass, rk, a, B, C: integer;
begin
  /// /////////////////////////////////// ALEX ALVES DA SILVA /////////////////////////////////////////////////////////
  sum := 0;
  ip := 0;
  itc := 0;
  a := 1;
  B := 0;
  /// ////////// SISTEMA DE EXPORTAÇÃO PARA O FORMATO HTML ///////////////////////////////
  TIWUserSession(WebApplication.Data).kendall := false;
  TIWUserSession(WebApplication.Data).html := True; // variavel para verificar se o botão foi clicado
  Summaryofquestionsanswered1Click(self); // chamando função de preenchimento do summary
  btnexportationClick(self); // chamando função de preenchimento do inuts e outputs
  CombinedHTMLStream := TStringStream.Create('', TEncoding.UTF8);
  if TIWUserSession(WebApplication.Data).problematica=1 then
  begin
  grdexport.TotalRows:=19+TIWUserSession(WebApplication.Data).NumAlt;
  end
  else
  begin
   grdexport.TotalRows:=24+TIWUserSession(WebApplication.Data).NumAlt;
  end;

  Setlength(Summary, grdexport1.RowCount, 9); // setando uma matriz booleana para encontrar linhas vazias do Summary (9 é quantidade fixa das colunas do sumarry
  Setlength(intcrit, grdintracriterio.RowCount, grdintracriterio.Columns.Count); // setando uma matriz booleana para encontrar linhas vazias do intra criterio
  Setlength(inpout, grdexport.TotalRows, grdexport.Columns.Count); // setando uma matriz booleana para encontrar linhas vazias do Input output
  // Eleminando linhas excedentes do Summary/////
  for i := 0 to grdexport1.RowCount - 1 do
  begin
    for J := 0 to 9 - 1 do
    begin
      if grdexport1.Cells[J, i] <> '' then
      begin
        Summary[i, J] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
      end
      else
      begin
        Summary[i, J] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
      end;
    end;

  end;
  /// ///Apagando linhas nulas
  for i := 0 to grdexport1.RowCount - 1 do
  begin
    sum := 0;
    for J := 0 to 9 - 1 do
    begin
      sum := sum + StrToint(Summary[i, J]); // somando os componentes de linha da matriz booleana, caso a soma seja 0, a linha sera apagada
    end;
    if sum <> 0 then
    begin
      INC(a); // Excluir a linha do grid
    end;

  end;
  grdexport1.RowCount := a;

  /// ELIMINANDO COLUNAS EXEDENTES DO SUMMARY///
  sum := 0;

  B := 0;
  for J := 0 to 9 - 1 do // iniciando a exclusão das colunas excedentes apartir da ultima coluna valida
  begin
    sum := 0;
    for i := 0 to grdexport1.RowCount - 1 do
    begin
      sum := sum + StrToint(Summary[i, J]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a linha sera apagada

    end;
    if sum = 0 then
    begin
      grdexport1.Columns.Delete(a); // Excluir a coluna do grid
    end;

  end;
  a := 0;
  // Eliminando linhas excedentes da tabela intra criterio
  for i := 0 to grdintracriterio.RowCount - 1 do
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
 a:=0;
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
  grdintracriterio.RowCount := a;
  /// /////ELIMANDO  COLUNAS EXEDENTES DO GRID INTRA-CRITERIO //////
  B := 0;
  a := grdintracriterio.Columns.Count;
  for J := 0 to a - 1 do
  begin
    itc := 0;
    for i := 0 to grdintracriterio.RowCount - 1 do
    begin
      itc := itc + StrToint(intcrit[i, J]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a linha sera apagada

    end;
    if itc <> 0 then
    begin
      INC(B);
    end;
    if itc = 0 then
    begin
      grdintracriterio.Columns.Delete(B); // Excluir a coluna do grid
    end;

  end;

  try
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
    for i := 0 to grdexport1.RowCount - 1 do
    begin
      CombinedHTMLStream.WriteString('<tr>');
      for J := 0 to 9 - 1 do // 9 caracteres são padrão da tabela, a unica variavel que pode variar é o numero de linhas da tabela
      begin
        CombinedHTMLStream.WriteString('<td>');
        CombinedHTMLStream.WriteString(grdexport1.Cells[J, i]);
        CombinedHTMLStream.WriteString('</td>');
      end;
      CombinedHTMLStream.WriteString('</tr>');
    end;
    CombinedHTMLStream.WriteString('</table>');

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





    if TIWUserSession(WebApplication.Data).Problematica = 1 then
    /// / CASO TENHA FEITO A PROBLEMATICA 1
    begin
    /// ELIMINANDO COLUNAS EXEDENTES DO INPUT OUTPUT///
  for i := 0 to grdexport.TotalRows - 1 do
  begin
    for J := 0 to grdexport.Columns.Count - 1 do
    begin
      if grdexport.Cells[J, i] <> '' then
      begin
        inpout[i, J] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
      end
      else
      begin
        inpout[i, J] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
      end;
    end;
  end;
  a := 0;
  B := 0;
  a := grdexport.Columns.Count;
  for J := 0 to a - 1 do
  begin
    ip := 0;
    for i := 0 to grdexport.TotalRows - 1 do
    begin
      ip := ip + StrToint(inpout[i, J]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a linha sera apagada

    end;
    if ip <> 0 then
    begin
      INC(B);
    end;
    if ip = 0 then
    begin
      grdexport.Columns.Delete(b); // Excluir a coluna do grid
    end;

  end;
  a := 4;
  for i := 0 to grdexport.TotalRows - 1 do
  begin
    ip := 0;
    for J := 0 to grdexport.Columns.Count - 1 do
    begin
      ip := ip + StrToint(inpout[i, J]); // somando os componentes de linha da matriz booleana, caso a soma seja 0, a linha sera apagada
    end;
    if ip <> 0 then
    begin
      INC(a); // Excluir a linha do grid
    end;

  end;
  grdexport.TotalRows := a;

      // Título para a terceira grid(grdexport)
      CombinedHTMLStream.WriteString(
        '<h2 style="margin-top: 20px;">Input-Output Data</h2>');
      // Tabela para a terceira grid(grdexport)
      CombinedHTMLStream.WriteString(
        '<table border="1" style="margin-top: 10px;">');
      for i := 0 to grdexport.TotalRows - 1 do
      begin
        CombinedHTMLStream.WriteString('<tr>');
        for J := 0 to TIWUserSession(WebApplication.Data).Numcrit+1 - 1 do
        begin
          CombinedHTMLStream.WriteString('<td>');
          CombinedHTMLStream.WriteString(grdexport.Cells[J, i]);
          CombinedHTMLStream.WriteString('</td>');
        end;
        CombinedHTMLStream.WriteString('</tr>');
      end;
      CombinedHTMLStream.WriteString('</table>');



        // Título para a quarta grid(grdmatrizdominacia)
      CombinedHTMLStream.WriteString(
        '<h2 style="margin-top: 20px;">Dominance Matrix</h2>');
      // Tabela para a terceira grid(grdmatrizdominacia)
      CombinedHTMLStream.WriteString(
        '<table border="1" style="margin-top: 10px;">');
      for i := 0 to grdmatrizdominacia.TotalRows - 1 do
      begin
        CombinedHTMLStream.WriteString('<tr>');
        for J := 0 to grdmatrizdominacia.Columns.Count - 1 do
        begin
          CombinedHTMLStream.WriteString('<td>');
          CombinedHTMLStream.WriteString(grdmatrizdominacia.Cells[J, i]);
          CombinedHTMLStream.WriteString('</td>');
        end;
        CombinedHTMLStream.WriteString('</tr>');
      end;
      CombinedHTMLStream.WriteString('</table>');



       //No codigo abaixo estou setando o tamanho da matriz ranking para formar uma matriz boleanea para eliminar linhas exedentes em branco
      SetLength(ranking, grdranking.totalRows, grdranking.Columns.Count);
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
    end




    else
    /// //Se caso não tenha feito a problematica 1
    begin
    /// ELIMINANDO COLUNAS EXEDENTES DO INPUT OUTPUT///
  for i := 0 to grdexport.TotalRows - 1 do
  begin
    for J := 0 to grdexport.Columns.Count - 1 do
    begin
      if grdexport.Cells[J, i] <> '' then
      begin
        inpout[i, J] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
      end
      else
      begin
        inpout[i, J] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
      end;
    end;
  end;
  a := 0;
  B := 0;
  a := grdexport.Columns.Count;
  for J := 0 to a - 1 do
  begin
    ip := 0;
    for i := 0 to grdexport.TotalRows - 1 do
    begin
      ip := ip + StrToint(inpout[i, J]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a linha sera apagada

    end;
    if ip <> 0 then
    begin
      INC(B);
    end;
    if ip = 0 then
    begin
      grdexport.Columns.Delete(B); // Excluir a coluna do grid
    end;

  end;
  a := 3;
  for i := 0 to grdexport.TotalRows - 1 do
  begin
    ip := 0;
    for J := 0 to grdexport.Columns.Count - 1 do
    begin
      ip := ip + StrToint(inpout[i, J]); // somando os componentes de linha da matriz booleana, caso a soma seja 0, a linha sera apagada
    end;
    if ip <> 0 then
    begin
      INC(a); // Excluir a linha do grid
    end;

  end;
  grdexport.TotalRows := a;
      // Título para a terceira grid(grdexport)
      CombinedHTMLStream.WriteString(
        '<h2 style="margin-top: 20px;">Input-Output Data</h2>');
      // Tabela para a terceira grid(grdexport)
      CombinedHTMLStream.WriteString(
        '<table border="1" style="margin-top: 10px;">');
      for i := 0 to grdexport.TotalRows - 1 do
      begin
        CombinedHTMLStream.WriteString('<tr>');
        for J := 0 to grdexport.Columns.Count - 1 do
        begin
          CombinedHTMLStream.WriteString('<td>');
          CombinedHTMLStream.WriteString(grdexport.Cells[J, i]);
          CombinedHTMLStream.WriteString('</td>');
        end;
        CombinedHTMLStream.WriteString('</tr>');
      end;
      CombinedHTMLStream.WriteString('</table>');

    end;





    // VERIFICA SE A ANALISE DE SENCIVILIDADE FOI FEITA
    if (SensitivityAnalysisReport1.Visible = True) then
    begin
      if TIWUserSession(WebApplication.Data).Problematica = 1 then
      begin
        AdvWgrdASR.TotalRows := AdvWgrdASR.TotalRows - 7;
        SensitivityAnalysisReport1Click(self);
        Setlength(ans, AdvWgrdASR.TotalRows, AdvWgrdASR.Columns.Count);
        /// ELIMINANDO COLUNAS EXEDENTES DA ANALISE DE SENCIBILIDADDE///
        for i := 0 to AdvWgrdASR.TotalRows - 1 do
        begin
          for J := 0 to AdvWgrdASR.Columns.Count - 1 do
          begin
            if AdvWgrdASR.Cells[J, i] <> '' then
            begin
              ans[i, J] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
            end
            else
            begin
              ans[i, J] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
            end;
          end;
        end;
        a := AdvWgrdASR.Columns.Count;
        for J := 0 to a - 1 do
        begin
          ass := 0;
          for i := 0 to AdvWgrdASR.TotalRows - 1 do
          begin
            ass := ass + StrToint(ans[i, J]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a coluna sera apagada

          end;
          if ass <> 0 then
          begin
            INC(C); // Numeração da coluna que será apagada
          end
          else
          begin
            AdvWgrdASR.Columns.Delete(C); // Excluir a coluna do grid
          end;

        end;

        // Título para a terceira grid(AdvWgrdASR)
        CombinedHTMLStream.WriteString(
          '<h2 style="margin-top: 20px;">Sensitivity Analysis</h2>');
        // Tabela para a terceira grid(AdvWgrdASR)
        CombinedHTMLStream.WriteString(
          '<table border="1" style="margin-top: 10px;">');
        for i := 0 to (AdvWgrdASR.TotalRows - 7) - 1 do // O -6 esta atribuido a quantidade de linhas referenta ao teste de Kendall
        begin
          CombinedHTMLStream.WriteString('<tr>');
          for J := 0 to AdvWgrdASR.Columns.Count - 1 do
          begin
            CombinedHTMLStream.WriteString('<td>');
            CombinedHTMLStream.WriteString(AdvWgrdASR.Cells[J, i]);
            CombinedHTMLStream.WriteString('</td>');
          end;
          CombinedHTMLStream.WriteString('</tr>');
        end;
        CombinedHTMLStream.WriteString('</table>');

        // Título para a quarta grid(grdkendall)
        CombinedHTMLStream.WriteString(
          '<h2 style="margin-top: 20px;">Kendall Test</h2>');
        // Tabela para a quarta grid(grdkendall)
        CombinedHTMLStream.WriteString(
          '<table border="1" style="margin-top: 10px;">');
        for i := 0 to grdkendall.TotalRows - 1 do
        begin
          CombinedHTMLStream.WriteString('<tr>');
          for J := 0 to grdkendall.Columns.Count - 1 do
          begin
            CombinedHTMLStream.WriteString('<td>');
            CombinedHTMLStream.WriteString(grdkendall.Cells[J, i]);
            CombinedHTMLStream.WriteString('</td>');
          end;
          CombinedHTMLStream.WriteString('</tr>');
        end;
        CombinedHTMLStream.WriteString('</table>');
      end

      else
      begin
        AdvWgrdASR.TotalRows := AdvWgrdASR.TotalRows;
        SensitivityAnalysisReport1Click(self);
        Setlength(ans, AdvWgrdASR.TotalRows, AdvWgrdASR.Columns.Count);
        /// ELIMINANDO COLUNAS EXEDENTES DA ANALISE DE SENCIBILIDADDE///
        for i := 0 to AdvWgrdASR.TotalRows - 1 do
        begin
          for J := 0 to AdvWgrdASR.Columns.Count - 1 do
          begin
            if AdvWgrdASR.Cells[J, i] <> '' then
            begin
              ans[i, J] := IntToStr(1); // atribuindo a cada celula não vazia o valor 1
            end
            else
            begin
              ans[i, J] := IntToStr(0); // atribuindo a cada celulavazia o valor 0
            end;
          end;
        end;
        a := AdvWgrdASR.Columns.Count;
        for J := 0 to a - 1 do
        begin
          ass := 0;
          for i := 0 to AdvWgrdASR.TotalRows - 1 do
          begin
            ass := ass + StrToint(ans[i, J]); // somando os componentes das colunas da matriz booleana, caso a soma seja 0, a coluna sera apagada

          end;
          if ass <> 0 then
          begin
            INC(C); // Numeração da coluna que será apagada
          end
          else
          begin
            AdvWgrdASR.Columns.Delete(C); // Excluir a coluna do grid
          end;

        end;

        // Título para a terceira grid(AdvWgrdASR)
        CombinedHTMLStream.WriteString(
          '<h2 style="margin-top: 20px;">Sensitivity Analysis</h2>');
        // Tabela para a terceira grid(AdvWgrdASR)
        CombinedHTMLStream.WriteString(
          '<table border="1" style="margin-top: 10px;">');
        for i := 0 to (AdvWgrdASR.TotalRows) - 1 do // O -6 esta atribuido a quantidade de linhas referenta ao teste de Kendall
        begin
          CombinedHTMLStream.WriteString('<tr>');
          for J := 0 to AdvWgrdASR.Columns.Count - 1 do
          begin
            CombinedHTMLStream.WriteString('<td>');
            CombinedHTMLStream.WriteString(AdvWgrdASR.Cells[J, i]);
            CombinedHTMLStream.WriteString('</td>');
          end;
          CombinedHTMLStream.WriteString('</tr>');
        end;
        CombinedHTMLStream.WriteString('</table>');

      end;
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

Function TfrmResultados.trescasas(Num: Double): String;
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

procedure TfrmResultados.AsValueFunction;
var
  // ** Armazena as funções valor dos critérios elicitados dentro do sistema **//
  fValorIntra: Array of Array of Array of Real;
  i, J, k, Z, P, T, G, NonElicited: integer;
  // ** Armazena o número de combinações de possíveis FV de cada critério **//
  NumFV, VetComb, Lim: Array of integer;
  VetValor: Array of Array of Real;
  AuxV1, AuxV2: Real;
  // ** Armazena o índice do último critério elicitado **//
  UCE: integer;
  // ** Índice do critério que foi considerado para a construção do espaço de pesos **//
  IndEA: integer;
  // ** Var que já existiam na AS anterior **//
  auxc, nsol: integer;
  FSol: Array [0 .. 1] of integer;
  AInc, Aexc: Array of boolean;
  FInc, Fexc, PAlt, NPOA: Array of integer;
  Matrizprofile: array of array of string;
  POA: boolean;
  level: array of boolean; // Indica se um determinado nível foi alterado
  nlev: integer;
  aux1, aux2: string;
  function interpolacao(x, x0, x1, y0, y1: Real): Real;
  begin
    Result := y0 + (x - x0) * ((y1 - y0) / (x1 - x0))
  end; // função interpolação

  function transformacao(valor: Real; crit, fv: integer; Inversa: boolean)
    : Real;
  var
    T: integer;
  begin
    { Essa função recebe o valor a ser transformado, o critério, a função valor e
      a "direção" a se considerar e devolve o valor devidamente tranformado através
      da função valor definida }
    if not Inversa then
    begin
      for T := 0 to 4 - 1 do
      begin
        if (TIWUserSession(WebApplication.Data).TypeOfCrit[crit] = 1) or
          (TIWUserSession(WebApplication.Data).TypeOfCrit[crit] = 3) then
          if (valor >= fValorIntra[crit, T, 0]) and
            (valor <= fValorIntra[crit, T + 1, 0]) then
          begin
            Result := interpolacao(valor, fValorIntra[crit, T, 0],
              fValorIntra[crit, T + 1, 0], fValorIntra[crit, T, fv],
              fValorIntra[crit, T + 1, fv]);
            break;
          end; // Valor entre os limites

        if (TIWUserSession(WebApplication.Data).TypeOfCrit[crit] = 0) or
          (TIWUserSession(WebApplication.Data).TypeOfCrit[crit] = 2) then
          if (valor <= fValorIntra[crit, T, 0]) and
            (valor >= fValorIntra[crit, T + 1, 0]) then
          begin
            Result := interpolacao(valor, fValorIntra[crit, T, 0],
              fValorIntra[crit, T + 1, 0], fValorIntra[crit, T, fv],
              fValorIntra[crit, T + 1, fv]);
            break;
          end; // Valor entre os limites
      end; // for T
    end // não inversa --> Transformação direta x --> V(x)
    else
    begin
      { No caso da inversa não é necessário verificar se é maximização ou minimização
        pois a fValorIntra está ordenada do menor v(x) para o maior v(x) }
      for T := 0 to 4 - 1 do
      begin
        if (valor >= fValorIntra[crit, T, fv]) and
          (valor <= fValorIntra[crit, T + 1, fv]) then
        begin
          Result := interpolacao(valor, fValorIntra[crit, T, fv],
            fValorIntra[crit, T + 1, fv], fValorIntra[crit, T, 0],
            fValorIntra[crit, T + 1, 0]);
          break;
        end;
      end; // for T
    end; // inversa V(x) --> x

  end; // função transformação

begin
  with TIWUserSession(WebApplication.Data) do
  begin
    /// //// Inicializando importantes vetores da AS de Escolha ///////////////
    if Problematica = 0 then
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
        for J := 0 to NumAlt - 1 do
          for G := 0 to 2 - 1 do
            MatrizprofileOrdenacao[i, J, G] := '0';

      for i := 0 to length(Marizpercent) - 1 do
        for J := 0 to length(Marizpercent[i]) - 1 do
      Marizpercent[i, J] := 0;
      Setlength(Flevelsc, 0);
      Setlength(Flevelsc, Rlevels);
      Setlength(level, 0);
      Setlength(level, TIWUserSession(WebApplication.Data).Rlevels);
      for i := 0 to Rlevels - 1 do
        Flevelsc[i] := 0;
      Setlength(TIWUserSession(WebApplication.Data).vtrASordchange, NumAlt);
      for i := 0 to NumAlt - 1 do
        vtrASordchange[i] := 0;

      for i := 0 to length(Marizpercent) - 1 do
        for J := 0 to length(Marizpercent[i]) - 1 do
          TIWUserSession(WebApplication.Data).Marizpercent[i, J] := 0;

    end;
    /// ///////////////////////////////////////////////////////////////////////

    // ** Cada critério possui uma matriz dentro deste vetor de matriz **//
    Setlength(fValorIntra, Numcrit);
    Setlength(NumFV, Numcrit);
    { Estrutura da matriz p/ cada critério :
      x1 | v1(x1) = 0 | ... | vn(x1) = 0
      x2 | v1(x2)     | ... | vn(x2)
      x3 | v1(x3)     | ... | vn(x3)
      x4 | v1(x4)     | ... | vn(x4)
      x5 | v1(x5) = 1 | ... | vn(x5) = 1
      }

    // ** Supõem a inexistência de critérios não elicitados **//
    NonElicited := 0;
    // ** Inicia a geração das combinações de pontos para gerar as fv **//
    for i := 0 to Numcrit - 1 do
    begin
      // ** Caso o critério não tenha tido a FV elicitada, segue pro prócimo **//
      if not TIWUserSession(WebApplication.Data).VtrcritBisec[i] then
      begin
        // ** Incrementa o número de critérios não elicitados **//
        INC(NonElicited);
        continue
      end;

      // ** Calcula o número de Funções Valor distintas **//
      NumFV[i] := 1;
      for J := 0 to length(MvarIntra[i]) - 1 do
        NumFV[i] := NumFV[i] * length(TIWUserSession(WebApplication.Data)
            .MvarIntra[i, J]);

      // ** Seta o tamanho da matriz para o critério I **//
      Setlength(fValorIntra[i], 5, NumFV[i] + 1);

      // ** Passa os valores originais para a primeira coluna da matriz **//
      // ** O processo é feito manualmente
      for J := 0 to 5 - 1 do
      begin
        { Como a matriz real é organizada na ordem 1 - 0 - 0.5 - 0.25 - 0.75,
          utilizo a função polinomial de grau 4 para gerar o índice
          a ser utilizado e não ter de explicitar cada atribuição à Matriz final }

        k := Round(-0.625 * Power(J, 4) + 4.75 * Power(J, 3) - 11.375 * Power
            (J, 2) + 9.25 * J + 1);
        // ** Recebendo o valor x original **//
        fValorIntra[i, J, 0] := TIWUserSession(WebApplication.Data)
          .matrizpontosreais[k, i];
        fValorIntra[i, J, 1] := J / 4;
      end;

      { VetComb armazena índices que podem ir de 0 a 2 a depender da quantidade de
        pontos para a anáilise (definidos na elicitação intra) e pode ter uma dimensão
        de 2 a 3, também dependendo se os pontos considerados na análise são os três
        (.5, .25 e .75) ou apenas dois destes }
      Setlength(VetComb, length(TIWUserSession(WebApplication.Data)
            .MvarIntra[i]));

      Setlength(Lim, length(MvarIntra[i]));

      // ** Devemos introduzir os valores das diferentes funções valor nas colunas **//
      k := 1;

      // ** Inicializa com a primeira combinação **//
      for J := 0 to length(VetComb) - 1 do
      begin
        VetComb[J] := 0;
        Lim[J] := length(MvarIntra[i, J]) - 1
      end;

      VetComb[length(VetComb) - 1] := -1;
      while k < NumFV[i] do
      begin
        INC(k);
        // ** Incrementa para gerar uma nova combinação de índices **//
        INC(VetComb[length(VetComb) - 1]);

        // ** Verifica se algum elemento atingiu o limite de índice **//
        for J := length(VetComb) - 1 Downto 1 do
          if VetComb[J] > Lim[J] then
          begin
            VetComb[J] := 0;
            INC(VetComb[J - 1]);
          end;

        // ** Redundância **//
        if VetComb[0] > Lim[0] then
          break;

        // ** Critérios de escala natural **//
        if (TypeOfCrit[i] <> 2) and (TypeOfCrit[i] <> 3) then
        begin

          { VetReal armazena a combinação de valores selecionada na rodada já ordenados }
          Setlength(VetValor, length(MvarIntra[i]) + 2, 2);

          // ** os Pontos extremos permanecem os mesmos independente da combinação **//
          VetValor[0, 0] := fValorIntra[i, 0, 0];
          VetValor[length(VetValor) - 1, 0] := fValorIntra[i, 4, 0];
          VetValor[0, 1] := 0;
          VetValor[length(VetValor) - 1, 1] := 1;

          case length(VetComb) of
            1:
              WebApplication.ShowMessage('An error has occurred!');
            2:
              begin
                // ** Significa que ou o .75 ou o .25 não entraram na análise **//
                if ((MvarIntra[i, 0, Lim[0]] > MvarIntra[i, 1, Lim[1]]) and
                    (TypeOfCrit[i] = 1)) or
                  ((MvarIntra[i, 0, Lim[0]] < MvarIntra[i, 1, Lim[1]]) and
                    (TypeOfCrit[i] = 0)) then
                begin
                  // ** A linha 1 equivale a .25 **//
                  Z := 2;
                  P := 1;
                  VetValor[P, 1] := 0.25;
                end
                else
                begin
                  // ** A linha 1 equivale a .75 **//
                  Z := 1;
                  P := 2;
                  VetValor[P, 1] := 0.75;
                end;
                // ** Passa os valores da combinação para o vetor **//
                VetValor[Z, 0] := MvarIntra[i, 0, VetComb[0]];
                VetValor[P, 0] := MvarIntra[i, 1, VetComb[1]];
                VetValor[Z, 1] := 0.5;

              end;
            3:
              begin
                for J := 0 to 3 - 1 do
                begin
                  { Como a MvarIntra é organizada na ordem 0.5 - 0.25 - 0.75,
                    utilizo a função polinomial de grau 2 para gerar o índice
                    a ser utilizado e não ter de explicitar cada atribuição à Matriz final }
                  Z := Round(1.5 * Power(J, 2) - 2.5 * J + 1);
                  VetValor[J + 1, 0] := MvarIntra[i, Z, VetComb[J]];
                  VetValor[J + 1, 1] := 0.25 + J / 4;
                end;

              end;
          end;

          // ** Cada função deve ser avaliada nos mesmos 5 pontos iniciais **//
          { Para que possamos considerar os mesmos pontos iniciais, será necessário
            encontrar o seu valor transformado, considerando os pontos contidos em
            VetValor. }
          for J := 0 to 5 - 1 do
          begin
            for Z := 0 to length(VetValor) - 2 do
            begin
              if TypeOfCrit[i] = 1 then
                if (fValorIntra[i, J, 0] >= VetValor[Z, 0]) and
                  (fValorIntra[i, J, 0] <= VetValor[Z + 1, 0]) then
                  if VetValor[Z, 0] <> VetValor[Z + 1, 0] then
                    fValorIntra[i, J, k] := interpolacao
                      (fValorIntra[i, J, 0], VetValor[Z, 0],
                      VetValor[Z + 1, 0], VetValor[Z, 1], VetValor[Z + 1, 1])
                  else
                    // ** Indica que a FV é descontínua **//
                    fValorIntra[i, 0, k] := -1;

              if TypeOfCrit[i] = 0 then
                if (fValorIntra[i, J, 0] <= VetValor[Z, 0]) and
                  (fValorIntra[i, J, 0] >= VetValor[Z + 1, 0]) then
                  if VetValor[Z, 0] <> VetValor[Z + 1, 0] then
                    fValorIntra[i, J, k] := interpolacao
                      (fValorIntra[i, J, 0], VetValor[Z, 0],
                      VetValor[Z + 1, 0], VetValor[Z, 1], VetValor[Z + 1, 1])
                  else
                    // ** Indica que a FV é descontínua **//
                    fValorIntra[i, 0, k] := -1;
            end;
            /// z
          end; // j
        end; // Escala Natural

        // ** Critérios de escala construída **//
        if (TypeOfCrit[i] = 2) or (TypeOfCrit[i] = 3) then
        begin
          // ** Os valores extremos são sempre iguais **//
          fValorIntra[i, 0, k] := 0;
          fValorIntra[i, 4, k] := 1;

          case length(VetComb) of
            1: // Critério de 3 níveis
              begin
                if MvarIntra[i, 0, length(MvarIntra[i, 0]) - 1] = 0.5 then
                begin
                  // ** V(x0.5) **//
                  fValorIntra[i, 2, k] := MvarIntra[i, 0, VetComb[0]];
                  // ** V(x0.25) - Linearização **//
                  fValorIntra[i, 1, k] := MvarIntra[i, 0, VetComb[0]] / 2;
                  // ** V(x0.75) - Linearização **//
                  fValorIntra[i, 3, k] := (1 + MvarIntra[i, 0, VetComb[0]]) / 2;
                end;

                if MvarIntra[i, 0, length(MvarIntra[i, 0]) - 1] = 0.75 then
                begin
                  // ** V(x0.75) **//
                  fValorIntra[i, 3, k] := MvarIntra[i, 0, VetComb[0]];
                  // ** V(x0.25) - Linearização **//
                  fValorIntra[i, 1, k] := interpolacao
                    (fValorIntra[i, 1, 0], fValorIntra[i, 0, 0],
                    fValorIntra[i, 3, 0], 0, fValorIntra[i, 3, k]);
                  // ** V(x0.5) - Linearização **//
                  fValorIntra[i, 2, k] := interpolacao
                    (fValorIntra[i, 2, 0], fValorIntra[i, 0, 0],
                    fValorIntra[i, 3, 0], 0, fValorIntra[i, 3, k]);
                end;

                if MvarIntra[i, 0, length(MvarIntra[i, 0]) - 1] = 0.25 then
                begin
                  // ** V(x0.25) **//
                  fValorIntra[i, 1, k] := MvarIntra[i, 0, VetComb[0]];
                  // ** V(x0.75) - Linearização **//
                  fValorIntra[i, 3, k] := interpolacao
                    (fValorIntra[i, 3, 0], fValorIntra[i, 1, 0],
                    fValorIntra[i, 4, 0], 1, fValorIntra[i, 1, k]);
                  // ** V(x0.5) - Linearização **//
                  fValorIntra[i, 2, k] := interpolacao
                    (fValorIntra[i, 2, 0], fValorIntra[i, 1, 0],
                    fValorIntra[i, 4, 0], 1, fValorIntra[i, 1, k]);
                end;
              end;

            2:
              Begin
                // ** V(x0.5) **//
                fValorIntra[i, 2, k] := MvarIntra[i, 0, VetComb[0]];
                // ** Significa que ou o .75 ou o .25 não entraram na análise **//
                if (MvarIntra[i, 0, Lim[0]] > MvarIntra[i, 1, Lim[1]]) then
                begin
                  // ** A linha 1 equivale a .25 **//
                  // ** V(x0.25) **//
                  fValorIntra[i, 1, k] := MvarIntra[i, 1, VetComb[1]];
                  // ** V(x0.75) **//
                  fValorIntra[i, 3, k] := (1 + MvarIntra[i, 0, VetComb[0]]) / 2;
                end
                else
                begin
                  // ** A linha 1 equivale a .75 **//
                  // ** V(x0.75) **//
                  fValorIntra[i, 3, k] := MvarIntra[i, 1, VetComb[1]];
                  // ** V(x0.25) **//
                  fValorIntra[i, 1, k] := MvarIntra[i, 0, VetComb[0]] / 2;
                end;

              End;

            3:
              Begin
                // ** V(x0.25) **//
                fValorIntra[i, 1, k] := MvarIntra[i, 1, VetComb[1]];
                // ** V(x0.5) **//
                fValorIntra[i, 2, k] := MvarIntra[i, 0, VetComb[0]];
                // ** V(x0.75) **//
                fValorIntra[i, 3, k] := MvarIntra[i, 2, VetComb[2]];
              End;
          end;

        end; // Escala construída

      end; // while
    end; // for i
    // ** Redundância que garante que se nenhum critério tiver sido elicitado,
    // ** A análise será interrompida **//
    if NonElicited = Numcrit then
      Exit;

    { Antes mesmo de iniciar a AS propriamente dita, podemos preencher as conseqências
      das alternativas nos critérios não elicitados e esse procedimento só precisa
      ser feito uma vez }
    Setlength(MConsN, NumAlt, Numcrit);
    for i := 0 to Numcrit - 1 do
      if not TIWUserSession(WebApplication.Data).VtrcritBisec[i] then
        for J := 0 to NumAlt - 1 do
          // ** ConsNorm tem as consequências "Normalizadas" com a FV original **//
          TIWUserSession(WebApplication.Data).MConsN[J, i] := ConsNorm[J, i];

    // ** É necessário verificar se todas as funções valor são monotônicas **//
    for i := 0 to Numcrit - 1 do
      if TIWUserSession(WebApplication.Data).VtrcritBisec[i] then
        for J := 2 to length(fValorIntra[i, 0]) - 1 do
          for k := 0 to 4 - 1 do
            if (fValorIntra[i, k, J] >= fValorIntra[i, k + 1, J]) then
              // ** Significa que a função é não-monotônica ou descontínua no ponto **//
              fValorIntra[i, 0, J] := -1;

    // ** Inicia a Análise de Sensibilidade Propriamente dita **//
    P := 0;
    // ** Calcula o número total de instâncias **//
    for i := 0 to length(NumFV) - 1 do
      if NumFV[i] > 1 then
        P := P + NumFV[i];

    // ** Cada critério terá uma FV utilizada em cada instância **//
    Setlength(VetComb, length(NumFV));
    Setlength(Lim, length(NumFV));

    // ** Inicializa os vetores auxiliares **//
    for i := 0 to length(NumFV) - 1 do
    begin
      VetComb[i] := 1;
      if TIWUserSession(WebApplication.Data).VtrcritBisec[i] then
      begin
        Lim[i] := NumFV[i];
        UCE := i;
      end
      else
        Lim[i] := -1;
    end;

    VetComb[UCE] := 0;

    aux1 := TimeToStr(Now);
    aux2 := '';

    for i := 1 to length(aux1) do
      if aux1[i] <> ':' then
        aux2 := aux2 + aux1[i];

    // ** Início das instâncias **//
    i := 0;
    ninst := 0;
    While (ninst < 1000) and (i < 5000) do
    begin
      INC(i);
      { Quando i = P significa que todas as FV geradas foram testadas ao menos
        uma vez, daí inicia a seleção aleatória de FVs }
      if i < P then
      begin
        // ** Aqui UCE será também utilizado como critério "fixo" da vez **//
        INC(VetComb[UCE]);

        { Se já tivermos testado todas as funções valor do critério UCE,
          passamos para o próximo }
        if VetComb[UCE] > Lim[UCE] then
          for J := UCE - 1 Downto 0 do
            if TIWUserSession(WebApplication.Data).VtrcritBisec[J] then
            begin
              UCE := J;
              // ** Leva para a FV 1 do critério UCE **//
              VetComb[UCE] := 1;
              break;
            end;

        // ** Se a função for "inválida" segue para a próxima instância **//
        if fValorIntra[UCE, 0, VetComb[UCE]] = -1 then
          continue;
      end
      else
        // ** Nenhum critério está fixado **//
        UCE := -1;

      INC(ninst);
      // ** Gerando a combinação de FV a serem consideradas na instância I **//
      J := 0;
      Z := 0;
      While J < length(NumFV) do
        { A fv é aleatoriamente selecionada para os critérios "não fixos" que foram
          elicitados }
        if (J <> UCE) and (VtrcritBisec[J]) then
        begin
          // ** Gera um valor aleatório entre 1 e o número de FVs do crit J **//
          if UCE = -1 then

            T := 1 + Round(Random * (NumFV[J] - 1))
          else
            T := 1;

          // ** Se a função não for "inválida" a mesma é armazenada **//
          if fValorIntra[J, 0, T] <> -1 then
          begin
            VetComb[J] := T;
            // ** Passa pro próximo Crit **//
            INC(J);
            Z := 0;
          end
          else
          begin
            // ** Caso a FV seja inválida, contabiliza **//
            INC(Z);
            { Se o número de FVs inválidas for igual ao número de FVs hipotéticas, o crit só
              pode assumir a FV original }
            if Z = NumFV[J] - 1 then
            begin
              VetComb[J] := 1;
              // ** Passa pro próximo Crit **//
              INC(J);
              Z := 0;
            end; // z

          end; // FV inválida
        end // Critério elicitado e <> UCE
        else
          // ** Ignora o critério não elicitado **//
          INC(J);

      // ** Normalização das consequências e do espaço de pesos propriamente dito **//
      for J := 0 to Numcrit - 1 do
        if VtrcritBisec[J] then
          for Z := 0 to NumAlt - 1 do
            TIWUserSession(WebApplication.Data).MConsN[Z, J] := transformacao
              (ConsMatrix[Z, J], J, VetComb[J], false);

      { Para o espaço de pesos, devemos considerar que o mesmo se encontra em termos
        de v(x), de forma que precisaremos transformá-lo para x, para depois recalculá-lo
        considerando as fv selecionadas a cada instância }
      Setlength(LimMinASI, Numcrit - 1);
      Setlength(LimMaxASI, Numcrit - 1);

      // ** Caso perguntas para crit não adjascentes tenham sido realizadas **//
      if length(PergNAdj) > 0 then
      begin
        Setlength(MLimMinASI, Numcrit, Numcrit);
        Setlength(MLimMaxASI, Numcrit, Numcrit);
      end;

      for J := 0 to Numcrit - 2 do
      begin
        // ** Se os critérios forem indiferentes, não é preciso calcular **//
        { É preciso saber o critério representante da relação para possibilitar
          as transformações }
        IndEA := TIWUserSession(WebApplication.Data).vtrordem[Representantes[TIWUserSession(WebApplication.Data)
          .vtrposicoes[J] - 1]];

        // ** Se o critério não tiver sido elicitado, deve-se manter o mesmo espaço de pesos **//
        if not VtrcritBisec[IndEA] then
        begin

          // ** Pegunta da Heurística **//
          if J = 0 then
            WDPHEURAS := TIWUserSession(WebApplication.Data).WDPHEUR;

          TIWUserSession(WebApplication.Data).LimMinASI[J] := LimMin[J];
          TIWUserSession(WebApplication.Data).LimMaxASI[J] := LimMax[J];

          // ** Caso perguntas para crit não adjascentes tenham sido realizadas **//
          if length(TIWUserSession(WebApplication.Data).PergNAdj) > 0 then
          begin
            for Z := J + 1 to Numcrit - 1 do
            begin
              // ** Mantém os limites odiginais **//
              TIWUserSession(WebApplication.Data).MLimMinASI[J, Z] :=
                TIWUserSession(WebApplication.Data).MLimMin[J, Z];
              TIWUserSession(WebApplication.Data).MLimMaxASI[J, Z] :=
                TIWUserSession(WebApplication.Data).MLimMax[J, Z];
            end; // z
          end; // length

          // ** Segue para o próximo limite **//
          continue;
        end; // crit não elicitado

        // ** Pegunta da Heurística **//
        if J = 0 then
        begin
          AuxV1 := transformacao(TIWUserSession(WebApplication.Data).WDPHEUR,
            IndEA, 1, True);

          TIWUserSession(WebApplication.Data).WDPHEURAS := transformacao
            (AuxV1, IndEA, VetComb[IndEA], false); ;
        end;

        // ** Calcula a interpolação inversa considerando a FV original **//
        AuxV1 := transformacao(TIWUserSession(WebApplication.Data).LimMin[J],
          IndEA, 1, True);
        AuxV2 := transformacao(TIWUserSession(WebApplication.Data).LimMax[J],
          IndEA, 1, True);

        // ** Calcula a interpolação considerando a FV selecionada **//
        TIWUserSession(WebApplication.Data).LimMinASI[J] := transformacao
          (AuxV1, IndEA, VetComb[IndEA], false);
        TIWUserSession(WebApplication.Data).LimMaxASI[J] := transformacao
          (AuxV2, IndEA, VetComb[IndEA], false);

        // ** Caso perguntas para crit não adjascentes tenham sido realizadas **//
        if length(TIWUserSession(WebApplication.Data).PergNAdj) > 0 then
        begin
          for Z := J + 1 to Numcrit - 1 do
          begin
            // ** Calcula a interpolação inversa considerando a FV original **//
            AuxV1 := transformacao(MLimMin[J, Z], IndEA, 1, True);
            AuxV2 := transformacao(MLimMax[J, Z], IndEA, 1, True);

            // ** Calcula a interpolação considerando a FV selecionada **//
            TIWUserSession(WebApplication.Data).MLimMinASI[J, Z] :=
              transformacao(AuxV1, IndEA, VetComb[IndEA], false);
            TIWUserSession(WebApplication.Data).MLimMaxASI[J, Z] :=
              transformacao(AuxV2, IndEA, VetComb[IndEA], false);
          end;
        end;
      end; // for j

      if Problematica = 0 then
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
        UnfeasibleR := false;
        /// / Chama a PL com as novas consequências ////
        PLEAS;

        if UnfeasibleR then
        begin
          // ** Rejeita o resultado obtido e segue para a próxima instância **//
          Dec(ninst);
          continue;
        end;

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
          for Z := 0 to nsol - 1 do
            if VetPOA[Z] = VetSol[Z] then
            begin
              INC(FInc[VetPOA[Z]]);
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
          for Z := 0 to nsol - 1 do
            for J := 0 to NDA - 1 do
              if VetSol[Z] = VetPOA[J] then
              begin
                INC(FInc[VetSol[Z]]);
              end
              else
                INC(NPOA[VetSol[Z]]);

          for Z := 0 to NumAlt - 1 do
            if NPOA[Z] = NDA then
              AInc[Z] := True;

          /// //// Verifica se alguma alternativa foi Excluída ////////
          for Z := 0 to NDA - 1 do
            for J := 0 to nsol - 1 do
              if VetPOA[Z] <> VetSol[J] then
              begin
                Aexc[VetPOA[Z]] := True;
              end
              else
              begin
                Aexc[VetPOA[Z]] := false;
                break;
              end;

          for Z := 0 to NumAlt - 1 do
          begin
            if AInc[Z] then
            begin
              INC(FInc[Z]);
            end; // Se a alt foi incluída

            if Aexc[Z] then
            begin
              INC(Fexc[Z]);
            end; // Se a alt foi excluída
          end; // I

        end; // AuxC <> NDA

        // adicionando Finc e Fexc a variaveis globais
        for Z := 0 to NumAlt - 1 do
        begin
          // if True then

          TIWUserSession(WebApplication.Data).AuxFInc[Z] := FInc[Z];
          TIWUserSession(WebApplication.Data).AuxFexc[Z] := Fexc[Z];
        end;
      end;
      if Problematica = 1 then
      begin
        for Z := 0 to Rlevels - 1 do
          level[Z] := false; // Não sabemos ainda se os níveis mudaram

        UnfeasibleR := false;
        /// / Chama a PL com as novas consequências ////
        if ClpSolve then
          LPsOAS
        else
          PLOAS;
        auxc := 0;

        if UnfeasibleR then
        begin
          // ** Rejeita o resultado obtido e segue para a próxima instância **//
          Dec(ninst);
          continue;
        end;

        // adicionado por mj codigo para armazenar o número de vezes que a alternativa ///
        // muda de posição % change)//

        for J := 0 to NumAlt - 1 do
        begin
          if TIWUserSession(WebApplication.Data).VAltPositions[J]
            <> TIWUserSession(WebApplication.Data).VAltPositionsO[J] then
          begin
            TIWUserSession(WebApplication.Data).vtrASordchange[J] :=
              TIWUserSession(WebApplication.Data).vtrASordchange[J] + 1;
          end;
        end;

        // pegando a matriz que vai armazenar a quantidade de vezes que a alternativa apareceu //
        // em determinada posição do rank//
        Setlength(Marizpercent, NumAlt, NumLevels);
        for Z := 0 to NumAlt - 1 do
        begin
          for J := 0 to NumLevels - 1 do
          begin
            if TIWUserSession(WebApplication.Data).VAltPositions[Z] = J + 1 then
            begin
              TIWUserSession(WebApplication.Data).Marizpercent[Z, J] :=
                Marizpercent[Z, J] + 1;
            end;
          end;

        end;

        /// / Verifica se o Ranking continua igual ao Original /////
        // for i := 0 to NumAlt - 1 do
        for J := 0 to NumAlt - 1 do
          if VAltPositions[J] <> VAltPositionsO[J] then
          begin
            // Caso uma alternativa já tenha uma posição diferenciada, para-se o
            // processo e incrementa FSOL[1]
            INC(FSol[1]);
            break;
          end
          else
            INC(auxc);

        /// / Somente se todas as alternativas mantiverem suas posições, incrementa-se
        /// FSol[0]
        if auxc = NumAlt then
        begin
          INC(FSol[0]);
        end;
      end;
    end; // Laço das instâncias da análise

    if TIWUserSession(WebApplication.Data).ninst <= 0 then
    begin
      WebApplication.ShowMessage(
        'It was not possible to present the results because any of the instances generated feasible solutions.');
      TIWUserSession(WebApplication.Data).Finish := false;
      TIWUserSession(WebApplication.Data).Start := false;
      IWTimer1.Enabled := false;
      IWRgnAS.Hide;
      IWRgnfinaltabela.Show;
      Exit;
    end; ;

    // ** Limpando os dados contidos nas séries ** //
    chrtsensitivity.series[0].Clear;
    chrtsensitivity.series[1].Clear;

    // ** Armazena a informação da mudança do resultado original **//
    auxfsol[0] := FSol[0];
    auxfsol[1] := FSol[1];

    if Problematica = 0 then
    begin
      // ** Adiciona as alternativas originais ao gráfico ** //
      for Z := 0 to NDA - 1 do
      begin
        chrtsensitivity.series[0].AddXY
          (VetPOA[Z], (100 - (Fexc[VetPOA[Z]] / ninst) * 100), FormatFloat
            ('0.00', (100 - (Fexc[VetPOA[Z]] / ninst) * 100)) + '%');

        // ** Coloca o nome da alt no eixo x ** //
        chrtsensitivity.BottomAxis.Items.Add(VetPOA[Z], AltSiglas[VetPOA[Z]]);
      end;
      if TIWUserSession(WebApplication.Data).idioma = 1 then
      begin
        grddeviation.Cell[0, 0].Text := 'Subconjunto original de A.P.O';
        grddeviation.Cell[0, 1].Text := 'Número de Alternativas';
        grddeviation.Cell[0, 2].Text := '% Subconjunto original';
        grddeviation.Cell[0, 3].Text := '% Mudança';
        grdaltinout.Cell[0, 0].Text :=
          'Alternativas Incluídas(Inc)/Excluídas(Exc)';
        grdaltinout.Cell[0, 1].Text := '% Ocorrência';
      end
      else
      begin
        grddeviation.Cell[0, 0].Text := 'Original Subset of P.O.A';
        grddeviation.Cell[0, 1].Text := 'Number of Alternatives';
        grddeviation.Cell[0, 2].Text := '% Original Subset';
        grddeviation.Cell[0, 3].Text := '% Change';
        grdaltinout.Cell[0, 0].Text :=
          'Included(Inc)/Excluded(Exc) Alternative';
        grdaltinout.Cell[0, 1].Text := '% Ocurrence';
      end;

      // ** Escreve o conjunto das POAS no Grid ** //
      grddeviation.Cell[1, 0].Text := '{';
      for Z := 0 to NDA - 1 do
      begin
        grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + AltSiglas
          [VetPOA[Z]];
        if Z < (NDA - 1) then
          grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + ', '
        else
          grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + '}';
      end;
      grddeviation.Cell[1, 1].Text := IntToStr(NumAlt);
      grddeviation.Cell[1, 2].Text := FormatFloat
        ('0.00', (FSol[0] / ninst) * 100);
      grddeviation.Cell[1, 3].Text := FormatFloat
        ('0.00', (FSol[1] / ninst) * 100);

      // grdaltinout.Cell[0, 1].Text := 'Profile(';
      k := 0;

      k := 1;
      for Z := 0 to NumAlt - 1 do
      begin
        if (Fexc[Z] > 0) or (FInc[Z] > 0) then
        // ** Significa que há ao menos um perfil para o qual a alt i é inc ou exc do conjunto solução ** //
        begin
          // ** Se a Alternativa foi excluída do conjunto original ** //
          if Fexc[Z] > 0 then
          begin
            INC(k);
            grdaltinout.RowCount := k;
            grdaltinout.Cell[k - 1, 0].Text := AltSiglas[Z] + '(Exc)';
            grdaltinout.Cell[k - 1, 1].Text := FormatFloat
              ('0.00', ((Fexc[Z] / ninst) * 100));
          end;

          // ** Se a Alternativa foi incluída no conjunto original ** //
          for G := 0 to NDA - 1 do
            if Z = VetPOA[G] then
              POA := True;

          if (FInc[Z] > 0) then
          begin
            if not POA then
            begin
              INC(k);
              grdaltinout.RowCount := k;
              grdaltinout.Cell[k - 1, 0].Text := AltSiglas[Z] + '(Inc)';
              grdaltinout.Cell[k - 1, 1].Text := FormatFloat
                ('0.00', (FInc[Z] / ninst) * 100);

              // ** Adiciona as alternativas incluídas ao gráfico ** //
              chrtsensitivity.series[1].AddXY
                (Z, ((FInc[Z] / TIWUserSession(WebApplication.Data).ninst)
                    * 100), FormatFloat('0.00', (FInc[Z] / ninst) * 100) + '%');

              // ** Coloca o nome da alt no eixo x ** //
              chrtsensitivity.BottomAxis.Items.Add(Z, AltSiglas[Z]);
            end;

          end;
          POA := false;
        end; // PALT > 0
      end; // FOR Z -> NUMALT

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

    if Problematica = 1 then
    begin
      IWLabel63.Visible := false;
      cmbxgroupindex.Visible := True;
      // grddor.Visible:=false;

      // codigo adicionado de mj para grafico da AS
      // limpa o que já existir
      ChartASord.BottomAxis.Visible := True; // torna o eixo x visível
      ChartASord.SeriesList.ClearValues;
      ChartASord.Title.Visible := false;
      // limpar as séries se ja houver algum dado
      ChartASord.LeftAxis.Items.Clear; // limpando os valores dos eixos para não se sobrepor

      // ** Coloca o nome da alt no eixo x ** //
      for i := 0 to NumAlt - 1 do
      begin
        ChartASord.BottomAxis.Items.Add(i, AltSiglas[i]);

        // plota o grafico
        ChartASord.series[0].AddXY(i, ((1 - (vtrASordchange[i] / ninst)) * 100)
            , FormatFloat('0.00', (1 - (vtrASordchange[i] / ninst)) * 100)
            + '%');
        ChartASord.series[1].AddXY(i, ((vtrASordchange[i] / ninst) * 100),
          FormatFloat('0.00', (vtrASordchange[i] / ninst) * 100) + '%');
      end;
      { ChartASord.BottomAxis.Items.Add(1,
        ' %of times the original rank was modified'); }

      IWImmgord.left := 48;
      IWImmgord.Top := 201;
     IWImmgord.Width := 819;
      IWImmgord.Height := 237;

      IWImmgord.Picture.Bitmap.Assign
        (ChartASord.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImmgord.Width,
            IWImmgord.Height)));
      imagemax.Picture.Bitmap.Assign
        (ChartASord.TeeCreateBitmap(clWebPURPLE, rect(0, 0, imagemax.Width,
            imagemax.Height)));

      // passandoparaglobal
      TIWUserSession(WebApplication.Data).auxrchange := FSol[1];

      /// ///////////////////////////////////////////////////////////////////////
      /// Escrevendo o primeiro grid solicitado pela professora /////
      IWGriddeviation.RowCount := 1;
      IWGriddeviation.ColumnCount := 4;
      if TIWUserSession(WebApplication.Data).idioma = 1 then
      begin
        IWGriddeviation.Cell[0, 0].Text := 'Nível';
        IWGriddeviation.Cell[0, 1].Text := 'Alternativas';
        IWGriddeviation.Cell[0, 2].Text := '% Posição Original';
        IWGriddeviation.Cell[0, 3].Text := '% Mudança';
        IWGridpercent.Cell[0, 0].Text := 'Alternativa/Posição';
      end
      else
      begin
        IWGriddeviation.Cell[0, 0].Text := 'Position in the rank';
        IWGriddeviation.Cell[0, 1].Text := 'Alternatives';
        IWGriddeviation.Cell[0, 2].Text := '% Original Position';
        IWGriddeviation.Cell[0, 3].Text := '% Change';
        IWGridpercent.Cell[0, 0].Text := 'Alternative/Position';
      end;

      // codigo mj adicionando as posições do rank e o nome das alternativas//
      k := 1;
      for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
      begin
        for J := 0 to length(VAltPositionsO) - 1 do
        begin
          if VAltPositionsO[J] = i + 1 then
          begin
            INC(k);
            IWGriddeviation.RowCount := k;
            IWGriddeviation.Cell[k - 1, 0].Text := IntToStr(i + 1);
            IWGriddeviation.Cell[k - 1, 1].Text := AltSiglas[J];
          end;
        end;
      end;

      // codigo mj adicionando o % mudança e o %do original  de cada alternativa
      k := 1;
      for i := 0 to NumAlt - 1 do
      begin
        for J := 0 to length(VAltPositionsO) - 1 do
        begin
          if TIWUserSession(WebApplication.Data).VAltPositionsO[J] = i + 1 then
          begin
            INC(k);
            perchange := 0;
            perchange :=
              ((TIWUserSession(WebApplication.Data).vtrASordchange[J] / ninst)
                * 100);
            percigual := 0;
            percigual := (1 - (vtrASordchange[J] / ninst)) * 100;
            IWGriddeviation.Cell[k - 1, 3].Text := FormatFloat
              ('0.00', perchange) + '%';
            IWGriddeviation.Cell[k - 1, 2].Text := FormatFloat
              ('0.00', percigual) + '%';
          end;
        end;
      end;

      /// Adicionando informações no segundo grid pedido pela professora//
      { IWLabel87.caption :=
        'Percentage of times that the alternative was ordered in the position:'; }

      // codigo de mj adicionando o nome das alternativas no grid
      k := 1;
      for i := 0 to NumAlt - 1 do
      begin
        INC(k);
        IWGridpercent.RowCount := k;
        IWGridpercent.Cell[k - 1, 0].Text := AltSiglas[i];
      end;

      k := 1;
      // codigo mj adicionando o número de níveis no grid
      for i := 0 to TIWUserSession(WebApplication.Data).NumLevels - 1 do
      begin
        INC(k);
        IWGridpercent.ColumnCount := k;
        IWGridpercent.Cell[0, k - 1].Text := IntToStr(i + 1);
      end;

      // codigo mj para adicionar o o percentual de permanencia de uma determinada alternativa em uma posição

      Setlength(auxmarizpercent, NumAlt, NumLevels);
      for i := 0 to NumAlt - 1 do
      begin
        for J := 0 to NumLevels - 1 do
        begin
          if ninst = 0 then
            auxmarizpercent[i, J] := 0
          else
            TIWUserSession(WebApplication.Data).auxmarizpercent[i, J] := ((TIWUserSession(WebApplication.Data).Marizpercent[i, J]) / (TIWUserSession(WebApplication.Data).ninst)) * 100;
          IWGridpercent.Cell[i + 1, J + 1].Text := FormatFloat
            ('0.00', auxmarizpercent[i, J]) + '%';
        end;
      end;

    end; // PROBLEMATICA = 1
    // Limpar nome das alternativas do eixo X
    chrtsensitivity.BottomAxis.Items.Clear;
    ChartASord.BottomAxis.Items.Clear;
    TIWUserSession(WebApplication.Data).Finish := True;

  end; // With
end;

procedure TfrmResultados.delete_grid_max_diff;
var
  i: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to length(vetregions) - 1 do
    begin
      TIWUserSession(WebApplication.Data).vetMatDiff[i].Destroy;
      TIWUserSession(WebApplication.Data).vetLabelsDm[i].Destroy;
    end;
    Setlength(TIWUserSession(WebApplication.Data).vetregions, 0);
    Setlength(vetMatDiff, 0);
    Setlength(vetLabelsDm, 0);
  end;

end;

procedure TfrmResultados.gerar_combinacoes;
var
  ncomb, numci, i, J, k, Z: integer;
  VetComb, vetOp: array of integer;
  RPalt, Numerador: integer; // número de alternativas na posição do ranking selecionada
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    // ** Limpa a matriz de combinações **//
    Setlength(Matcombination, 0, 0);
    RPalt := length(TIWUserSession(WebApplication.Data)
        .MatrizGrupo[TIWUserSession(WebApplication.Data).IndiceCBHE]) - 1;
    // ** Gera as combinações que contêm 2 alternativas (elementos) **//
    for i := 2 to 2 do
    begin

      Numerador := 1;
      for Z := (RPalt - i + 1) to RPalt do
        Numerador := Numerador * Z;

      numci := Fatorial(20);
      // **Calcula o número de combinações I em I obtidas de um universo de RPalt alternativas **//
      numci := Round(Numerador / (Fatorial(i)));

      // ** Seta a dimensão do Vetor Auxiliar que contém o índice máximo que cada posição do vetor op pode assumir **//
      Setlength(VetComb, i);
      // ** Vetor auxiliar que indica quais os índices das alternativas serão incluídos em cada subset **//
      Setlength(vetOp, i);

      for J := 0 to i - 1 do
      begin
        VetComb[i - 1 - J] := RPalt - 1 - J;
        // ** Escreve a primeira combinação possível **//
        vetOp[J] := J;
      end;

      k := 0;
      vetOp[i - 1] := vetOp[i - 1] - 1;
      // ** Gera todas as combinações de I elementos **//
      while k <> numci do
      begin
        // ** Atualiza o VetOp com a próxima combinação possível **//
        for J := i - 1 downto 0 do
        begin
          if vetOp[J] < VetComb[J] then
          begin
            // ** Se o elemento J ainda não tiver atingido o limite superior do mesmo,
            // ** Apenas é incrementado e não é preciso verificar os demais elemento **//
            INC(vetOp[J]);
            // ** Atualiza todos os elemntos posteriores **//
            // ** Garante que não haverá combinações repetidas com apenas amudança do elemento de posição **//
            for Z := J + 1 to i - 1 do
              vetOp[Z] := vetOp[Z - 1] + 1;
            break;
          end; // if
          { else
            begin
            // ** Caso o elemento já tenha chegado ao seu limite, o mesmo retorna
            // ** ao limite inferior e se verifica o próximo elemento **//
            vetOp[j] := (i - 1) - j;
            end; // else }
        end; // J

        // ** Se o Par ainda estiver incomparável, salva a combinação **//
        if (TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession
            (WebApplication.Data).Ciclo - 1, TIWUserSession(WebApplication.Data)
            .MatrizGrupo[IndiceCBHE, vetOp[0] + 1], MatrizGrupo[TIWUserSession
            (WebApplication.Data).IndiceCBHE, vetOp[1] + 1]] = 0) and
          (ArmazenaParaPar[Ciclo - 1, MatrizGrupo[IndiceCBHE, vetOp[1] + 1],
          MatrizGrupo[IndiceCBHE, vetOp[0] + 1]] = 0) then
        begin
          // ** Adiciona uma linha à matriz de combinações **//
          Setlength(Matcombination, length(Matcombination) + 1);
          // ** Seta a linha da combinação atual com o número de elementos da combinação **//
          Setlength(Matcombination[length(Matcombination) - 1], i);

          // ** Salva a combinação na matriz já levando em conta os índices das alternativas no problema **//
          for J := 0 to i - 1 do
            TIWUserSession(WebApplication.Data).Matcombination
              [length(Matcombination) - 1, J] := TIWUserSession
              (WebApplication.Data).MatrizGrupo[IndiceCBHE, vetOp[J] + 1];
        end;

        // ** Incrementa o número de combinações de I elementos gerada **//
        INC(k);
      end; // While  k
    end; // for i

    LBLNUMCOMB.caption := IntToStr(length(Matcombination));
    if length(Matcombination) = 1 then
    begin
      lnkpresentpairs.Visible := false;
      hlptppairsHE.Visible := false;
    end
    else
    begin
    if lnkfinishpr.Visible = false then
    lnkpresentpairs.Visible := True;
      hlptppairsHE.Visible := True;
    end
  end; // with
end;

procedure TfrmResultados.plotar_max_diff;
var
  i, J, k, l, Z, TT: integer;
  altura, alternatives: integer;
  MD: Real;
  W, B, maisDeUm: integer;
  firstIncompPair: boolean;
begin
  altura := 0;
  W := 0;
  B := 0;
  with TIWUserSession(WebApplication.Data) do
  begin
    TT := 0;
    delete_grid_max_diff;
    rgnMatrizDistancias.Parent := IWRgnfinaltabela;
    rgnMatrizDistancias.left := 3;
    if rgnHolisticaOrd.Visible then
      rgnMatrizDistancias.Parent := RHasse_Holistic;

    for k := 0 to length(TIWUserSession(WebApplication.Data).MatrizGrupo) - 1 do
    begin
      MD := -5;
      firstIncompPair := True; // ** Nenhum par incomparável foi verificado até o momento neste grupo **//
      maisDeUm := 0; // ** Auxilia na identificação de máximas diferenças máximas em cada grupo **//
      // ** Caso só haja uma alternativa no nível, não existe par para exibir a máx diff **//
      if length(MatrizGrupo[k]) = 2 then
        continue
      else
      begin
        // if Length(maxDiff) then

        for i := 1 to length(MatrizGrupo[k]) - 2 do
          for J := i + 1 to length(MatrizGrupo[k]) - 1 do
          begin
            // ** Se não houver relação de dominância entre as alternativas, deve-se plotar a max difd **//
            if TIWUserSession(WebApplication.Data).maxDiff[MatrizGrupo[k, i], MatrizGrupo[k, J]] <> 0 then
            begin
              if firstIncompPair then
              begin
                INC(TT);
                if length(vetMatDiff) = 0 then
                  altura := 35
                else
                begin
                  altura := vetLabelsDm[TT - 2].Top + 30 + alternatives * 20;
                end;

                Setlength(vetMatDiff, TT);
                Setlength(vetLabelsDm, TT);

                if (IWRegion48.Visible) and (not iwrgnHasseDiagram.Visible) then
                begin
                  rgnMatrizDistancias.ZIndex := 10000;
                  rgnMatrizDistancias.left := 904;
                  rgnMatrizDistancias.Top := 498;
                  rgnMatrizDistancias.Width := 321;
                  rgnMatrizDistancias.Height := 246;
                end;

                // ** Cria e posiciona os componentes **//
                // ** Labels **//
                vetLabelsDm[TT - 1] := TIWLabel.Create(self);
                vetLabelsDm[TT - 1].Parent := rgnMatrizDistancias;
                vetLabelsDm[TT - 1].Top := 4 + altura;
                vetLabelsDm[TT - 1].left := 3;
                vetLabelsDm[TT - 1].Font.FontName := 'Verdana';
                vetLabelsDm[TT - 1].Font.Size := 9;
                if idioma = 0 then
                  vetLabelsDm[TT - 1].caption := 'Ranking Position ' + IntToStr
                    (k + 1)
                else
                  vetLabelsDm[TT - 1].caption := 'Nível ' + IntToStr(k + 1);
                // ** Grids **//
                vetMatDiff[TT - 1] := TIWGrid.Create(self);
                vetMatDiff[TT - 1].Parent := rgnMatrizDistancias;
                vetMatDiff[TT - 1].Top := 21 + altura;
                vetMatDiff[TT - 1].left := 3;
                vetMatDiff[TT - 1].Font.FontName := 'Verdana';
                vetMatDiff[TT - 1].Font.Size := 9;
                vetMatDiff[TT - 1].RowCount := length(MatrizGrupo[k]);
                vetMatDiff[TT - 1].ColumnCount := length(MatrizGrupo[k]);
                vetMatDiff[TT - 1].Height := 160;
                vetMatDiff[TT - 1].Width := 346;
                vetMatDiff[TT - 1].caption := '';
                // ** Inicializando o grid com os nomes das alternativas **//
                for l := 1 to length(MatrizGrupo[k]) - 1 do
                begin
                  vetMatDiff[TT - 1].Cell[l, 0].Text := AltSiglas
                    [MatrizGrupo[k, l]];
                  vetMatDiff[TT - 1].Cell[l, 0].Font.Style := [fsbold];
                  vetMatDiff[TT - 1].Cell[0, l].Text := AltSiglas
                    [MatrizGrupo[k, l]];
                  vetMatDiff[TT - 1].Cell[0, l].Font.Style := [fsbold];
                  for Z := 1 to length(MatrizGrupo[k]) - 1 do
                    vetMatDiff[TT - 1].Cell[l, Z].Text := '--';
                end;
                firstIncompPair := false;
                alternatives := length(MatrizGrupo[k]) - 1;
              end; // FirstIncompPair
              vetMatDiff[TT - 1].Cell[i, J].Text := FormatFloat
                ('0.000', maxDiff[MatrizGrupo[k, i], MatrizGrupo[k, J]]);
              vetMatDiff[TT - 1].Cell[J, i].Text := FormatFloat
                ('0.000', maxDiff[MatrizGrupo[k, J], MatrizGrupo[k, i]]);
              if MD < maxDiff[MatrizGrupo[k, i], MatrizGrupo[k, J]] then
              begin
                MD := maxDiff[MatrizGrupo[k, i], MatrizGrupo[k, J]];
                INC(maisDeUm);
                B := i;
                W := J;
              end;
              if MD < maxDiff[MatrizGrupo[k, J], MatrizGrupo[k, i]] then
              begin
                MD := maxDiff[MatrizGrupo[k, J], MatrizGrupo[k, i]];
                INC(maisDeUm);
                B := J;
                W := i;
              end;
            end; // iff maxDiff <> 0
          end; // for j
      end; // else
      if (W + B) > 0 then
      begin
        // ** Sinaliza a maior das máximas diferenças **//
        vetMatDiff[TT - 1].Cell[B, W].BGColor := clMoneyGreen;
        // ** Busca outras máximas diferenças de mesmo valor **//
        if maisDeUm > 1 then
          for l := 0 to length(MatrizGrupo[k]) - 1 do
            for Z := 0 to length(MatrizGrupo[k]) - 1 do
              if vetMatDiff[TT - 1].Cell[l, Z].Text = FormatFloat('0.000', MD)
                then
                vetMatDiff[TT - 1].Cell[l, Z].BGColor := clMoneyGreen;
      end;
    end; // for k

    if length(vetMatDiff) = 0 then
      rgnMatrizDistancias.Hide
      { else
        rgnMatrizDistancias.Height := vetLabelsDm[TT - 1]
        .Top + 55 + alternatives * 20; }
  end; // with
end;

procedure TfrmResultados.pmnbRORAsyncMenuClick(Sender: TObject;
  EventParams: TStringList; AMenuItem: TMenuItem);
begin

end;

// procedure

// CONSTRUIR GRÁFICO AUXILIAR
procedure TfrmResultados.Graficoaux;
var
  Barras: array of TBarSeries;
  y, Z, g, i: integer;
  coresalt, coresalt1: array of Tcolor;
  primeiracor: boolean;
begin
  Setlength(Barras, TIWUserSession(WebApplication.Data).NumAlt);
  Chartaux.ClearChart;
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
    Barras[y] := TBarSeries.Create(self);
    Barras[y].Marks.Visible := false;
    Chartaux.AddSeries(Barras[y]);
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

  Chartaux.View3D := false;
end;

procedure TfrmResultados.grdvariationCheckClick(Sender: TObject; RowIndex,
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

procedure TfrmResultados.Definir_Idioma;
begin

  tbctrlbarHPage0.Title := '';
  case TIWUserSession(WebApplication.Data).idioma of
    // ** English**//
    0:
      begin
        // ** Menus **//
        pmnbHR.caption := 'Help';
        pmnbROR.caption := 'Reset';
        About1.caption := 'About';
        UserGuide1.caption := 'User Guide';
        English1.caption := 'English';
        Portuguese1.caption := 'Portuguese';
        AnalystLogout1.caption := 'Analyst Logout';
        AnalystLogin1.caption := 'Analyst Login';
        restartproblem1.caption := 'Restart problem';
        newproblem1.caption := 'New problem';
        // Logout1.caption := 'Logout';
        InputOutputData1.caption := 'Input/Output Data';
        Summaryofquestionsanswered1.caption := 'Summary of questions answered';
        ETBtn.caption := 'Equivalence Threshold';
        RestartIntra.caption := 'Intra-criteria evaluation';
        Intercriteriaevaluation1.caption := 'Inter-criteria evaluation';
        mnBtnConsequences1.caption := 'Consequences';
        mnBtnValueFunction1.caption := 'Intra-criterion Value Function';
        SensitivityAnalysisReport1.caption := 'Sensitivity Analysis Report';
        Problematic1.caption := 'Problematic';
        Choice1.caption := 'Choice';
        Ranking1.caption := 'Ranking';

        // ** Tela About **//
        lblFMAbout.caption := 'FITradeoff Method';
        lnkcloseabout.caption := 'Close';
        txtAboutS.Lines[0] :=
          'FITradeoff is a Flexible and Interactive Tradeoff elicitation procedure for multicriteria additive models in MAVT scope.';

        // ** Tela Range of scaling constants **//
        lblSCBG.caption := 'Scaling constants boundaries graph';
        lblSCBG.left := 416;
        chrtpesoslim.Title.caption := 'Scaling Constants Range of Values';
        lblGLSC.caption := 'Graph Legend:';
        lblLinesSC.caption := 'Lines:';
        txtLinesSC.Lines[0] :=
          'Represent the maximum and minimum values that the';
        txtLinesSC.Lines[1] :=
          'scaling constant that each criterion could take.';
        lblNoteSC.caption := 'Note:';
        txtNoteSC.Lines[0] :=
          'A valid scaling constants vector has its components values within this interval as long as the sum of those values is equal to one.';
        lblCLSC.caption := 'Criteria Legend:';
        btnSISC.caption := 'Save Image';
        BtnCSC.caption := 'Close';

        // ** Tela de resultados **//
        lblCRFR.caption := 'Current Results';
        lblCRFR.caption := 'Results';
        txtEVHE.Lines[0] := 'Explore the visualization';
        if TIWUserSession(WebApplication.Data).Problematica = 1 then
        txtEVHE.Lines[0] := 'Select a position';
        LblQA.caption := 'Questions Answered:';
        TbCtrlP1.Title := 'Tabular Visualization';
        TbCtrlP0.Title := 'Bar Graph';
        TbCtrlP2.Title := 'Radar Graph';
        TbCtrlP3.Title := 'Bubble Graph';
        TbCtrlP4.Title := 'Hasse Diagram';
        lblHDFR.caption := 'Hasse Diagram';
        lblhassemessage.caption :=
          '*The hasse diagram is being generated, please wait a few seconds.';
        btnSIHDFR.caption := 'Save image';
        btnhasse1.caption := 'Fullscreen';
        btnUHDFR.caption := 'Update';
        btnLHDFR.caption := 'Legend ';
        txtrusfinishing.Lines[0] :=
          'By finishing the elicitation procedure it will not be possible to inform preferences anymore, the results obtained so far will be considered as the final results.';
        txtrusfinishing.Lines[1] :=
          'Are you sure you wish to interrupt the elicitation procedure?';
        btnNoIFR.caption := 'No';
        btnYesIFR.caption := 'Yes';
        lblBGFR.caption := 'Bubble Graph';
        lblCEFR.caption := 'Conceptual Explanations:';
        lblBHCEFR.caption := 'Bubble Height:';
        lblBVFCEFR.caption :=
          'v"(x), value function of consequence x in a ratio scale.';
        txtBCEFR.Lines[0] :=
          '(How much Higher the bubble is, better will be the consequence of the criterion)';
        lblBNFR.caption := 'Note:';
        txtBNFR.Lines[0] :=
          'Value 1 on the chart represents the most desirable outcome, whether it has increasing or decreasing preference and even if it has negative values.';
        txtBNFR.Lines[1] := 'A local scale is used.';
        lblRGFR.caption := 'Radar Graph';
        lblRCEFR.caption := 'Conceptual Explanations:';
        lblRSFR.caption := 'Shape';
        lblRSExpFR.caption :=
          'The shape of the radar chart represents the number of criteria.';
        lblRVFFR.caption :=
          'v"(x), value function of consequence x in a ratio scale.';
        txtRCEFR.Lines[0] :=
          'How much closer the vertex line is, better will be the alternative result value on the criterion.';
        lblRLFR.caption := 'Legend:';
        lblRCOFR.caption := 'Criteria ordered clockwise';
        lblRNFR.caption := 'Note:';
        txtRNFR.Lines[0] :=
          'Value 1 on the chart represents the most desirable outcome, whether it has increasing or decreasing preference and even if it has negative values.';
        txtRNFR.Lines[1] := 'A local scale is used.';
        PmnlblExporting.caption := 'Exporting Options';
        lnkweightsgraph.caption := 'Scaling constants boundaries graph';
        lnkfinalize.caption := 'Finalize decision process';
        lnkrelations.caption := 'Indifference Matrix';
        PmnlSensitivity.caption := 'Sensitivity Analysis';
        lblranking.caption := 'Ranking';
        lbltitle.caption := 'Tabular Visualization';
        lblBGrFR.caption := 'Bar Graph';
        lblBCEFR.caption := 'Conceptual Explanations:';
        lblBBFR.caption := 'Bars:';
        txtBVFFR.Lines[0] :=
          'v"(x), value function of consequence x in a ratio scale';
        lblBrNFR.caption := 'Note:';
        txtBrNFR.Lines[0] :=
          'Value 1 on the chart represents the most desirable outcome, whether it has increasing or decreasing preference and even if it has negative values.';
        txtBrNFR.Lines[1] := 'A local scale is used.';
        lblWEEFR.caption := 'Warning';
        lblConfirmFR.caption := 'Confirm';
        rdbtnEDFR.caption := 'Elicitation by Decomposition';
        rdbtnHEFR.caption := 'Holistic Evaluation';
        lblSOCFR.caption := 'Please, select an option to continue:';
        hlptpSOC.LinesHelp[0] :=
          'You can explore the graphical and tabular visualizations to define dominance relations between alternatives.';
        lblHENFR.caption := 'Note:';
        txtSDAFR.Lines[0] :=
          'You can explore the possibilities for the Holistic Evaluation. Make several combinations of alternatives in an amount that you wish.';
        txtSDAFR.Lines[1] :=
          'Then, if you feel confident, make a preference statement.';
        hlptpExploreHER.LinesHelp.Text := txtSDAFR.Lines.Text;
        hlptppairsHE.LinesHelp.Text :=
          'Allows you to explore the possible pairs of alternatives by using the buttons "Previous" and "Next". You can also store the pairs to analize after the exploration phase.';
        btnUpFR.caption := 'Update';
        txtWHEG2.Lines[0] := '*Select a pair of incomparable alternatives.';
        lblHEG0.caption :=
          'By analyzing this visualization are you confident to perform a holistic evaluation?';
        rdgrpHEG1.Items[0] := 'Yes, I am;';
        rdgrpHEG1.Items[1] :=
          'No, I prefer to go back to elicitation by decomposition';
        hlptpHEA1.LinesHelp[0] :=
          'You can define preference relations between the alternatives through holistic evaluation.';
        lblHESRPFR.caption := 'Select a Raking Position:';
        hlptpHESRPFR.LinesHelp[0] :=
          'The Holistic Evaluation can be performed considering only ranking positions in which there are incomparable alternatives. In case of doubts, check the Hasse Diagram.';
        lblHERSAFR.caption := 'Selected Alternatives:';
        hlptpHESAFR.LinesHelp[0] :=
          'Only alternatives that are incomparable can be Holistically Evaluated. In case of doubts, check the Hasse Diagram.';
        lblHEAFR.caption := 'Action:';
        lblHERSBAFR.caption := 'Select the best alternative:';
        lblHEWFR.caption := 'Why?';
        rdbtnEXp1.caption :=
          'I am not confident about the Holistic Evaluation;';
        rdbtnEXp2.caption :=
          'I just prefer the traditional Elicitation by Decomposition;';
        rdbtnEXp3.caption := 'No Answer.';
        BtnBackHEG1.caption := 'Back';
        lblWHEG1.caption := '*Select at least two alternatives.';
        lblHECSAFR.caption := 'Selected Alternatives:';
        lblHECAFR.caption := 'Action:';
        lblHEG1.caption := 'Select the best alternative';
        rdgrpHEG2.Items[0] := 'Select the best alternative';
        rdgrpHEG2.Items[1] := 'Exclude the worst one';
        lblHECAltFR.caption := 'Alternative:';
        BtnCancelHEG1.caption := 'Cancel';
        lblstepwarning.caption := 'Step 1:';
        txtstepswarning.Lines[0] :=
          'Use the Hasse Diagram or the Tabular visualization to define a ranking position to perform the Holistic Evaluation.';
        CmbxHE.NoSelectionText := '-- Select a Ranking Position --';
        btnclose.caption := 'Close';
        lbllegind.caption := 'Legend';
        HLPTPmAXdIF.LinesHelp.Text :=
          'The table(s) presents how much the overall value of the alternative in the line can overcome the overall value'
          + ' of the alternative in the column with current weight space.';

        // ** Se não puder continuar a decomposição **//
        if TIWUserSession(WebApplication.Data).Sol = 10 then
        begin
          rgnHEQ0.left := 900;
          rgnHEQ0.Width := 319;
          rgnHEQ0.Top := 334;
          rgnHEQ0.Height := 214;
          lblSOCFR.Font.Size := 10;
          lblSOCFR.caption := 'You may perform holistic assessments:';
          lblSOCFR.left := 11;
          ImgHE.left := 82;
          rdbtnHEFR.left := 80;
          btnokhe0.left := 254;
          rdbtnEDFR.Visible := false;
          imgEbD.Visible := false;
          hlptpSOC.Top := 17;
          hlptpSOC.left := 302;

          ImgHE.Top := 50;
          rdbtnHEFR.Top := 167;
          btnokhe0.Top := 181;

          if (TIWUserSession(WebApplication.Data).Problematica = 1) then
          begin
          TbCtrlvisualizations.Width := 860;
          rgntable.Width := 856;
          lnksensitanalysis.left := 690;
          lnkfinalize.left := 580;
          lnkweightsgraph.left := 192;

          with UserSession.ZQuery1 do
          begin
          sql.Text := 'UPDATE current_stage SET solinter ="' + '10' + '" WHERE id_problem="' +
          (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
          ExecSQL;
          end;

          end;

          btnLHDFR.left := 721;
          btnUHDFR.left := 606;
          btnhasse1.left := 495;
          btnSIHDFR.left := 380;
          lblHDFR.left := 388;
          IWRegion48.Width := 840;

          grdchoosepoa.Width := 814;
          lblnQA.left := 801;
          LblQA.left := 590;

          rgnHEQ0.HorzScrollBar.Visible := false;
          rgnHEQ0.VertScrollBar.Visible := false;
        end;

        // ** Reposicionando objetos **//
        lblConfirmFR.left := 175;

        // ** Tela da Holística de Ordenação **//
        lblholisticranking.caption := 'Holistic Evaluation';
        lblHDHR.caption := 'Hasse Diagram';
        btnhasse2.caption := 'Fullscreen';
        btnUHHER.caption := 'Update';
        txtNHER.Lines[0] :=
          'You can explore the possible pairs of alternatives by using the visualizations';
        lblSRPHER.caption := 'Select a Ranking Position:';
        lblAlt1HER.caption := '1st Alternative:';
        lblAlt2HER.caption := '2nd Alternative:';
        lblWOIBHER.caption := 'Which one is the best?';
        lblBarHER.caption := 'Bar Graph';
        lblTVHER.caption := 'Tabular Visualization';
        lblRadarHER.caption := 'Radar Graph';
        lblBubbleHER.caption := 'Bubble Graph';
        lblBCEFR1.caption := 'Conceptual Explanations:';
        lblBBFR1.caption := 'Bars:';
        txtBVFFR1.Lines[0] :=
          'v"(x), value function of consequence x in a ratio scale';
        lblBrNFR1.caption := 'Note:';
        txtBrNFR1.Lines[0] :=
          'Value 1 on the chart represents the most desirable outcome, whether it has increasing or decreasing preference and even if it has negative values.';
        txtBrNFR1.Lines[1] := 'A local scale is used.';
        lblRCEFR1.caption := 'Conceptual Explanations:';
        lblRSFR1.caption := 'Shape';
        lblRSExpFR1.caption :=
          'The shape of the radar chart represents the number of criteria.';
        lblRVFFR1.caption :=
          'v"(x), value function of consequence x in a ratio scale.';
        txtRCEFR1.Lines[0] :=
          'How much closer the vertex line is, better will be the alternative result value on the criterion.';
        lblRLFR1.caption := 'Legend:';
        lblRCOFR1.caption := 'Criteria ordered clockwise';
        lblRNFR1.caption := 'Note:';
        txtRNFR1.Lines[0] :=
          'Value 1 on the chart represents the most desirable outcome, whether it has increasing or decreasing preference and even if it has negative values.';
        txtRNFR1.Lines[2] := 'A local scale is used.';
        lblCEFR1.caption := 'Conceptual Explanations:';
        lblBHCEFR1.caption := 'Bubble Height:';
        txtBCEFR1.Lines[0] :=
          'v"(x), value function of consequence x in a ratio scale.';
        txtBCEFR1.Lines[1] :=
          '(How much Higher the bubble is, better will be the consequence of the criterion)';
        lblBNFR1.caption := 'Note:';
        txtBNFR1.Lines[0] :=
          'Value 1 on the chart represents the most desirable outcome, whether it has increasing or decreasing preference and even if it has negative values.';
        txtBNFR1.Lines[1] := 'A local scale is used.';
        tbctrlTabH.Title := 'Tabular Visualization';
        tbctrlBarHR.Title := 'Bar Graph';
        tbctrlRadH.Title := 'Radar Graph';
        tbctrlBubH.Title := 'Bubble Graph';
        tbctrlHasseHR.Title := 'Hasse Diagram';
        rdbtnEXp1R.caption :=
          'I am not confident about the Holistic Evaluation;';
        rdbtnEXp2R.caption :=
          'I just prefer the traditional Elicitation by Decomposition;';
        rdbtnEXp3R.caption := 'No Answer.';
        txtWhyRHE.Lines[0] := 'Why don' + lblap.caption +
          't you wish to continue the Holistic Evaluation?';
        btnWRHEC.caption := 'Back';
        lnkfinishpr.caption := 'Hide possible pairs';
        lnkpresentpairs.caption := 'Explore possible pairs';
        lblNPP.caption := 'Number of possible pairs:';
        LBLNUMCOMB.left := 161;
        hlptppairsHE.left := 139;
        lblCP.caption := 'Current Pair: ';
        BtnPrevV.caption := 'Previous';
        btnNxtV.caption := 'Next';
        lnksavefurther.caption := 'Save pair for further analyzis';
        lblSV.caption := 'Saved pairs:';
        chckbxhidec.caption :=
          'Hide the criteria in which the alternatives have the same consequence';
        lblmxdifranking.caption := 'Maximum Differences';
        cmbxSPairs.NoSelectionText := '-- Select a pair to analyze --';

        if rgnHolisticaOrd.Visible then
        begin
          avalia_niveis;
          CmbxHEChange(self);
        end;
        // plotar_max_diff;
        if rgnapresentacaoauto.Visible then
        begin
          lnkfinishpr.Visible := True;
          lnkpresentpairs.Visible := false;
        end
        else
        begin
          lnkfinishpr.Visible := false;
          lnkpresentpairs.Visible := True;
        end;

        // ** Tela Hasse diagram **//
        lblHD.caption := 'Hasse Diagram';
        iwbtnSaveImageDH.caption := 'Save image';
        iwbtnCloseDH.caption := 'Close';
        iwbtnRefreshDH.caption := 'Update';
        btnLegendDH.caption := 'Legend';

        // ** Tela AS de Ordenação **//
        lblRSA.caption := 'Sensitivity Analysis';
        lblLRSA.caption := 'Legend:';
        txtOPRSA.Lines[0] :=
          'Robustness index of the alternative (%).';
        txtCPRSA.Lines[0] :=
          'Change (%).';
        BtnMaxI.caption := 'Maximize Image';
        if not TIWUserSession(WebApplication.Data).AsVF then
          lblVPVRSA.caption := 'Variation percentage values:'
        else
          lblVPVRSA.caption := 'Considered Criteria:';
        lblDORRSA.caption := 'Positions of alternatives in the rankings obtained:';
        lblPAinPRSA.caption :=
          'Frequency in which each alternative appears in each ranking position (%):';
        lblCRSA.caption := 'Close';
        IWButtonexpot.caption := 'Export Results';
        btnclosemax.caption := 'Close';
        {if TIWUserSession(WebApplication.Data).Problematica = 1 then
        begin
          IWGriddeviation.Cell[0, 0].Text := 'Position in the rank';
          IWGriddeviation.Cell[0, 1].Text := 'Alternatives';
          IWGriddeviation.Cell[0, 2].Text := '% Original Position';
          IWGriddeviation.Cell[0, 3].Text := '% Change';
          IWGridpercent.Cell[0, 0].Text := 'Alternative/Position';
        end; }
        // para a ordenação
        IWGrid1.Cell[0, 0].Text := 'Criterion';
        if IWGrid1.ColumnCount > 1 then
        begin
          IWGrid1.Cell[0, 2].Text := 'Upper Bound';
          IWGrid1.Cell[0, 1].Text := 'Lower Bound';
        end;

        // ** Tela As Escolha **//
        lblLCSA.caption := 'Legend:';
        txtAOSCSA.Lines[0] :=
          'Alternative(s) present in the original subset of P.O.A.s';
        TxtAnOSCSA.Lines[0] :=
          'Alternative(s) not present in the original subset of P.O.A.s';
        if not TIWUserSession(WebApplication.Data).AsVF then
          lblVPVCSA.caption := 'Variation percentage values:'
        else
          lblVPVCSA.caption := 'Considered Criteria:';
        lblCSA.caption := 'Sensitivity Analysis';
        btnmximc.caption := 'Maximize Image';
        lblDOSCSA.caption :=
          'Deviation from the original subset of Potentially Optimal Alternatives:';
        lblAIExcCSA.caption :=
          'Alternatives included from the P.O.A subset throughout Sensitivity Analysis iterations:';
        btnback.caption := 'Close';
        btnexpRCSA.caption := 'Export Results';

        if TIWUserSession(WebApplication.Data).Problematica = 0 then
        begin
          grddeviation.Cell[0, 0].Text := 'Alternative';
          grddeviation.Cell[0, 1].Text := '% Included';
          grddeviation.Cell[0, 2].Text := '% Excluded';
          grdaltinout.Cell[0, 0].Text := 'Alternative';
          grdaltinout.Cell[0, 1].Text := '% Ocurrence';
        end;
        // para  escolha
        grdcrivar.Cell[0, 0].Text := 'Criterion';
        if grdcrivar.ColumnCount > 1 then
        begin
          grdcrivar.Cell[0, 2].Text := 'Upper Bound';
          grdcrivar.Cell[0, 1].Text := 'Lower Bound';
        end;

        // ** Tela AS Variação **//
        lblSAV.caption := 'Sensitivity Analysis';
        
        //btninstruc.caption := 'Instructions';
        //btncrisel.caption := 'Selected Criteria';
        lblSOCSAV.caption := 'Please, select below which criteria you want to vary:';
        //lblPercentSAV.caption := 'Variaton of Values:';
        //btnsaveAS.caption := 'Save';
        //btnstartAS.caption := 'Next';
        //btnASwv.caption := 'Without Variation';

        // ** Tela carregamento AS **//
        lblWSAL.caption :=
          'Please wait until the sensitivity analysis is finished.';
        lblWSAL.left := 63;
        txtsesanw.Lines[0] :=
          'Depending on the number of criteria varied and the number of alternatives, this process may take a few minutes.';
        txtsesanw.Lines[2] :=
          'In case of unexpected errors, please contact us via fitradeoff@cdsid.org.br';
        lblPISAL.caption := 'Processing information.';

        // ** Legenda Hasse **//
        btnlegenddhclose.caption := 'Close';

        // ** Trocar limiar **//
        lblWCEQT.caption :=
          'Whould you like to change the equivalence threshold?';
        hptpEQT.LinesHelp[0] :=
          'Maximum difference for the global values of two alternatives, below of which they can be considered indifferent.';

      end;
    // ** Portuguese **//
    1:
      begin
        // ** Menus **//
        pmnbHR.caption := 'Ajuda';
        pmnbROR.caption := 'Opções';
        About1.caption := 'Sobre';
        UserGuide1.caption := 'Guia do Usuário';
        English1.caption := 'Inglês';
        Portuguese1.caption := 'Português';
        AnalystLogout1.caption := 'Sair (Perfil do Analista)';
        AnalystLogin1.caption := 'Sou Analista';
        restartproblem1.caption := 'Reiniciar Problema';
        newproblem1.caption := 'Novo Problema';
        // Logout1.caption := 'Sair';
        InputOutputData1.caption := 'Dados de entrada e resultados';
        Summaryofquestionsanswered1.caption :=
          'Resumo das perguntas respondidas';
        ETBtn.caption := 'Limiar de Equivalência';
        RestartIntra.caption := 'Avaliação Intra-critério';
        Intercriteriaevaluation1.caption := 'Avaliação Inter-critéria';
        mnBtnConsequences1.caption := 'Consequência';
        mnBtnValueFunction1.caption := 'Função Valor Intra-critério';
        SensitivityAnalysisReport1.caption :=
          'Relatório da(s) Análise(s) de Sensibilidade';
        Problematic1.caption := 'Problemática';
        Choice1.caption := 'Escolha';
        Ranking1.caption := 'Ordenação';

        // ** Tela About **//
        lblFMAbout.caption := 'Método FITradeoff';
        lnkcloseabout.caption := 'Fechar';
        txtAboutS.Lines[0] :=
          'O FITradeoff é um método flexível e interativo para elicitação das constantes de escala do modelo aditivo.';

        // ** Tela Range of scaling constants **//
        lblSCBG.caption :=
          'Gráfico dos limites de valores das constantes de escala';
        lblSCBG.left := 307;
        chrtpesoslim.Title.caption :=
          'Intervalo de Valores das Constantes de Escala';
        lblGLSC.caption := 'Legenda do gráfico:';
        lblLinesSC.caption := 'Linhas:';
        txtLinesSC.Lines[0] := 'Representa os valores máximos e mínimos que as';
        txtLinesSC.Lines[1] := 'constantes de escala podem assumir.';
        lblNoteSC.caption := 'Nota:';
        txtNoteSC.Lines[0] :=
          'Um vetor viável de constantes de escala tem seus valores dentro deste intervalo desde que a soma destes valores seja igual a um.';
        lblCLSC.caption := 'Legenda dos critérios:';
        btnSISC.caption := 'Salvar imagem';
        BtnCSC.caption := 'Fechar';

        // ** Tela de resultados **//
        lblCRFR.caption := 'Resultados';
        txtEVHE.Lines[0] := 'Explore a visualização';
        LblQA.caption := 'Perguntas Respondidas:';
        TbCtrlP1.Title := 'Visualização Tabular';
        TbCtrlP0.Title := 'Gráfico de Barras';
        TbCtrlP2.Title := 'Gráfico Radar';
        TbCtrlP3.Title := 'Gráfico de Bolhas';
        TbCtrlP4.Title := 'Diagrama de Hasse';
        lblHDFR.caption := 'Diagrama de Hasse';
        lblhassemessage.caption :=
          '*O diagrama de hasse está sendo gerado, por favor aguarde alguns segundos.';
        btnSIHDFR.caption := 'Salvar';
        btnhasse1.caption := 'Maximizar';
        btnUHDFR.caption := 'Atualizar';
        btnLHDFR.caption := 'Legenda';
        txtrusfinishing.Lines[0] :=
          'Ao finalizar o procedimento de elicitação não será possível informar mais preferências, os resultados parciais serão apresentados.';
        txtrusfinishing.Lines[1] :=
          'Deseja interromper a elicitação de preferências?';
        btnNoIFR.caption := 'Não';
        btnYesIFR.caption := 'Sim';
        lblBGFR.caption := 'Gráfico de Bolhas';
        lblCEFR.caption := 'Explicação Conceitual:';
        lblBHCEFR.caption := 'Altura da bolha:';
        lblBVFCEFR.caption :=
          'v"(x), função valor da consequência x em escala de razão.';
        txtBCEFR.Lines[0] :=
          '(Quanto mais alta a bolha está, melhor a consequência avaliada no critério)';
        lblBNFR.caption := 'Nota:';
        txtBNFR.Lines[0] :=
          'O valor 1 no gráfico representa a consequência mais desejável, seja um critério de maximização, minimização ou mesmo se houverem consequências negativas.';
        txtBNFR.Lines[1] := 'Considera-se uma escala local.';
        lblRGFR.caption := 'Gráfico Radar';
        lblRCEFR.caption := 'Explicação Conceitual:';
        lblRSFR.caption := 'Forma';
        lblRSExpFR.caption :=
          'O formato do gráfico representa o número de critérios.';
        lblRVFFR.caption :=
          'v"(x), função valor da consequência x em escala de razão.';
        txtRCEFR.Lines[0] :=
          'Quanto mais próximo do vértice a linha está, melhor a consequência avaliada no critério.';
        lblRLFR.caption := 'Legenda:';
        lblRCOFR.caption := 'Critérios ordenados no sentido anti-horário.';
        lblRNFR.caption := 'Nota:';
        txtRNFR.Lines[0] :=
          'O valor 1 no gráfico representa a consequência mais desejável, seja um critério de maximização, minimização ou mesmo se houverem consequências negativas.';
        txtRNFR.Lines[2] := 'Considera-se uma escala local.';
        PmnlblExporting.caption := 'Opções de Exportação';
        lnkweightsgraph.caption :=
          'Gráfico dos limites das constantes de escala';
        lnkfinalize.caption := 'Finalizar processo de decisão';
        lnkrelations.caption := 'Matriz de Indiferenças';
        PmnlSensitivity.caption := 'Análise de Sensibilidade';
        lblranking.caption := 'Ordem';
        lbltitle.caption := 'Visualização Tabular';
        lblBGrFR.caption := 'Gráfico de Barras';
        lblBCEFR.caption := 'Explicação Conceitual:';
        lblBBFR.caption := 'Barras:';
        txtBVFFR.Lines[0] :=
          'v"(x), função valor da consequência x em escala de razão.';
        lblBrNFR.caption := 'Nota:';
        txtBrNFR.Lines[0] :=
          'O valor 1 no gráfico representa a consequência mais desejável, seja um critério de maximização, minimização ou mesmo se houverem consequências negativas.';
        txtBrNFR.Lines[1] := 'Considera-se uma escala local.';
        lblWEEFR.caption := 'Aviso';
        lblConfirmFR.caption := 'Confirmação';
        rdbtnEDFR.caption := 'Elicitação por Decomposição';
        rdbtnHEFR.caption := 'Avaliação Holística';
        lblSOCFR.caption := 'Escolha uma opção para continuar:';
        hlptpSOC.LinesHelp[0] :=
          'Você pode explorar visualizações gráficas e tabular para definir relações de dominância entre alternativas. ';
        lblHENFR.caption := 'Nota:';
        txtSDAFR.Lines[0] :=
          'Você pode explorar as diversas possibilidades para a Avaliação Holística. Visualize tantas combinações de alternativas quanto achar necessário.';
        txtSDAFR.Lines[1] :=
          'Em seguida, caso se sinta confiante, faça uma declaração de preferência.';
        hlptpExploreHER.LinesHelp.Text := txtSDAFR.Lines.Text;
        hlptppairsHE.LinesHelp.Text :=
          'Os controles da apresentação permitem a exploração dos possíveis pares de alternativas através dos botões "Anterior" e "Próximo". Você também pode armazenar pares para analisar após a fase de exploração.';
        btnUpFR.caption := 'Atualizar';
        txtWHEG2.Lines[0] := '*Selecione um par de alternativas incomparáveis.';
        lblHEG0.caption :=
          'Analisando essa visualização, você se sente confiante para realizar uma avaliação holística?';
        rdgrpHEG1.Items[0] := 'Sim;';
        rdgrpHEG1.Items[1] :=
          'Não, prefiro voltar à elicitação por decomposição.';
        hlptpHEA1.LinesHelp[0] :=
          'É possível definir relações de preferência entre alternativas através da avaliação holística.';
        lblHESRPFR.caption := 'Selecione um Nível:';
        hlptpHESRPFR.LinesHelp[0] :=
          'A Avaliação Holística só pode ser conduzida considerando níveis em que ainda hajam alternativas incomparáveis. Em caso de dúvidas, verifique o Diagrama de Hasse.';
        lblHERSAFR.caption := 'Alternativas Selecionadas:';
        hlptpHESAFR.LinesHelp[0] :=
          'Somente pares de alternativas incomparáveis podem ser holisticamente avaliadas. Em caso de dúvidas, verifique o Diagrama de Hasse.';
        lblHEAFR.caption := 'Ação:';
        lblHERSBAFR.caption := 'Selecione a melhor alternativa:';
        lblHEWFR.caption := 'Por quê?';
        rdbtnEXp1.caption :=
          'Não me sinto seguro para realizar a Avaliação Holística;';
        rdbtnEXp2.caption :=
          'Apenas prefiro a tradicional Elicitação por Decomposição;';
        rdbtnEXp3.caption := 'Prefiro não dizer.';
        BtnBackHEG1.caption := 'Voltar';
        lblWHEG1.caption := '*Selecione ao menos duas alternativas.';
        lblHECSAFR.caption := 'Alternativas Selecionadas:';
        lblHECAFR.caption := 'Ação:';
        lblHEG1.caption := 'Selecionar a melhor alternativa';
        rdgrpHEG2.Items[0] := 'Selecionar a melhor alternativa';
        rdgrpHEG2.Items[1] := 'Excluir a pior alternativa';
        lblHECAltFR.caption := 'Alternativa:';
        BtnCancelHEG1.caption := 'Cancelar';
        lblstepwarning.caption := 'Passo 1:';
        txtstepswarning.Lines[0] :=
          'Use o Diagrama de Hasse ou a visualização tabular para escolher um nível para avaliar holísticamente.';
        CmbxHE.NoSelectionText := '-- Selecione um Nível --';
        btnclose.caption := 'Fechar';
        lbllegind.caption := 'Legenda';
        HLPTPmAXdIF.LinesHelp.Text :=
          'A(s) tabela(s) apresenta(m) em quanto o valor global da alternativa da linha consegue superar '
          + 'o valor global da alternativa na coluna, considerando o espaço de pesos atual. Se uma relação de dominância já tiver sido definida entre alternativas, suas máximas ' + 'diferenças não serão exibidas.';

        // ** Se não puder continuar a decomposição **//
        if TIWUserSession(WebApplication.Data).Sol = 10 then
        begin
          rgnHEQ0.left := 920;
          lblSOCFR.Font.Size := 10;
          lblSOCFR.caption := 'Você pode realizar avaliações holísticas:';
          ImgHE.left := 102;
          rdbtnHEFR.left := 80;
          btnokhe0.left := 264;
          rdbtnEDFR.Visible := false;
          imgEbD.Visible := false;
          hlptpSOC.Top := 44;
          hlptpSOC.left := 302;
          rgnHEQ0.HorzScrollBar.Visible := false;
          rgnHEQ0.VertScrollBar.Visible := false;


        end;

        // ** Reposicionando objetos **//
        lblConfirmFR.left := 153;

        // ** Tela da Holística de Ordenação **//
        lblholisticranking.caption := 'Avaliação Holística';
        lblHDHR.caption := 'Diagrama de Hasse';
        btnhasse2.caption := 'Maximizar';
        btnUHHER.caption := 'Atualizar';
        txtNHER.Lines[0] :=
          'Você pode explorar as diversas possibilidades de pares de alternativas através das visualizações';
        lblSRPHER.caption := 'Selecione um Nível:';
        lblAlt1HER.caption := '1ª Alternativa:';
        lblAlt2HER.caption := '2ª Alternativa:';
        lblWOIBHER.caption := 'Qual é a melhor?';
        lblBarHER.caption := 'Gráfico de Barras';
        lblTVHER.caption := 'Visualização Tabular';
        lblRadarHER.caption := 'Gráfico Radar';
        lblRadarHER.left := 160;
        lblBubbleHER.caption := 'Gráfico de Bolhas';
        lblBCEFR1.caption := 'Explicação Conceitual:';
        lblBBFR1.caption := 'Barras:';
        txtBVFFR1.Lines[0] :=
          'v"(x), função valor da consequência x em escala de razão.';
        lblBrNFR1.caption := 'Nota:';
        txtBrNFR1.Lines[0] :=
          'O valor 1 no gráfico representa a consequência mais desejável, seja um critério de maximização, minimização ou mesmo se houverem consequências negativas.';
        txtBrNFR1.Lines[1] := 'Considera-se uma escala local.';
        lblRCEFR1.caption := 'Explicação Conceitual:';
        lblRSFR1.caption := 'Forma';
        lblRSExpFR1.caption :=
          'O formato do gráfico representa o número de critérios.';
        lblRVFFR1.caption :=
          'v"(x), função valor da consequência x em escala de razão.';
        txtRCEFR1.Lines[0] :=
          'Quanto mais próximo do vértice a linha está, melhor a consequência avaliada no critério.';
        lblRLFR1.caption := 'Legenda:';
        lblRCOFR1.caption := 'Critérios ordenados no sentido anti-horário.';
        lblRNFR1.caption := 'Nota:';
        txtRNFR1.Lines[0] :=
          'O valor 1 no gráfico representa a consequência mais desejável, seja um critério de maximização, minimização ou mesmo se houverem consequências negativas.';
        txtRNFR1.Lines[2] := 'Considera-se uma escala local.';
        lblCEFR1.caption := 'Explicação Conceitual:';
        lblBHCEFR1.caption := 'Altura da bolha:';
        txtBCEFR1.Lines[0] :=
          'v"(x), função valor da consequência x em escala de razão.';
        txtBCEFR1.Lines[1] :=
          '(Quanto mais alta a bolha está, melhor a consequência avaliada no critério)';
        lblBNFR1.caption := 'Nota:';
        txtBNFR1.Lines[0] :=
          'O valor 1 no gráfico representa a consequência mais desejável, seja um critério de maximização, minimização ou mesmo se houverem consequências negativas.';
        txtBNFR1.Lines[1] := 'Considera-se uma escala local.';
        tbctrlTabH.Title := 'Tabular';
        tbctrlBarHR.Title := 'Barras';
        tbctrlRadH.Title := 'Radar';
        tbctrlBubH.Title := 'Bolhas';
        tbctrlHasseHR.Title := 'Diagrama de Hasse';
        lblHEWFR.caption := 'Por quê?';
        rdbtnEXp1R.caption :=
          'Não me sinto seguro para realizar a Avaliação Holística;';
        rdbtnEXp2R.caption :=
          'Apenas prefiro a tradicional Elicitação por Decomposição;';
        rdbtnEXp3R.caption := 'Prefiro não dizer.';
        txtWhyRHE.Lines[0] :=
          'Por que você não deseja continuar a Avaliação Holística?';
        btnWRHEC.caption := 'Voltar';
        lnkfinishpr.caption := 'Esconder controles';
        lnkpresentpairs.caption := 'Mostrar controles';
        lblNPP.caption := 'Número de pares:';
        LBLNUMCOMB.left := 130;
        hlptppairsHE.left := 130;
        lblCP.caption := 'Par exibido: ';
        BtnPrevV.caption := 'Anterior';
        btnNxtV.caption := 'Próximo';
        lnksavefurther.caption := 'Salvar o par para análise posterior';
        lblSV.caption := 'Pares salvos:';
        chckbxhidec.caption :=
          'Esconder critérios para os quais as alternativas tem a mesma consequência.';
        cmbxSPairs.NoSelectionText := '-- Selecione um par --';
        if rgnHolisticaOrd.Visible then
        begin
          avalia_niveis;
          CmbxHEChange(self);
        end;
        lblmxdifranking.caption := 'Máximas Diferenças';
        // plotar_max_diff;

        if rgnapresentacaoauto.Visible then
        begin
          lnkfinishpr.Visible := True;
          lnkpresentpairs.Visible := false;
        end
        else
        begin
          lnkfinishpr.Visible := false;
          lnkpresentpairs.Visible := True;
        end;

        // ** Tela Hasse diagram **//
        lblHD.caption := 'Diagrama de Hasse';
        iwbtnSaveImageDH.caption := 'Salvar';
        iwbtnCloseDH.caption := 'Fechar';
        iwbtnRefreshDH.caption := 'Atualizar';
        btnLegendDH.caption := 'Legenda';

        // ** Tela AS de Ordenação **//
        lblRSA.caption := 'Análise de Sensibilidade';
        lblLRSA.caption := 'Legenda:';
        txtOPRSA.Lines[0] :=
          '% Nível original: percentual de instâncias simuladas em que a alternativa permanesce no seu nível original';
        txtCPRSA.Lines[0] :=
          '% Mudança: percentual de instâncias em que a alternativa mudou de nível';
        BtnMaxI.caption := 'Maximizar Imagem';
        if not TIWUserSession(WebApplication.Data).AsVF then
          lblVPVRSA.caption := 'Valores percentuais de variação:'
        else
          lblVPVRSA.caption := 'Critérios Considerados:';
        lblDORRSA.caption := 'Desvio em relação a ordem original:';
        lblPAinPRSA.caption :=
          'Percentual de instâncias em que as alternativas foram ordenadas em cada nível:';
        lblCRSA.caption := 'Fechar';
        IWButtonexpot.caption := 'Exportar Resultados';
        btnclosemax.caption := 'Fechar';
        if TIWUserSession(WebApplication.Data).Problematica = 1 then
        begin
          IWGriddeviation.Cell[0, 0].Text := 'Nível';
          IWGriddeviation.Cell[0, 1].Text := 'Alternativas';
          IWGriddeviation.Cell[0, 2].Text := '% Posição Original';
          IWGriddeviation.Cell[0, 3].Text := '% Mudança';
          IWGridpercent.Cell[0, 0].Text := 'Alternativa/Posição';
        end;
        grdcrivar.Cell[0, 0].Text := 'Critério';
        if grdcrivar.ColumnCount > 1 then
        begin
          grdcrivar.Cell[0, 2].Text := 'Limite Superior';
          grdcrivar.Cell[0, 1].Text := 'Limite Inferior';
        end;

        // ** Tela As Escolha **//
        lblLCSA.caption := 'Legenda:';
        txtAOSCSA.Lines[0] :=
          'Alternativa(s) incluída no conjunto original de A.P.O.s';
        TxtAnOSCSA.Lines[0] :=
          'Alternativa(s) não incluída no conjunto original de A.P.O.s';
        if not TIWUserSession(WebApplication.Data).AsVF then
          lblVPVCSA.caption := 'Valores percentuais de variação:'
        else
          lblVPVCSA.caption := 'Critérios Considerados:';
        lblCSA.caption := 'Análise de Sensibilidade';
        btnmximc.caption := 'Maximizar Imagem';
        lblDOSCSA.caption :=
          'Desvio em relação ao conjunto original de potencialmente ótimas:';
        lblAIExcCSA.caption :=
          'Alternativas incluídas e excluídas do conjunto de potencialmente ótimas ao longo das iterações:';
        btnback.caption := 'Fechar';
        btnexpRCSA.caption := 'Exportar Resultados';
        if TIWUserSession(WebApplication.Data).Problematica = 0 then
        begin
          grddeviation.Cell[0, 0].Text := 'Alternativa';
          grddeviation.Cell[0, 1].Text := '% Incluída';
          grddeviation.Cell[0, 2].Text := '% Excluída';
         // grddeviation.Cell[0, 3].Text := '% Mudança';
          grdaltinout.Cell[0, 0].Text :=
            'Alternativas Incluídas(Inc)/Excluídas(Exc)';
          grdaltinout.Cell[0, 1].Text := '% Ocorrência';
        end;

        // para a ordenação
        IWGrid1.Cell[0, 0].Text := 'Criterion';
        if IWGrid1.ColumnCount > 1 then
        begin
          IWGrid1.Cell[0, 2].Text := 'Limite Superior';
          IWGrid1.Cell[0, 1].Text := 'Limite Inferior';
        end;

        // ** Tela AS Variação **//
        lblSAV.caption := 'Análise de Sensibilidade';
        //btninstruc.caption := 'Instruções';
        //btncrisel.caption := 'Critérios Selecionados';
        lblSOCSAV.caption := 'Selecione um critério:';
        //lblPercentSAV.caption := 'Percentuais:';
        //btnsaveAS.caption := 'Salvar';
        btnstartAS.caption := 'Próximo';
        //btnASwv.caption := 'Sem variação';

        // ** Tela carregamento AS **//
        lblWSAL.caption :=
          'Por favor aguarde a finalização da análise de sensibilidade.';
        lblWSAL.left := 35;
        txtsesanw.Lines[0] :=
          'A análise pode levar alguns minutos dependendo do número de critérios variados e número de alternativas do problema.';
        txtsesanw.Lines[1] :=
          'Em caso de erros inesperados contate-nos via fitradeoff@cdsid.org.br';
        lblPISAL.caption := 'Processando os dados.';

        // ** Legenda Hasse **//
        btnlegenddhclose.caption := 'Fechar';

        // ** Trocar limiar **//
        lblWCEQT.caption := 'Desejar alterar o limiar de equivalência?';
        hptpEQT.LinesHelp[0] :=
          'Maior diferença adimissível entre os valores globais de duas alternativas consideradas indiferentes:';
      end;
  end; // case
end; // Procedure

procedure TfrmResultados.CTabela;
var
  a, i, C, J: integer;
  qntPOA, G: integer;
  auxnumcrit: integer;
  AuxVetPOA: array of integer;
  str1, str2: string;
begin

  auxnumcrit := TIWUserSession(WebApplication.Data).Numcrit;

  With TIWUserSession(WebApplication.Data) do
  begin
    grdchoosepoa.RowCount := 1;
    grdchoosepoa.ColumnCount := Numcrit + 3;
    Setlength(AuxVetPOA, length(VtrAlternatives));

    grdchoosepoa.Cell[0, 0].Text := 'Alternatives';
    // **Reescreve os critérios (necessário em ordenação) **//
    for i := 0 to Numcrit - 1 do
    begin
      grdchoosepoa.Cell[0, i + 1].Text := NomeCrit[vtrordem[i]];
      grdchoosepoa.Cell[0, i + 1].Font.Style := [fsbold];
      grdchoosepoa.Cell[0, i + 1].Wrap := True;
    end;

    qntPOA := length(AuxVetPOA);
    G := length(AuxVetPOA);

    for i := 0 to length(VtrAlternatives) - 1 do
    begin
      AuxVetPOA[i] := TIWUserSession(WebApplication.Data).VtrAlternatives[i];
    end;

    if idioma = 1 then
    begin
      str1 := 'Máx Valor Global';
      str2 := 'Min Valor Global';
    end
    else
    begin
      str1 := 'Max Overall Value';
      str2 := 'Min Overall Value';
    end;
    if Problematica = 0 then
    begin
      grdchoosepoa.Cell[0, Numcrit + 1].Text := str1;
      grdchoosepoa.Cell[0, Numcrit + 1].Wrap := True;
      grdchoosepoa.Cell[0, Numcrit + 1].Font.Style := [fsbold];
      grdchoosepoa.Cell[0, Numcrit + 2].Text := str2;
      grdchoosepoa.Cell[0, Numcrit + 2].Wrap := True;
      grdchoosepoa.Cell[0, Numcrit + 2].Font.Style := [fsbold];
    end;

    for a := 0 to qntPOA - 1 do
    begin

      if chcklstbxResults.Selected[a] then // Alternativa selecionada
      begin
        grdchoosepoa.RowCount := grdchoosepoa.RowCount + 1;
        for C := 0 to Numcrit - 1 do
        begin
          TIWUserSession(WebApplication.Data).StrDInd := VtrOrdem[C];
          grdchoosepoa.Cell[grdchoosepoa.RowCount - 1, C + 1].Text := trescasas
            (ConsMatrix[AuxVetPOA[a], vtrordem[C]]);
        end;
        grdchoosepoa.Cell[grdchoosepoa.RowCount - 1, 0].Text := AltSiglas
          [AuxVetPOA[a]];
        grdchoosepoa.Cell[grdchoosepoa.RowCount - 1, 0].Font.Style := [fsbold];
        if Problematica = 0 then
        begin
          grdchoosepoa.Cell[grdchoosepoa.RowCount - 1, Numcrit + 1].Text :=
            FormatFloat('0.00', MatOverallValues[AuxVetPOA[a], 0]);
          grdchoosepoa.Cell[grdchoosepoa.RowCount - 1, Numcrit + 2].Text :=
            FormatFloat('0.00', MatOverallValues[AuxVetPOA[a], 1]);
        end;
      end; // if
    end; // a

    if Problematica = 1 then
      grdchoosepoa.ColumnCount := Numcrit + 1;

  end; // with
end;

procedure TfrmResultados.English1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\User guide FITradeoff web' + '.pdf', True);
end;

// proc

procedure TfrmResultados.preencher_Alt_Holistica;
var
  i, altsel1: integer;
  str1, str2: string;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    altsel1 := 0;
    // **Problemática de escolha **
    if Problematica = 0 then
    begin
      txtHEG1.Lines.Clear;
      CmbxHEAG1.Items.Clear;
      for i := 0 to length(TIWUserSession(WebApplication.Data).VtrAlternatives) - 1 do
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
      btnOKHEG3.Enabled := True;
      lblHEG1.Visible := false;
      if altsel1 > 2 then
        rdgrpHEG2.Visible := True;
      if altsel1 = 2 then
        lblHEG1.Visible := True;
      if altsel1 < 2 then
      begin
        /// / Caso menos de duas alt tenham sido delecionadas, exibe o aviso e bloqueia
        /// a avaliação ////////////////////////////////////////////////////////////
        lblWHEG1.Visible := True;
        btnOKHEG3.Enabled := false;
      end;
    end;

    if Problematica = 1 then
    begin
      txtHEG2.Lines.Clear;
      CmbxHEAG2.Items.Clear;
      for i := 0 to length(VtrAlternatives) - 1 do
        if chcklstbxResults.Selected[i] then
        begin
          INC(altsel1);
          Setlength(IAltAH, altsel1);
          IAltAH[altsel1 - 1] := VtrAlternatives[i];
        end;
      // ** Controle dos componentes da tela com base no número de alt selecionadas **//
      if altsel1 = 2 then
      begin
        txtHEG2.Lines.Clear;
        CmbxHEAG2.Items.Clear;
        if TIWUserSession(WebApplication.Data).idioma = 0 then
        begin
          str1 := ' already dominates ';
          str2 := ' has been considered indifferent to ';
        end
        else
        begin
          str1 := ' já domina ';
          str2 := ' foi considerada indiferente a ';
        end;

        // **Verifica se já há a relação de dominância entre as alternativas **//
        if (ArmazenaParaPar[Ciclo - 1, IAltAH[0], IAltAH[1]] <> 0) or
          (ArmazenaParaPar[Ciclo - 1, IAltAH[1], IAltAH[0]] <> 0) then
        begin
          if ArmazenaParaPar[Ciclo - 1, IAltAH[0], IAltAH[1]] = 1 then
            txtHEG2.Lines.Add
              (AltSiglas[IAltAH[0]] + str1 + AltSiglas[IAltAH[1]] + '.');
          if ArmazenaParaPar[Ciclo - 1, IAltAH[1], IAltAH[0]] = 1 then
            txtHEG2.Lines.Add
              (AltSiglas[IAltAH[1]] + str1 + AltSiglas[IAltAH[0]] + '.');
          if ArmazenaParaPar[Ciclo - 1, IAltAH[0], IAltAH[1]] = 2 then
            txtHEG2.Lines.Add
              (AltSiglas[IAltAH[0]] + str2 + AltSiglas[IAltAH[1]] + '.');
          // WebApplication.ShowMessage('Since the selected alternatives are not incomparable at this point, they cannot be holistically evaluated. Please, check the hasse diagram and select a different pair of alternatives.');
          txtWHEG2.Visible := True;
          Exit;
        end;

        if TIWUserSession(WebApplication.Data).idioma = 1 then
        begin
          lblstepwarning.caption := 'Passo 3:';
          txtstepswarning.Lines[0] :=
            'Por fim, use uma das visualizações para definir a relação de dominância entre as alternativas. É possível visualizar diferentes pares antes de definir a preferência.';
        end
        else
        begin
          lblstepwarning.caption := 'Step 3:';
          txtstepswarning.Lines[0] :=
            'Finally, use one of the visualizations to define a dominance relation between the alternatives. You can visualize different pairs before stating your preference.';
        end;
        // ** Caso as alternativas possam ser avaliadas holisticamente **//
        for i := 0 to altsel1 - 1 do
        begin
          txtHEG2.Lines.Add(AltSiglas[IAltAH[i]]);
          CmbxHEAG2.Items.Add(AltSiglas[IAltAH[i]]);
        end;
        txtWHEG2.Visible := false;
        btnOKHEG4.Enabled := True;
      end;
      if altsel1 <> 2 then
      begin
        /// / Caso menos de duas alt tenham sido delecionadas, exibe o aviso e bloqueia
        /// a avaliação ////////////////////////////////////////////////////////////
        txtWHEG2.Visible := True;
        btnOKHEG4.Enabled := false;
      end;

    end;

  end;
end;

procedure TfrmResultados.avalia_niveis;
var
  ProxNivel: boolean;
  i, J, k: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin

    CmbxHE.Items.Clear;
    CmbxHER.Items.Clear;
    CmbxResults.Items.Clear;
    for i := 0 to length(MatrizGrupo) - 1 do
    begin
      ProxNivel := false;
      for J := 1 to length(TIWUserSession(WebApplication.Data).MatrizGrupo[i])
        - 2 do
      begin
        if ProxNivel then
          break;
        for k := J + 1 to length(MatrizGrupo[i]) - 1 do
          if (TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession
              (WebApplication.Data).Ciclo - 1, MatrizGrupo[i, J],
            MatrizGrupo[i, k]] = 0) and
            (ArmazenaParaPar[Ciclo - 1, MatrizGrupo[i, k], MatrizGrupo[i, J]]
              = 0) then
          begin
            if TIWUserSession(WebApplication.Data).idioma = 1 then
            begin
              CmbxHE.Items.Add('Nível ' + IntToStr(i + 1));
              CmbxHER.Items.Add('Nível ' + IntToStr(i + 1));
              CmbxResults.Items.Add('Nível ' + IntToStr(i + 1));
            end
            else
            begin
              // Preenche o listbx de todas as regiões com os grupos
              CmbxHE.Items.Add('Ranking Position ' + IntToStr(i + 1));
              CmbxHER.Items.Add('Ranking Position ' + IntToStr(i + 1));
              CmbxResults.Items.Add('Ranking Position ' + IntToStr(i + 1));
            end;
            ProxNivel := True;
            break;
          end;
      end;
    end;
    CmbxHE.ItemIndex := 0;
    CmbxHER.ItemIndex := 0;
    CmbxHEChange(self);
  end; // With usersession
end;

Procedure TfrmResultados.equivalence_Test_HE;
var
  i, J, k, Nrest, a, B, C, Z, II, JJ, Numind: integer; // Contadores
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
  Relation: boolean; // ** Indica se existe alguma relação de indiferença entre as alternativas
  MSSG: integer;
  MinVK: Double;
begin
  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  // ** Redundância para garantir que MinVK está correto **//
  if TIWUserSession(WebApplication).MinVK > Power(10, -9) then
    TIWUserSession(WebApplication).MinVK := Power(10, -9);
  MinVK := TIWUserSession(WebApplication).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).Numcrit;
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
        VetAH[J, i] := MATAH[J, i];
    end;
  end;

  for i := 0 to NumPOA - 1 do
  begin
    VetPOA[i] := TIWUserSession(WebApplication.Data).VetPOA[i];
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
            for J := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, J + 1] := MatCons[VetAH[(i - a), Z], Criorder[J]]
                - MatCons[VetAH[i - a, 1], J];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, J + 1] := MatCons[VetAH[(i - a), 1], Criorder[J]]
                - MatCons[VetAH[i - a, Z], J];
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
    for J := 2 to NumDV do
      Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, J]);
  end;
  Setlength(Op, Nrest);
  a := 1;
  Setlength(TIWUserSession(WebApplication.Data).MatIndiferenca, NumPOA, NumPOA);
  for i := 0 to NumPOA - 1 do
    for J := 0 to NumPOA - 1 do
      TIWUserSession(WebApplication.Data).MatIndiferenca[i, J] := '0';

  for II := 0 to NumPOA - 1 do
    for JJ := II + 1 to NumPOA - 1 do
    begin
      Relation := false;
      /// ///////// Verifica a max diferença entre II - JJ////////////////////

      /// / Preenche a função objetivo ///////////////////////////////////////
      for k := 0 to NumCri - 1 do
        FO[k] := TrocaVP(MatCons[VetPOA[II], Criorder[k]] - MatCons[VetPOA[JJ],
          Criorder[k]]);

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
        B := 0;
        for i := 1 to NumCri do
          if ResultVector[i] <> 0 then
            break
          else
            INC(B);

        MAXDI := ResultVector[0];
      end; // If SF

      /// ///////// Verifica a max diferença entre JJ - II////////////////////
      /// / Preenche a função objetivo ///////////////////////////////////////
      for k := 0 to NumCri - 1 do
        FO[k] := TrocaVP(MatCons[VetPOA[JJ], Criorder[k]] - MatCons[VetPOA[II],
          Criorder[k]]);

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
        B := 0;
        for i := 1 to NumCri do
          if ResultVector[i] <> 0 then
            break
          else
            INC(B);

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
        Relation := True;
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
    TfrmResultados.Create(WebApplication).Show;
  end;

end;

procedure TfrmResultados.About1Click(Sender: TObject);
begin
  rgnAbout.Show;
end;

procedure TfrmResultados.alinhamento;
begin
  IWRgnfinaltabela.Align := Talign(5);
  IWRgnresultadografico.Align := Talign(5);
  IWRgnanalisedesensibilidade.Align := Talign(5);
  rgnrulevizualization.Align := Talign(5);
  rgnHolisticaOrd.Align := Talign(5);
  IWRgnReset2.left := 454;
  IWRgnReset2.Top := 154;
  rgnanalystlogin.left := 337;
  rgnanalystlogin.Top := 5;
  rgnsav.left := 337;
  rgnsav.Top := 5;
  IWRgnAS.left := 5;
  IWRgnAS.Top := 5;
  IWRegion17.Align := Talign(5);
  rgnimagemax.Top := 169;
  rgnimagemax.left := 48;
  iwrgnHasseDiagram.Top := 5;
  iwrgnHasseDiagram.left := 5;
  iwrgnLegendDH.Top := 10;
  iwrgnLegendDH.left := 10;
  rgnAbout.left := 250;
  rgnAbout.Top := 180;
  rgnCEQT.Top := 285;
  rgnCEQT.left := 388;

  // **Organiza abas do pagecontrol quando a prob é ordenação **//
  if TIWUserSession(WebApplication.Data).Problematica = 1 then
  begin
    TbCtrlP4.TabOrder := 0;
    TbCtrlP1.TabOrder := 1;
    TbCtrlP0.TabOrder := 2;
    TbCtrlP2.TabOrder := 3;
    TbCtrlP3.TabOrder := 4;
    TbCtrlvisualizations.ActivePage := 0;

    // ** Definindo o idioma ativo **//
    { if TIWUserSession(WebApplication.Data).idioma = 1 then
      imgportuguesClick(self)
      else
      imgInglesClick(self); }
  end;
end;

procedure TfrmResultados.altglobalvaluep;
/// / Equivale a PL de Escolha, porém é rodada apenas para obter o valor global
/// / final de todas as alternativas do problema//////////////////////////////
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
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////

  NumCri := TIWUserSession(WebApplication.Data).Numcrit;
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
        VetAH[J, i] := MATAH[J, i];
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
            for J := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, J + 1] := MatCons[VetAH[(i - a), Z], Criorder[J]]
                - MatCons[VetAH[i - a, 1], J];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, J + 1] := MatCons[VetAH[(i - a), 1], Criorder[J]]
                - MatCons[VetAH[i - a, Z], J];
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

  /// Preenchendo as Restrições referentes à Normalização dos Pesos///
  for J := 0 to NumCri - 1 do
    MatA[a + 1, J + 1] := 1;
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
    k := VetPOA[Z];
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
        TIWUserSession(WebApplication.Data).Altglobalvalue[Z] := ResultVector
          [0];
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

procedure TfrmResultados.PLEscolha;
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

  for i := 0 to NumPOA - 1 do
  begin
    VetPOA[i] := TIWUserSession(WebApplication.Data).VetPOA[i];
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

  NumPOA := 0;

  for Z := 0 to TIWUserSession(WebApplication.Data).NDA - 1 do
  begin
    k := VetPOA[Z];
    B := a;

    /// Preenchendo as Restrições de Potencial Otimalidade ///
    /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
    for i := a to a + TIWUserSession(WebApplication.Data).NDA - 1 do
    begin
      if VetPOA[i - a] <> k then
      begin
        for J := 0 to NumCri - 1 do
          MatA[B + 1, J + 1] := MatCons[VetPOA[i - a], Criorder[J]] - MatCons
            [k, Criorder[J]];
        Op[B] := '<=';
        MatA[B + 1, 0] := -TIWUserSession(WebApplication.Data).Epson;
        INC(Nrest);
        INC(B);
      end;
    end;

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

      Setlength(TIWUserSession(WebApplication.Data).Sconst, NumCri);

      if B <> NumCri then
      begin
        /// Atualização do Vetor de Alternativas Potencialmente Ótimas ///
        INC(NumPOA);
        Setlength(TIWUserSession(WebApplication.Data).VetPOA, NumPOA);
        Setlength(TIWUserSession(WebApplication.Data).VetPesos, NumPOA, NumCri);
        { Setlength(TIWUserSession(WebApplication.Data).VGMax, NumPOA);
          Setlength(TIWUserSession(WebApplication.Data).VGMin, NumPOA); }
        TIWUserSession(WebApplication.Data).VetPOA[NumPOA - 1] := k;
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
      for J := 2 to NumDV do
        Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, J]);
    end;
    Setlength(Op, Nrest);
    a := 1;

    for II := 0 to NumPOA - 1 do
      for JJ := II + 1 to NumPOA - 1 do
      begin
        /// ///////// Verifica a max diferença entre II - JJ////////////////////

        /// / Preenche a função objetivo ///////////////////////////////////////
        for k := 0 to NumCri - 1 do
          FO[k] := TrocaVP
            (MatCons[VetPOA[II], Criorder[k]] - MatCons[VetPOA[JJ], Criorder[k]]
            );

        /// Resolvendo o PPL ///
        SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);

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

          MAXDI[II] := ResultVector[0];
        end; // If SF

        /// ///////// Verifica a max diferença entre JJ - II////////////////////
        /// / Preenche a função objetivo ///////////////////////////////////////
        for k := 0 to NumCri - 1 do
          FO[k] := TrocaVP
            (MatCons[VetPOA[JJ], Criorder[k]] - MatCons[VetPOA[II], Criorder[k]]
            );

        /// Resolvendo o PPL ///
        SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);

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

procedure TfrmResultados.Normaliza;
var
  i, J: integer;
  Zmax, Zmin: Double;
  matriztestesnormal: array of array of Double;
begin
  /// / Esse procedimento realiza a avaliação intracritério para realização da
  /// análise de sensibilidade ///////////////////////////////////////////////
  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(MConsN, NumAlt, Numcrit);

    for J := 0 to Numcrit - 1 do
    begin // alterado em 07.02

      if TIWUserSession(WebApplication.Data).VtrcritBisec[J] = True then
      // criterio passou pela interpolação para transformar escala
      begin
        InterpolacaopontosAS(J);
      end // if VtrcritBisec[J] = true
      else

        for i := 0 to NumAlt - 1 do
        begin
          /// verificar se os criterios DISCRETOS devem seguir uma regra diferente de transformação da escala///
          case TIWUserSession(WebApplication.Data).FTipo[J] of // função que armazena o vetor dos tipos de FO declaradas na planilha

            1: // procedimento realiza a normalização das consequências considerando a função valor linear ///////////////////////
              begin
                // Normalização para os critérios de maximização //////////////////////
                if (TypeOfCrit[J] = 1) or (TypeOfCrit[J] = 3) then
                  TIWUserSession(WebApplication.Data).MConsN[i, J] :=
                    (TIWUserSession(WebApplication.Data).MatrizConsR[i, J] - Min[J]) / (Max[J] - Min[J]);
                /// Normalização para os critérios de minimização //////////////////////
                if (TypeOfCrit[J] = 0) or (TypeOfCrit[J] = 2) then
                  MConsN[i, J] := (TIWUserSession(WebApplication.Data)
                      .MatrizConsR[i, J] - Max[J]) / (-Max[J] + Min[J]);
              end;

            2: // procedimento realiza a normalização das consequencias considerando função valor exponencial
              begin
                // if Min[j] = 0 then
                // Min [j]:= Power (10,-5); //O QUE É POWER??
                Zmin := Exp(parA[J] * Min[J]); // exponencial do parametro A vezes o valor minimo capturado no criterio
                Zmax := Exp(parA[J] * Max[J]); // exponencial do parametro A vezes o valor máximo capturado no criterio

                // normalização para os criterios de maximização//
                if (TypeOfCrit[J] = 1) or (TypeOfCrit[J] = 3) then
                  MConsN[i, J] := (Exp(parA[J] * MatrizConsR[i, J]) - Zmin) /
                    (Zmax - Zmin);
                // normalização para os criterios de minimização//
                if (TypeOfCrit[J] = 0) or (TypeOfCrit[J] = 2) then
                  MConsN[i, J] := (Exp(parA[J] * MatrizConsR[i, J]) - Zmax) /
                    (Zmin - Zmax);
              end;

            3: // procedimento realiza a normalização das consequencias considerando função valor logaritmica
              begin
                // if Min[j] = 0 then
                // Min [j]:= Power (10,-5); //O QUE É POWER??
                Zmin := Ln(parA[J] * Min[J] + 1 - parA[J] * Min[J]);
                Zmax := Ln(parA[J] * Max[J] + 1 - parA[J] * Min[J]);

                if MatrizConsR[i, J] = 0 then
                  MatrizConsR[i, J] := Power(10, -8);
                // normalização para os criterios de maximização///
                if (TypeOfCrit[J] = 1) or (TypeOfCrit[J] = 3) then
                  MConsN[i, J] :=
                    (Ln(parA[J] * MatrizConsR[i, J] + 1 - parA[J] * Min[J])
                      - Zmin) / (Zmax - Zmin);
                // normalização para os criterios de minimização//
                if (TypeOfCrit[J] = 0) or (TypeOfCrit[J] = 2) then
                  MConsN[i, J] :=
                    (Ln(parA[J] * MatrizConsR[i, J] + 1 - parA[J] * Min[J])
                      - Zmax) / (Zmin - Zmax);
              end;

            4: // procedimento realiza a normalização das consequencias considerando função valor logistica (S-Shape)
              begin
                // if Min[j] = 0 then
                // Min[j] := Power(10, -5);
                Zmax := Exp(-parA[J] / Max[J]);
                Zmin := Exp(-parA[J] / Min[J]);

                // normalização para os criterios de maximização///
                if (TypeOfCrit[J] = 1) or (TypeOfCrit[J] = 3) then
                  MConsN[i, J] := (Exp(-parA[J] / MatrizConsR[i, J]) - Zmin) /
                    (Zmax - Zmin);
                // normalização para os criterios de minimização//
                if (TypeOfCrit[J] = 0) or (TypeOfCrit[J] = 2) then
                  MConsN[i, J] := (Exp(-parA[J] / MatrizConsR[i, J]) - Zmax) /
                    (Zmin - Zmax);
              end; // 4
          end; // cases

        end; // i
    end; // j
  end;

  if (TIWUserSession(WebApplication.Data).veto = true) then
  mecanismoveto;


  { setlength(matriztestesnormal, NumAlt, numcrit);
    for i := 0 to NumAlt - 1 do
    for j := 0 to numcrit - 1 do
    matriztestesnormal[i, j] := MconsN[i, j]; }

  // se passou pela avaliação intrac, seja FTipo=0 ou não, interpola os pontos da matriz
  // Setlength (VtrcritBisec, NumCrit);

  { for j := 0 to TIWUserSession(WebApplication.Data).Numcrit-1 do
    begin
    if TIWUserSession(WebApplication.Data).VtrcritBisec[J] = true then
    // criterio passou pela interpolação para transformar escala
    begin
    InterpolacaopontosAS;
    end; //if VtrcritBisec[J] = true
    end; //for j }

end;

procedure TfrmResultados.mecanismoveto;
var
    i, j, k, l, r, z: integer;
    CMinord, Cmaxord: array of real;
    RowResult: Double;
    Maxconsq, Minconsq, auxconseq: double;
    Maxconsq1, Minconsq1: array of double;
    CritCriados: array of Integer; // Vetor para índices dos critérios preenchidos com limites
    UpperLimit, LowerLimit: Double;
    Resultveto, ResultMultiplication: array of array of Double;
    RowProducts: array of Double;
    primeiro, segundo : boolean; //verifica se apenas um limite foi preenchido
  begin
  with TIWUserSession(WebApplication.Data) do
  begin
  sair := false;
  primeiro := false;
  segundo := false;
  ///VETO YARA - CÓDIGO LIMITES

// Inicialize a matriz ResultMatrix com zero
SetLength(Resultveto, NumAlt, NumCrit);
for i := 0 to High(Resultveto) do
begin
  for j := 0 to High(Resultveto[i]) do
  begin
    Resultveto[i][j] := 1; // Inicialize com 1 para todos os critérios
  end;
end;

// Preencha Resultveto considerando os critérios com limites de veto

for i := 0 to High(MatrizConsR) do
begin
for j := 0 to High(Resultveto[i]) do
begin

    if TIWUserSession(WebApplication.Data).CritComLimites[j] then // Verifique se o critério tem limites de veto
    begin
      UpperLimit := TIWUserSession(WebApplication.Data).LimitesMatrix[0, j];
      LowerLimit := TIWUserSession(WebApplication.Data).LimitesMatrix[1, j];

    {if UpperLimit < LowerLimit then
    begin
    WebApplication.ShowMessage('The lower limit must be smaller than the upper limit.');
    sair := true;
    exit;
    end;

 SetLength(MaxConsq1, Numcrit);
 SetLength(MinConsq1, Numcrit);
    /// / Obtendo maiores e menores consequências de cada critério ////
      for r := 0 to NumCrit - 1 do
      begin
        /// Utiliza-se valores grandes/pequenos o suficientes para que sejam /////
        /// substituidos por qualquer valor de consequência //////////////////////
        Maxconsq := -50000000000;
        Minconsq := 50000000000;
        for z := 0 to NumAlt - 1 do
        begin
          auxconseq := ConsMatrix[z, r];
          if Maxconsq < auxconseq then
            Maxconsq := auxconseq;
          if Minconsq > auxconseq then
            Minconsq := auxconseq;
        end;
        MaxConsq1[r] := Maxconsq;
        MinConsq1[r] := Minconsq;
      end;


    if ((MinConsq1[j] < LowerLimit) and (MaxConsq1[j] < UpperLimit)) then
      begin
        WebApplication.ShowMessage('The limits are outside the range of consequences of the criterion.');
        sair := true;
        Exit;
      end;}

  if (MatrizConsR[i, j] >= UpperLimit) and (primeiro = false) and (segundo = false) then
  begin
    if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or
    (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
    begin
        // Valor maior ou igual ao limite superior, atribua 1
        Resultveto[i, j] := 1;
    end;
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
      begin
      Resultveto[i, j] := 0;
      end;
    end;

    if (MatrizConsR[i, j] <= LowerLimit) and (primeiro = false) and (segundo = false) then
    begin
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
      begin
        // Valor menor ou igual ao limite inferior, atribua 0
        Resultveto[i, j] := 0;
      end;
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
      begin
      Resultveto[i, j] := 1;
      end;
    end;

    //Esse caso se aplica quando o usuário informar apenas o limite superior
    if (primeiro = false) and (segundo = true) then
    begin
    if (MatrizConsR[i, j] >= UpperLimit) then
  begin
    if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or
    (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
    begin
        // Valor maior ou igual ao limite superior, atribua 1
        Resultveto[i, j] := 1;
    end;
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
      begin
      Resultveto[i, j] := 0;
      end;
    end;

    if (MatrizConsR[i, j] < LowerLimit) then
    begin
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
      begin
        // Valor menor ou igual ao limite inferior, atribua 0
        Resultveto[i, j] := 0;
      end;
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
      begin
      Resultveto[i, j] := 1;
      end;
    end;
    end;

    //Esse caso se aplica quando o usuário informar apenas o limite inferior
    if (primeiro = true) and (segundo = false) then
    begin
    if (MatrizConsR[i, j] > UpperLimit) then
  begin
    if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or
    (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
    begin
        // Valor maior ou igual ao limite superior, atribua 1
        Resultveto[i, j] := 1;
    end;
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
      begin
      Resultveto[i, j] := 0;
      end;
    end;

    if (MatrizConsR[i, j] <= LowerLimit) then
    begin
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
      begin
        // Valor menor ou igual ao limite inferior, atribua 0
        Resultveto[i, j] := 0;
      end;
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
      begin
      Resultveto[i, j] := 1;
      end;
    end;
    end;

    if (TIWUserSession(WebApplication.Data).MatrizConsR[i, j] < UpperLimit) and (TIWUserSession(WebApplication.Data).MatrizConsR[i, j] > LowerLimit) then
    begin
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
      begin
        // Valor entre os limites, atribua o cálculo desejado
        Resultveto[i, j] := (MatrizConsR[i, j] - LowerLimit) / (UpperLimit - LowerLimit);
      end;
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
      begin
       // Valor entre os limites, atribua o cálculo desejado
       Resultveto[i, j] := (UpperLimit - MatrizConsR[i, j]) / (UpperLimit - LowerLimit);
      end;
    end;

    end;
  end;
end;

  // Inicialize a matriz de resultados das multiplicações das linhas
SetLength(RowProducts, Length(Resultveto));

// Loop pelas linhas da matriz Resultveto
for i := 0 to High(Resultveto) do
begin
  // Inicialize o resultado da multiplicação da linha como 1.0
  RowResult := 1.0;

  // Multiplique os elementos na linha da matriz Resultveto
  for j := 0 to High(Resultveto[i]) do
  begin
    RowResult := RowResult * Resultveto[i][j];
  end;

  // Armazene o resultado da multiplicação da linha na matriz RowProducts
  RowProducts[i] := RowResult;
end;

// Inicialize a matriz de resultados com zeros
  SetLength(ResultMultiplication, Length(RowProducts), Length(MConsN[0]));

  if Problematica = 0 then
  begin
  // Loop pelas linhas das matrizes RowProducts e ConsNorm
  for i := 0 to High(RowProducts) do
  begin
    for j := 0 to High(MConsN[i]) do
    begin
      // Multiplique os valores correspondentes nas linhas das matrizes
       ResultMultiplication[i][j] :=  RowProducts[i] *  TIWUserSession(WebApplication.Data).MConsN[i][j];
       TIWUserSession(WebApplication.Data).MConsN[i][j]:= ResultMultiplication[i][j];
    end;
  end;
  end;

  if Problematica = 1 then
// Loop pelas linhas das matrizes Resultveto e ConsNorm
  for i := 0 to High(Resultveto) do
  begin
  for j := 0 to High(MConsN[i]) do
  begin
    // Multiplique os valores correspondentes nas linhas das matrizes
    if (CritComLimites[j] = true) then
    begin
      ResultMultiplication[i][j] := Resultveto[i][j] * TIWUserSession(WebApplication.Data).MConsN[i][j];
    end
    else
    begin
      // Critério sem limite de veto, atribua 1.0
      ResultMultiplication[i][j] := MConsN[i][j] * 1;
    end;
    TIWUserSession(WebApplication.Data).MConsN[i][j]:= ResultMultiplication[i][j];
  end;
end;
end; //with
end;

procedure TfrmResultados.InterpolacaopontosAS(CriNorm: integer);
/// neste procedimento é realizado o calculo das conseq normalizadas, a partir de interpolação linear
/// utilizando os pontos elicitados
var
  i, J, l, x, q: integer;
  // Ct: integer; // Índice do critério que está sendo transformado por meio da interpolação, na ordem da planilha de input
  AuxMatrizfixa: array of array of Double;
  AuxCons: Double;

begin // procedimento alterado em 11.02.22
  with TIWUserSession(WebApplication.Data) do

  begin
    Setlength(AuxMatrizfixa, length(matrizpontosreais), Numcrit);
    Setlength(AuxConsNorm, NumAlt, Numcrit);
    x := CriNorm;

    for i := 0 to 4 do // alteração em 08.02
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

      if (TypeOfCrit[x] = 1) or (TypeOfCrit[x] = 3) then // maximização
      begin

        If AuxCons = TIWUserSession(WebApplication.Data).BoundMn[x] then
          AuxConsNorm[i, x] := 0;
        If AuxCons = TIWUserSession(WebApplication.Data).BoundMx[x] then
          AuxConsNorm[i, x] := 1

        else // se não forem os extremos, interpola os intermediarios

          if (AuxCons > AuxMatrizfixa[1, x]) and
          (AuxCons <= AuxMatrizfixa[3, x]) then // interpolação 0 e 0,25
        begin
          AuxConsNorm[i, x] := 0.25 * ((AuxCons - AuxMatrizfixa[1, x]) /
              (AuxMatrizfixa[3, x] - AuxMatrizfixa[1, x]));
        end;

        if (AuxCons > AuxMatrizfixa[3, x]) and (AuxCons <= AuxMatrizfixa[2, x])
          then // interpolação 0,25 e 0,5
        begin
          TIWUserSession(WebApplication.Data).AuxConsNorm[i, x] := 0.25 +
            (0.25 * ((AuxCons - AuxMatrizfixa[3, x]) /
                (AuxMatrizfixa[2, x] - AuxMatrizfixa[3, x])));
        end;

        if (AuxCons > AuxMatrizfixa[2, x]) and (AuxCons <= AuxMatrizfixa[4, x])
          then // interpolação 0,5 e 0,75
        begin
          AuxConsNorm[i, x] := 0.5 +
            (0.25 * ((AuxCons - AuxMatrizfixa[2, x]) /
                (AuxMatrizfixa[4, x] - AuxMatrizfixa[2, x])));
        end;

        if (AuxCons > AuxMatrizfixa[4, x]) and (AuxCons < AuxMatrizfixa[0, x])
          then // interpolação 0,75 e 1
        begin
          AuxConsNorm[i, x] := 0.75 +
            (0.25 * ((AuxCons - AuxMatrizfixa[4, x]) /
                (AuxMatrizfixa[0, x] - AuxMatrizfixa[4, x])));
        end;
      end;
      // typeof =1

      if (TypeOfCrit[x] = 0) or (TypeOfCrit[x] = 2) then // minimização
      begin

        If AuxCons = TIWUserSession(WebApplication.Data).BoundMn[x] then
          AuxConsNorm[i, x] := 1;
        If AuxCons = TIWUserSession(WebApplication.Data).BoundMx[x] then
          AuxConsNorm[i, x] := 0

        else // se não forem os extremos, interpola os intermediarios

          if (AuxCons < AuxMatrizfixa[1, x]) and
          (AuxCons >= AuxMatrizfixa[3, x]) then // interpolação 0 e 0,25
        begin
          AuxConsNorm[i, x] := 0.25 * ((AuxCons - AuxMatrizfixa[1, x]) /
              (AuxMatrizfixa[3, x] - AuxMatrizfixa[1, x]));
        end;

        if (AuxCons < AuxMatrizfixa[3, x]) and (AuxCons >= AuxMatrizfixa[2, x])
          then // interpolação 0,25 e 0,5
        begin
          AuxConsNorm[i, x] := 0.25 +
            (0.25 * ((AuxCons - AuxMatrizfixa[3, x]) /
                (AuxMatrizfixa[2, x] - AuxMatrizfixa[3, x])));
        end;

        if (AuxCons < AuxMatrizfixa[2, x]) and (AuxCons >= AuxMatrizfixa[4, x])
          then // interpolação 0,5 e 0,75
        begin
          TIWUserSession(WebApplication.Data).AuxConsNorm[i, x] := 0.5 +
            (0.25 * ((AuxCons - AuxMatrizfixa[2, x]) /
                (AuxMatrizfixa[4, x] - AuxMatrizfixa[2, x])));
        end;

        if (AuxCons < AuxMatrizfixa[4, x]) and (AuxCons > AuxMatrizfixa[0, x])
          then // interpolação 0,75 e 1
        begin
          AuxConsNorm[i, x] := 0.75 +
            (0.25 * ((AuxCons - AuxMatrizfixa[4, x]) /
                (AuxMatrizfixa[0, x] - AuxMatrizfixa[4, x])));
        end;
      end; // typeof =0

      // end; //for crinorm
    end; // for i

    // salvando normalização local na consnorm da AS//
    for i := 0 to NumAlt - 1 do
      TIWUserSession(WebApplication.Data).MConsN[i, x] := AuxConsNorm[i, x];

  end; // webapp
end; // procedimento

/// /////////////////////////////////////////////////////////////////////////////////

procedure TfrmResultados.PLEAS;
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
  MLimMinSA, MLimMaxSA: array of array of Real;
  HeurQValue: Real;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  NumCri := TIWUserSession(WebApplication.Data).Numcrit;
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
    for J := 0 to NumCri - 1 do
      MatCons[i, J] := TIWUserSession(WebApplication.Data).MConsN[i, J];
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
      for J := i + 1 to NumCri - 1 do
        if not TIWUserSession(WebApplication.Data).AsVF then
        begin
          MLimMinSA[i, J] := TIWUserSession(WebApplication.Data).MLimMin[i, J];
          MLimMaxSA[i, J] := TIWUserSession(WebApplication.Data).MLimMax[i, J];
        end
        else
        begin
          // ** SE for a AS da intra **//
          MLimMinSA[i, J] := TIWUserSession(WebApplication.Data)
            .MLimMinASI[i, J];
          MLimMaxSA[i, J] := TIWUserSession(WebApplication.Data)
            .MLimMaxASI[i, J];
        end;

  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for J := 0 to NAH - 1 do
    begin
      Setlength(VetAH[J], length(MATAH[J]));
      for i := 0 to length(MATAH[J]) - 1 do
        VetAH[J, i] := MATAH[J, i];
    end;
  end;

  for i := 0 to NumPOA - 1 do
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
              MatA[Nrest + 1, J + 1] := TIWUserSession(WebApplication.Data)
                .ConsNorm[VetAH[(i - a), Z], Criorder[J]] - TIWUserSession
                (WebApplication.Data).ConsNorm[VetAH[i - a, 1], Criorder[J]];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, J + 1] := TIWUserSession(WebApplication.Data)
                .ConsNorm[VetAH[(i - a), 1], Criorder[J]] - TIWUserSession
                (WebApplication.Data).ConsNorm[VetAH[i - a, Z], Criorder[J]];
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
              MatA[Nrest + 1, J + 1] := TIWUserSession(WebApplication.Data)
                .ConsNorm[VetAH[(i - a), Z], Criorder[J]] - TIWUserSession
                (WebApplication.Data).ConsNorm[VetAH[i - a, 1], Criorder[J]];
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
    k := Z;
    B := a;
    /// Preenchendo as Restrições de Potencial Otimalidade ///
    /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
    for i := a to a + TIWUserSession(WebApplication.Data).NumAlt - 1 do
    begin
      if VetPOA[i - a] <> k then
      begin
        for J := 0 to NumCri - 1 do
          MatA[B + 1, J + 1] := MatCons[i - a, Criorder[J]] - MatCons
            [k, Criorder[J]];
        Op[B] := '<=';
        INC(Nrest);
        INC(B);
      end;
    end;

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
      B := 0;
      for i := 1 to NumCri do
        if ResultVector[i] <> 0 then
          break
        else
          INC(B);

      if B <> NumCri then
      begin
        /// Atualização do Vetor de Alternativas Potencialmente Ótimas ///
        INC(NumPOA);
        Setlength(TIWUserSession(WebApplication.Data).VetSol, NumPOA);
        TIWUserSession(WebApplication.Data).VetSol[NumPOA - 1] := k;
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

  if NumPOA = 0 then
    TIWUserSession(WebApplication.Data).UnfeasibleR := True
  else
    TIWUserSession(WebApplication.Data).UnfeasibleR := false;
end;

procedure TfrmResultados.sensitivityA; // Mudança - As de Escolha - Pedro (20/12/2023)
var
  i, J, k, auxc, Alt, G, Z, y, II: integer;
  Float, LS, LI: Double;
  Mxc, Mnc, R: Array of Double;
  nsol: integer;
  FSol: Array [0 .. 1] of integer;
  AInc, Aexc: Array of boolean;
  FInc, Fexc, PAlt, NPOA: Array of integer;
  Matrizprofile: array of array of string;
  Profile: String;
  Exc, P, POA: boolean;
  level: array of boolean; // Indica se um determinado nível foi alterado

  //PROPOSTA AS ORDENAÇÃO - PEDRO
  matrankingAS : array of array of integer;
  numposRankingAS, numposrankingsel : array of integer;
  quantidaderankings : integer;
  qtdDominancia : array of integer;
  countRanking : array of integer;
  novoranking : boolean;
  instdominancia, rankingdominancia : array of integer;
  aux, aux2, aux3, aux4 : integer;
  quantidade : integer;
  auxiliar : double;
  pular : array of boolean;
  a : double;
  AltConcordanceAS : array of double;
  maior : double;
  // Proposta AS ESCOLHA - PEDRO
  ordemfinc : array of integer;
  Numsol : integer;
  MatrizSolAS : array of array of integer;
  QtdSol : array of integer;
  NumAltSol : array of integer;
  NovaSol : boolean;
  pularalpha : array of boolean;
  pular2 : boolean;
  auxalpha : real;
  bar : array of THorizbarSeries;
begin
  k := 0;
  FSol[0] := 0;
  FSol[1] := 0;
  grdaltinout.RowCount := 1;
  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(Mxc, Numcrit);
    Setlength(Mnc, Numcrit);
    Setlength(MatrizConsR, NumAlt, Numcrit);
    Setlength(vtrASordchange, NumAlt);
    // ** Vetor auxiliar para a construção do perfil ** //
    Setlength(R, 5);

    /// //// Inicializando importantes vetores da AS de Escolha ///////////////
    if Problematica = 0 then
    begin
      // ** vetor que Armazena a frequência de exclusão das alternativas ** //
      Setlength(Fexc, NumAlt);
      Setlength(TIWUserSession(WebApplication.Data).AuxFexc, NumAlt);
      // ** vetor que Armazena a frequência de inclusão das alternativas ** //
      Setlength(FInc, NumAlt);
      Setlength(TIWUserSession(WebApplication.Data).AuxFInc, NumAlt);
      // ** vetor que Armazena o número de perfis distintos das alternativas ** //
      Setlength(PAlt, NumAlt);
      SetLength(pular, numalt);
      SetLength(ordemfinc, numalt);
      NumSol := 1;
      Setlength(MatrizSolAS, NumSol, NumAlt);
      SetLength(NumAltSol, NumSol);
      SetLength(qtdSol, NumSol);
      for i := 0 to NumAlt - 1 do
      begin
        FInc[i] := 0;
        Fexc[i] := 0;
        MatrizSolAS[0,i] := -1;
      end;
      for i := 0 to NDA - 1 do
      MatrizSolAS[0,i] := VetPoa[i];
      Numaltsol[0] := NDA;
      qtdsol[0] := 0;




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
        for J := 0 to NumAlt - 1 do
          for G := 0 to 2 - 1 do
            MatrizprofileOrdenacao[i, J, G] := '0';

      for i := 0 to length(Marizpercent) - 1 do
        for J := 0 to length(Marizpercent[i]) - 1 do
      Marizpercent[i, J] := 0;
      Setlength(Flevelsc, 0);
      Setlength(Flevelsc, Rlevels);
      Setlength(level, 0);
      Setlength(level, TIWUserSession(WebApplication.Data).Rlevels);
      for i := 0 to Rlevels - 1 do
        Flevelsc[i] := 0;

      // Mudança Teste de Kendall - Pedro 30/10/2024
      for i := 0 to length(ResultadoAlpha) - 1 do
     ResultadoAlpha[i] := 0;

     finalize(freqalpha);

    end;

    //Proposta de AS ordenação - PEDRO

    if problematica = 1 then
    begin
      setlength(instdominancia, numalt); //Quantidade de alternativas dominadas por cada alternativa da solução na instancia da AS
      setlength(rankingdominancia,numalt); //Quantidade de alternativas dominadas por cada alternativa da solução original

      setlength(qtddominancia,numalt);
      finalize(qtdranking);
      finalize (matrizposicao);
      finalize(altconcordanceAS);
      finalize(matrizdominanciaAS);
      setlength(matrizposicao, numalt, numalt,numalt);
      setlength(qtdranking, numalt);
      SetLength(altconcordanceAS, numalt);
      SetLength(pular, numalt);
      SetLength(TIWUserSession(WebApplication.Data).matrizdominanciaAS, numalt, numalt);


    end; // if problematica := 1
    /// ///////////////////////////////////////////////////////////////////////
    /// / Inicio da construção dos cenários aleatórios /////////////////////////
    while k < TIWUserSession(WebApplication.Data).ninst do
    begin
      auxc := -1;
      for i := 0 to Numcrit - 1 do
      begin
        for J := 0 to NumAlt - 1 do
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

      // ** Ordenação ** //
      if Problematica = 1 then
      begin
        for i := 0 to Rlevels - 1 do
          level[i] := false; // Não sabemos ainda se os níveis mudaram
        /// / Chama a PL com as novas consequências ////
        if ClpSolve then
          LPsOAS
        else
          PLOAS;
        auxc := 0;

        //TESTE DE KENDALL - PEDRO
        TIWUserSession(WebApplication.Data).currentinstance := k + 1;
        Correlation;
        TIWUserSession(WebApplication.Data).kendall := True; // Alex Alves da Silva; variavel bolleanea que idenifica se o este de kendal foi realizado ou  não

        ///////
        aux := 0;

         for i := 0 to NumAlt - 1 do
           begin
             if aux < TIWUserSession(WebApplication.Data).valtpositions[i] then
             aux := valtpositions[i]
           end;
           inc(qtdranking[aux-1]);
           for i := 0 to NumAlt - 1 do
             begin
                TIWUserSession(WebApplication.Data).matrizposicao[aux-1, valtpositions[i]-1,i] := matrizposicao[aux-1, valtpositions[i]-1,i] + 1;
             end;

       { for i := 0 to NumAlt - 1 do
        begin
          rankingdominancia[i] := 0;
          instdominancia[i] := 0;
          for j := 0 to NumAlt - 1 do
          begin
           if (i <> j) and (valtpositions[i] <> valtpositions[j]) and (valtpositionsO[i] <> valtpositionsO[j])  then
           begin
             if valtpositionsO[i] < valtpositionsO[j] then
             inc(rankingdominancia[i]);
             if valtpositions[i] < valtpositions[j] then
             inc(instdominancia[i]);
           end; // if
          end; // for j
          if rankingdominancia[i] = instdominancia[i] then
          inc(AltConcordanceAS[i]);
        end; // for i}







        /// /////////////////////////////////////////////////////////////////////////////

        /// //////////////////////////////////////////////////////////////////////////////
        /// ///////////////////////////EXPLANAÇÃO/////////////////////////////////////////
        /// / A MatrizprofileOrdenacao é fundamental no processo, ela é uma matriz////////
        /// de matrizes, cada nível do Ranking possui uma matriz que contém ///////////
        /// o número de alternativas como quantidade de linhas e o número de /////////
        /// colunas é definido de acordo à quantidade de perfis em que cada ///////////
        /// alternativa é incluída naquela posição do ranking. A coluna zero das ///////
        /// matrizes recebe um char que pode ser '*': se ela já pertencia ao nível /////
        /// '+': se ela pertencia a um outro nível e passou para o nível em questão ////
        /// oi '-' se ela pertencia ao nível em questão e passou para um outro. /////////
        /// na coluna 1 salva-se a quantidade de vezes em que tal cenário ocorreu, /////
        /// nas demais colunas, são armazenados os perfis para os quais aquele  /////////
        /// cenário foi obtido./////////////////////////////////////////////////////////
        /// ///////////////////////////////////////////////////////////////////// /////////
        { for i := 0 to NumLevels - 1 do
          begin
          for j := 0 to NumAlt - 1 do
          begin
          if TIWUserSession(WebApplication.Data).VAltPositions[j] = (i + 1)
          then
          begin

          // ** A Alt não pertencia ao nível **//
          if VAltPositionsO[j] <> (i + 1) then
          begin
          // ** Neste caso o indicador será '+' **//
          MatrizprofileOrdenacao[i, j, 0] := '+';
          /// / Contabiliza o número de vezes que uma alt foi incluída ao
          /// nível atual /////
          MatrizprofileOrdenacao[i, j, 1] := IntToStr
          (StrToInt(MatrizprofileOrdenacao[i, j, 1]) + 1);
          if i < Rlevels then
          level[i] := true; // O nível em questão sofreu alteração
          end;
          end; // If ValtPos

          if ((VAltPositions[j] <> i + 1) and (VAltPositionsO[j] = i + 1))
          then
          begin
          // ** A Alt não pertence mais a este nível ** //
          // ** Neste caso o indicador será '-' **//
          MatrizprofileOrdenacao[i, j, 0] := '-';
          /// / Contabiliza o número de vezes que uma alt foi excluída do
          /// nível a que pertencia no ranking original /////
          TIWUserSession(WebApplication.Data). MatrizprofileOrdenacao[i, j, 1] := IntToStr
          (StrToInt(MatrizprofileOrdenacao[i, j, 1]) + 1);
          if i < Rlevels then
          level[i] := true; // O nível em questão sofreu alteração
          end; // If ValtPos

          end; // J|NumAlt
          end; // I|NumLevels
          for i := 0 to NumLevels - 1 do
          // Se o nível não foi alterado, incrementa-se a posição do vetor referente ao mesmo.
          if not level[i] then
          INC(Flevelsc[i])
          else
          level[i] := false; }
      end; // Problemática = 1
      // ** Escolha ** //
      if Problematica = 0 then
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

        {
        NovaSol := True;
        for j := 0 to NumSol - 1 do
        begin
          auxc := 0;
          for i := 0 to nsol - 1 do
          begin
              if (TIWUserSession(WebApplication.Data).VetSol[i] = MatrizSolAS[j,i]) and (NumAltSol[j] = Nsol) then
              auxc := auxc + 1
          end;
          if auxc = nsol then
          begin
          inc(qtdsol[j]);
          NovaSol := False;
          Break;
          end;
       end;
       if NovaSol = True then
       begin
         inc(NumSol);
         SetLength(MatrizSolAS, NumSol, NumAlt);
         SetLength(qtdsol, NumSol);
         SetLength(NumAltSol, NumSol);
         for i := 0 to NSol - 1 do
         MatrizSolAS[Numsol-1,i] := VetSol[i];
         for i := Nsol to NumAlt - 1 do
         MatrizSolAS[Numsol-1,i] := -1;
         qtdsol[Numsol-1] := 1;
         NumAltSol[Numsol-1] := Nsol;
       end;
         }
         auxc := 0;
        /// / Pode ser que o vetor solução seja igual ///
        if nsol = NDA then
        begin
          /// / Se o conjunto solução for o mesmo, as alternativas aparecerão na mesma ordem
          /// devido a ordem em que a PL é rodada ////////////////////////////////
          for i := 0 to nsol - 1 do
            if TIWUserSession(WebApplication.Data).VetPOA[i] = TIWUserSession(WebApplication.Data).VetSol[i] then
            begin
              INC(FInc[VetPOA[i]]);
              auxc := auxc + 1;
            end;
          /// /Caso a solução seja igual, incrementa-se FSOL[0] que armazena a quantidade
          /// de vezes em que o conjunto sol ficou inalterado. Caso contrário
          /// incrementa´se FSol[1]////////////////////////////////////////////
          {if auxc = nsol then
            INC(FSol[0], 1)
          else
            INC(FSol[1]); }
        end; // Nda = nsol
        {else
          INC(FSol[1]);
         }
        if auxc <> nsol then
        begin
          G := 0;
          /// //// Verifica se alguma alternativa foi incluída ////////
          for i := 0 to nsol - 1 do
            for J := 0 to NDA - 1 do
              if VetSol[i] = VetPOA[J] then
              begin
                INC(FInc[VetSol[i]]);
              end
              else
                INC(NPOA[VetSol[i]]);

          for i := 0 to NumAlt - 1 do
            if NPOA[i] = NDA then
              AInc[i] := True;

          /// //// Verifica se alguma alternativa foi Excluída ////////
          for i := 0 to NDA - 1 do
            for J := 0 to nsol - 1 do
              if VetPOA[i] <> VetSol[J] then
              begin
                Aexc[VetPOA[i]] := True;
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
      INC(k);
    end; // While K

    if problematica = 1 then
    begin
    for i := 0 to NumAlt - 1 do
      for j := 0 to NumAlt - 1 do
      begin
        AltConcordanceAS[i] := AltConcordanceAS[i] + TIWUserSession(WebApplication.Data).MatrizDominanciaAS[i,j];
      end;

        for i := 0 to NumAlt - 1 do
      begin
        AltConcordanceAS[i] := (AltConcordanceAS[i] /((Numalt-1)*ninst));
      end;
    end;
    // ** Limpando os dados contidos nas séries ** //
    chrtsensitivity.series[0].Clear;
    chrtsensitivity.series[1].Clear;

    // ** Armazena a informação da mudança do resultado original **//
    auxfsol[0] := FSol[0];
    auxfsol[1] := FSol[1];

    if Problematica = 0 then
    begin
      // ** Adiciona as alternativas originais ao gráfico ** //

      for j := 0 to NumAlt - 1 do
      pular[j] := False;
      for i := 0 to NumAlt - 1 do
      begin
      aux := 0;
      for j := 0 to NumAlt - 1 do
      begin
        if pular[j] = false then
        begin
          if aux <= finc[j] then
          begin
          aux := finc[j];
          ordemfinc[i] := j;
          end;
        end;
      end;
      pular[ordemfinc[i]] := True;
      end;
      if TIWUserSession(WebApplication.Data).idioma = 1 then
      begin
        grddeviation.Cell[0, 0].Text := 'Alternativa';
        grddeviation.Cell[0, 1].Text := '% Incluída';
        grddeviation.Cell[0, 2].Text := '% Excluída';
        //grddeviation.Cell[0, 3].Text := '% Mudança';
        grdaltinout.Cell[0, 0].Text :=
          'Alternativas';
        grdaltinout.Cell[0, 1].Text := '% Ocorrência';
      end
      else
      begin
        grddeviation.Cell[0, 0].Text := 'Alternative';
        grddeviation.Cell[0, 1].Text := '% Included';
        grddeviation.Cell[0, 2].Text := '% Excluded';
        grdaltinout.Cell[0, 0].Text :=
          'Alternative';
        grdaltinout.Cell[0, 1].Text := '% Ocurrence';

      end;


      grdaltinout.Cell[0,0].Font.Style := [fsbold];
      grdaltinout.Cell[0,1].Font.Style := [fsbold];

      for j := 0 to grddeviation.ColumnCount - 1 do
      begin
        grddeviation.cell[0,j].Alignment := taCenter;
        grddeviation.cell[0,j].wrap := True;
        grddeviation.Cell[0,j].Font.Style := [fsbold];
      end;

      for j := 0 to grdaltinout.ColumnCount - 1 do
      begin
        grdaltinout.cell[0,j].Alignment := taCenter;
        grdaltinout.cell[0,j].wrap := True;
        grdaltinout.Cell[0,j].Font.Style := [fsbold];
      end;

      for j := 0 to grdcrivar.ColumnCount - 1 do
      begin
        grdcrivar.cell[0,j].Alignment := taCenter;
        grdcrivar.cell[0,j].wrap := True;
        grdcrivar.Cell[0,j].Font.Style := [fsbold];
      end;

     { // ** Escreve o conjunto das POAS no Grid ** //
      grddeviation.Cell[1, 0].Text := '{';
      for i := 0 to NDA - 1 do
      begin
        grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + AltSiglas
          [VetPOA[i]];
        if i < (NDA - 1) then
          grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + ', '
        else
        }  //grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + '}';
      {end;
      grddeviation.Cell[1, 1].Text := IntToStr(NumAlt);
      grddeviation.Cell[1, 2].Text := FormatFloat
        ('0.00', (FSol[0] / ninst) * 100);
      grddeviation.Cell[1, 3].Text := FormatFloat
        ('0.00', (FSol[1] / ninst) * 100);          }

      // grdaltinout.Cell[0, 1].Text := 'Profile(';
      k := 0;

      k := 1;
      y := 1;
      aux := 1;
      for i := 0 to NumAlt - 1 do
      begin
        if (Fexc[ordemfinc[i]] > 0) or (FInc[ordemfinc[i]] > 0) then
        // ** Significa que há ao menos um perfil para o qual a alt i é inc ou exc do conjunto solução ** //
        begin
          // ** Se a Alternativa foi excluída do conjunto original ** //


          // ** Se a Alternativa foi incluída no conjunto original ** //
          for G := 0 to NDA - 1 do
            if ordemfinc[i] = VetPOA[G] then
              POA := True;

          if (FInc[ordemfinc[i]] > 0) then
          begin
            if not POA then
            begin
              INC(k);
              inc(aux);
              grdaltinout.RowCount := k;
              grdaltinout.Cell[k - 1, 0].Text := AltSiglas[ordemfinc[i]];
              grdaltinout.Cell[k - 1, 1].Text := FormatFloat
                ('0.00', (FInc[ordemfinc[i]] / ninst) * 100);

              // ** Adiciona as alternativas incluídas ao gráfico ** //
              chrtsensitivity.series[1].AddXY(aux-2, ((FInc[ordemfinc[i]] / ninst) * 100),
                FormatFloat('0.00', (FInc[ordemfinc[i]] / ninst) * 100) + '%');
              // ** Coloca o nome da alt no eixo x ** //
              chrtsensitivity.BottomAxis.Items.Add(aux-2, AltSiglas[ordemfinc[i]]);
            end
            else
            begin
              INC(y);
              inc(aux);
              grddeviation.RowCount := y;
              grddeviation.Cell[y - 1, 0].Text := AltSiglas[ordemfinc[i]];
              grddeviation.Cell[y - 1, 1].Text := FormatFloat
                ('0.00', (FInc[ordemfinc[i]] / ninst) * 100);
              grddeviation.Cell[y - 1, 2].Text := FormatFloat
                ('0.00', 100 -((FInc[ordemfinc[i]] / ninst) * 100));

              // ** Adiciona as alternativas incluídas ao gráfico ** //
              chrtsensitivity.series[0].AddXY(aux-2, ((FInc[ordemfinc[i]] / ninst) * 100),
                FormatFloat('0.00', (FInc[ordemfinc[i]] / ninst) * 100) + '%');
              // ** Coloca o nome da alt no eixo x ** //
              chrtsensitivity.BottomAxis.Items.Add(aux-2, AltSiglas[ordemfinc[i]]);
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

    if Problematica = 1 then
    begin
     // Mudança Teste de Kendall - Pedro 30/10/2024
      IWLabel63.Visible := false;
      cmbxgroupindex.Visible := True;
      // grddor.Visible:=false;

      { IWText21.Caption := '% of times the original rank was maintained';
        IWText22.Caption := '% of times the original rank was modified'; }
      // codigo adicionado de mj para grafico da AS
      // limpa o que já existir
      ChartASord.BottomAxis.Visible := True; // torna o eixo x visível
      ChartASord.SeriesList.ClearValues;
      ChartASord.Title.Visible := false;
      // limpar as séries se ja houver algum dado
      ChartASord.LeftAxis.Items.Clear; // limpando os valores dos eixos para não se sobrepor

      // ** Coloca o nome da alt no eixo x ** //


     ChrtKendall.Series[0].Clear;
     cmbbxalpha.Items.Clear;
     TiwUserSession(WebApplication.Data).Pmean := Pmean / Currentinstance;
     for i := 1 to 100 do
     begin
     cmbbxalpha.Items.Add(TrocaVP(i/100));
     if TIWUserSession(WebApplication.Data).ResultadoAlpha[i] = 1000 then
     break;
     end;

     if ResultadoAlpha[5] < 1000 then
     cmbbxalpha.ItemIndex := 4
     else
     cmbbxalpha.ItemIndex := 0;

    //ChrtKendall.Title.Caption := 'Hypothesis Test for α = ' + floattostr((cmbbxalpha.ItemIndex+1)/100);
    txtnivelsignificancia.Lines.Text := 'For the significance level (α) = ' + trocavp((cmbbxalpha.ItemIndex+1)/100) + ':';
    txtporcentagens.Lines[0] := '► For ' + trocavp(ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '% of the simulation instances the null hypothesis is rejected (there is correlation between the simulation rankings and original rankings)';
    txtporcentagens.Lines[1] := '► For ' + trocavp(100 - ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '% of the simulation instances the null hypothesis is not rejected (there is no correlation between the simulation rankings and original rankings)';
    txtnivelsignificancia2.Lines.Text := 'For the significance level (α) = ' + trocavp((cmbbxalpha.ItemIndex+1)/100) + ':';
    txtporcentagens2.Lines[0] := '► For ' + trocavp(ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '% of the simulation instances the null hypothesis is rejected (there is correlation between the simulation rankings and original rankings)';
    txtporcentagens2.Lines[1] := '► For ' + trocavp(100 - ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '% of the simulation instances the null hypothesis is not rejected (there is no correlation between the simulation rankings and original rankings)';



    chrtKendall.Series[0].Clear;
    chrtkendall.Series[0].Add(ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10, 'Rejected: ' + trocavp(ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '%', ClWebGreen);
    chrtkendall.Series[0].Add(100-ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10, 'Not Rejected: '  + trocavp(100-ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '%', ClWebRed);
     //chrtkendall.Series[1].AddXY(0.05, ResultadoAlpha[5]/10, '');


     SetLength(OrdemAlpha, length(alpha));
    SetLength(pularalpha, length(alpha));
    for i := 0 to length(alpha) - 1 do
      pularalpha[i] := false;

    for i := 0 to length(alpha) - 1 do
    begin
      auxalpha := 99999999999999;
      for j := 0 to length(alpha) - 1 do
      begin
        if pularalpha[j] = True then
          continue;
        if TIWUserSession(WebApplication.Data).alpha[j] < auxalpha then
          auxalpha := alpha[j];
      end;
      pular2 := false;
      for j := 0 to length(alpha) - 1 do
      begin
        if (pular2 = True) or (pularalpha[j] = True) then
          continue;
        if auxalpha = alpha[j] then
        begin
          pularalpha[j] := True;
          TIWUserSession(WebApplication.Data).Ordemalpha[i] := j;
          pular2 := True;
        end;

      end;
    end;


   chrtValorP.Series[0].Clear;
    chrtValorP.Series[1].Clear;
    chrtValorP.Series[2].Clear;
    maior := 0;
     for i := 0 to 9999 do
     begin
     if freqalpha[i] <> 0 then
     begin
     if freqalpha[i]/10 > maior then
     maior := freqalpha[i]/10;
     //chrtvalorp.bottomaxis.Items.Add(i*100, floattostr(i/100));
     if i/10000 > (cmbbxalpha.ItemIndex+1)/100 then
     chrtvalorp.series[1].AddXY( i/10000,TIWUserSession(WebApplication.Data).freqalpha[i]/10, '', clwebred)
     else
     chrtvalorp.series[1].AddXY( i/10000,TIWUserSession(WebApplication.Data).freqalpha[i]/10, '', clwebgreen);

     chrtvalorp.series[0].AddXY( i/10000,TIWUserSession(WebApplication.Data).freqalpha[i]/10, '');
     end;
     end;
     chrtvalorp.Series[2].addxy((cmbbxalpha.itemindex+1)/100, 0, 'alpha = ' + floattostr((cmbbxalpha.itemindex+1)/100));
     chrtvalorp.Series[2].addxy((cmbbxalpha.itemindex+1)/100, maior+1, '');
     chrtvalorp.LeftAxis.AutomaticMaximum := false;
     chrtvalorp.LeftAxis.maximum := maior + 1;
     for i := 0 to 20 do
     begin
     if i*5 > maior then
     break;
     chrtvalorp.LeftAxis.Items.Add(i*5, inttostr(i*5) + '%');
     end;

     chrtvalorp.Series[0].Marks.visible := false;
     chrtvalorp.Series[1].Marks.visible := false;
     //chrtvalorp.Series[2].Marks.visible := false;
     chrtvalorp.Legend.Visible := false;
     //chrtvalorp.bottomaxis.AutomaticMaximum := false;
     //chrtvalorp.BottomAxis.Maximum := 100;
     //chrtvalor.leftaxis.
      imgValorP.Picture.Bitmap.Assign
        (chrtValorP.TeeCreateBitmap(clWebPURPLE, rect(0, 0, imgValorP.Width,
            imgValorP.Height)));


    { chrtkendall.LeftAxis.items.Add(ResultadoAlpha[5]/10, FloatToStr(ResultadoAlpha[5]/10) + '%');
     chrtkendall.LeftAxis.items.Add(0, '0%');
     chrtkendall.LeftAxis.items.Add(100, '100%');
     }
     imgKendall.Picture.Bitmap.Assign
        (chrtKendall.TeeCreateBitmap(clWebPURPLE, rect(0, 0, imgKendall.Width,
            imgKendall.Height)));

      // ** Coloca o nome da alt no eixo x ** //

   {
    aux2 := 0;
    for I := 0 to length(robustezrankingsel) - 1 do
    begin
     aux2 := aux2 + robustezrankingsel[i];
    end;
    }
        {

       ChartASord.series[0].AddXY(0.1, ((robustezrankingsel[0] / aux2) * 100)
            , FormatFloat('0.00', (robustezrankingsel[0] / aux2) * 100)
            + '%');
       ChartASord.BottomAxis.Items.Add(0, 'Original Ranking');
       aux := 0;
       aux := qtdranking[k-1] + aux;



        aux3 := robustezrankingsel[0];
        j := 0;
      for i := 1 to Length(robustezrankingsel) - 1 do
      begin
        if (aux3 <= 0.8*aux2) and (j <= 6) and (robustezrankingsel[ordemdosrankings[i]] + aux3 <= aux2) then
        begin
            j := j + 1;
            ChartASord.BottomAxis.Items.Add(j, 'Ranking'+ ' ' + inttostr(j));
            // plota o grafico
            ChartASord.series[1].AddXY(j, ((robustezrankingsel[ordemdosrankings[i]] / aux2) * 100),
            FormatFloat('0.00', (robustezrankingsel[ordemdosrankings[i]] / aux2) * 100) + '%');
            aux3 := robustezrankingsel[ordemdosrankings[i]] + aux3;
          end
        else
        break;
      end;

      j := j + 1;
     { ChartASord.BottomAxis.Items.Add(j, 'Other Rankings');
      // plota o grafico
      ChartASord.series[2].AddXY(j-0.1, (((aux2-aux3) / aux2) * 100),
      FormatFloat('0.00', ((aux2-aux3) / aux2) * 100) + '%');
      }
      { ChartASord.BottomAxis.Items.Add(1,
        ' %of times the original rank was modified'); }




      { IWText9.Lines.Clear;
        IWText9.Lines.Add(
        'Alternative(s) present in the original subset of Group ' + IntToStr
        (cmbxgroupindex.ItemIndex + 1));
        IWText10.Lines.Clear;
        IWText10.Lines.Add(
        'Alternative(s) not present in the original subset of Group ' + IntToStr
        (cmbxgroupindex.ItemIndex + 1));
        IWLabel28.Caption := 'Deviation from the Group ' + IntToStr
        (cmbxgroupindex.ItemIndex + 1) + ' original subset of Alternatives:';
        IWLabel23.Caption :=
        'Alternatives Included in and Excluded from the original Group ' +
        IntToStr(cmbxgroupindex.ItemIndex + 1) +
        ' subset throughout Sensitivity Analysis interations:';
        chrtsensitivity.Title.Caption :=
        'Alternatives found in the Group ' + IntToStr
        (cmbxgroupindex.ItemIndex + 1) +
        ' subset while performing Sensitivity Analysis'; }


      // VAI PARA PARTE DO GRAFICO

      // ** Preenche informações sobre a variação do Ranking como um todo **//
      { grddor.Cell[0, 0].Text := '% Original Ranking';
        grddor.Cell[0, 1].Text := '% Change';
        grddor.Cell[1, 0].Text := FloatToStr(100 * (FSol[0] / ninst));
        grddor.Cell[1, 1].Text := FloatToStr(100 * (FSol[1] / ninst)); }

      // passandoparaglobal
      TIWUserSession(WebApplication.Data).auxrchange := FSol[1];

      /// ///////////////////////////////////////////////////////////////////////
      /// Escrevendo o primeiro grid solicitado pela professora /////
      IWGriddeviation.RowCount := NumAlt + 1;
      IWGriddeviation.ColumnCount := 4;
      IWGriddeviation.cell[0,0].Text := 'Positions';
      IwGridDeviation.cell[0,1].text := 'Original Ranking';
      IwGridDeviation.cell[0,2].text := 'Robustness Index';
      IwGridDeviation.cell[0,3].text := '% Change';

      aux2 := 1;
      aux := 99999;
      for i := 0 to Numalt - 1 do
      pular[i] := false;

      for j := 0 to Numalt - 1 do
      begin
      for i := 0 to Numalt - 1 do
      begin
        if (TIWUserSession(WebApplication.Data).ValtPositionsO[i] = j + 1) then
        begin
          IWGriddeviation.cell[aux2,0].Text := inttostr(ValtPositionsO[i]) + 'º' ;
          IWGriddeviation.cell[aux2,1].Text := NomeAlt[i];
          IWGriddeviation.cell[aux2,2].Text := FormatFloat('0.00', (AltConcordanceAS[i]) * 100) + '%';
          IWGriddeviation.cell[aux2,3].Text := FormatFloat('0.00', (1 - AltConcordanceAS[i]) * 100) + '%';
          ChartASord.series[0].AddXY(aux2-1, ((AltConcordanceAS[i]) * 100)
            , FormatFloat('0.00', (AltConcordanceAS[i]) * 100) + '%');
            ChartASord.series[1].AddXY(aux2-1, ((1- AltConcordanceAS[i]) * 100)
            , FormatFloat('0.00', (1- AltConcordanceAS[i]) * 100) + '%');
          ChartASord.BottomAxis.Items.Add(aux2-1, AltSiglas[i]);
         { if ((AltConcordanceAS[i] / ninst) >= 0.50) then
          ChartASord.Series[1].Marks.Item[aux2-1].Visible := False;
         if ((AltConcordanceAS[i] / ninst) < 0.50) then
          ChartASord.Series[0].Marks.Item[aux2-1].Visible := False;  }
          inc(aux2);
        end;
      end;
      end;


      IWImmgord.left := 48;
      IWImmgord.Top := 201;
      IWImmgord.Width := 819;
      IWImmgord.Height := 237;
    //  IWImmgord.Width := 809;
     // IWImmgord.Height := 207;

      IWImmgord.Picture.Bitmap.Assign
        (ChartASord.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImmgord.Width,
            IWImmgord.Height)));
      imagemax.Picture.Bitmap.Assign
        (ChartASord.TeeCreateBitmap(clWebPURPLE, rect(0, 0, imagemax.Width,
            imagemax.Height)));

      IWGriddeviation.Font.FontName := 'verdana';
      for j := 0 to IWGriddeviation.ColumnCount - 1 do
      begin
        IWGriddeviation.cell[0,j].Alignment := taCenter;
        IWGriddeviation.cell[0,j].wrap := True;
        IWGriddeviation.Cell[0,j].Font.Style := [fsbold];
      end;
      IWGridpercent.Visible := False;
      cmbbxposicoes.Items.Clear;

      for i := numalt-1 downto 1 do
      begin
        if TIWUserSession(WebApplication.Data).qtdranking[i] > 0 then
        cmbbxposicoes.Items.Add(inttostr(i+1) + ' Positions')
      end;
      if TIWUserSession(WebApplication.Data).qtdranking[0] = ninst then
        cmbbxposicoes.Items.Add(inttostr(1) + ' Position');
      cmbbxposicoes.ItemIndex := 0;
      cmbbxposicoesChange(self);







      { K := 1;
        for i := 0 to NumAlt - 1 do
        begin

        if TIWUserSession(WebApplication.Data).MatrizprofileOrdenacao
        [i, 0] = '+' then
        // ** Alt Incluída **//
        begin
        INC(K);
        grddeviation.RowCount := K;
        grddeviation.Cell[K-1, 2].Text := TIWUserSession(WebApplication.Data).MatrizprofileOrdenacao
        [cmbxgroupindex.ItemIndex, i, 2]
        end;
        end; }

      { // ** Escreve as alt originais no Grid ** //

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
        grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + ' }{ ';
        end;
        grddeviation.Cell[1, 1].Text := IntToStr(ninst);
        grddeviation.Cell[1, 2].Text := FloatToStr
        (100 * Flevelsc[cmbxgroupindex.ItemIndex] / ninst);
        grddeviation.Cell[1, 3].Text := FloatToStr
        (100 * (1 - (Flevelsc[cmbxgroupindex.ItemIndex] / ninst))); }
      /// ///////////////////////////////////////////////////////////////////////

      { // ** Adicionando alternativas incluídas e excluídas ao GRID ** //
        grdaltinout.Cell[0, 0].Text := 'Included(Inc)/Excluded(Exc) Alternative';
        grdaltinout.Cell[0, 1].Text := 'Profile(';
        K := 0;
        for i := 0 to numcrit - 1 do
        begin
        if CriSel[i] then
        begin
        grdaltinout.Cell[0, 1].Text := grdaltinout.Cell[0, 1].Text + NomeCrit
        [i];
        INC(K);
        if K < NCV then
        grdaltinout.Cell[0, 1].Text := grdaltinout.Cell[0, 1].Text + ', ';
        end;
        if K = NCV then
        begin
        grdaltinout.Cell[0, 1].Text := grdaltinout.Cell[0, 1].Text + ')';
        Break;
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
        ((StrToFloat(MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i,
        1]) / ninst) * 100);

        // ** Adiciona as alternativas incluídas ao gráfico ** //
        chrtsensitivity.series[1].AddXY
        (i, ((StrToFloat(MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex,
        i, 1]) / ninst) * 100), FloatToStr
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
        ((StrToFloat(MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i,
        1]) / ninst) * 100);
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
        for j := 2 to Length(TIWUserSession(WebApplication.Data)
        .MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i]) - 1 do
        grdaltinout.Cell[K - 1, 1].Text := grdaltinout.Cell[K - 1, 1]
        .Text + MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i, j];
        end;
        end; // i|NumAlt }

      { chrtsensitivity.LeftAxis.Increment := 0.2; // ?

        chrtsensitivity.BottomAxis.LabelsAlternate;
        chrtsensitivity.BottomAxis.Items.Automatic := false;
        chrtsensitivity.LeftAxis.Maximum := 100;
        chrtsensitivity.LeftAxis.MaximumOffset := 16;
        chrtsensitivity.LeftAxis.Minimum := 0;
        chrtsensitivity.LeftAxis.Increment := 20;

        imgsensgraph.Picture.Bitmap.Assign(chrtsensitivity.TeeCreateBitmap
        (clWebPURPLE, rect(0, 0, imgsensgraph.Width, imgsensgraph.Height))); }




    end; // PROBLEMATICA = 1
    // Limpar nome das alternativas do eixo X

    chrtsensitivity.BottomAxis.Items.Clear;
    ChartASord.BottomAxis.Items.Clear;
    TIWUserSession(WebApplication.Data).Finish := True;

  end; // With
end;

Procedure TfrmResultados.Preencher_MatDadosAS;
var
  i, J, k, P: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    // ** o Vetor de matrizes de dados têm dimensão 2 - 0: conseq/ 1 - FV **//
    Setlength(MatDataAS, 2);

    // ** Dados da AS das consequências **//
    if not AsVF then
    begin
      // ** Limpa os valores na matriz **//
      for J := 0 to length(TIWUserSession(WebApplication.Data).MatDataAS[0])
        - 1 do
        for k := 0 to length(MatDataAS[0, J]) - 1 do
          MatDataAS[0, J, k] := '';

      // ** A depender da problemática, os dados e a estrutura da matriz é diferente **//
      if Problematica = 0 then
      begin
        Setlength(MatDataAS[0], 13, Numcrit + 2);
        if TIWUserSession(WebApplication.Data).idioma = 1 then
        begin
          MatDataAS[0, 0, 0] := 'Análise de Sensibilidade das Consequências:';
          MatDataAS[0, 1, 0] := 'Percentual de variação:';
          MatDataAS[0, 5, 0] :=
            'Desvio em relação ao subconjunto original de Alternativas Potencilamente Ótimas:';
          MatDataAS[0, 10, 0] :=
            'Alternativas incluídas ou excluídas do subconjunto de Alternativas Potencilamente Ótimas ao longo da Análise de Sensibilidade:';
        end
        else
        begin
          MatDataAS[0, 0, 0] := 'Consequences Sensitivity Analysis:';
          MatDataAS[0, 1, 0] := 'Variation percentage values:';
          MatDataAS[0, 5, 0] :=
            'Deviation from the original subset of Potentially Optimal Alternatives:';
          MatDataAS[0, 10, 0] :=
            'Alternatives Included in and Excluded from the original P.O.A subset throughout Sensitivity Analysis interations:';
        end;

        MatDataAS[0, 2, 0] := 'Max';
        MatDataAS[0, 3, 0] := 'Min';
        P := 0;
        for i := 0 to Numcrit - 1 do
        begin
          if CriSel[i] then
          begin
            if (Typeofcrit[vtrordem[i]] = 2) or (Typeofcrit[vtrordem[i]] = 3) then
            begin
            MatDataAS[0, 1, 1 + P] := NomeCrit[vtrordem[i]];
            MatDataAS[0, 2, 1 + P] := '+' + FloatToStr(pmax[i]) + ' levels';
            MatDataAS[0, 3, 1 + P] := '-' + FloatToStr(pmin[i]) + ' levels';
            INC(P);
            end
            else
            begin
            MatDataAS[0, 1, 1 + P] := NomeCrit[vtrordem[i]];
            MatDataAS[0, 2, 1 + P] := '+' + FloatToStr(pmax[i]) + '%';
            MatDataAS[0, 3, 1 + P] := '-' + FloatToStr(pmin[i]) + '%';
            INC(P);
            end;

          end; // CriSel
        end; // For i

        for i := 0 to grddeviation.RowCount - 1 do
          for J := 0 to grddeviation.ColumnCount - 1 do
            MatDataAS[0, 7 + i, 0 + J] := grddeviation.Cell[i, J].Text;

        for i := 0 to grdaltinout.RowCount - 1 do
        begin
          // ** Adiciona linhas à Matriz **//
          if (13 + i) > 13 then
          begin
            Setlength(MatDataAS[0], (13 + i));
            Setlength(MatDataAS[0, 12 + i], Numcrit);
          end;

          for J := 0 to grdaltinout.ColumnCount - 1 do
            MatDataAS[0, 12 + i, 0 + J] := grdaltinout.Cell[i, J].Text;
        end;
      end; // Promlemática = 0

      if Problematica = 1 then
      begin
        if Numcrit < NumAlt then
          k := NumAlt + 2
        else
          k := Numcrit + 2;

        Setlength(MatDataAS[0], 13, k);

        if TIWUserSession(WebApplication.Data).idioma = 1 then
        begin
          MatDataAS[0, 0, 0] := 'Análise de Sensibilidade das Consequências:';
          MatDataAS[0, 1, 0] := 'Percentual de Variação:';
          MatDataAS[0, 5, 0] := 'Desvio em relação a Ordem Original:';
          MatDataAS[0, 11, 0] :=
            'Percentual de vezes em que as alternativas foram ordenadas em cada posição:';
        end
        else
        begin
          TIWUserSession(WebApplication.Data).MatDataAS[0, 0, 0] :=
            'Consequences Sensitivity Analysis:';
          MatDataAS[0, 1, 0] := 'Variation percentage values:';
          MatDataAS[0, 5, 0] := 'Deviation from the Original Ranking';
          MatDataAS[0, 11, 0] :=
            'Percentage of times that the alternative was ordered in the position:';
        end;

        MatDataAS[0, 2, 0] := 'Max';
        MatDataAS[0, 3, 0] := 'Min';
        P := 0;
        for i := 0 to Numcrit - 1 do
        begin
          if CriSel[i] then
          begin
           if (Typeofcrit[vtrordem[i]] = 2) or (Typeofcrit[vtrordem[i]] = 3) then
            begin
            MatDataAS[0, 1, 1 + i] := NomeCrit[vtrordem[i]];
            MatDataAS[0, 2, 1 + i] := '+' + FloatToStr(pmax[i]) + ' levels';
            MatDataAS[0, 3, 1 + i] := '-' + FloatToStr(pmin[i]) + ' levels';
            end
            else
            begin
            MatDataAS[0, 1, i + 1] := NomeCrit[vtrordem[i]];
            MatDataAS[0, 2, i + 1] := '+' + FloatToStr(pmax[i]) + '%';
            MatDataAS[0, 3, i + 1] := '-' + FloatToStr(pmin[i]) + '%';
            end;
          end; // CriSel
        end; // For i

        for i := 0 to IWGriddeviation.RowCount - 1 do
          for J := 0 to IWGriddeviation.ColumnCount - 1 do
            MatDataAS[0, 6 + J, i + 1] := IWGriddeviation.Cell[i, J].Text;

        P := 0;

        for i := 0 to IWGridpercent.RowCount - 1 do
        begin
          // ** Adiciona linhas à Matriz **//
          if (13 + i) > 13 then
          begin
            Setlength(MatDataAS[0], (13 + i));
            Setlength(MatDataAS[0, 12 + i], k);
          end;

          for J := 0 to IWGridpercent.ColumnCount - 1 do
            TIWUserSession(WebApplication.Data).MatDataAS[0, 12 + i, J + 1] :=
              IWGridpercent.Cell[i, J].Text;
        end;
         //Setlength(MatDataAS[0], (13 + i));
        if cmbbxalpha.ItemIndex = -1 then
        begin
        Taufornrep;
        cmbbxalpha.ItemIndex := 1;
        cmbbxalphaChange(Self);
        end;
        SetLength(MatDataAS[0], 19 + IWGridpercent.RowCount, k);
        TIWUserSession(WebApplication.Data).MatDataAS[0, 13 + IWGridpercent.RowCount, 0] := 'Kendall Correlation Test:';
        TIWUserSession(WebApplication.Data).MatDataAS[0, 14 + IWGridpercent.RowCount, 1] := '► Null Hypothesis: " There is no association between the rankings (original and the simulated ones) under analysis for the specified significance level."';
        TIWUserSession(WebApplication.Data).MatDataAS[0, 15 + IWGridpercent.RowCount, 1] := '► Alternative Hypothesis: " There is association between the rankings (original and the simulated ones) under analysis for the specified significance level."';
        TIWUserSession(WebApplication.Data).MatDataAS[0, 16 + IWGridpercent.RowCount, 1] := 'Significance level selected(α): ' + cmbbxalpha.items[cmbbxalpha.ItemIndex];
        TIWUserSession(WebApplication.Data).MatDataAS[0, 17 + IWGridpercent.RowCount, 1] := 'The Null Hyphotesis is: ' + lblstatustau.Caption;
        TIWUserSession(WebApplication.Data).MatDataAS[0, 18 + IWGridpercent.RowCount, 1] := txtabout.Lines[0];

      end; // Promlemática = 1
    end;

    // ** Dados da AS das FVs **//
    if AsVF then
    begin
      // ** Limpa os valores na matriz **//
      for J := 0 to length(MatDataAS[1]) - 1 do
        for k := 0 to length(MatDataAS[1, J]) - 1 do
          MatDataAS[1, J, k] := '';

      // ** A depender da problemática, os dados e a estrutura da matriz é diferente **//
      if Problematica = 0 then
      begin
        Setlength(MatDataAS[1], 13, Numcrit + 2);
        if TIWUserSession(WebApplication.Data).idioma = 1 then
        begin
          MatDataAS[1, 0, 0] := 'Análise de Sensibilidade das Funções Valor:';
          MatDataAS[1, 1, 0] := 'Critérios Considerados:';
          MatDataAS[1, 3, 0] :=
            'Desvio em relação ao subconjunto original de Alternativas Potencilamente Ótimas:';
          MatDataAS[1, 8, 0] :=
            'Alternativas incluídas ou excluídas do subconjunto de Alternativas Potencilamente Ótimas ao longo da Análise de Sensibilidade:';
        end
        else
        begin
          MatDataAS[1, 0, 0] := 'Value Functions Sensitivity Analysis:';
          MatDataAS[1, 1, 0] := 'Considered Criteria:';
          MatDataAS[1, 3, 0] :=
            'Deviation from the original subset of Potentially Optimal Alternatives:';
          MatDataAS[1, 8, 0] :=
            'Alternatives Included in and Excluded from the original P.O.A subset throughout Sensitivity Analysis interations:';
        end;

        { MatDataAS[1, 2, 0] := 'Max';
          MatDataAS[1, 3, 0] := 'Min'; }
        P := 0;
        for i := 0 to Numcrit - 1 do
        begin
          if CriSel[i] then
          begin
            MatDataAS[1, 1, 1 + i] := NomeCrit[vtrordem[i]];
            { MatDataAS[1, 2, 1 + i] := '+' + FloatToStr(pmax[i]) + '%';
              MatDataAS[1, 3, 1 + i] := '-' + FloatToStr(pmin[i]) + '%'; }
            INC(P);

          end; // CriSel
        end; // For i

        for i := 0 to grddeviation.RowCount - 1 do
          for J := 0 to grddeviation.ColumnCount - 1 do
            MatDataAS[1, 4 + i, 0 + J] := grddeviation.Cell[i, J].Text;

        for i := 0 to grdaltinout.RowCount - 1 do
        begin
          // ** Adiciona linhas à Matriz **//
          if (13 + i) > 13 then
          begin
            Setlength(MatDataAS[1], (13 + i));
            Setlength(MatDataAS[1, 12 + i], Numcrit);
          end;

          for J := 0 to grdaltinout.ColumnCount - 1 do
            MatDataAS[1, 9 + i, 0 + J] := grdaltinout.Cell[i, J].Text;
        end;
      end; // Promlemática = 0

      if Problematica = 1 then
      begin
        if Numcrit < NumAlt then
          k := NumAlt + 2
        else
          k := Numcrit + 2;

        Setlength(MatDataAS[1], 13, k);

        if TIWUserSession(WebApplication.Data).idioma = 1 then
        begin
          MatDataAS[1, 0, 0] := 'Análise de Sensibilidade das Funções Valor:';
          MatDataAS[1, 1, 0] := 'Critérios Considerados:';
          MatDataAS[1, 3, 0] := 'Desvio em relação a Ordem Original:';
          MatDataAS[1, 9, 0] :=
            'Percentual de vezes em que as alternativas foram ordenadas em cada posição:';
        end
        else
        begin
          MatDataAS[1, 0, 0] := 'Value Functions Sensitivity Analysis:';
          MatDataAS[1, 1, 0] := 'Considered Criteria:';
          MatDataAS[1, 3, 0] := 'Deviation from the Original Ranking';
          MatDataAS[1, 9, 0] :=
            'Percentage of times that the alternative was ordered in the position:';
        end;

        { MatDataAS[1, 2, 0] := 'Max';
          MatDataAS[1, 3, 0] := 'Min'; }
        P := 0;
        for i := 0 to Numcrit - 1 do
        begin
          if CriSel[i] then
          begin
            MatDataAS[1, 1, i + 1] := NomeCrit[vtrordem[i]];
            { MatDataAS[1, 2, i + 1] := '+' + FloatToStr(pmax[i]) + '%';
              MatDataAS[1, 3, i + 1] := '-' + FloatToStr(pmin[i]) + '%'; }
          end; // CriSel
        end; // For i

        for i := 0 to IWGriddeviation.RowCount - 1 do
          for J := 0 to IWGriddeviation.ColumnCount - 1 do
            MatDataAS[1, 4 + J, i + 1] := IWGriddeviation.Cell[i, J].Text;

        P := 0;

        for i := 0 to IWGridpercent.RowCount - 1 do
        begin
          // ** Adiciona linhas à Matriz **//
          if (13 + i) > 13 then
          begin
            Setlength(MatDataAS[1], (13 + i));
            Setlength(MatDataAS[1, 12 + i], k);
          end;

          for J := 0 to IWGridpercent.ColumnCount - 1 do
            MatDataAS[1, 10 + i, J + 1] := IWGridpercent.Cell[i, J].Text;
        end;
      end; // Promlemática = 1

    end;

  end;

end;

procedure TfrmResultados.SensitivityAnalysisReport1Click(Sender: TObject);
var
  i, J, k: integer;
  str1: string;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    if length(MatDataAS[0]) > length(MatDataAS[1]) then
      k := length(MatDataAS[0])
    else
      k := length(MatDataAS[1]);

    AdvWgrdASR.TotalRows := k;
    k := 2;
    // ** Caso a AS das consequências tenha sido feita **///
    if length(MatDataAS[0]) > 0 then
      k := k + length(MatDataAS[0, 0]);

    // ** Caso a AS das fvs tenha sido feita **///
    if length(MatDataAS[1]) > 0 then
      k := k + length(MatDataAS[1, 0]);

    for i := 0 to (k - AdvWgrdASR.Columns.Count) do
    begin
      AdvWgrdASR.Columns.Add;
    end;

    k := 0;

    // ** Coloca a informação da AS das consequência **//
    for i := 0 to length(MatDataAS[0]) - 1 do
      for J := 0 to length(MatDataAS[0, i]) - 1 do
      begin
        AdvWgrdASR.Cells[J, i] := MatDataAS[0, i, J];
      end;
    if length(MatDataAS[0]) > 0 then
      k := length(MatDataAS[0, 0]) + 1;
    // ** Coloca a informação da AS das funçõs valor **//
    for i := 0 to length(MatDataAS[1]) - 1 do
      for J := 0 to length(MatDataAS[1, i]) - 1 do
      begin
        AdvWgrdASR.Cells[J + k, i] := MatDataAS[1, i, J];
      end;
    /// //Alex Alves daSilva
    if html = false then // verifica se o botão para gerar o arquivo em html foi feiclicado
    begin

      TIWAdvWebGridExcelIO1.AdvWebGrid := AdvWgrdASR;

      TIWAdvWebGridExcelIO1.XLSExport(Probname +
          ' - Sensitivity Analysis Report' + '.xls', WebApplication);
    end;
    Inherited;

  end; // With
  /////Alex Alvse da Silva
  if TIWUserSession(WebApplication.Data).Problematica = 1 then
  begin

  grdkendall.TotalRows := 3;
  if grdkendall.Columns.Count > 2 then
  begin
    grdkendall.Columns.Delete(2);
  end;
  grdkendall.Cells[0, 0] := AdvWgrdASR.Cells[0,14 + TIWUserSession(WebApplication.Data).NumAlt];
  for i := 1 to grdkendall.TotalRows - 1 do
  begin
    for J := 0 to grdkendall.Columns.Count - 1 do
    begin
      grdkendall.Cells[J, i] := AdvWgrdASR.Cells[J, i + 17 + TIWUserSession(WebApplication.Data).NumAlt];

    end;

  end;
  end;
end;

procedure TfrmResultados.Summaryofquestionsanswered1Click(Sender: TObject);
var
  i, J, k, P, n, h, lin_matriz_ciclo, cont, y, G, a: integer;
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
  Stop, inck: boolean;
  alt_pref_ord, auxalt_pref_ord1: string;

  Matrizciclosintra: array of array of string; // Matriz que armazena os ciclos da intracritério
  Ciclosintra: string; // Var auxiliar para pegar os ciclos do Banco de Dados
  Nciclosintra, x, Z: integer; // Contador de Ciclos intra

begin

  Data := DateToStr(Now);
  for i := 1 to length(Data) - 1 do
    if Data[i] = '/' then
      Data[i] := '_';

  grdexport1.Columns.Clear;

  for i := 0 to 11 - 1 do
    grdexport1.Columns.Add;

  with TIWUserSession(WebApplication.Data) do
  begin
    if Problematica = 0 then
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
          if (TypeOfCrit[vtrordem[StrToint(vet_idB_ciclo[i - 2])]] = 1) or
            (TypeOfCrit[vtrordem[StrToint(vet_idB_ciclo[i - 2])]] = 3) then
            begin
            StrDInd := vtrordem[StrToint(vet_idB_ciclo[i - 2])];
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToint(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + {FloatToStr}
              Rounding(Maxcons[vtrordem[StrToint(vet_idB_ciclo[i - 2])]]) + ')';
            end;

          if (TypeOfCrit[vtrordem[StrToint(vet_idB_ciclo[i - 2])]] = 0) or
            (TypeOfCrit[vtrordem[StrToint(vet_idB_ciclo[i - 2])]] = 2) then
            begin
            StrDInd := vtrordem[StrToint(vet_idB_ciclo[i - 2])];
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToint(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + {FloatToStr}
              Rounding(Mincons[vtrordem[StrToint(vet_idB_ciclo[i - 2])]]) + ')';
            end;

        end; // referente ao else

        // adicionando informações da consequencia A
        if vet_idA_ciclo[i - 2] = '-10' then
        begin
          matriz_perg[i, 1] := '';
        end
        else
        begin
          vet_real_consA_ciclo_aux := StrToFloat(vet_real_consA_ciclo[i - 2]);
          StrDInd := vtrordem[StrToint(vet_idA_ciclo[i - 2])];
          vet_real_consA_ciclo_aux2 :=
          { FormatFloat('0.00', } {trescasas}rounding(vet_real_consA_ciclo_aux);
          matriz_perg[i, 1] := vet_real_consA_ciclo_aux2 + ' ' + 'of' + ' ' +
            NomeCrit[vtrordem[StrToint(vet_idA_ciclo[i - 2])]];
        end;

        // adicionando informações das POA
        auxpoa := TIWUserSession(WebApplication.Data).vet_poa_ciclo[i - 2];
        P := 0;
        for J := 1 to length(auxpoa) do
        begin
          if auxpoa[J] <> ',' then
            auxpoa1 := auxpoa1 + auxpoa[J];
          if (auxpoa[J] = ',') and (J <> 1) then
          begin
            INC(P);
            Setlength(vet_poa_ciclo_aux, P);
            vet_poa_ciclo_aux[P - 1] := auxpoa1;
            auxpoa1 := '';
          end; // referente ao if  auxpoa[j]=','
          if J = length(auxpoa) then
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
            [StrToint(vet_poa_ciclo_aux[h])];
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
          for J := 1 to length(auxrethc) do
          begin
            if auxrethc[J] <> '.' then
              auxrethc1 := auxrethc1 + auxrethc[J];
            if (auxrethc[J] = '.') and (J <> 1) then
            begin
              INC(P);
              Setlength(vet_ret_hc_aux, P);
              vet_ret_hc_aux[P - 1] := auxrethc1;
              auxrethc1 := '';
            end; // referente ao if  auxpoa[j]=','
            if J = length(auxrethc) then
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
        for J := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp)
          - 1 do
        begin
          for h := 0 to length(matriz_ciclo_ah[J]) - 1 do
          begin
            if TIWUserSession(WebApplication.Data).vtr_id_ah_sum[i] =
              (matriz_ciclo_ah[J, h]) then
            begin
              Setlength(vetorciclo_ah, P + 1);
              vetorciclo_ah[P] := IntToStr(J);
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
          somadecision := NomeAlt[StrToint(TIWUserSession(WebApplication.Data)
              .vtr_id_alt_e_sum[i - 2])] + ' ' + 'is eliminated';
        end // referente a if decision=2
        else // if decision=2 then
        begin
          somadecision := NomeAlt[StrToint(TIWUserSession(WebApplication.Data)
              .vtr_id_alt_c_sum[i - 2])] + ' ' + 'is preferred';
        end; // referente ao else
        matriz_AHR[i, 3] := somadecision;
        somadecision := '';

        // pegando as alternativas avaliadas na HE

        alt_avaliadas := TIWUserSession(WebApplication.Data)
          .vtr_alt_avaliadas_sum[i - 2];

        P := 0;
        for J := 1 to length(alt_avaliadas) do
        begin
          if alt_avaliadas[J] <> '/' then
            auxalt_avaliadas1 := auxalt_avaliadas1 + alt_avaliadas[J];
          if (alt_avaliadas[J] = '/') and (J <> 1) then
          begin
            INC(P);
            Setlength(vet_alt_avaliadas_aux, P);
            vet_alt_avaliadas_aux[P - 1] := auxalt_avaliadas1;
            auxalt_avaliadas1 := '';
          end; // referente ao if  auxpoa[j]=','
          if J = length(alt_avaliadas) then
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
            [StrToint(vet_alt_avaliadas_aux[h])];
          if h < length(vet_alt_avaliadas_aux) - 1 then
            auxalt_avaliadasexp := auxalt_avaliadasexp + ',';
        end; // do for h  := 0 to Length(vet_poa_ciclo_aux) - 1 do
        matriz_AHR[i, 2] := auxalt_avaliadasexp;
        auxalt_avaliadasexp := '';


        // pegando as alternativas potencialmente otimas

        auxpoa := TIWUserSession(WebApplication.Data).vtr_poa_sum[i - 2];
        P := 0;
        for J := 1 to length(auxpoa) do
        begin
          if auxpoa[J] <> ',' then
            auxpoa1 := auxpoa1 + auxpoa[J];
          if (auxpoa[J] = ',') and (J <> 1) then
          begin
            INC(P);
            Setlength(vet_poa_ciclo_aux, P);
            vet_poa_ciclo_aux[P - 1] := auxpoa1;
            auxpoa1 := '';
          end; // referente ao if  auxpoa[j]=','
          if J = length(auxpoa) then
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
            [StrToint(vet_poa_ciclo_aux[h])];
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
      k := 0; // indica a linha atual a ser escrita
      P := 0; // indica a linha da matriz de holistica
      Stop := false; // indica se já pode ou não parar o processo
      cont := 0; // indica se alguma holistica foi plotada no ciclo
      inck := false; // indica se o k foi incrementado dentro da holistica
      for i := 0 to length(matriz_perg) - 1 do
      begin

        // plota a pergunta do ciclo
        for J := 0 to length(matriz_perg[i]) - 1 do
        begin
          grdexport1.Cells[J, k + 1] := matriz_perg[i, J];
        end; // referente a for j := 0 to Length(matriz_perg[k]) - 1 do

        if i >= 2 then
        begin

          // plota as holisticas do ciclo
          // caso não tenham holisticas para plotar ele não entrará no laço mas precisa receber o
          // 'no' e incrementar K
          if P + 2 = length(matriz_AHR) then
          begin
            grdexport1.Cells[5, k + 1] := 'no';
            inck := True;
            INC(k);
          end // referente a  if p+2= length(matriz_AHR) then
          else if P < length(matriz_AHR) - 1 then
            // caso hajam holisticas remanescentes
            while not Stop do
            begin
              // se a holistica pertencer ao ciclo
              if matriz_AHR[P + 2, 0] = matriz_perg[i, 0] then
              begin
                grdexport1.Cells[5, k + 1] := 'yes';
                for J := 1 to length(matriz_AHR[0]) - 1 do
                  grdexport1.Cells[5 + J, k + 1] := matriz_AHR[P + 2, J + 1];
                INC(P);
                INC(cont);
                inck := True;
                INC(k);
              end; // referente a  if matriz_AHR[P,0]=inttostr(i) then

              // se todas as holisticas já tiverem sido alocadas
              if P + 2 = length(matriz_AHR) then
              begin
                Stop := True;
                break; // quebra o laço
              end // referente a if p+2=length(matriz_AHR) then
              else // if p+2<>length(matriz_AHR) then
              begin
                // se a holistica não pertencer ao ciclo
                if matriz_AHR[P + 2, 0] <> matriz_perg[i, 0] then
                begin
                  if cont = 0 then
                  begin
                    grdexport1.Cells[5, k + 1] := 'no';
                    inck := True;
                    INC(k);
                  end; // referente a if cont=0 then
                  Stop := True;
                end; // referente a if matriz_AHR[P,0]<>inttostr(i) then
              end; // referente ao else if p+2<>length(matriz_AHR) then
            end; // referente ao while not stop do
        end; // referente a  if i>=2 then
        if inck = false then
        begin
          INC(k);
        end // refrente a   if inck=false then
        else
          inck := false;
        cont := 0;
        Stop := false;
      end; // referente a  for i := 0 to length(matriz_perg) - 1 do

      /// ///////////COLOCANDO OS CICLOS DA ETAPA INTRACRITERIO NO EXCEL DE EXPORTAÇÃO///////////////////////////////

      // Pegando os ciclos no banco de dados

      with UserSession.ZQuery1 do
      begin

        sql.Text := 'SELECT Cycles FROM intracrit WHERE id_problem="' +
          (TIWUserSession(WebApplication.Data).ID_Problema)
          + '"AND round="' + IntToStr
          (TIWUserSession(WebApplication.Data).nround)
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
      Setlength(Matrizciclosintra, Nciclosintra, 5);

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

      Setlength(guardaciclos, Nciclosintra);

      for i := 0 to Nciclosintra - 1 do
        guardaciclos[i] := StrToint(Matrizciclosintra[i, 0]);

      /// /Setando o grid que faz a exportação Excel///////////////
      grdexport1.RowCount := grdexport1.TotalRows + 3 + Nciclosintra;

      // Inseringo 10 colunas a mais
      for i := 0 to 9 do
      begin
        grdexport1.Columns.Add;
      end;

      /// /////////Colocando cabeçalho no grid que faz a exportação Excel///////////////
      grdexport1.Cells[13, 1] := 'Intra-criteria Report';
      grdexport1.Cells[13, 2] := 'Cycle';
      grdexport1.Cells[14, 2] := 'Criteria';
      grdexport1.Cells[15, 2] := 'ILO';
      grdexport1.Cells[16, 2] := 'IUP';
      grdexport1.Cells[17, 2] := 'Answer';

      /// Inserir ciclo zero
      grdexport1.Cells[13, 3] := '0';
      grdexport1.Cells[17, 3] := 'Eliciting...';

      /// /////////Passando os dados da matriz para o grid que faz a exportação Excel///////////////
      for i := 0 to Nciclosintra - 1 do
      begin
        grdexport1.Cells[13, i + 4] := IntToStr
          (TIWUserSession(WebApplication.Data).guardaciclos[i]);
        for J := 0 to 4 do
        begin
          grdexport1.Cells[J + 13, i + 4] := Matrizciclosintra[i, J];

        end; // for j
      end; // for i
       /// ///Modificado por Alex Alves
    if grdintracriterio.Columns.Count < 5 then
    begin
      grdintracriterio.Columns.Add;
      grdintracriterio.Columns.Add;
    end;

    grdintracriterio.RowCount := TIWUserSession(WebApplication.Data)
      .Nciclos + 3;
    for i :=0 to grdintracriterio.RowCount -1 do
    begin
      for J := 0 to grdintracriterio.Columns.Count - 1 do
      begin
        grdintracriterio.Cells[J, i] := grdexport1.Cells[J+13, i+1];

      end;

    end;

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
          if (TypeOfCrit[vtrordem[StrToint(vet_idB_ciclo[i - 2])]] = 1) or
            (TypeOfCrit[vtrordem[StrToint(vet_idB_ciclo[i - 2])]] = 3) then
            begin
            StrDInd := vtrordem[StrToint(vet_idB_ciclo[i - 2])];
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToint(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + {FloatToStr}Rounding(Maxcons[vtrordem[StrToint(vet_idB_ciclo[i - 2])]]) + ')';
            end;
          if (TypeOfCrit[vtrordem[StrToint(vet_idB_ciclo[i - 2])]] = 0) or
            (TypeOfCrit[vtrordem[StrToint(vet_idB_ciclo[i - 2])]] = 2) then
            begin
            StrDInd := vtrordem[StrToint(vet_idB_ciclo[i - 2])];
            matriz_perg[i, 2] := 'Best of' + ' ' + NomeCrit
              [vtrordem[StrToint(vet_idB_ciclo[i - 2])]]
              + ' ' + '(' + {FloatToStr}Rounding
              (Mincons[vtrordem[StrToint(vet_idB_ciclo[i - 2])]]) + ')';
            end;
        end; // referente ao else

        // adicionando informações da consequencia A
        if vet_idA_ciclo[i - 2] = '-10' then
        begin
          matriz_perg[i, 1] := '';
        end
        else
        begin
          vet_real_consA_ciclo_aux := StrToFloat(vet_real_consA_ciclo[i - 2]);
          StrDInd := vtrordem[StrToint(vet_idA_ciclo[i - 2])];
          vet_real_consA_ciclo_aux2 :=
          { FormatFloat('0.00', } {trescasas}Rounding(vet_real_consA_ciclo_aux);
          matriz_perg[i, 1] := vet_real_consA_ciclo_aux2 + ' ' + 'of' + ' ' +
            NomeCrit[vtrordem[StrToint(vet_idA_ciclo[i - 2])]];
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
          for J := 1 to length(auxrethc) do
          begin
            if auxrethc[J] <> '.' then
              auxrethc1 := auxrethc1 + auxrethc[J];
            if (auxrethc[J] = '.') and (J <> 1) then
            begin
              INC(P);
              Setlength(vet_ret_hc_aux, P);
              vet_ret_hc_aux[P - 1] := auxrethc1;
              auxrethc1 := '';
            end; // referente ao if  auxpoa[j]=','
            if J = length(auxrethc) then
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
        for J := 0 to length(TIWUserSession(WebApplication.Data).qp_ret_exp)
          - 1 do
        begin
          for h := 0 to length(matriz_ciclo_ah[J]) - 1 do
          begin
            if TIWUserSession(WebApplication.Data).vtr_id_ah_sum[i] =
              (matriz_ciclo_ah[J, h]) then
            begin
              Setlength(vetorciclo_ah, P + 1);
              vetorciclo_ah[P] := IntToStr(J);
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
        for J := 1 to length(alt_pref_ord) do
        begin
          if alt_pref_ord[J] <> '/' then
            auxalt_pref_ord1 := auxalt_pref_ord1 + alt_pref_ord[J];
          if (alt_pref_ord[J] = '/') and (J <> 1) then
          begin
            INC(P);
            Setlength(vet_alt_pref_ord_aux, P);
            vet_alt_pref_ord_aux[P - 1] := auxalt_pref_ord1;
            auxalt_pref_ord1 := '';
          end; // referente ao if  auxpoa[j]=','
          if J = length(alt_pref_ord) then
          begin
            INC(P);
            Setlength(vet_alt_pref_ord_aux, P);
            vet_alt_pref_ord_aux[P - 1] := auxalt_pref_ord1;
            auxalt_pref_ord1 := '';
          end; // referente ao if j= Length( alt_pref_ord)
        end; // referente ao for for j := 1 to Length( alt_pref_ord)
        Setlength(vtr_final_pref_ord, TIWUserSession(WebApplication.Data)
            .auxquantdeah);
        vtr_final_pref_ord[i - 2] := NomeAlt[StrToint(vet_alt_pref_ord_aux[0])];
        somadecision := vtr_final_pref_ord[i - 2] + ' ' + 'is preferred';
        matriz_AHR[i, 3] := somadecision;
        somadecision := '';

        // pegando as alternativas avaliadas na HE

        alt_avaliadas := TIWUserSession(WebApplication.Data)
          .vtr_alt_avaliadas_sum[i - 2];

        P := 0;
        for J := 1 to length(alt_avaliadas) do
        begin
          if alt_avaliadas[J] <> '/' then
            auxalt_avaliadas1 := auxalt_avaliadas1 + alt_avaliadas[J];
          if (alt_avaliadas[J] = '/') and (J <> 1) then
          begin
            INC(P);
            Setlength(vet_alt_avaliadas_aux, P);
            vet_alt_avaliadas_aux[P - 1] := auxalt_avaliadas1;
            auxalt_avaliadas1 := '';
          end; // referente ao if  auxpoa[j]=','
          if J = length(alt_avaliadas) then
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
            [StrToint(vet_alt_avaliadas_aux[h])];
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
      k := 0; // indica a linha atual a ser escrita
      P := 0; // indica a linha da matriz de holistica
      Stop := false; // indica se já pode ou não parar o processo
      cont := 0; // indica se alguma holistica foi plotada no ciclo
      inck := false; // indica se o k foi incrementado dentro da holistica
      for i := 0 to length(matriz_perg) - 1 do
      begin

        // plota a pergunta do ciclo
        for J := 0 to length(matriz_perg[i]) - 1 do
        begin
          grdexport1.Cells[J, k + 1] := matriz_perg[i, J];
        end; // referente a for j := 0 to Length(matriz_perg[k]) - 1 do

        if i >= 2 then
        begin

          // plota as holisticas do ciclo
          // caso não tenham holisticas para plotar ele não entrará no laço mas precisa receber o
          // 'no' e incrementar K
          if P + 2 = length(matriz_AHR) then
          begin
            grdexport1.Cells[5, k + 1] := 'no';
            inck := True;
            INC(k);
          end // referente a  if p+2= length(matriz_AHR) then
          else if P < length(matriz_AHR) - 1 then
            // caso hajam holisticas remanescentes
            while not Stop do
            begin
              // se a holistica pertencer ao ciclo
              if matriz_AHR[P + 2, 0] = matriz_perg[i, 0] then
              begin
                grdexport1.Cells[5, k + 1] := 'yes';
                for J := 1 to length(matriz_AHR[0]) - 1 do
                  grdexport1.Cells[5 + J, k + 1] := matriz_AHR[P + 2, J + 1];
                INC(P);
                INC(cont);
                inck := True;
                INC(k);
              end; // referente a  if matriz_AHR[P,0]=inttostr(i) then

              // se todas as holisticas já tiverem sido alocadas
              if P + 2 = length(matriz_AHR) then
              begin
                Stop := True;
                break; // quebra o laço
              end // referente a if p+2=length(matriz_AHR) then
              else // if p+2<>length(matriz_AHR) then
              begin
                // se a holistica não pertencer ao ciclo
                if matriz_AHR[P + 2, 0] <> matriz_perg[i, 0] then
                begin
                  if cont = 0 then
                  begin
                    grdexport1.Cells[5, k + 1] := 'no';
                    inck := True;
                    INC(k);
                  end; // referente a if cont=0 then
                  Stop := True;
                end; // referente a if matriz_AHR[P,0]<>inttostr(i) then
              end; // referente ao else if p+2<>length(matriz_AHR) then
            end; // referente ao while not stop do
        end; // referente a  if i>=2 then
        if inck = false then
        begin
          INC(k);
        end // refrente a   if inck=false then
        else
          inck := false;
        cont := 0;
        Stop := false;
      end; // referente a  for i := 0 to length(matriz_perg) - 1 do

      /// ///////////COLOCANDO OS CICLOS DA ETAPA INTRACRITERIO NO EXCEL DE EXPORTAÇÃO///////////////////////////////

      // Pegando os ciclos no banco de dados

      with UserSession.ZQuery1 do
      begin

        sql.Text := 'SELECT Cycles FROM intracrit WHERE id_problem="' +
          (TIWUserSession(WebApplication.Data).ID_Problema)
          + '"AND round="' + IntToStr
          (TIWUserSession(WebApplication.Data).nround)
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
      Setlength(Matrizciclosintra, Nciclosintra, 5);

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

      /// /Setando o grid que faz a exportação Excel///////////////
      grdexport1.RowCount := grdexport1.TotalRows + 3 + Nciclosintra;

      /// Yara - Excluindo lixo de memória quando realiza-se a holística
      for i := 0 to grdexport1.RowCount - 1 do
      begin
        grdexport1.Cells[9, i] := '';
      end;

      // Inseringo 10 colunas a mais
      for i := 0 to 9 do
      begin
        grdexport1.Columns.Add;
      end;

      /// /////////Colocando cabeçalho no grid que faz a exportação Excel///////////////
      grdexport1.Cells[12, 1] := 'Intra-criteria Report';
      grdexport1.Cells[12, 2] := 'Cycle';
      grdexport1.Cells[13, 2] := 'Criteria';
      grdexport1.Cells[14, 2] := 'ILO';
      grdexport1.Cells[15, 2] := 'IUP';
      grdexport1.Cells[16, 2] := 'Answer';

      /// Inserir ciclo zero
      grdexport1.Cells[12, 3] := '0';
      grdexport1.Cells[16, 3] := 'Eliciting...';

      //Alteração Wagner - 12/08/2024
      ///Setando a variável que coloca a numeração dos ciclos
      Setlength(guardaciclos, Nciclosintra);

      ///Alimentando a variável que coloca a numeração dos ciclos
      for i := 0 to Nciclosintra - 1 do
      guardaciclos[i] := StrToint(Matrizciclosintra[i,0]);

      /// /////////Passando os dados da matriz para o grid que faz a exportação Excel///////////////

      for i := 0 to Nciclosintra - 1 do
      begin
        grdexport1.Cells[12, i + 4] := IntToStr
          (TIWUserSession(WebApplication.Data).guardaciclos[i]);
        for J := 0 to 4 do
        begin
          grdexport1.Cells[J + 12, i + 4] := Matrizciclosintra[i, J];
        end;
      end;
       /// ///Modificado por Alex Alves
    if grdintracriterio.Columns.Count < 5 then
    begin
      grdintracriterio.Columns.Add;
      grdintracriterio.Columns.Add;
    end;

    grdintracriterio.RowCount := TIWUserSession(WebApplication.Data)
      .Nciclos + 3;
      n:=grdexport1.Columns.Count ;
      n:=grdexport1.RowCount;
      n:=grdexport1.totalRows;
    for i :=0 to grdintracriterio.RowCount -1 do
    begin
      for J := 0 to grdintracriterio.Columns.Count - 1 do
      begin
        grdintracriterio.Cells[J, i] := grdexport1.Cells[J+12, i+1];

      end;

    end;
    end; // problematica igual a 1


    if html = false then // verifica se o botão para gerar o arquivo em html foi feiclicado
    begin

      TIWAdvWebGridExcelIO2.AdvWebGrid := grdexport1;
      // TIWAdvWebGridExcelIO2.AdvWebGrid.Components[1]:= grdexport;
      TIWAdvWebGridExcelIO2.XLSExport(Probname + ' ' + Data +
          ' - Summary of questions answered' + '.xls', WebApplication);
    end;
    Inherited;

  end; // referente ao with
  TIWUserSession(WebApplication.Data).html := false;
end;

procedure TfrmResultados.TbCtrlvisualizationsChange(Sender: TObject);
begin

  // **Determina se o aviso de seleção de alternativas deve estar visível **//
  if (RgnHEG4.Visible) and (txtHEG2.Lines.Count = 0) then
    txtWHEG2.Visible := True;
  // ** Define o tamanho da caixa de ajuda **//
  if (RgnHEG4.Visible) then
    RgnSteps.Height := 346 + 31;

  if (TbCtrlvisualizations.ActivePage = TbCtrlP0.TabOrder) or
    (TbCtrlvisualizationsHR.ActivePage = tbctrlBarHR.TabOrder) then
  begin
    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '3';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 3;

    // ** Reposiciona o controle para seleção da melhor alternativa para problematica de ordenação**//
    RgnSelBAO.Parent := tbctrlBarHR;
    RgnSelBAO.left := 497;
    RgnSelBAO.Top := 54;
    /// /Se a holística está sendo realizada, não deve mostrar os elementos para
    /// seleção de alternativas até que o nível seja esclhido
    if (RgnHEG4.Visible) and (lblstepwarning.caption = 'Step 1:') then
      Exit;
    // ** Exibe os componentes de seleção de alternativas **//
    // IWRegion49.Visible := true;

    chcklstbxResults.Visible := True;
    btnUpFR.Visible := True;
    if (not TIWUserSession(WebApplication.Data).AuxRSel) and
      (TIWUserSession(WebApplication.Data).Problematica = 1) then

      CmbxResults.Visible := True
    else
      CmbxResults.Visible := false;

  end;

  if (TbCtrlvisualizations.ActivePage = TbCtrlP1.TabOrder) or
    (TbCtrlvisualizationsHR.ActivePage = tbctrlTabH.TabOrder) then
  begin
    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '0';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 0;

    // ** Reposiciona o controle para seleção da melhor alternativa para problematica de ordenação**//
    RgnSelBAO.Parent := tbctrlTabH;
    RgnSelBAO.left := 465;
    RgnSelBAO.Top := 241;

    // ** Controla os componentes de seleção de alternativas **//
    if (TIWUserSession(WebApplication.Data).Problematica = 1) then
      if (TIWUserSession(WebApplication.Data).AuxRSel) then
      begin
        // IWRegion49.Visible := true;
        chcklstbxResults.Visible := True;
        btnUpFR.Visible := True;
      end
      else
      begin
        CmbxResults.Visible := false;
        // IWRegion49.Visible := false;
      end;

    if (TIWUserSession(WebApplication.Data).Problematica = 0) and
      (TIWUserSession(WebApplication.Data).Sol = -5) then
    begin
      // rgnNoteExp.Visible := true;
      chcklstbxResults.Visible := True;
      btnUpFR.Visible := True;
    end;

  end;

  if (TbCtrlvisualizations.ActivePage = TbCtrlP2.TabOrder) or
    (TbCtrlvisualizationsHR.ActivePage = tbctrlRadH.TabOrder) then
  begin
    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '1';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 1;

    // ** Reposiciona o controle para seleção da melhor alternativa para problematica de ordenação**//
    RgnSelBAO.Parent := tbctrlRadH;
    RgnSelBAO.left := 497;
    RgnSelBAO.Top := 54;

    /// /Se a holística está sendo realizada, não deve mostrar os elementos para
    /// seleção de alternativas até que o nível seja esclhido
    if (RgnHEG4.Visible) and (lblstepwarning.caption = 'Step 1:') then
      Exit;
    // ** Exibe os componentes de seleção de alternativas **//
    // rgnNoteExp.Visible := true;
    chcklstbxResults.Visible := True;
    btnUpFR.Visible := True;
    if (not TIWUserSession(WebApplication.Data).AuxRSel) and
      (TIWUserSession(WebApplication.Data).Problematica = 1) then
      CmbxResults.Visible := True
    else
      CmbxResults.Visible := false;
  end;

  if (TbCtrlvisualizations.ActivePage = TbCtrlP3.TabOrder) or
    (TbCtrlvisualizationsHR.ActivePage = tbctrlBubH.TabOrder) then
  begin
    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '2';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;
    TIWUserSession(WebApplication.Data).visualization := 2;

    // ** Reposiciona o controle para seleção da melhor alternativa para problematica de ordenação**//
    RgnSelBAO.Parent := tbctrlBubH;
    RgnSelBAO.left := 497;
    RgnSelBAO.Top := 54;

    /// /Se a holística está sendo realizada, não deve mostrar os elementos para
    /// seleção de alternativas até que o nível seja esclhido
    if (RgnHEG4.Visible) and (lblstepwarning.caption = 'Step 1:') then
      Exit;
    // ** Exibe os componentes de seleção de alternativas **//
    // rgnNoteExp.Visible := true;
    chcklstbxResults.Visible := True;
    btnUpFR.Visible := True;
    if (not TIWUserSession(WebApplication.Data).AuxRSel) and
      (TIWUserSession(WebApplication.Data).Problematica = 1) then
      CmbxResults.Visible := True
    else
      CmbxResults.Visible := false;
  end;

  if TbCtrlvisualizations.ActivePage = TbCtrlP4.TabOrder then
  begin
    // ** Oculta os componentes da seleção de alternativas para não confundir o DM **//
    // rgnNoteExp.Visible := false;
    chcklstbxResults.Visible := false;
    lnkweightsgraphDH.Visible := true;
    lnkdominancematrixDH.Visible := true;
    lnkfinalizeDH.Visible := true;
    PmnlblExportingDH.Visible := true;
    btnUpFR.Visible := false;
    CmbxResults.Visible := false;
    txtWHEG2.Visible := false;
    RgnSteps.Height := 131;

    if (TIWUserSession(WebApplication.Data).lnkAS = true) then
    begin
    lnksensitanalysisDH.Visible := true;
    TIWUserSession(WebApplication.Data).lnkAS := false;
    end;
    if lnksensitanalysisDH.Visible = true then
    lnkfinalizeDH.Visible := false;
  end;

  if (TbCtrlvisualizations.ActivePage = TbCtrlvisualizationsPage0.TabOrder) then
  begin
    checklistboxdominance.Visible:= false;
    btnUpFR.Visible:= false;
    txtEVHE.Visible:= false;
  end;

  if (TbCtrlvisualizations.ActivePage = TbCtrlP1.TabOrder) and
    (TIWUserSession(WebApplication.Data).Problematica = 1) then
  begin
    // ** Oculta os componentes da seleção de alternativas para não confundir o DM **//
    // rgnNoteExp.Visible := false;
    if RgnRelationsMatrix.Visible <> True then
    begin
    btnUpFR.Visible := false;
    chcklstbxResults.Visible := false;
    end;
    lnkweightsgraphDH.Visible := false;
    lnkdominancematrixDH.Visible := false;
    lnkfinalizeDH.Visible := false;
    PmnlblExportingDH.Visible := false;
    lnkdominancematrix.Visible := true;
    CmbxResults.Visible := false;
    txtWHEG2.Visible := false;
    RgnSteps.Height := 131;
    if lnksensitanalysisDH.Visible = true then
    begin
    lnksensitanalysisDH.Visible := false;
    TIWUserSession(WebApplication.Data).lnkAS := true;
    end;
  end;

end;

procedure TfrmResultados.rdbtnHEFRClick(Sender: TObject);
begin
  rdbtnHEFR.Checked := True;
  rdbtnEDFR.Checked := false;
end;

procedure TfrmResultados.rdbtnEDFRClick(Sender: TObject);
begin
  rdbtnHEFR.Checked := false;
  rdbtnEDFR.Checked := True;
end;

procedure TfrmResultados.tmrhasseTimer(Sender: TObject);
var
  prob: boolean;
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
    prob := True;
  end;
  // plotar_max_diff;
  if prob = false then
  begin
    lblhassemessage.caption :=
      'An unexpected error has occurred, please, use the update button to generate diagram once again.';
    lblhassemessage.Visible := false;
    TbCtrlvisualizationsChange(self);
    // btnhasse.Enabled := true;
    tmrhasse.Enabled := false;
    btnhasse1.Enabled := True;
    btnhasse2.Enabled := True;
    iwbtnRefreshDH.Cursor := crAuto;
    iwbtnCloseDH.Cursor := crAuto;
    iwbtnSaveImageDH.Cursor := crAuto;
    btnLegendDH.Cursor := crAuto;
    iwrgnHasseDiagram.Cursor := crAuto;
  end;
end;

procedure TfrmResultados.PLOAS;
/// / PL utilizada na Análise de Sensibilidade para problemática de Ordenação ///
var
  i, J, k, Nrest, a, B, C, Z, II, JJ, DNrel: integer; // Contadores
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
  MaxDIJ, MaxDJI, MaxDIJaux, MaxDJIaux: Double; // Armazena a máxima diferença entre duas alternativas
  aux1, aux2: Double;
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
  // **AS Intra **//
  MLimMinSA, MLimMaxSA: array of array of Real;
  HeurQValue, epsol: Real;
  /// ///////////////////////////////////////////////////////////////////////////
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).Numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  epsol := TIWUserSession(WebApplication.Data).epsol;
  /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
  /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
  /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
  /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
  Numl := 2 * (NumCri - 1) + NAH + 2 * length
    (TIWUserSession(WebApplication.Data).PergNAdj) + 4;
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
    for J := 0 to NumCri - 1 do
      MatCons[i, J] := TIWUserSession(WebApplication.Data).MConsN[i, J];
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
      for J := i + 1 to NumCri - 1 do
        if not TIWUserSession(WebApplication.Data).AsVF then
        begin
          MLimMinSA[i, J] := TIWUserSession(WebApplication.Data).MLimMin[i, J];
          MLimMaxSA[i, J] := TIWUserSession(WebApplication.Data).MLimMax[i, J];
        end
        else
        begin
          // ** SE for a AS da intra **//
          MLimMinSA[i, J] := TIWUserSession(WebApplication.Data)
            .MLimMinASI[i, J];
          MLimMaxSA[i, J] := TIWUserSession(WebApplication.Data)
            .MLimMaxASI[i, J];
        end;

  end;
  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for J := 0 to NAH - 1 do
    begin
      Setlength(VetAH[J], length(MATAH[J]));
      for i := 0 to length(MATAH[J]) - 1 do
        VetAH[J, i] := MATAH[J, i];
    end;
  end;

  for i := 0 to NumAlt - 1 do
    for J := 0 to NumAlt - 1 do
    begin
      MatrizParaPar[i, J] := 0;
    end;

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
            for J := 0 to NumCri - 1 do
            begin
              MatA[i + 1, J + 1] := TIWUserSession(WebApplication.Data)
                .ConsNorm[VetAH[(i - a), Z], Criorder[J]] - TIWUserSession
                (WebApplication.Data).ConsNorm[VetAH[i - a, 1], Criorder[J]];
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
          MatA[a + 1, IdAHeur + 1] := -HeurQValue;
          MatA[a + 1, IdBHeur + 1] := 1;
          Op[a] := '<=';
          INC(Nrest);
          INC(m1);
        End;
      1:
        Begin
          MatA[a + 1, IdAHeur + 1] := HeurQValue;
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
    if length(TIWUserSession(WebApplication.Data).PergNAdj) > 0 then
    begin
      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := MLimMinSA[PergNAdj[i - a, 0],
          PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
        INC(m1);
      end;

      a := Nrest;

      for i := a to a + length(TIWUserSession(WebApplication.Data).PergNAdj)
        - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1)
          * MLimMaxSA[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
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
  for II := 0 to NumAlt - 1 do
    for JJ := II + 1 to NumAlt - 1 do
      if (MatrizParaPar[II, JJ] = 0) and (MatrizParaPar[JJ, II] = 0) then
      begin

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
        end // end do if viavel = 1
        else
          TIWUserSession(WebApplication.Data).UnfeasibleR := True;

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
          Aux1 := StrToFloat(FormatFloat('0.000', -MaxDIJ))
        else
          Aux1 := StrToFloat(FormatFloat('0.000', MaxDIJ));
        if MaxDJI < 0 then
          Aux2 := StrToFloat(FormatFloat('0.000', -MaxDJI))
        else
          Aux2 := StrToFloat(FormatFloat('0.000', MaxDJI));

        /// /Se a máx diferença entre as alternativas forem menores que o limiar /////
        /// de indiferença, então as alt são indiferentes /////////////////////
        if (aux1 <= TIWUserSession(WebApplication.Data).epsol) and (aux2 <= epsol) then
        begin
          MatrizParaPar[II, JJ] := 2;
          MatrizParaPar[JJ, II] := 2;
        end
        else
        begin
          /// / Caso contrário, utiliza-se a seguinte regra para verificar a///////
          /// relação de dominância//////////////////////////////////////////////
          MaxDIJaux := RoundTo(MaxDIJ, -3);
          MaxDJIaux := RoundTo(MaxDJI, -3);
          if (MaxDIJaux >= epsol) and (MaxDJIaux <= epsol) then
          begin
            MatrizParaPar[II, JJ] := 1;
            { for i := 0 to NumAlt - 1 do
              begin
              if MatrizParaPar[JJ, i] = 1 then
              MatrizParaPar[II, i] := 1;
              end; }
          end;
          if (MaxDIJaux <= epsol) and (MaxDJIaux >= epsol) then
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
    for J := 0 to NumAlt - 1 do
      TIWUserSession(WebApplication.Data).MatrizSol[i, J] := MatrizParaPar
        [i, J];

  /// / Parte do procedimento para gerar o ranking das alternativas ////////////

  Setlength(MatrizKS, NumAlt, NumAlt + 5);
  Setlength(DomCount, NumAlt);

  for i := 0 to NumAlt - 1 do
  begin
    DomCount[i] := 0;
  end;

  /// /// Contabiliza o número de alt j que domina cada alternativa i //////////
  for i := 0 to NumAlt - 1 do
    for J := 0 to NumAlt - 1 do
      if MatrizParaPar[J, i] = 1 then
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
    k := MatrizKS[i, 1];
    for J := 0 to NumAlt - 1 do
      if DomCount[J] = k then
      begin
        MatrizKS[i, 4 + a] := J;
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
  for k := 1 to grupo do
  begin
    a := 0;
    for i := NumAlt - 1 downto 0 do
      if MatrizKS[i, NumAlt + 4] = k then
        if MatrizKS[i, 2] <> 0 then
          for J := 0 to (MatrizKS[i, 2] - 1) do
          begin
            MatrizGrupos[k - 1, a + 1] := MatrizKS[i, J + 4];
            TIWUserSession(WebApplication.Data).MatrizGruposAS[k - 1, a + 1] :=
              MatrizKS[i, J + 4];
            INC(a);
          end;
    Grp[k - 1] := a; // armazena o número de alt por grupo
  end;

  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(VAltPositions, NumAlt);
    for i := 0 to grupo - 1 do
      for J := 0 to Grp[i] - 1 do
        TIWUserSession(WebApplication.Data)
          .VAltPositions[MatrizGrupos[i, J + 1]] := MatrizGrupos[i, 0];

  end;

end;

procedure TfrmResultados.LPsOAS;
/// / PL utilizada na Análise de Sensibilidade para problemática de Ordenação ///
var
  i, J, k, Nrest, a, B, C, Z, II, JJ, DNrel: integer; // Contadores
  m1, m2, m3: integer;
  NumCri, NumAlt, Numl, NAH: integer; // Número de critérios,
  // num de alternativas, num de linhasna Matriz do Modelo de PL e número de restrições
  // provenientes de Avaliações holísticas, número de alternativas potencialmente ótimas
  MatA, MatCons: Array of Array of Double; // Matriz do Modelo de PL e Matriz de Consequências Normalizada
  Criorder: Array of integer; // Vetor que armazena a ordenação dos critérios
  LimMin, LimMax: Array of Double; // Vetores que armazenam os limites inferior e
  FO: Array of string;
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
  aux1, aux2: Double;
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
  grupo, MSSG, NumDV: integer;
  MinVK: Double;
  var_int, var_bin: Array of integer;
  MLimMinSA, MLimMaxSA: array of array of Real;
  HeurQValue: Real;
  /// ///////////////////////////////////////////////////////////////////////////
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).Numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
  /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
  /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
  /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
  Numl := 2 * (NumCri - 1) + 4 + 2 * length(TIWUserSession(WebApplication.Data)
      .PergNAdj);
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
    for J := 0 to NumCri - 1 do
      MatCons[i, J] := TIWUserSession(WebApplication.Data).MConsN[i, J];
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
      for J := i + 1 to NumCri - 1 do
        if not TIWUserSession(WebApplication.Data).AsVF then
        begin
          MLimMinSA[i, J] := TIWUserSession(WebApplication.Data).MLimMin[i, J];
          MLimMaxSA[i, J] := TIWUserSession(WebApplication.Data).MLimMax[i, J];
        end
        else
        begin
          // ** SE for a AS da intra **//
          MLimMinSA[i, J] := TIWUserSession(WebApplication.Data)
            .MLimMinASI[i, J];
          MLimMaxSA[i, J] := TIWUserSession(WebApplication.Data)
            .MLimMaxASI[i, J];
        end;

  end;
  With TIWUserSession(WebApplication.Data) do
  begin
    /// / Obtém as informações da Avaliação Holística ////
    for J := 0 to NAH - 1 do
    begin
      Setlength(VetAH[J], length(MATAH[J]));
      for i := 0 to length(MATAH[J]) - 1 do
        VetAH[J, i] := MATAH[J, i];
    end;
  end;

  for i := 0 to NumAlt - 1 do
    for J := 0 to NumAlt - 1 do
    begin
      MatrizParaPar[i, J] := 0;
    end;

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
            for J := 0 to NumCri - 1 do
            begin
              MatA[i + 1, J + 1] := TIWUserSession(WebApplication.Data)
                .ConsNorm[VetAH[(i - a), Z], Criorder[J]] - TIWUserSession
                (WebApplication.Data).ConsNorm[VetAH[i - a, 1], Criorder[J]];
            end; // j
            MatA[i + 1, 0] := 0;
            INC(m1);
            Op[i] := '<=';
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
          MatA[a + 1, IdAHeur + 1] := -HeurQValue;
          MatA[a + 1, IdBHeur + 1] := 1;
          Op[a] := '<=';
          INC(Nrest);
          INC(m1);
        End;
      1:
        Begin
          MatA[a + 1, IdAHeur + 1] := HeurQValue;
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
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := MLimMinSA[PergNAdj[i - a, 0],
          PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
        INC(m1);
      end;

      a := Nrest;

      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1)
          * MLimMaxSA[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
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
  NumDV := NumCri;
  typeprob := 0;
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
    for J := 2 to NumCri do
      Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, J]);
  end;

  /// ////////////////// Verifica as relações de dominância /////////////////////
  for II := 0 to NumAlt - 1 do
    for JJ := II + 1 to NumAlt - 1 do
      if (MatrizParaPar[II, JJ] = 0) and (MatrizParaPar[JJ, II] = 0) then
      begin
        /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
        /// escala e os coeficientes são as diferenças entre as consequências das//
        /// alternativa IJ normalizadas ///
        for i := 0 to NumCri - 1 do
        begin
          MatA[0, i + 1] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
          FO[i] := TrocaVP(MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]]);
        end;
        /// Resolvendo o PPL ///
        SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);

        SF := MSSG;
        if SF = 0 then
        begin
          /// Verificando se há algum K não nulo. ////
          B := 0;
          for i := 1 to NumCri do
            if ResultVector[i] <> 0 then
              break
            else
              INC(B);

          MaxDIJ := 0;
          // Se obtem o valor da maxdif.

          MaxDIJ := ResultVector[0];

        end; // end do if viavel = 1

        /// /////////// Limpando o vetor de resultados /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);

        /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
        /// escala e os coeficientes são as diferenças entre as consequências das//
        /// alternativa JI normalizadas ///
        for i := 0 to NumCri - 1 do
        begin
          MatA[0, i + 1] := MatCons[JJ, Criorder[i]] - MatCons[II, Criorder[i]];
          FO[i] := TrocaVP(MatCons[JJ, Criorder[i]] - MatCons[II, Criorder[i]]);
        end;

        /// Resolvendo o PPL ///
        SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);

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

          MaxDJI := 0;

          // Se obtem o valor da maxdif.
          MaxDJI := ResultVector[0];
        end; // end do if viavel = 1

        if (ResultVector[1] = 0) or (SF <> 0) then
          TIWUserSession(WebApplication.Data).UnfeasibleR := True;

        /// /////////// Limpando o vetor de resultados /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);
        FreeMem(icase, SizeOf(integer));
        a := 0; // Contabilizará  número de relações estabelecidas
        B := 0; // Contabilizará  número de relações de indiferença estabelecidas

        if MaxDIJ < 0 then
          aux1 := -MaxDIJ
        else
          aux1 := MaxDIJ;
        if MaxDJI < 0 then
          aux2 := -MaxDJI
        else
          aux2 := MaxDJI;

        /// /Se a máx diferença entre as alternativas forem menores que o limiar /////
        /// de indiferença, então as alt são indiferentes /////////////////////
        if (aux1 <= ep) and (aux2 <= ep) then
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
    for J := 0 to NumAlt - 1 do
      TIWUserSession(WebApplication.Data).MatrizSol[i, J] := MatrizParaPar
        [i, J];

  /// / Parte do procedimento para gerar o ranking das alternativas ////////////

  Setlength(MatrizKS, NumAlt, NumAlt + 5);
  Setlength(DomCount, NumAlt);

  for i := 0 to NumAlt - 1 do
  begin
    DomCount[i] := 0;
  end;

  /// /// Contabiliza o número de alt j que domina cada alternativa i //////////
  for i := 0 to NumAlt - 1 do
    for J := 0 to NumAlt - 1 do
      if MatrizParaPar[J, i] = 1 then
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
    k := MatrizKS[i, 1];
    for J := 0 to NumAlt - 1 do
      if DomCount[J] = k then
      begin
        MatrizKS[i, 4 + a] := J;
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
  for k := 1 to grupo do
  begin
    a := 0;
    for i := NumAlt - 1 downto 0 do
      if MatrizKS[i, NumAlt + 4] = k then
        if MatrizKS[i, 2] <> 0 then
          for J := 0 to (MatrizKS[i, 2] - 1) do
          begin
            MatrizGrupos[k - 1, a + 1] := MatrizKS[i, J + 4];
            TIWUserSession(WebApplication.Data).MatrizGruposAS[k - 1, a + 1] :=
              MatrizKS[i, J + 4];
            INC(a);
          end;
    Grp[k - 1] := a; // armazena o número de alt por grupo
  end;

  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(VAltPositions, NumAlt);
    for i := 0 to grupo - 1 do
      for J := 0 to Grp[i] - 1 do
        TIWUserSession(WebApplication.Data)
          .VAltPositions[MatrizGrupos[i, J + 1]] := MatrizGrupos[i, 0];

  end;

end;

procedure TfrmResultados.calmaxminweights;
var
  i, J, k, Nrest, a, B, C, Z, II, JJ, DNrel: integer; // Contadores
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
  aux1, aux2: Double;
  MaxP, MinP: array of Double;
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
    for J := 0 to NAH - 1 do
    begin
      Setlength(VetAH[J], length(MATAH[J]));
      for i := 0 to length(MATAH[J]) - 1 do
        VetAH[J, i] := MATAH[J, i];
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

  { for i := 0 to NAH - 1 do
    begin
    OPAH[i] := TIWUserSession(WebApplication.Data).OPAH[i];
    end; }

  /// ///////////////////////////////////////////////////////////////////////////
  /// Limpando a Matriz do problema de possíveis valores provindos de sua inicialização ///
  for i := 0 to Numl - 1 do
    for J := 0 to NumCri do
      MatA[i, J] := 0;

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
            Op[Nrest] := '<=';
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
    for J := 2 to NumDV do
      Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, J]);
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
      B := 0;
      for i := 1 to NumCri do
        if ResultVector[i] <> 0 then
          break
        else
          INC(B);

      if B <> NumCri then
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
      B := 0;
      for i := 1 to NumCri do
        if ResultVector[i] <> 0 then
          break
        else
          INC(B);

      if B <> NumCri then
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

procedure TfrmResultados.Choice1Click(Sender: TObject);
var
  i: integer;
begin
  With TIWUserSession(WebApplication.Data) do
  begin
    Sol := -5;
    Problematica := 0;
    NDA := NumAlt;
    Setlength(VetPOA, NumAlt);
    for i := 0 to NumAlt - 1 do
      VetPOA[i] := i;
    PLEscolha;
    // ** Atualiza a problemática **//
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 28;
    SalvarresultBD;
    TfrmResultados.Create(WebApplication).Show;
  end;
end;

procedure TfrmResultados.LPsOrdenacao;
var
  i, J, k, Nrest, a, B, C, Z, II, JJ, DNrel, NumDV: integer; // Contadores
  m1, m2, m3: integer;
  dominance: boolean; // Var auxiliar que indica se uma relação de dominância foi estabelecida
  NumCri, NumAlt, Numl, NAH: integer; // Número de critérios,
  // num de alternativas, num de linhasna Matriz do Modelo de PL e número de restrições
  // provenientes de Avaliações holísticas, número de alternativas potencialmente ótimas
  MatA, MatCons: Array of Array of Double; // Matriz do Modelo de PL e Matriz de Consequências Normalizada
  Criorder: Array of integer; // Vetor que armazena a ordenação dos critérios
  LimMin, LimMax: Array of Double; // Vetores que armazenam os limites inferior e
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
  FO: array of string;
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
  aux1, aux2: Double;
  // VARIÁVEIS PARA A DLL DE C++
  MatB: matriz; // matriz usada pela dll em c++ para colocar as restrições e a função
  // valor Além de ser usada durante as iterações para serem guardados
  // os resultados do simplex até o resultado final
  icase: Pinteger; // ponteiro do c++ para indicar se existe ou não solução possível
  iposv: vetor; // vetor que guarda os subíndices das variáveis básicas
  izrov: vetor; // vetor que guarda os subíndices das variáveis não-básicas
  MinVK: Double;
  var_int, var_bin: Array of integer;
  MSSG: integer;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).Numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
  /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
  /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
  /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
  if length(TIWUserSession(WebApplication.Data).PergNAdj) > 0 then
    Numl := 2 * (NumCri - 1) + 4 + 2 * length
      (TIWUserSession(WebApplication.Data).PergNAdj)
  else
    Numl := 2 * (NumCri - 1) + 4;
  Setlength(MatrizParaPar, NumAlt, NumAlt);
  Setlength(TIWUserSession(WebApplication.Data).maxDiff, NumAlt, NumAlt);
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
      Setlength(VetAH[J], length(TIWUserSession(WebApplication.Data).MATAH[J]));
      for i := 0 to length(MATAH[J]) - 1 do
        VetAH[J, i] := MATAH[J, i];
    end;
  end;

  /// ////////// Obtendo relações anteriormente estabelecidas ///////////////////
  for i := 0 to NumAlt - 1 do
    for J := 0 to NumAlt - 1 do
    begin
      MatrizParaPar[i, J] := 0;
      With TIWUserSession(WebApplication.Data) do
      begin
        maxDiff[i, J] := 0;
        if (TIWUserSession(WebApplication.Data).Ciclo <> 0) and
          (zeramatriz = false) then
          if ArmazenaParaPar[Ciclo - 1, i, J] <> 0 then
            MatrizParaPar[i, J] := TIWUserSession(WebApplication.Data)
              .ArmazenaParaPar[Ciclo - 1, i, J];
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
            for J := 0 to NumCri - 1 do
            begin
              MatA[i + 1, J + 1] := MatCons[VetAH[(i - a), Z], Criorder[J]]
                - MatCons[VetAH[i - a, 1], Criorder[J]];
            end; // j
            MatA[Nrest + 1, 0] := -0.00001;
            Op[Nrest] := '<';
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

  with TIWUserSession(WebApplication.Data) do
  begin
    if TIWUserSession(WebApplication.Data).Etapa = 3 then
    begin
      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := MLimMin[PergNAdj[i - a, 0],
          PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
        INC(m1);
      end;

      a := Nrest;

      for i := a to a + length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1)
          * MLimMax[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
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
  typeprob := 0;
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
    for J := 2 to NumCri do
      Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, J]);
  end;

  NumDV := NumCri;
  /// ////////////////// Verifica as relações de dominância /////////////////////
  for II := 0 to NumAlt - 1 do
    for JJ := II + 1 to NumAlt - 1 do
      if (MatrizParaPar[II, JJ] = 0) and (MatrizParaPar[JJ, II] = 0) then
      begin
        dominance := false;

        /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
        /// escala e os coeficientes são as diferenças entre as consequências das//
        /// alternativa IJ normalizadas ///
        for i := 0 to NumCri - 1 do
        begin
          MatA[0, i + 1] := MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]];
          FO[i] := TrocaVP(MatCons[II, Criorder[i]] - MatCons[JJ, Criorder[i]]);
        end;
        /// Resolvendo o PPL ///
        SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);

        SF := MSSG;
        if SF = 0 then
        begin
          /// Verificando se há algum K não nulo. ////
          B := 0;
          for i := 1 to NumCri do
            if ResultVector[i] <> 0 then
              break
            else
              INC(B);

          MaxDIJ := 0;
          // Se obtem o valor da maxdif.

          MaxDIJ := ResultVector[0];

        end; // end do if viavel = 1

        /// /////////// Limpando o vetor de resultados /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);

        /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
        /// escala e os coeficientes são as diferenças entre as consequências das//
        /// alternativa JI normalizadas ///
        for i := 0 to NumCri - 1 do
        begin
          MatA[0, i + 1] := MatCons[JJ, Criorder[i]] - MatCons[II, Criorder[i]];
          FO[i] := TrocaVP(MatCons[JJ, Criorder[i]] - MatCons[II, Criorder[i]]);
        end;

        /// Resolvendo o PPL ///
        SolveLP(NumDV, Nrest, dirprob, typeprob, FO, Op, limit, var_int,
          var_bin, Rmod, ResultVector, Lp, MSSG);

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

          MaxDJI := 0;

          // Se obtem o valor da maxdif.
          MaxDJI := ResultVector[0];
        end; // end do if viavel = 1

        /// /////////// Limpando o vetor de resultados /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);
        a := 0; // Contabilizará  número de relações estabelecidas
        B := 0; // Contabilizará  número de relações de indiferença estabelecidas

        if MaxDIJ < 0 then
          aux1 := -MaxDIJ
        else
          aux1 := MaxDIJ;
        if MaxDJI < 0 then
          aux2 := -MaxDJI
        else
          aux2 := MaxDJI;

        /// /Se a máx diferença entre as alternativas forem menores que o limiar /////
        /// de indiferença, então as alt são indiferentes /////////////////////
        if (aux1 <= ep) and (aux2 <= ep) then
        begin
          MatrizParaPar[II, JJ] := 2;
          MatrizParaPar[JJ, II] := 2;
          dominance := True;
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
            dominance := True;
          end;
          if (MaxDIJ <= 0.000001) and (MaxDJI > 0.000001) then
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
            maxDiff[II, JJ] := MaxDIJ;
            maxDiff[JJ, II] := MaxDJI;
          end;
      end; // For II

  a := 0;
  B := 0;
  C := 0;
  for i := 0 to NumAlt - 1 do
    for J := 0 to NumAlt - 1 do
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
    TIWUserSession(WebApplication.Data).NumRel := B + Round(C / 2);
    Numind := Round(C / 2);
    TIWUserSession(WebApplication.Data).NDRl := B; ;
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumAlt - 1 do
      for J := 0 to NumAlt - 1 do
        TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo, i, J] :=
          MatrizParaPar[i, J];
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
    rgnHolisticaOrd.Hide;
    IWRgnfinaltabelaCreate(self);
    IWRgnfinaltabela.Show;
  end;
end;

procedure TfrmResultados.PLOrdenacao(Valorep: real);
var
  i, J, k, Nrest, a, B, C, Z, II, JJ, DNrel: integer; // Contadores
  m1, m2, m3: integer;
  dominance: boolean; // Var auxiliar que indica se uma relação de dominância foi estabelecida
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

  // VARIÁVEIS, VETORES E BOOLEANA PARA VERIFICAÇÃO DE CIRCUITO
  ZeroEnc, TudoZero: boolean;
  DomCount, Indices: Array of integer; // Vetores que recebem o nº de alt j que dominam a alt i, e seus respectivos indices
  IndexToRemove, Contaum: integer; // Variável responsável por salvar o indice da alternativa que será removida da análise
  auxMatrizParaParlimiar, auxMatrizParaPar2: Array of Array of integer; // Matriz auxiliar que recebe a variável global armazenaparapar para verificação de circuito;
  {Achousol,} teste1: boolean; //Verifica se uma solução foi encontrada sem circuito e considerando o ep
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).Numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
  /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
  /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
  /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
  Numl := 2 * (NumCri - 1) + 4 + 2 * length(TIWUserSession(WebApplication.Data)
      .PergNAdj);
  Setlength(MatrizParaPar, NumAlt, NumAlt);
  Setlength(auxMatrizParaParlimiar, NumAlt, NumAlt);
  Setlength(TIWUserSession(WebApplication.Data).maxDiff, NumAlt, NumAlt);
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
        VetAH[J, i] := MATAH[J, i];
    end;
  end;

  /// ////////// Obtendo relações anteriormente estabelecidas ///////////////////
  for i := 0 to NumAlt - 1 do
    for J := 0 to NumAlt - 1 do
    begin
      MatrizParaPar[i, J] := 0;
      With TIWUserSession(WebApplication.Data) do
      begin
        maxDiff[i, J] := 0;
        if (TIWUserSession(WebApplication.Data).Ciclo <> 0) and
          (zeramatriz = false) then
          if ArmazenaParaPar[Ciclo - 1, i, J] <> 0 then
            MatrizParaPar[i, J] := TIWUserSession(WebApplication.Data)
              .ArmazenaParaPar[Ciclo - 1, i, J];
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
  end;

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
  for i := 0 to NumAlt - 1 do
    for J := 0 to NumAlt - 1 do
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

  IWGridlm.RowCount := NumAlt;
  IWGridlm.ColumnCount := NumAlt;
  if valorep = 0 then
  begin
    for i := 0 to NumAlt - 1 do
      for j := 0 to NumAlt - 1 do
        IWGridlm.Cell[j,i].Text := InttoStr(MatrizParaPar[i, j]);
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    TIWUserSession(WebApplication.Data).NumRel := B + Round(C / 2);
    Numind := Round(C / 2);
    NDRl := B; ;
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    {for i := 0 to NumAlt - 1 do
      for J := 0 to NumAlt - 1 do
        TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo, i, J] :=
          MatrizParaPar[i, J];
    INC(Ciclo);
    ConstruirMatrizgrupo;}
    if NumRel >= (NumAlt * (NumAlt - 1)) / 2 then
    begin
      // Possíveis soluções
      if Numind = 0 then
        Sol := 3;
      if Numind > 0 then
        Sol := 2;
    end;

  if (verfpl = true) then
  begin
      for i := 0 to NumAlt - 1 do
        for j := 0 to NumAlt - 1 do
          auxMatrizParaParlimiar[i, j] := MatrizParaPar[i, j];

      Setlength(DomCount, NumAlt);
      Setlength(Indices, NumAlt);

      ZeroEnc := true; // Inicialize a variável que verifica se um valor zero foi encontrado
      Setlength(Indices, Length(DomCount));
      for i := 0 to High(DomCount) do
        Indices[i] := i;

      while ZeroEnc do
      begin
        ZeroEnc := false; // Redefina a flag para esta iteração

        // Contabiliza o número de alt j que domina cada alt i
        for i := 0 to High(DomCount) do
        begin
          DomCount[i] := 0; // Zere o valor atual de DomCount
          for j := 0 to High(auxMatrizParaParlimiar) do
          begin
          if auxMatrizParaParlimiar[j][i] > 0 then // Sendo > 0 garante que considere a indiferença que é =2
            DomCount[i] := DomCount[i] + 1;
        end;
        end;


        // Encontre o primeiro índice com valor 0 em DomCount
        for i := 0 to High(DomCount) do
        begin
          if DomCount[i] = 0 then
          begin
            IndexToRemove := i;
            ZeroEnc := true; // Um valor zero foi encontrado, continue o loop
            break; // Encontramos o primeiro índice com valor 0, podemos sair do loop
          end;
          end;

   //Em casos de indiferença entre duas alternativas essa condição é aplicada
  // Se não encontrou nenhum 0, verifique se há dois índices com valor 1
  if not ZeroEnc then
  begin
    for i := 0 to High(DomCount) do
    begin
      if DomCount[i] = 1 then
      begin
        Inc(Contaum); // Conta quantos índices têm valor 1
        if Contaum = 2 then
        begin
          IndexToRemove := i; // Se encontrar o segundo 1, define o índice para remover
          ZeroEnc := true; // Um valor zero foi encontrado, continue o loop
          Break; // Sai do loop
        end;
      end;
    end;
  end;

        // Se encontramos um índice com valor 0, prossiga com a remoção
        if ZeroEnc then
        begin
          // Remova a linha correspondente em auxMatrizParaPar
          for i := IndexToRemove to High(auxMatrizParaParlimiar) - 1 do
            auxMatrizParaParlimiar[i] := auxMatrizParaParlimiar[i + 1];

          Setlength(auxMatrizParaParlimiar, Length(auxMatrizParaParlimiar) - 1);

          // Remova a coluna correspondente em auxMatrizParaPar
          for i := 0 to High(auxMatrizParaParlimiar) do
          begin
            for j := IndexToRemove to High(auxMatrizParaParlimiar[i]) - 1 do
              auxMatrizParaParlimiar[i][j] := auxMatrizParaParlimiar[i][j + 1];

            Setlength(auxMatrizParaParlimiar[i], Length(auxMatrizParaParlimiar[i]) - 1);
          end;

          // Remova o elemento de DomCount com valor 0
          Setlength(DomCount, Length(DomCount) - 1);
          // Reduza o tamanho de DomCount
          for i := 0 to IndexToRemove - 1 do
            DomCount[i] := DomCount[i];

          for i := IndexToRemove to High(DomCount) do
            DomCount[i] := DomCount[i + 1];

          // Remova a alternativa correspondente em Indices
          for i := IndexToRemove to High(Indices) - 1 do
            Indices[i] := Indices[i + 1];

          Setlength(Indices, Length(Indices) - 1);

        end;
      end;

      TudoZero := true;
      for i := 0 to High(DomCount) do
      begin
        if DomCount[i] <> 0 then
        begin
          TudoZero := false;
          break; // Encontramos um valor diferente de zero, podemos sair do loop
        end;
      end;

      if TudoZero then
      begin
        //WebApplication.ShowMessage(
          //'Todos os valores em DomCount são iguais a zero.');
        TIWUserSession(WebApplication.Data).Achousol:= true;
      end
      else
      begin
        //WebApplication.ShowMessage('Tem Zero.');
        TIWUserSession(WebApplication.Data).sol := -5;
        end;
        ZeroEnc := not TudoZero; // Define ZeroEnc com base na nova verificação
    end;

   // TIWUserSession(WebApplication.Data).epsol:= valorep;
    if (ep <> 0) and (TIWUserSession(WebApplication.Data).verfpl = false) and (TIWUserSession(WebApplication.Data).sol = -5) then
   begin
      TIWUserSession(WebApplication.Data).verfpl := true;
      PLOrdenacao(ep);
      // INICIO - PEDRO - 28/02/2024
      if (TIWUserSession(WebApplication.Data).sol = 3) or (TIWUserSession(WebApplication.Data).sol = 2) then
      begin
      TIWUserSession(WebApplication.Data).epsol:= ep;
      exit;
      end;
      // FIM - PEDRO - 28/02/2024
    end;

    if TIWUserSession(WebApplication.Data).passouaqui = false then
    begin
        /// Se rodou a PL considerando o ep, não teve circuito e obteve uma solução
        /// então a matrizparpar de ep é considerada
        /// caso contrário, considera a que foi salva no Grid referente ao valorep
         if (TIWUserSession(WebApplication.Data).Achousol = true) and (TIWUserSession(WebApplication.Data).sol <> -5) then
         begin
         for i := 0 to NumAlt - 1 do
          for j := 0 to NumAlt - 1 do
          MatrizParaPar[i, j] := MatrizParaPar[i, j];
          TIWUserSession(WebApplication.Data).epsol:= ep;
         end
         else
         begin
          for i := 0 to NumAlt - 1 do
          for j := 0 to NumAlt - 1 do
            MatrizParaPar[i, j] := Strtoint(IWGridlm.Cell[j,i].Text);
            TIWUserSession(WebApplication.Data).epsol:= 0;
          end;

        a := 0;
        b := 0;
        c := 0;
        for i := 0 to NumAlt - 1 do
          for j := 0 to NumAlt - 1 do
          begin
            case MatrizParaPar[i, j] of
              0:
                INC(a);
              1:
                INC(b);
              2:
                INC(c);
            end;
          end;

        With TIWUserSession(WebApplication.Data) do
        begin
          TIWUserSession(WebApplication.Data).NumRel := b + Round(c / 2);
          NumInd := Round(c / 2);
          TIWUserSession(WebApplication.Data).NDRl := b;
        end;

     With TIWUserSession(WebApplication.Data) do
        begin
          for i := 0 to NumAlt - 1 do
            for j := 0 to NumAlt - 1 do
              TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo, i, j] := MatrizParaPar[i, j];
          INC(Ciclo);
          ConstruirMatrizgrupo;
          if (TIWUserSession(WebApplication.Data).NumRel) >= (NumAlt * (NumAlt - 1)) / 2 then
          begin
            // Possíveis soluções
            if NumInd = 0 then
              sol := 3;
            if NumInd > 0 then
              sol := 2;
          end;
        end;


    rgnHolisticaOrd.Hide;
    IWRgnfinaltabelaCreate(self);
    IWRgnfinaltabela.Show;
    end;
  end;
  // INICIO - PEDRO - 28/02/2024
  if (TIWUserSession(WebApplication.Data).sol = 3) or (TIWUserSession(WebApplication.Data).sol = 2) then
  TIWUserSession(WebApplication.Data).epsol:= valorep;
  // FIM - PEDRO - 28/02/2024
  TIWUserSession(WebApplication.Data).passouaqui:= true;
end;

procedure TfrmResultados.Portuguese1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoffteste\images\Guia Rápido Fitradeoff - PT-BR' + '.pdf',
    True);
end;

procedure TfrmResultados.CmbxHEChange(Sender: TObject);
var
  str, strnum: string;
  i: integer;
begin
  TbCtrlvisualizationsHR.Visible := True;
  TIWUserSession(WebApplication.Data).PAH := True;
  // ** Informa que a Holística foi iniciada para Ordenação **//
  TIWUserSession(WebApplication.Data).AuxRSel := True;
  // ** Verifica o nível selecionado **//
  str := CmbxHER.Items[CmbxHER.ItemIndex];
  strnum := '';

  // ** Identificando o nível selecionado, se o idioma for diferente, o nº de caractéres
  // **No combobox muda **//
  if TIWUserSession(WebApplication.Data).idioma = 1 then
    for i := 7 to length(str) do
      strnum := strnum + str[i]
    else
      for i := 18 to length(str) do
        strnum := strnum + str[i];

  // ** Atualiza as visualizações **//
  CmbxResults.ItemIndex := CmbxHER.ItemIndex;
  CmbxResultsChange(self);
  btnUpFRClick(self);

  if TIWUserSession(WebApplication.Data).idioma = 1 then
  begin
    lblstepwarning.caption := 'Passo 2:';
    txtstepswarning.Lines[0] :=
      'Agora, use uma das visualizações para escolher um par de alternativas incomparáveis, deixe-as selecionadas na caixa abaixo e clique em "Atualizar".';
  end
  else
  begin
    lblstepwarning.caption := 'Step 2:';
    txtstepswarning.Lines[0] :=
      'Now, use one of the visualizations to define a pair of incomparable alternatives to evaluate, check them in the box below and then click on "update".';

  end;
  // ** Exibe os componentes de seleção de alternativas **//
  // rgnNoteExp.Visible := true;
  chcklstbxResults.Visible := True;
  btnUpFR.Visible := True;
  cmbxSPairs.Clear;
  if TbCtrlvisualizations.ActivePage = 0 then
  begin
    TbCtrlvisualizations.ActivePage := 2;
    TbCtrlvisualizationsChange(self);
  end;
end;

procedure TfrmResultados.CmbxResultsChange(Sender: TObject);
var
  i, J, k: integer;
  str, strnum: string;
begin
  with TIWUserSession(WebApplication.Data) do
  begin

    str := CmbxResults.Items[CmbxResults.ItemIndex];
    strnum := '';

    // ** Identificando o nível selecionado, se o idioma for diferente, o nº de caractéres
    // **No combobox muda **//
    if TIWUserSession(WebApplication.Data).idioma = 1 then
      for i := 7 to length(str) do
        strnum := strnum + str[i]
      else
        for i := 18 to length(str) do
          strnum := strnum + str[i];
    try
      IndiceCBHE := StrToint(strnum) - 1;
    except
      IndiceCBHE := 0;
    end;

    gerar_combinacoes;

    Setlength(VtrAlternatives, 0);
    // ** Atualiza-se o vetor para plotagem dos gráficos **//
    for i := 1 to length(MatrizGrupo[IndiceCBHE]) - 1 do
      for J := 1 to length(MatrizGrupo[IndiceCBHE]) - 1 do
        if i <> J then
          if (ArmazenaParaPar[Ciclo - 1, MatrizGrupo[IndiceCBHE, i],
            MatrizGrupo[IndiceCBHE, J]] = 0) and
            (ArmazenaParaPar[Ciclo - 1, MatrizGrupo[IndiceCBHE, J],
            MatrizGrupo[IndiceCBHE, i]] = 0) then
          begin
            Setlength(VtrAlternatives, length(TIWUserSession(WebApplication.Data).VtrAlternatives) + 1);
            TIWUserSession(WebApplication.Data).VtrAlternatives
              [length(VtrAlternatives) - 1] := TIWUserSession
              (WebApplication.Data).MatrizGrupo[IndiceCBHE, i];
            break;
          end
          else
            continue;

    // ** Limpa o combobox da alternativas da Holística **//
    cmbxHEA1.Clear;
    // **Atualiza o listBox de seleção**//
    { -------- LISTBOX DE ALTERNATIVAS EXIBIDAS ---------- }
    With TIWUserSession(WebApplication.Data) do
    begin
      J := length(TIWUserSession(WebApplication.Data).VtrAlternatives);
      chcklstbxResults.Items.Clear;
      for i := 0 to J - 1 do
      begin
        chcklstbxResults.Items.Add(NomeAlt[VtrAlternatives[i]]);
        cmbxHEA1.Items.Add(NomeAlt[VtrAlternatives[i]]);
        chcklstbxResults.Selected[i] := True;
      end;
    end;

    // ** Se uma holística estiver em andamento **//
    if TIWUserSession(WebApplication.Data).PAH then
    begin
      cmbxHEA1.ItemIndex := 0;
      cmbxHEA1Change(self);
    end;

    Escala := 0;
    Radar(Escala);
    Barras(Escala);
    Bolhas(Escala);
  end;
end;

procedure TfrmResultados.cmbxSPairsChange(Sender: TObject);
var
  i, J: integer;
  str1, str2: string;
begin
  With TIWUserSession(WebApplication.Data) do
  begin
    str1 := cmbxSPairs.Items[cmbxSPairs.ItemIndex];
    if idioma = 0 then
    begin
      for i := 6 to length(str1) - 1 do
        if str1[i] = ':' then
          break
        else
          str2 := str2 + str1[i];
    end // ** Idioma =0
    else
    begin
      for i := 5 to length(str1) - 1 do
        if str1[i] = ':' then
          break
        else
          str2 := str2 + str1[i];
    end; // Else

    TIWUserSession(WebApplication.Data).ParHolisticaOrd := StrToint(str2) - 1;
    reverPar := True;
    NextView;
    reverPar := false;
  end; // ** With

end;

procedure TfrmResultados.mnBtnConsequences1Click(Sender: TObject);
var
  i, J: integer;

begin
  if StrToint(edtinst.Text) > 10000 then
  begin
    WebApplication.ShowMessage(
      'It has a limit of 10.000 instances for this version. We apologize for this inconvenience.');
    Exit;
  end;

  rgnsav.Show;
  CriarElementosAS;
  IWRgnfinaltabela.Hide;
  //cmbbxAS.Items.Clear;
  with TIWUserSession(WebApplication.Data) do
  begin
    // ** Indica que a AS não é da Função Valor **//
    AsVF := false;
    ninst := StrToint(edtinst.Text);
    Setlength(CriSel, Numcrit);
    Setlength(TIWUserSession(WebApplication.Data).pmax, Numcrit);
    Setlength(TIWUserSession(WebApplication.Data).pmin, Numcrit);
    nsel := 0;
    NCV := 0;
    VauxSel := -1;
    //cmbbxAS.Items.Clear;
    for i := 0 to Numcrit - 1 do
    begin
      //cmbbxAS.Items.Add(NomeCrit[i]);
      /// / Inicializa ós vetores ////
      CriSel[i] := false;
      pmax[i] := 0;
      pmin[i] := 0;
    end;
  end;

  // limpando vetores da AS de ordenação
  Setlength(TIWUserSession(WebApplication.Data).vtrASordchange, TIWUserSession
      (WebApplication.Data).NumAlt);
  for J := 0 to TIWUserSession(WebApplication.Data).NumAlt - 1 do
  begin
    TIWUserSession(WebApplication.Data).vtrASordchange[J] := 0;
  end;
end;

procedure TfrmResultados.ConstruirMatrizgrupo;
var
  MatrizKS, MatrizParaPar, MatrizGrupos: Array of array of integer;
  DomCount, Grp, indicesordenados: array of integer;
  i, J, k, NAlt, a, B, C, grupo, temp: integer;
  MatInd, Mat: Array of Array of integer;
  Ind: Array of boolean;
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
      for J := 0 to NumAlt - 1 do
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
      Setlength(MatrizGrupo[i], Grp[i] + 1);
      for J := 0 to Grp[i] do
        MatrizGrupo[i, J] := MatrizGrupos[i, J];
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
    Setlength(VAltPositionsO, NumAlt);
    for i := 0 to grupo - 1 do
      for J := 0 to Grp[i] - 1 do
        VAltPositionsO[MatrizGrupos[i, J + 1]] := MatrizGrupos[i, 0];
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
        MatResultOrd[i, 1] := '[' + AltSiglas[MatInd[i, 0]] + ', ' + AltSiglas
          [MatInd[i, 1]] + ']';
      for J := 1 to B - 1 do
      begin
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + AltSiglas
          [MatInd[i, 2 * J]] + ', ' + AltSiglas[MatInd[i, 2 * J + 1]] + ']';
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
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + AltSiglas[Mat[i, 0]]
          + ']';
      for J := 1 to B - 1 do
      begin
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + AltSiglas[Mat[i, J]]
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

// Transforma os valores da consMatrix em uma escala de razão
procedure TfrmResultados.EscalaRazao;
var
  i, J: integer;
  Maxl, Minl: Array of Double;
  AuxVetPOA: array of integer;
  // ConsRazao: array of array of Double;
begin

  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(Consrazao, NumAlt, Numcrit);
    Setlength(Maxl, Numcrit);
    Setlength(Minl, Numcrit);
    // Setlength(AuxVetPOA, length(VtrAlternatives));

    J := 0;

    for i := 0 to length(VtrAlternatives) - 1 do
    begin
      if chcklstbxResults.Selected[i] then
      begin
        Setlength(AuxVetPOA, J + 1);
        AuxVetPOA[J] := TIWUserSession(WebApplication.Data).VtrAlternatives[i];
        INC(J);
      end;
    end;

    // ** Buscando maximos e minimos locais (Escala de Razão) **//
    for J := 0 to Numcrit - 1 do
    begin
      Maxl[J] := ConsMatrix[AuxVetPOA[0], J];
      Minl[J] := ConsMatrix[AuxVetPOA[0], J];
    end;
    for J := 0 to Numcrit - 1 do
      for i := 0 to length(AuxVetPOA) - 1 do
      begin
        if ConsMatrix[AuxVetPOA[i], J] > Maxl[J] then
          Maxl[J] := ConsMatrix[AuxVetPOA[i], J];
        if ConsMatrix[AuxVetPOA[i], J] < Minl[J] then
          Minl[J] := ConsMatrix[AuxVetPOA[i], J];
      end;

    for J := 0 to Numcrit - 1 do
      if Maxl[J] = Minl[J] then
      begin
        /// /Caso as alternativas tenham a mesma consequêquencia no critério j, então
        /// independente se for max ou min a conseq nrmalizada será igual a 1 na escala
        /// de razão, esse comado se faz necessário para evitar erros nos casos de critérios
        /// mistos ///////////////////////////////////////////////////////////////////////
        for i := 0 to length(AuxVetPOA) - 1 do
          TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], J] := 1;
      end
      else
        for i := 0 to length(AuxVetPOA) - 1 do
        begin
          if (TypeOfCrit[J] = 1) or (TypeOfCrit[J] = 3) or (TypeOfCrit[J] = 0)
            or (TypeOfCrit[J] = 2) then
          begin // dos criterios de maximização

            // * ConsequenciaPositivas ou zero *//
            if (Maxl[J] > 0) and (Minl[J] >= 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], J] :=
                (TIWUserSession(WebApplication.Data)
                  .ConsMatrix[AuxVetPOA[i], J] / Maxl[J]);
            // fim caso para consequencias são diferente de zero

            // * Consequencias mistas (+, -, 0)*//
            if (Maxl[J] >= 0) and (Minl[J] < 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], J] :=
                TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], J]
                / (Maxl[J] - Minl[J]) + 1 - Maxl[J] / (Maxl[J] - Minl[J]);

            // * Consequencias negativas *//
            if (Minl[J] < 0) and (Maxl[J] < 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], J] :=
                Maxl[J] / TIWUserSession(WebApplication.Data)
                .ConsMatrix[AuxVetPOA[i], J];

          end; // Fimdoscritérios de maximização

          { if (TypeOfCrit[J] = 0) or (TypeOfCrit[J] = 2) then
            begin // inicio dos critérios de minimização

            // * ConsequenciaPositivas *//
            if (ConsMatrix[i, J] <> 0) and (Minl[J] > 0) then
            TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], J] :=
            (Minl[J] / TIWUserSession(WebApplication.Data)
            .ConsMatrix[AuxVetPOA[i], J]);
            // para consequencias diferentes de zero

            // * Consequencias mistas (+, -, 0)*//
            if (Minl[J] <= 0) and (Maxl[J] >= 0) then
            TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], J] :=
            TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], J]
            / (Minl[J] - Maxl[J]) + 1 - Minl[J] / (Minl[J] - Maxl[J]);

            // * Consequencias negativas *//
            if (Minl[J] < 0) and (Maxl[J] < 0) then
            TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], J] :=
            TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], J]
            / Minl[J];

            end; // fim dos critérios de minimização }
        end; // i

  end; // with
end;

procedure TfrmResultados.ETBtnClick(Sender: TObject);
begin
  rgnCEQT.Show;
end;

procedure TfrmResultados.imgInglesClick(Sender: TObject);
begin
  { imgportugues.Visible := True;
    imgPORT1.Visible := True;
    imgPORT2.Visible := True;
    imgPORT3.Visible := True;
    imgPORT4.Visible := True;
    imgPORT5.Visible := True;
    imgPORT6.Visible := True; }
  imgIngles.Visible := false;
  imgING1.Visible := false;
  imgING2.Visible := false;
  imgING3.Visible := false;
  //imgING4.Visible := false;
  imgING5.Visible := false;
  ImgING6.Visible := false;
  TIWUserSession(WebApplication.Data).idioma := 0;
  Definir_Idioma;
end;

procedure TfrmResultados.imgportuguesClick(Sender: TObject);
begin
  { imgIngles.Visible := True;
    imgING1.Visible := True;
    imgING2.Visible := True;
    imgING3.Visible := True;
    imgING4.Visible := True;
    imgING5.Visible := True;
    ImgING6.Visible := True; }
  imgportugues.Visible := false;
  imgPORT1.Visible := false;
  imgPORT2.Visible := false;
  imgPORT3.Visible := false;
  //imgPORT4.Visible := false;
  imgPORT5.Visible := false;
  imgPORT6.Visible := false;
  TIWUserSession(WebApplication.Data).idioma := 1;
  Definir_Idioma;
end;

procedure TfrmResultados.Intercriteriaevaluation1Click(Sender: TObject);
var
i: integer;
begin
  TIWUserSession(WebApplication.Data).passouaqui := false;  // Yara - Usado na PL de ordenação para garantir que rodou duas vezes

  with UserSession.ZQuery1 do
  begin
  sql.Text := 'UPDATE current_stage SET solinter ="' + '' + '" WHERE id_problem="' +
  (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
  ExecSQL;
  end;

  if TIWUserSession(WebApplication.Data).RETPROBDEPOIS = -4555 then
  begin
    TIWUserSession(WebApplication.Data).RETPROBDEPOIS := 10;
  end;

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
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;

  // auxiliar que armazena a sequencia de respostas
  TIWUserSession(WebApplication.Data).Ans_seq := '';


end;

procedure TfrmResultados.RestartIntraClick(Sender: TObject);
begin { alteração 21.02.22 }
  TIWUserSession(WebApplication.Data).passouaqui := false;

  with UserSession.ZQuery1 do
  begin
  sql.Text := 'UPDATE current_stage SET solinter ="' + '' + '" WHERE id_problem="' +
  (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
  ExecSQL;
  end;

  if TIWUserSession(WebApplication.Data).RETPROBDEPOIS = -4555 then
  begin
    TIWUserSession(WebApplication.Data).RETPROBDEPOIS := 10;
  end;

  With TIWUserSession(WebApplication.Data) do

  begin
    IWRgnReset2.Visible := false;
    retornointra := 0; // como está resetando, problema volta para estagio inicial.
    Setlength(TIWUserSession(WebApplication.Data).newFtipo, 0);
    // alteração 22.02.22
    TIWUserSession(WebApplication.Data).resetintra := true;
    TTFrmIntraCriterio.Create(WebApplication).Show;


    ///Adicionando Ciclo o reset nas informações da intra na exportação  do sumário
    ///

    TIWUserSession(WebApplication.Data).infoCYCLE := TIWUserSession
      (WebApplication.Data).infoCYCLE + '0////Reset elicitation/';

  //Incrementando a quantidade de ciclos
  inc(TIWUserSession(WebApplication.Data).Nciclos);
  //Salvando a contagem dos ciclos em um vetor
  SetLength(TIWUserSession(WebApplication.Data).guardaciclos, TIWUserSession(WebApplication.Data).Nciclos);
  TIWUserSession(WebApplication.Data).guardaciclos[0] := 1; //O ciclo inicial sempre será 1
  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] :=  0;


  end;
end; // fim do procedimento

procedure TfrmResultados.iwbtnCloseDHClick(Sender: TObject);
begin
  iwrgnHasseDiagram.Hide;
  iwrgnLegendDH.Visible := false;
  // rgnMatrizDistancias.left := 03;
  if not TIWUserSession(WebApplication.Data).PAH then
  begin
    IWRgnfinaltabela.Show;
    lnkmaxdif.Visible := True;
    lnkhide.Visible := false;
    { rgnMatrizDistancias.Parent := IWRgnfinaltabela;
      rgnMatrizDistancias.ZIndex := 10000;
      rgnMatrizDistancias.Left := 904;
      rgnMatrizDistancias.Top := 498;
      rgnMatrizDistancias.Width := 321;
      rgnMatrizDistancias.Height := 246; }
    rgnHEQ0.Top := 228;
  end
  else
  begin
    rgnHolisticaOrd.Show;
    lnkmaxdifhol.Visible := True;
    lnkmaxdifhohide.Visible := false;
    { rgnMatrizDistancias.Parent := RHasse_Holistic;
      rgnMatrizDistancias.left := 03; }
  end;
end;

// CONSTRUIR GRÁFICO BOLHA
procedure TfrmResultados.Bolhas(Escala: integer);
var
  a, C, i, auxSeries, g, y: integer;
  bubble: array of TBubbleSeries;
  qntPOA, indCB: integer;
  AuxVetPOA: array of integer;
  Krange: Array [0 .. 1] of TLineSeries;
  coresalt, coresalt1: array of Tcolor;
  primeiracor : boolean;
begin
  With TIWUserSession(WebApplication.Data) do
  begin

    Chart1.Title.Clear;
    Chart1.RemoveAllSeries;
    Chart1.BottomAxis.Items.Clear;
    Chart1.Legend.Visible := True;

    Chart1.View3D := false;
    Chart1.BottomAxis.Visible := True;
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
      if chcklstbxResults.Selected[a] = True then // Alternativa selecionada
      begin
        bubble[a - auxSeries] := TBubbleSeries.Create(self);
        Chart1.AddSeries(bubble[a - auxSeries]);
        bubble[a - auxSeries].Color := coresalt1[AuxVetPOA[a]];
        Chart1.series[a - auxSeries].Marks.Visible := false;
        Chart1.series[a - auxSeries].ColorEachPoint := false;
        Chart1.series[a - auxSeries].Legend.Text := AltSiglas[AuxVetPOA[a]];

        indCB := -1;
        for C := 0 to Numcrit - 1 do
        begin
          // ** Se todas as alternativas tiverem a mesmca consequência no critério
          // ** Não inclui o mesmo no gráfico **///
          if esconderCrit[vtrordem[c]] then // ** O preenchimento deste vetor é feito no procedimento do gráfico radar **//
            continue;

          INC(indCB);

          if Escala = 0 then // ESCALA DE RAZÃO
            bubble[a - auxSeries].AddBubble
              (indCB, Consrazao[AuxVetPOA[a], vtrordem[c]], 0.05, '');
          if Escala = 1 then // ESCALA INTERVALAR
            bubble[a - auxSeries].AddBubble
              (indCB, ConsNorm[AuxVetPOA[a], vtrordem[c]], 0.05, '');

        end;
      end
      else
        auxSeries := auxSeries + 1;
    end;

    // ** Adicionando séries dos pesos máxmimos e mínimos ao gráfico **//
    { Krange[0] := TLineSeries.Create(self);
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
      for i := 0 to Numcrit - 1 do
      begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // ** Não inclui o mesmo no gráfico **///
      if esconderCrit[i] then // ** O preenchimento deste vetor é feito no procedimento do gráfico radar **//
      continue;
      INC(indCB);
      Krange[0].AddXY(indCB, MaxPeso[i]);
      Krange[1].AddXY(indCB, MinPeso[i]);
      end;

      indCB := -1; }

    if auxSeries = qntPOA then
      Chart1.Legend.Visible := false;

    Chart1.LeftAxis.Increment := 0.2;

    Chart1.BottomAxis.LabelsAlternate := True;
    Chart1.BottomAxis.Items.Automatic := false;

    indCB := -1;

    for i := 0 to Numcrit - 1 do
    begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // ** Não inclui o mesmo no gráfico **///
      if esconderCrit[vtrordem[i]] then
        continue;
      INC(indCB);
      if (Typeofcrit[vtrordem[i]] = 0) or (Typeofcrit[vtrordem[i]] = 2) or (Typeofcrit[vtrordem[i]] = 4) then
      begin
      Chart1.BottomAxis.Items.Add(indCB, CritSiglas[vtrordem[i]]+ ' (⬇)');
      end;

      if (Typeofcrit[vtrordem[i]] = 1) or (Typeofcrit[vtrordem[i]] = 3) or (Typeofcrit[vtrordem[i]] = 5) then
      Chart1.BottomAxis.Items.Add(indCB, CritSiglas[vtrordem[i]]+ ' (⬆)');
    end;

    IWImage6.Picture.Bitmap.Assign
      (Chart1.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImage6.Width,
          IWImage6.Height)));

  end;
end;

// CONSTRUIR GRÁFICO RADAR
procedure TfrmResultados.Radar(Escala: integer);
var
  rad: array of TRadarSeries;
  a, i, C, y, g: integer;
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
    Chart3.BottomAxis.Visible := True;
    Chart3.SeriesList.ClearValues;
    // Chart3.Title.Text.Add('Radar Graph');
    Chart3.Legend.Visible := True;

    Setlength(AuxVetPOA, length(VtrAlternatives));
    Setlength(rad, NumAlt);
    Setlength(esconderCrit, Numcrit);

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
      for i := 0 to Numcrit - 1 do
        TIWUserSession(WebApplication.Data).esconderCrit[i] := false;
    // ** Elimina critérios da visualização **//
    if chckbxhidec.Checked then
      for i := 0 to Numcrit - 1 do
      begin
        // ** Supõe que todas as alternativas têm o mesmo desempenho no critério I **//
        esconderCrit[i] := True;
        // ** Inicializa a ver com a primeira consequência no critério I **//
        for a := 0 to qntPOA - 1 do
          if chcklstbxResults.Selected[a] then
          begin
            ConseqG := ConsMatrix[AuxVetPOA[a], i];
            break;
          end;
        for C := 0 to qntPOA - 1 do
          if (ConsMatrix[AuxVetPOA[c], i] <> ConseqG) and
            (chcklstbxResults.Selected[c]) then
          begin
            esconderCrit[i] := false;
            break;
          end;
      end;

    for a := 0 to qntPOA - 1 do
    begin

      if chcklstbxResults.Selected[a] = True then
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

        for C := 0 to Numcrit - 1 do
        begin
 // ** Se todas as alternativas tiverem a mesmca consequência no critério
          // ** Não inclui o mesmo no gráfico **///
          if esconderCrit[vtrordem[C]] then
            continue;
          if C = 0 then
            fc := 0
          else
            fc := Numcrit - C;

      if (Typeofcrit[vtrordem[C]] = 0) or (Typeofcrit[vtrordem[C]] = 2) or (Typeofcrit[vtrordem[C]] = 4) then
      begin
          if Escala = 0 then // ESCALA DE RAZÃO
            rad[a - auxSeries].AddXY(fc, Consrazao[AuxVetPOA[a], vtrordem[C]],
              CritSiglas[vtrordem[C]]+ ' (⬇)');
          if Escala = 1 then // ESCALA INTERVALAR
            rad[a - auxSeries].AddXY(fc, ConsNorm[AuxVetPOA[a], vtrordem[C]],
              CritSiglas[vtrordem[C]]+ ' (⬇)');
      end;

       if (Typeofcrit[vtrordem[C]] = 1) or (Typeofcrit[vtrordem[C]] = 3) or (Typeofcrit[vtrordem[C]] = 5) then
      begin
          if Escala = 0 then // ESCALA DE RAZÃO
            rad[a - auxSeries].AddXY(fc, Consrazao[AuxVetPOA[a], vtrordem[C]],
              CritSiglas[vtrordem[C]]+ ' (⬆)');
          if Escala = 1 then // ESCALA INTERVALAR
            rad[a - auxSeries].AddXY(fc, ConsNorm[AuxVetPOA[a], vtrordem[C]],
              CritSiglas[vtrordem[C]]+ ' (⬆)');
      end;



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

procedure TfrmResultados.Ranking1Click(Sender: TObject);
var
  i: integer;
begin
  With TIWUserSession(WebApplication.Data) do
  begin
    Problematica := 1;
    Setlength(ArmazenaParaPar, 150, NumAlt, NumAlt);
    zeramatriz := True;
    PLOrdenacao(0);
    TfrmResultados.Create(WebApplication).Show;
  end;
end;

procedure TfrmResultados.rdbtnEXp1Click(Sender: TObject);
begin
  rdbtnEXp1.Checked := True;
  rdbtnEXp2.Checked := false;
  rdbtnEXp3.Checked := false;
  rdbtnEXp1R.Checked := True;
  rdbtnEXp2R.Checked := false;
  rdbtnEXp3R.Checked := false;
end;

procedure TfrmResultados.rdbtnEXp2Click(Sender: TObject);
begin
  rdbtnEXp1.Checked := false;
  rdbtnEXp2.Checked := True;
  rdbtnEXp3.Checked := false;
  rdbtnEXp1R.Checked := false;
  rdbtnEXp2R.Checked := True;
  rdbtnEXp3R.Checked := false;
end;

procedure TfrmResultados.rdbtnEXp3Click(Sender: TObject);
begin
  rdbtnEXp1.Checked := false;
  rdbtnEXp2.Checked := false;
  rdbtnEXp3.Checked := True;
  rdbtnEXp1R.Checked := false;
  rdbtnEXp2R.Checked := false;
  rdbtnEXp3R.Checked := True;
end;

procedure TfrmResultados.rgnASCreate(Sender: TObject);
begin
rgnas.Align := AlClient;
end;

procedure TfrmResultados.rgnHolisticaOrdCreate(Sender: TObject);
begin
//Tela do analista
With TIWUserSession(WebApplication.Data) do
begin
if (heuristica = true) then
begin
btnshowrecommedation.Visible:= true;
IWImage48.Visible:= true;
end;
end;
//Fim Tela do analista
end;



procedure TfrmResultados.rgnsavCreate(Sender: TObject);
begin
rgnsav.Align := AlClient;
end;

// CONSTRUIR GRÁFICO BARRAS
procedure TfrmResultados.Barras(Escala: integer);
var
  bar: array of TBarSeries;
  a, i, C, J, auxSeries, y: integer;
  qntPOA, G: integer;
  auxnumcrit: integer;
  AuxVetPOA: array of integer;
  indCB: integer;
  Krange: Array [0 .. 1] of TLineSeries;
  ValorMeio: Integer;
  IndiceMeio: Integer;
  coresalt, coresalt1: array of Tcolor;
  primeiracor: boolean;
begin

  auxnumcrit := TIWUserSession(WebApplication.Data).Numcrit;

  With TIWUserSession(WebApplication.Data) do
  begin
    // Sol := -5;
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
    Chart2.Legend.Visible := True;
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

      if chcklstbxResults.Selected[a] = True then // Alternativa selecionada
      begin

        bar[a - auxSeries] := TBarSeries.Create(self);
        Chart2.AddSeries(bar[a - auxSeries]);
        bar[a - auxSeries].Color := coresalt1[AuxVetPOA[a]];
        Chart2.series[a - auxSeries].Marks.Visible := false;
        Chart2.series[a - auxSeries].Legend.Text := AltSiglas[AuxVetPOA[a]];

        indCB := -1;

        for C := 0 to Numcrit - 1 do
        begin
          // ** Se todas as alternativas tiverem a mesmca consequência no critério
          // ** Não inclui o mesmo no gráfico **///
          if esconderCrit[vtrordem[C]] then // ** O preenchimento deste vetor é feito no procedimento do gráfico radar **//
            continue;

          INC(indCB);

        {if TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[a], vtrordem[C]] = 1 then
        begin
         if (Typeofcrit[vtrordem[C]] = 0) or (Typeofcrit[vtrordem[C]] = 2) then
          begin
          if Escala = 0 then // ESCALA DE RAZÃO
            Chart2.series[a - auxSeries].AddXY
              (indCB, TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[a], vtrordem[C]], 'Min');
          if Escala = 1 then // ESCALA INTERVALAR
            Chart2.series[a - auxSeries].AddXY
              (indCB, ConsNorm[AuxVetPOA[a], vtrordem[C]], 'Min');
         Chart2.series[a-auxSeries].Marks.Visible := True;
          end;


           if (Typeofcrit[vtrordem[C]] = 1) or (Typeofcrit[vtrordem[C]] = 3) then
          begin
          if Escala = 0 then // ESCALA DE RAZÃO
            Chart2.series[a - auxSeries].AddXY
              (indCB, TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[a], vtrordem[C]], 'Max');
          if Escala = 1 then // ESCALA INTERVALAR
            Chart2.series[a - auxSeries].AddXY
              (indCB, ConsNorm[AuxVetPOA[a], vtrordem[C]], 'Max');
         Chart2.series[a-auxSeries].Marks.Visible := True;
          end;
        end;


        if TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[a], vtrordem[C]] <> 1 then
         begin
           if Escala = 0 then // ESCALA DE RAZÃO
            Chart2.series[a - auxSeries].AddXY
              (indCB, Consrazao[AuxVetPOA[a], vtrordem[C]], '');
          if Escala = 1 then // ESCALA INTERVALAR
            Chart2.series[a - auxSeries].AddXY
              (indCB, ConsNorm[AuxVetPOA[a], vtrordem[C]], '');
            //Chart2.series[a - auxSeries].Marks.Visible := false;
         end;  }

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
    { Krange[0] := TLineSeries.Create(self);
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
      for i := 0 to Numcrit - 1 do
      begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // ** Não inclui o mesmo no gráfico **///
      if esconderCrit[i] then // ** O preenchimento deste vetor é feito no procedimento do gráfico radar **//
      continue;
      INC(indCB);

      Krange[0].AddXY(indCB, MaxPeso[i]);
      Krange[1].AddXY(indCB, MinPeso[i]);
      end; }

    if auxSeries = qntPOA - 1 then
      Chart2.Legend.Visible := false;

    Chart2.LeftAxis.Increment := 0.2; // ?

    Chart2.BottomAxis.LabelsAlternate;
    Chart2.BottomAxis.Items.Automatic := false;

    indCB := -1;
    for J := 0 to Numcrit - 1 do
    begin
      // ** Se todas as alternativas tiverem a mesmca consequência no critério
      // ** Não inclui o mesmo no gráfico **///
      if esconderCrit[vtrordem[J]] then
        continue;
      INC(indCB);
      if (Typeofcrit[vtrordem[J]] = 0) or (Typeofcrit[vtrordem[J]] = 2) or (Typeofcrit[vtrordem[J]] = 4) then
      begin
      Chart2.BottomAxis.Items.Add(indCB, CritSiglas[vtrordem[J]]+ ' (⬇)');
      end;

      if (Typeofcrit[vtrordem[J]] = 1) or (Typeofcrit[vtrordem[J]] = 3) or (Typeofcrit[vtrordem[J]] = 5) then
      Chart2.BottomAxis.Items.Add(indCB, CritSiglas[vtrordem[J]]+ ' (⬆)');

    end;

    IWImage4.Picture.Bitmap.Assign
      (Chart2.TeeCreateBitmap(clWebPURPLE, rect(0, 0, IWImage4.Width,
          IWImage4.Height)));

  end; // with
end; // proc

procedure TfrmResultados.btnanalistClick(Sender: TObject);
begin
  rgnanalystlogin.Show;
  IWRgnfinaltabela.Hide;

end;

procedure TfrmResultados.btnanalistlogoutClick(Sender: TObject);
begin
  With TIWUserSession(WebApplication.Data) do
  begin
    Analystkey := -1;
    email := '';
    senha := '';
  end;
  RgnAttentionT.Visible := false;
end;

procedure TfrmResultados.btnhasse1Click(Sender: TObject);
begin
  IWRgnfinaltabela.Hide;
  rgnHolisticaOrd.Hide;
  iwrgnHasseDiagram.Show;
  plotar_max_diff;
  rgnMatrizDistancias.Parent := iwrgnHasseDiagram;
  rgnMatrizDistancias.left := 864;
  rgnMatrizDistancias.Top := 350;
  TIWFadeImage1.Visible := True;
end;

procedure TfrmResultados.btnhasseClick(Sender: TObject);
begin
  IWRgnfinaltabela.Hide;
  // TfrmhasseD.Create(WebApplication).Show;
  iwrgnHasseDiagram.Show;
  TIWFadeImage1.Visible := True;
end;

procedure TfrmResultados.btnHEG1Click(Sender: TObject);
begin
  if rdgrpHEG1.ItemIndex = 0 then
  begin
    // **Está preparado para realizar a HE **
    RgnHEG1.Visible := false;
    if TIWUserSession(WebApplication.Data).idioma = 1 then
      lblHEG0.Text := 'Avaliação Holística quando estiver pronto.'
    else
      lblHEG0.Text := 'Holistic Evaluation when you are ready.';
    // IWLabel117.Visible := false;
    // ** Problemática de escolha **//
    if TIWUserSession(WebApplication.Data).Problematica = 0 then
    begin
      preencher_Alt_Holistica;
      RgnHEG3.Visible := True;
      lnkfinalize.Visible := false;
      // **Libera a matriz de indiferença **//
      //lnkrelations.Visible := True;

    //Tela do analista
    With TIWUserSession(WebApplication.Data) do
    begin
    if (heuristica = true) then
    begin
    btnshowrecommedation1.Visible:= true;
    IWImage49.Visible:= true;
    end;
    end;
    //Fim Tela do analista

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
      RgnSteps.Visible := True;
      RgnHEG4.Visible := True;

      chcklstbxResults.Visible := false;
      btnUpFR.Visible := false;
      CmbxResults.Visible := false;

      // **Direciona o DM para o diagrama **//
      TbCtrlvisualizations.ActivePage := 0;
      TbCtrlvisualizationsChange(self);

    end;
  end
  else
  begin
    // **Não está preparado **//
    RgnHEG1.Visible := false;
    RgnHEG2.Visible := True;
  end;
end;

procedure TfrmResultados.btnhenClick(Sender: TObject);
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

procedure TfrmResultados.btnHERCFRClick(Sender: TObject);
begin
  // ** Exibe a pergunta do porquê interromper **//
  // rgnHERCtrl.Visible := false;
  rgnWHER.Visible := True;
  btnWOKHE.Enabled := True;
end;

{ procedure TfrmResultados.btnHETDecision2Click(Sender: TObject);
  var
  i, j, b, P, Y, l, k, Selected: integer;
  nonsel: array of integer;
  Stop: boolean;
  begin
  With TIWUserSession(WebApplication.Data) do
  begin
  b := 0;
  Stop := false;
  M := 0;
  If AHType <> -5 then
  begin
  /// o tamanho da linha referente a presente avaliação holistica ////
  setlength(nonsel, length(IAltAH) - 1);
  /// / Seta o tamanho
  /// do vetor auxiliar com base no número de alt não escolhidas ////
  /// / Obtém a alt escolhida ////
  for i := 0 to length(IAltAH) - 1 do
  begin
  if Problematica = 1 then
  begin
  if CmbxHEAG2.ItemIndex = i then
  Selected := TIWUserSession(WebApplication.Data).IAltAH[i]
  else
  begin
  nonsel[b] := IAltAH[i];
  INC(b);
  end;
  end;
  /// / Verifica qual foi a alt escolhida ////
  if Problematica = 1 then
  begin
  if CmbxHEAG1.ItemIndex = i then
  Selected := TIWUserSession(WebApplication.Data).IAltAH[i]
  else
  begin
  nonsel[b] := IAltAH[i];
  INC(b);
  end;
  end;
  end;

  /// ///////////////////////////////////////////////////////////////////////
  /// Verifica-se alternativas indiferentes no caso de o decisor escolher a
  /// melhor alternativa na prob de escolha ///////////////////////////////
  if (AHType = 2) and (Problematica = 0) then
  for i := 0 to length(nonsel) - 1 do
  begin
  for l := 0 to TIWUserSession(WebApplication.Data).NDA - 1 do
  begin
  if Selected = VetPOA[l] then
  P := l;
  if nonsel[i] = TIWUserSession(WebApplication.Data).VetPOA[l] then
  Y := l;
  end;
  if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y] = 'I')
  or (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y]
  = 'NP') then
  begin
  if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y] = 'I')
  then
  WebApplication.ShowMessage(
  'It is not possible to state this relations because alternatives '
  + AltSiglas[Selected] + ' and ' + AltSiglas[nonsel[i]] +
  ' has already been considered indifferent. Please inform a different relation of dominance.');
  if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y]
  = 'NP') then
  WebApplication.ShowMessage(
  'It is not possible to state this relations because according to the current iformation level, ' + AltSiglas[Selected] + ' cannot dominate ' + AltSiglas
  [nonsel[i]]
  + ' in all the feasible weight space. Please inform a different relation of dominance.');

  Stop := true;
  end; // se há indiferença
  end;
  /// / Trava para exclusão envolvendo alternativas não domináveis pelo grupo
  /// de alternativas remanescente ///////////////////////////////////////
  if (AHType = 1) and (Problematica = 0) then
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
  if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, Y] = 'I')
  or (TIWUserSession(WebApplication.Data).MatIndiferenca[Y, P]
  = 'NP') then
  begin
  INC(k);
  if k = length(nonsel) then
  Stop := true;
  end; // se há indiferença
  end;

  if Stop = true then
  begin
  if Sol = -5 then
  begin
  rgnHEQ0.Visible := true;
  end;
  /// / Oculta a label de acesso a pagina do analista para evitar bugs ////
  if Analystkey <> 1 then
  begin
  AnalystLogin1.Visible := false;
  end;

  if Analystkey = 1 then
  begin
  btnrecommendationT.Enabled := false;
  end;

  TIWUserSession(WebApplication.Data).PAH := false;
  TfrmResultados.Create(WebApplication).Show;
  Exit;
  end;
  /// ///////////////////////////////////////////////////////////////////////

  /// / A HE foi utilizada para selecionar a melhor alternativa ////
  INC(NumAH);
  /// / Adicionando colunas de acordo ao número HE resalizadas, essa matriz
  /// permite armazenar os índices de todas as HE realizadas, ainda que tenham
  /// sido eliminadas, de forma que não haja duplicação de índices ////////
  INC(TotalAH);
  setlength(HEINDEX, 2, TotalAH);
  /// / Incrementa  contador de Avaliações Holísticas ////
  setlength(MATAH, NumAH);
  setlength(VetVisualization, NumAH);
  /// / Adiciona mais uma linha à matriz de
  /// avaliações holísticas ////
  setlength(TIWUserSession(WebApplication.Data).MATAH[NumAH - 1], length
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
  end; // If

  if Problematica = 0 then
  PLEscolha;
  if Problematica = 1 then
  begin
  PLOrdenacao;
  lblranking.Visible := true;
  lbltitle.Visible := false;
  end;

  if Sol = -5 then
  begin
  rgnHEQ0.Visible := true;

  end;

  /// / Oculta a label de acesso a pagina do analista para evitar bugs ////
  if Analystkey <> 1 then
  begin
  AnalystLogin1.Visible := false;
  end;

  if Analystkey = 1 then
  begin
  btnrecommendationT.Enabled := false;

  end;
  end; // With
  /// / Oculta a pequena região da HE e reapresenta a pergunta inicial da HE ////

  TIWUserSession(WebApplication.Data).PAH := false;
  TfrmResultados.Create(WebApplication).Show;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 8;
  SalvarresultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 12;
  SalvarresultBD;

  end; }

{ procedure TfrmResultados.chcklstbxBarrasAsyncExit(Sender: TObject;
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

{ procedure TfrmResultados.chcklstbxBarrasAsyncCheckClick(Sender: TObject;
  EventParams: TStringList);
  begin
  Escala := 0;
  Barras(Escala);
  end; }






procedure TfrmResultados.btnvoltaranalystpageClick(Sender: TObject);
begin
  rgnanalystlogin.Hide;
  IWRgnfinaltabela.Show;
end;

procedure TfrmResultados.btnWOKHEClick(Sender: TObject);
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
    TfrmResultados.Create(WebApplication).Show;
end;

procedure TfrmResultados.btnWRHECClick(Sender: TObject);
begin
  // ** Retorna ao controle da Holística **//
  rgnHERCtrl.Visible := True;
  rgnWHER.Visible := false;
end;

procedure TfrmResultados.btnYesIFRClick(Sender: TObject);
begin
  // **Finalizando o problema e reavaliando os limites dos pesos **//
  TIWUserSession(WebApplication.Data).Sol := 11;
  TfrmResultados.Create(WebApplication).Show;
  calmaxminweights;
  lnkfinalize.Visible := false;
end;

procedure TfrmResultados.butcompClick(Sender: TObject);
var
  elicitacao: string;
  auxiliar: string;
  recomeda : string;
begin
  // Inicia a sessão do usuário
  with TIWUserSession(WebApplication.Data) do
  begin
    auxiliar := '';

    if ((editalternativas.Text) <= (IntToStr(length(VtrAlternatives)))) then
    auxiliar := auxiliar + editalternativas.Text + 'A' + IntToStr(Numcrit)
      + 'C'
    else
    begin
    WebApplication.ShowMessage('The number of alternatives entered exceeds the number of potentially optimal alternatives, which is ' + IntToStr
    (length(VtrAlternatives)) + ' alternatives. Please adjust to respect this limit.');
    exit;
    end;

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

procedure TfrmResultados.butrankingClick(Sender: TObject);
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

// Mudança Teste de Kendall - Pedro 30/10/2024
procedure TfrmResultados.Correlation; //PROCEDIMENTO DO TESTE DE KENDALL PARA CADA INSTÂNCIA - PEDRO
var
  i, j, k, y, b, count: Integer;
  auxiliar: array of array of string;
  scores: array of array of string;
  // tal : array of array of string;
  SectionStr: shortstring; //
  Section, SectionAux: string;
  totalefetivo, totalmax, nconcordantes, ndiscordantes, max: double;
  z, z1: double;
  teste: string;
  VBase, VComp: double;
  alphaTest, PValor, zcomp, soma: double;
  Id_secao1: Integer;
  ordem, replicacao, linha: Integer;
  auxCor: array of array of string;
  tipo: Integer; // apenas para validar todos os alphas
begin




  totalefetivo := 0;
  nconcordantes := 0;
  ndiscordantes := 0;
  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumAlt - 2 do
    for j := i+1 to NumAlt - 1 do
    begin
      if (valtpositionsO[i] = valtpositionsO[j]) or (TIWUserSession(WebApplication.Data).valtpositions[i] = valtpositions[j]) then
      begin
        totalefetivo := totalefetivo + 1;
        inc(MatrizDominanciaAS[i,j]);
        inc(MatrizDominanciaAS[j,i]);
        continue;
      end;
      if ((TIWUserSession(WebApplication.Data).valtpositionsO[i] > valtpositionsO[j]) and (valtpositions[i] > valtpositions[j])) or ((valtpositionsO[i] < valtpositionsO[j]) and (valtpositions[i] < valtpositions[j])) then
      begin
      totalefetivo := totalefetivo + 1;
      nconcordantes := nconcordantes + 1;
      inc(MatrizDominanciaAS[i,j]);
      inc(MatrizDominanciaAS[j,i]);
      end
      else
      begin
      totalefetivo := totalefetivo - 1;
      ndiscordantes := ndiscordantes + 1;
      end;
    end;
  end;
  // Etapa 4: Cálculo do coeficiente de correlação Tal de Kendall.
  // Considerando que não há empates, ou seja, o risco total de cada seção é diferente do outro
  // SetLength(Tal, Numcases+1, 11);
  SetLength(TIWUserSession(WebApplication.Data).tal, TIWUserSession(WebApplication.Data).currentinstance + 1, 11);
  // cabeçalho
  TIWUserSession(WebApplication.Data).tal[0, 0] := 'Replicacao';
  TIWUserSession(WebApplication.Data).tal[0, 1] := 'Total efetivo';
  TIWUserSession(WebApplication.Data).tal[0, 2] := 'tal';
  TIWUserSession(WebApplication.Data).tal[0, 3] := 'z';
  TIWUserSession(WebApplication.Data).tal[0, 4] := '0,01';
  TIWUserSession(WebApplication.Data).tal[0, 5] := '0,05';
  TIWUserSession(WebApplication.Data).tal[0, 6] := '0,10';
  TIWUserSession(WebApplication.Data).tal[0, 7] := '0,15';
  TIWUserSession(WebApplication.Data).tal[0, 8] := '0,20';
  TIWUserSession(WebApplication.Data).tal[0, 9] := '0,25';
  TIWUserSession(WebApplication.Data).tal[0, 10] := '0,30';

  // Cálculo do total max é igual a combinação de Nsections dois a dois
  totalmax := ((TIWUserSession(WebApplication.Data).NumAlt * (TIWUserSession(WebApplication.Data).Numalt-1))/2);

  // total efetivo é a soma dos scores de cada replicação
  // zerando a soma dos scores para cada replicação

  //totalefetivo := nconcordantes - ndiscordantes;
  //totalmax := nconcordantes + ndiscordantes;

  TIWUserSession(WebApplication.Data).tal[TIWUserSession(WebApplication.Data)
    .currentinstance, 0] := IntToStr(TIWUserSession(WebApplication.Data)
      .currentinstance);
  // obtendo a soma e gravando na matriz tal

  TIWUserSession(WebApplication.Data).tal[TIWUserSession(WebApplication.Data).currentinstance, 1] := FloatToStr(totalefetivo);



  // cálculo de tal
  // atualizando a matriz com o valor de tal da replicação H

  //if totalmax <> 0 then
  TIWUserSession(WebApplication.Data).tal[TIWUserSession(WebApplication.Data)
    .currentinstance, 2] := FloatToStr(totalefetivo / totalmax);
  {if totalmax = 0 then
  TIWUserSession(WebApplication.Data).tal[TIWUserSession(WebApplication.Data)
    .currentinstance, 2] := FloatToStr(0);
  }
  // Verificação se Tal indica existência de associação entre as variáveis
  // Para o numero de seções >= 8, tal pode ser considerado distribuido normalmente
  z := StrToFloat(TIWUserSession(WebApplication.Data)
      .tal[TIWUserSession(WebApplication.Data).currentinstance, 2]) /
    (Sqrt((2 * (2 * TIWUserSession(WebApplication.Data).Numalt + 5)) /
        (9 * TIWUserSession(WebApplication.Data).Numalt * (TIWUserSession
            (WebApplication.Data).Numalt - 1))));
   //TIWUserSession(WebApplication.Data).zmean := TIWUserSession(WebApplication.Data).zmean + z;
  // z1:=roundto(z,-6);
  // resultrepdetailed[H,3]:= floattostr(z1);   //para exportar os valores de z e calc a prob manualmente

  // atualizando a matriz com o valor de z da replicação H
  TIWUserSession(WebApplication.Data).tal[TIWUserSession(WebApplication.Data).currentinstance, 3] := FloatToStr(z);
  // end; //end do for H
  if TIWUserSession(WebApplication.Data).Numalt > 10 then
  begin
  for i := 0 to 100 do
  begin
    if abs(z) > InverseNormalCDF(1- i/100) then
    inc(TIWUserSession(WebApplication.Data).ResultadoAlpha[i]);
  end;
  end;
  SetLength(TIWUserSession(WebApplication.Data).alpha, TIWUserSession(WebApplication.Data).currentinstance + 1);
  TIWUserSession(WebApplication.Data).alpha[TIWUserSession(WebApplication.Data).currentinstance] := 1- NormalCDF(abs(z));
  //Teste de Kendall para pequenas amostras
  if (TIWUserSession(WebApplication.Data).Numalt >= 4) and (TIWUserSession(WebApplication.Data).Numalt <= 10)  then
  tabelaKendall;

  TIWUserSession(WebApplication.Data).Pmean := TIWUserSession(WebApplication.Data).Pmean + TIWUserSession(WebApplication.Data).alpha[TIWUserSession(WebApplication.Data).currentinstance];
  Setlength(TIWUserSession(WebApplication.Data).Freqalpha, 10000);
  //for i := 0 to 1000 do
  //begin
    //if RoundTo(TIWUserSession(WebApplication.Data).alpha[TIWUserSession(WebApplication.Data).currentinstance],-3) = i/1000 then
    //begin
    i := round(TIWUserSession(WebApplication.Data).alpha[TIWUserSession(WebApplication.Data).currentinstance]*10000);
    inc(TIWUserSession(WebApplication.Data).freqalpha[i]);
    //break;
    //end;
  //end;

  // os valores de z estao sendo avaliados apenas positivos, pois uma correlação negativa
  // indica tendencia a inversao de ordem, no qual os primeiros rankings do original
  // seriam os ultimos das simulações
    // Etapa 5: verificando a correlação para o nivel de significancia

end; // do procedimento Correlation

procedure TfrmResultados.tabelaKendall; // Procedimento utilizado para calcular o alpha do teste de Kendall para pequenas amostras
var
i, j, k, y, b, count: Integer;
  auxiliar: array of array of string;
  scores: array of array of string;
  // tal : array of array of string;
  SectionStr: shortstring; //
  Section, SectionAux: string;
  totalefetivo, totalmax, max: double;
  z, z1: double;
  teste: string;
  VBase, VComp: double;
  alphaTest, PValor, zcomp, soma: double;
  Id_secao1: Integer;
  ordem, replicacao, linha: Integer;
  auxCor: array of array of string;
  tipo: Integer; // apenas para validar todos os alphas
begin
  With TIWUserSession(WebApplication.Data) do
  begin
    SetLength(alpha, currentinstance + 1);
    if Numalt = 4 then
    begin
      if StrtoInt(tal[currentinstance, 1]) >= 0 then
      alpha[currentinstance] := 0.625;
      if StrtoInt(tal[currentinstance, 1]) >= 2 then
      alpha[currentinstance] := 0.375;
      if StrtoInt(tal[currentinstance, 1]) >= 4 then
      alpha[currentinstance] := 0.167;
      if StrtoInt(tal[currentinstance, 1]) >= 6 then
      alpha[currentinstance] := 0.042;
    end;
    if Numalt = 5 then
    begin
      if StrtoInt(tal[currentinstance, 1]) >= 0 then
      alpha[currentinstance] := 0.592;
      if StrtoInt(tal[currentinstance, 1]) >= 2 then
      alpha[currentinstance] := 0.408;
      if StrtoInt(tal[currentinstance, 1]) >= 4 then
      alpha[currentinstance] := 0.242;
      if StrtoInt(tal[currentinstance, 1]) >= 6 then
      alpha[currentinstance] := 0.117;
      if StrtoInt(tal[currentinstance, 1]) >= 8 then
      alpha[currentinstance] := 0.042;
      if StrtoInt(tal[currentinstance, 1]) >= 10 then
      alpha[currentinstance] := 0.0083;
    end;
    if Numalt = 8 then
    begin
      if StrtoInt(tal[currentinstance, 1]) >= 0 then
      alpha[currentinstance] := 0.548;
      if StrtoInt(tal[currentinstance, 1]) >= 2 then
      alpha[currentinstance] := 0.452;
      if StrtoInt(tal[currentinstance, 1]) >= 4 then
      alpha[currentinstance] := 0.360;
      if StrtoInt(tal[currentinstance, 1]) >= 6 then
      alpha[currentinstance] := 0.274;
      if StrtoInt(tal[currentinstance, 1]) >= 8 then
      alpha[currentinstance] := 0.199;
      if StrtoInt(tal[currentinstance, 1]) >= 10 then
      alpha[currentinstance] := 0.138;
      if StrtoInt(tal[currentinstance, 1]) >= 12 then
      alpha[currentinstance] := 0.089;
      if StrtoInt(tal[currentinstance, 1]) >= 14 then
      alpha[currentinstance] := 0.054;
      if StrtoInt(tal[currentinstance, 1]) >= 16 then
      alpha[currentinstance] := 0.031;
      if StrtoInt(tal[currentinstance, 1]) >= 18 then
      alpha[currentinstance] := 0.016;
      if StrtoInt(tal[currentinstance, 1]) >= 20 then
      alpha[currentinstance] := 0.0071;
      if StrtoInt(tal[currentinstance, 1]) >= 22 then
      alpha[currentinstance] := 0.0028;
      if StrtoInt(tal[currentinstance, 1]) >= 24 then
      alpha[currentinstance] := 0.00087;
      if StrtoInt(tal[currentinstance, 1]) >= 26 then
      alpha[currentinstance] := 0.00019;
      if StrtoInt(tal[currentinstance, 1]) >= 28 then
      alpha[currentinstance] := 0.000025;
    end;
    if Numalt = 9 then
    begin
      if StrtoInt(tal[currentinstance, 1]) >= 0 then
      alpha[currentinstance] := 0.540;
      if StrtoInt(tal[currentinstance, 1]) >= 2 then
      alpha[currentinstance] := 0.460;
      if StrtoInt(tal[currentinstance, 1]) >= 4 then
      alpha[currentinstance] := 0.381;
      if StrtoInt(tal[currentinstance, 1]) >= 6 then
      alpha[currentinstance] := 0.306;
      if StrtoInt(tal[currentinstance, 1]) >= 8 then
      alpha[currentinstance] := 0.238;
      if StrtoInt(tal[currentinstance, 1]) >= 10 then
      alpha[currentinstance] := 0.179;
      if StrtoInt(tal[currentinstance, 1]) >= 12 then
      alpha[currentinstance] := 0.130;
      if StrtoInt(tal[currentinstance, 1]) >= 14 then
      alpha[currentinstance] := 0.090;
      if StrtoInt(tal[currentinstance, 1]) >= 16 then
      alpha[currentinstance] := 0.060;
      if StrtoInt(tal[currentinstance, 1]) >= 18 then
      alpha[currentinstance] := 0.038;
      if StrtoInt(tal[currentinstance, 1]) >= 20 then
      alpha[currentinstance] := 0.022;
      if StrtoInt(tal[currentinstance, 1]) >= 22 then
      alpha[currentinstance] := 0.012;
      if StrtoInt(tal[currentinstance, 1]) >= 24 then
      alpha[currentinstance] := 0.0063;
      if StrtoInt(tal[currentinstance, 1]) >= 26 then
      alpha[currentinstance] := 0.0029;
      if StrtoInt(tal[currentinstance, 1]) >= 28 then
      alpha[currentinstance] := 0.0012;
      if StrtoInt(tal[currentinstance, 1]) >= 30 then
      alpha[currentinstance] := 0.00043;
      if StrtoInt(tal[currentinstance, 1]) >= 32 then
      alpha[currentinstance] := 0.00012;
      if StrtoInt(tal[currentinstance, 1]) >= 34 then
      alpha[currentinstance] := 0.000025;
      if StrtoInt(tal[currentinstance, 1]) >= 36 then
      alpha[currentinstance] := 0.0000028;
    end;
    if Numalt = 6 then
    begin
      if StrtoInt(tal[currentinstance, 1]) >= 1 then
      alpha[currentinstance] := 0.500;
      if StrtoInt(tal[currentinstance, 1]) >= 3 then
      alpha[currentinstance] := 0.360;
      if StrtoInt(tal[currentinstance, 1]) >= 5 then
      alpha[currentinstance] := 0.235;
      if StrtoInt(tal[currentinstance, 1]) >= 7 then
      alpha[currentinstance] := 0.136;
      if StrtoInt(tal[currentinstance, 1]) >= 9 then
      alpha[currentinstance] := 0.068;
      if StrtoInt(tal[currentinstance, 1]) >= 11 then
      alpha[currentinstance] := 0.028;
      if StrtoInt(tal[currentinstance, 1]) >= 13 then
      alpha[currentinstance] := 0.0083;
      if StrtoInt(tal[currentinstance, 1]) >= 15 then
      alpha[currentinstance] := 0.0014;
    end;
    if Numalt = 7 then
    begin
      if StrtoInt(tal[currentinstance, 1]) >= 1 then
      alpha[currentinstance] := 0.500;
      if StrtoInt(tal[currentinstance, 1]) >= 3 then
      alpha[currentinstance] := 0.386;
      if StrtoInt(tal[currentinstance, 1]) >= 5 then
      alpha[currentinstance] := 0.281;
      if StrtoInt(tal[currentinstance, 1]) >= 7 then
      alpha[currentinstance] := 0.191;
      if StrtoInt(tal[currentinstance, 1]) >= 9 then
      alpha[currentinstance] := 0.119;
      if StrtoInt(tal[currentinstance, 1]) >= 11 then
      alpha[currentinstance] := 0.068;
      if StrtoInt(tal[currentinstance, 1]) >= 13 then
      alpha[currentinstance] := 0.035;
      if StrtoInt(tal[currentinstance, 1]) >= 15 then
      alpha[currentinstance] := 0.015;
      if StrtoInt(tal[currentinstance, 1]) >= 17 then
      alpha[currentinstance] := 0.0054;
      if StrtoInt(tal[currentinstance, 1]) >= 19 then
      alpha[currentinstance] := 0.0014;
      if StrtoInt(tal[currentinstance, 1]) >= 21 then
      alpha[currentinstance] := 0.00020;
    end;
    if Numalt = 10 then
    begin
      if StrtoInt(tal[currentinstance, 1]) >= 1 then
      alpha[currentinstance] := 0.500;
      if StrtoInt(tal[currentinstance, 1]) >= 3 then
      alpha[currentinstance] := 0.431;
      if StrtoInt(tal[currentinstance, 1]) >= 5 then
      alpha[currentinstance] := 0.364;
      if StrtoInt(tal[currentinstance, 1]) >= 7 then
      alpha[currentinstance] := 0.300;
      if StrtoInt(tal[currentinstance, 1]) >= 9 then
      alpha[currentinstance] := 0.242;
      if StrtoInt(tal[currentinstance, 1]) >= 11 then
      alpha[currentinstance] := 0.190;
      if StrtoInt(tal[currentinstance, 1]) >= 13 then
      alpha[currentinstance] := 0.146;
      if StrtoInt(tal[currentinstance, 1]) >= 15 then
      alpha[currentinstance] := 0.108;
      if StrtoInt(tal[currentinstance, 1]) >= 17 then
      alpha[currentinstance] := 0.078;
      if StrtoInt(tal[currentinstance, 1]) >= 19 then
      alpha[currentinstance] := 0.054;
      if StrtoInt(tal[currentinstance, 1]) >= 21 then
      alpha[currentinstance] := 0.036;
      if StrtoInt(tal[currentinstance, 1]) >= 23 then
      alpha[currentinstance] := 0.023;
      if StrtoInt(tal[currentinstance, 1]) >= 25 then
      alpha[currentinstance] := 0.014;
      if StrtoInt(tal[currentinstance, 1]) >= 27 then
      alpha[currentinstance] := 0.0083;
      if StrtoInt(tal[currentinstance, 1]) >= 29 then
      alpha[currentinstance] := 0.0046;
      if StrtoInt(tal[currentinstance, 1]) >= 31 then
      alpha[currentinstance] := 0.0023;
      if StrtoInt(tal[currentinstance, 1]) >= 33 then
      alpha[currentinstance] := 0.0011;
      if StrtoInt(tal[currentinstance, 1]) >= 35 then
      alpha[currentinstance] := 0.00047;
      if StrtoInt(tal[currentinstance, 1]) >= 37 then
      alpha[currentinstance] := 0.00018;
      if StrtoInt(tal[currentinstance, 1]) >= 39 then
      alpha[currentinstance] := 0.000058;
      if StrtoInt(tal[currentinstance, 1]) >= 41 then
      alpha[currentinstance] := 0.000015;
      if StrtoInt(tal[currentinstance, 1]) >= 43 then
      alpha[currentinstance] := 0.0000028;
      if StrtoInt(tal[currentinstance, 1]) >= 45 then
      alpha[currentinstance] := 0.00000028;
    end;
  end;
  With TIWUserSession(WebApplication.Data) do
  begin
  for i := 0 to 100 do
  begin
    if alpha[currentinstance] < (i/100) then
    inc(TIWUserSession(WebApplication.Data).ResultadoAlpha[i]);
  end;
  for i := 0 to 6 do // testando todos os valores de alpha
  begin
    case i of
      0:
        begin
          alphaTest := 0.01;
          // PValue :=
          zcomp := 2.33;
          if (TIWUserSession(WebApplication.Data).alpha[currentinstance] <= alphaTest)or (z >= zcomp) then
          begin
            teste := 'Rejected'; // há correlação
            TIWUserSession(WebApplication.Data).tal[TIWUserSession(WebApplication.Data).currentinstance, 4] :=
              teste;
            TIWUserSession(WebApplication.Data).count_01 := TIWUserSession
              (WebApplication.Data).count_01 + 1;
            // calcula os valores maximos e minimos dos parametros
            // if (cliqTParsec = 1) or (cliqUParsec = 1) then
            // Range_PS_01;
            // if (cliqTParsecCen =1) or (cliqUParsecCen = 1) then
            // Range_PSC_01;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 4] :=
              teste;
          end;
        end; // end do case 0
      1:
        begin
          alphaTest := 0.05;
          // PValue :=
          zcomp := 1.64;
          if (alpha[currentinstance] <= alphaTest)or (z >= zcomp) then
          begin
            teste := 'Rejected'; // há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 5] :=
              teste;
            TIWUserSession(WebApplication.Data).count_05 := TIWUserSession
              (WebApplication.Data).count_05 + 1;
            // calcula os valores maximos e minimos dos parametros
            // if (cliqTParsec = 1) or (cliqUParsec = 1) then
            // Range_PS_05;
            // if (cliqTParsecCen =1) or (cliqUParsecCen = 1) then
            // Range_PSC_05;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 5] :=
              teste;
          end;
        end; // end do case 1
      2:
        begin
          alphaTest := 0.1;
          // PValue :=
          zcomp := 1.28;
          if (alpha[currentinstance] <= alphaTest) or (z >= zcomp) then
          begin
            teste := 'Rejected'; // há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 6] :=
              teste;
            TIWUserSession(WebApplication.Data).count_10 := TIWUserSession
              (WebApplication.Data).count_10 + 1;
            // calcula os valores maximos e minimos dos parametros
            // if (cliqTParsec = 1) or (cliqUParsec = 1) then
            // Range_PS_10;
            // if (cliqTParsecCen =1) or (cliqUParsecCen = 1) then
            // Range_PSC_10;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 6] :=
              teste;
          end;
        end; // end do case 2
      3:
        begin
          alphaTest := 0.15;
          // PValue :=
          zcomp := 1.03;
          if (alpha[currentinstance] <= alphaTest)or (z >= zcomp) then
          begin
            teste := 'Rejected'; // há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 7] :=
              teste;
            TIWUserSession(WebApplication.Data).count_15 := TIWUserSession
              (WebApplication.Data).count_15 + 1;
            // calcula os valores maximos e minimos dos parametros
            // if (cliqTParsec = 1) or (cliqUParsec = 1) then
            // Range_PS_15;
            // if (cliqTParsecCen =1) or (cliqUParsecCen = 1) then
            // Range_PSC_15;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 7] :=
              teste;
          end;
        end; // end do case 3
      4:
        begin
          alphaTest := 0.2;
          // PValue :=
          zcomp := 0.84;
          if (alpha[currentinstance] <= alphaTest)or (z >= zcomp) then
          begin
            teste := 'Rejected'; // há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 8] :=
              teste;
            TIWUserSession(WebApplication.Data).count_20 := TIWUserSession
              (WebApplication.Data).count_20 + 1;
            // calcula os valores maximos e minimos dos parametros
            // if (cliqTParsec = 1) or (cliqUParsec = 1) then
            // Range_PS_20;
            // if (cliqTParsecCen =1) or (cliqUParsecCen = 1) then
            // Range_PSC_20;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 8] :=
              teste;
          end;
        end; // end do case 4
      /// /////////////////////mudar 5 para 0,25
      5:
        begin
          alphaTest := 0.25;
          // PValue :=
          zcomp := 0.67;
          if (alpha[currentinstance] <= alphaTest)or (z >= zcomp) then
          begin
            teste := 'Rejected'; // há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 9] :=
              teste;
            TIWUserSession(WebApplication.Data).count_25 := TIWUserSession
              (WebApplication.Data).count_25 + 1;
            // calcula os valores maximos e minimos dos parametros
            // if (cliqTParsec = 1) or (cliqUParsec = 1) then
            // Range_PS_25;
            // if (cliqTParsecCen =1) or (cliqUParsecCen = 1) then
            // Range_PSC_25;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 9] :=
              teste;
          end;
        end; // end do case 5
      6:
        begin
          alphaTest := 0.3;
          // PValue :=
          zcomp := 0.52;
          if (alpha[currentinstance] <= alphaTest)or (z >= zcomp) then
          begin
            teste := 'Rejected'; // há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 10] :=
              teste;
            TIWUserSession(WebApplication.Data).count_30 := TIWUserSession
              (WebApplication.Data).count_30 + 1;
            // calcula os valores maximos e minimos dos parametros
            // if (cliqTParsec = 1) or (cliqUParsec = 1) then
            // Range_PS_30;
            // if (cliqTParsecCen =1) or (cliqUParsecCen = 1) then
            // Range_PSC_30;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            TIWUserSession(WebApplication.Data)
              .tal[TIWUserSession(WebApplication.Data).currentinstance, 10] :=
              teste;
          end;
        end; // end do case 6
    end; // end do case
  end;
  end; // end do for i

end;

procedure TfrmResultados.TauforNRep; //Procedimento utilizado para exibir os resultados do teste de Kendall - Pedro
var
  i, j, k, y, H: Integer;
  z: double;
  teste: string;
  alphaTest, PValor, zcomp, soma: double;
  Tmean: double;
  maximo, Tmax, Taux, Tmin, Tmedio, Tstdv, Tmedian, Tmode: double;
  VBase, VComp: double;
  rep: array of double;
  troca: double;
  R, r1, r2, count, X: Integer;
begin

  // Etapa 5:
  // verificando o valor maximo de tal
  Tmax := StrToFloat(TIWUserSession(WebApplication.Data).tal[1, 2]);
  for X := 2 to TIWUserSession(WebApplication.Data).currentinstance do
  begin
    Taux := StrToFloat(TIWUserSession(WebApplication.Data).tal[X, 2]);
    if Tmax > Taux then
      Tmax := Tmax
    else
      Tmax := Taux;
  end;

  grdtautable.RowCount := 2;
  grdtautable.ColumnCount := 6;
  grdtautable.Cell[0,0].Text := 'Maximum';
  grdtautable.Cell[0,1].Text := 'Mean';
  grdtautable.Cell[0, 2].Text := 'Minimum';
  grdtautable.Cell[0, 3].Text := 'Mode';
  grdtautable.Cell[0, 4].Text := 'Median';
  grdtautable.Cell[0, 5].Text := 'Standard Deviation';

  grdtautable.Cell[1,0].Text := FloatToStr(RoundTo(Tmax, -4));

  // verificando o valor mínimo de tal
  Tmin := StrToFloat(TIWUserSession(WebApplication.Data).tal[1, 2]);
  for X := 2 to TIWUserSession(WebApplication.Data).currentinstance do
  begin
    Taux := StrToFloat(TIWUserSession(WebApplication.Data).tal[X, 2]);
    if Tmin < Taux then
      Tmin := Tmin
    else
      Tmin := Taux;
  end;
  grdtautable.Cell[1,2].Text := FloatToStr(RoundTo(Tmin, -4));

  // calculando a média
  soma := 0;
  for X := 1 to TIWUserSession(WebApplication.Data).currentinstance do
  begin
    Taux := StrToFloat(TIWUserSession(WebApplication.Data).tal[X, 2]);
    soma := soma + Taux;
  end;
  Tmedio := soma / TIWUserSession(WebApplication.Data).ninst;
  grdtautable.Cell[1, 1].Text := FloatToStr(RoundTo(Tmedio, -4));

  // calculando o desvio padrao
  soma := 0;
  for X := 1 to TIWUserSession(WebApplication.Data).currentinstance do
  begin
    Taux := StrToFloat(TIWUserSession(WebApplication.Data).tal[X, 2]);
    soma := soma + sqr(Taux - Tmedio);
    Tstdv := Sqrt(soma / (TIWUserSession(WebApplication.Data).ninst - 1));
    grdtautable.Cell[1,5].Text := FloatToStr(RoundTo(Tstdv, -4));
  end;

  // calculando a mediana
  // preenchendo o vetor com os valores de tal
  SetLength(rep, TIWUserSession(WebApplication.Data).ninst);
  for X := 1 to TIWUserSession(WebApplication.Data).currentinstance do
  begin
    rep[X - 1] := StrToFloat(TIWUserSession(WebApplication.Data).tal[X, 2]);
  end;
  // ordenando os valores do vetor do menor para o maior
  for i := 0 to TIWUserSession(WebApplication.Data).ninst - 1 do
  begin
    for j := i + 1 to TIWUserSession(WebApplication.Data).ninst - 1 do
    begin
      if rep[i] > rep[j] then
      begin
        // Troca ordem
        troca := rep[i];
        rep[i] := rep[j];
        rep[j] := troca;
        // pegando o valor mediano
      end; // end do if
    end; // end do for j
  end; // do for i

  // verificando se o numero de replicações foi par
  k := TIWUserSession(WebApplication.Data).ninst mod 2;
  if k = 0 then
  begin
    r1 := Trunc(TIWUserSession(WebApplication.Data).ninst / 2) - 1; // para o exemplo de N igual a 4 pega a posição 1 (igual ao nº 2) pois inicia de zero
    r2 := Trunc(TIWUserSession(WebApplication.Data).ninst / 2); // para o exemplo de N igual a 4 pega a posição 2 (igual ao nº 3) pois inicia de zero
    Tmedian := (rep[r1] + rep[r2]) / 2;
    grdtautable.Cell[1, 4].Text := FloatToStr(RoundTo(Tmedian, -4));
  end
  else
  // verificando se o numero de replicações foi ímpar
  begin
    R := Trunc(TIWUserSession(WebApplication.Data).ninst / 2); // para o exemplo de N igual a 5 pega a posição 2 (igual ao numero 3) pois inicia de zero
    Tmedian := rep[R];
    grdtautable.Cell[1, 4].Text := FloatToStr(RoundTo(Tmedian, -4));
  end;

  // calculando a moda
  // para o caso de multiplas modas, irá mostrar o primeiro valor encontrado por ordem
  // do valor de tal para cada replicação (mesma ideia do excel)
  SetLength(TIWUserSession(WebApplication.Data).frequency, TIWUserSession
      (WebApplication.Data).ninst, 2);
  // sera utilizada a matriz rep que ja está preenchida
  for i := 0 to TIWUserSession(WebApplication.Data).ninst - 1 do
  begin
    // calculado a frequencia
    count := 0;
    VBase := rep[i];
    TIWUserSession(WebApplication.Data).frequency[i, 0] := VBase;
    for j := 0 to TIWUserSession(WebApplication.Data).ninst - 1 do
    begin
      VComp := rep[j];
      if VBase = VComp then
        count := count + 1
    end;
    TIWUserSession(WebApplication.Data).frequency[i, 1] := count;
  end;
  // verificando o valor de maior frequencia
  maximo := TIWUserSession(WebApplication.Data).frequency[0, 1];
  j := 0;
  for i := 1 to TIWUserSession(WebApplication.Data).ninst - 1 do
  begin
    VComp := TIWUserSession(WebApplication.Data).frequency[i, 1];
    if VComp > maximo then
    begin
      maximo := VComp;
      j := i;
    end;
  end; // end do for i
  if maximo <> 1 then
  begin
    Tmode := TIWUserSession(WebApplication.Data).frequency[j, 0];
    grdtautable.Cell[1, 3].Text := FloatToStr(RoundTo(Tmode, -4));
  end
  else
  begin
    grdtautable.Cell[1, 3].Text := 'N/A';
  end;
   //cmbbxalpha.ItemIndex := 1;
   cmbbxalphaChange(Self);
end;

// Mudança Teste de Kendall - Pedro 30/10/2024
function TfrmResultados.InverseNormalCDF(p: Double): Double;
const
  // Constantes da fórmula de aproximação
  a1 = -3.969683028665376e+01;
  a2 = 2.209460984245205e+02;
  a3 = -2.759285104469687e+02;
  a4 = 1.383577518672690e+02;
  a5 = -3.066479806614716e+01;
  a6 = 2.506628277459239e+00;

  b1 = -5.447609879822406e+01;
  b2 = 1.615858368580409e+02;
  b3 = -1.556989798598866e+02;
  b4 = 6.680131188771972e+01;
  b5 = -1.328068155288572e+01;

  c1 = -7.784894002430293e-03;
  c2 = -3.223964580411365e-01;
  c3 = -2.400758277161838e+00;
  c4 = -2.549732539343734e+00;
  c5 = 4.374664141464968e+00;
  c6 = 2.938163982698783e+00;

  d1 = 7.784695709041462e-03;
  d2 = 3.224671290700398e-01;
  d3 = 2.445134137142996e+00;
  d4 = 3.754408661907416e+00;

  // Limites da região central
  p_low = 0.02425;
  p_high = 1 - p_low;

var
  q, r: Double;
begin
  // Caso extremo para p = 0 ou p = 1
  if (p <= 0) then
    Exit(-Infinity);
  if (p >= 1) then
    Exit(Infinity);

  // Região central
  if (p < p_low) then
  begin
    q := Sqrt(-2 * Ln(p));
    Result := (((((c1 * q + c2) * q + c3) * q + c4) * q + c5) * q + c6) /
              ((((d1 * q + d2) * q + d3) * q + d4) * q + 1);
  end
  else if (p <= p_high) then
  begin
    q := p - 0.5;
    r := q * q;
    Result := (((((a1 * r + a2) * r + a3) * r + a4) * r + a5) * r + a6) * q /
              (((((b1 * r + b2) * r + b3) * r + b4) * r + b5) * r + 1);
  end
  else
  begin
    q := Sqrt(-2 * Ln(1 - p));
    Result := -(((((c1 * q + c2) * q + c3) * q + c4) * q + c5) * q + c6) /
               ((((d1 * q + d2) * q + d3) * q + d4) * q + 1);
  end;
end;
// Mudança Teste de Kendall - Pedro 22/04/2025
function TfrmResultados.NormalCDF(z: Double): Double;
const
  // Constantes da aproximação Abramowitz & Stegun 26.2.17
  p = 0.2316419;
  b1 = 0.319381530;
  b2 = -0.356563782;
  b3 = 1.781477937;
  b4 = -1.821255978;
  b5 = 1.330274429;
var
  t, pdf, poly, absZ: Double;
begin
  absZ := Abs(z);
  t := 1 / (1 + p * absZ);

  // Calcula PDF (função densidade de probabilidade)
  pdf := Exp(-absZ * absZ / 2) / Sqrt(2 * Pi);

  // Polinômio de aproximação
  poly := t * (b1 + t * (b2 + t * (b3 + t * (b4 + t * b5))));

  // Ajusta para valores negativos
  if z < 0 then
    Result := pdf * poly
  else
    Result := 1 - pdf * poly;
end;
// Mudança Teste de Kendall - Pedro 22/04/2025
function TfrmResultados.ZToPValue(z: Double): Double;
begin
  // Valor-p bilateral
  Result := 2.0 * (1.0 - NormalCDF(Abs(z)));
end;

// Mudança Teste de Kendall - Pedro 30/10/2024
procedure TfrmResultados.cmbbxalphaChange(Sender: TObject);
var
  i, j, k, y: Integer;
  z, maximo: double;
  teste: string;
  alphaTest, PValor, zcomp, soma: double;
  Tmean: double;
  maior : double;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    // verificando o teste de hipótese para As N replicações (com base no valor médio de tal)
    Tmean := StrToFloat(grdtautable.Cell[1, 1].Text);
    z := (Tmean) / (Sqrt((2 * (2 * Numalt + 5)) / (9 * Numalt * (Numalt - 1))));
    //z := TIWUserSession(WebApplication.Data).zmean;
    {case cmbbxalpha.ItemIndex of
      // os valores de z estao sendo avaliados apenas positivos, pois uma correlação negativa
      // indica tendencia a inversao de ordem, no qual os primeiros rankings do original
      // seriam os ultimos das simulações
      0:
        begin
          alphaTest := 0.01;
          // PValue :=
          zcomp := 2.33;
          if (z >= zcomp) or (TIWUserSession(WebApplication.Data).count_01 >= ninst/2) then
          begin
            teste := 'Rejected'; // há correlação
            //iwlink16.Left := 274;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clwebgreen;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            //iwlink16.Left := 284;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clWEBRED;
          end;
        end; // end do case 0
      1:
        begin
          alphaTest := 0.05;
          // PValue :=
          zcomp := 1.64;
         if ResultadoAlpha[Round(alphaTest*100)]/10 >= 50 then
          begin
            teste := 'Rejected'; // há correlação
            //iwlink16.Left := 274;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clwebgreen;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            //iwlink16.Left := 284;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clWEBRED;
          end;
        end; // end do case 1
      2:
        begin
          alphaTest := 0.1;
          // PValue :=
          zcomp := 1.28;
          if ResultadoAlpha[Round(alphaTest*100)]/10 >= 50 then
          begin
            teste := 'Rejected'; // há correlação
            //iwlink16.Left := 274;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clwebgreen;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            //iwlink16.Left := 284;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clWEBRED;
          end;
        end; // end do case 2
      3:
        begin
          alphaTest := 0.15;
          // PValue :=
          zcomp := 1.03;
          if ResultadoAlpha[Round(alphaTest*100)]/10 >= 50 then
          begin
            teste := 'Rejected'; // há correlação
            //iwlink16.Left := 274;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clwebgreen;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            //iwlink16.Left := 284;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clWEBRED;
          end;
        end; // end do case 3

      4:
        begin
          alphaTest := 0.2;
          // PValue :=
          zcomp := 0.84;
          if ResultadoAlpha[Round(alphaTest*100)]/10 >= 50 then
          begin
            teste := 'Rejected'; // há correlação
            //iwlink16.Left := 274;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clwebgreen;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            //iwlink16.Left := 284;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clWEBRED;
          end;
        end; // end do case 4
      /// /////////////////////mudar 5 para 0,25
      5:
        begin
          alphaTest := 0.25;
          // PValue :=
          zcomp := 0.67;
         if ResultadoAlpha[Round(alphaTest*100)]/10 >= 50 then
          begin
            teste := 'Rejected'; // há correlação
            //iwlink16.Left := 274;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clwebgreen;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            //iwlink16.Left := 284;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clWEBRED;
          end;
        end; // end do case 5
      6:
        begin
          alphaTest := 0.3;
          // PValue :=
          zcomp := 0.52;
          if ResultadoAlpha[Round(alphaTest*100)]/10 >= 50 then
          begin
            teste := 'Rejected'; // há correlação
            //iwlink16.Left := 274;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clwebgreen;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            //iwlink16.Left := 284;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clWEBRED;
          end;
        end; // end do case 6
    end; // end do case      }

    if ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10 >= 50 then
          begin
            teste := 'Rejected'; // há correlação
            //iwlink16.Left := 274;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clwebgreen;
            txtabout.Lines.Text := '► This indicates that there is correlation between the original ranking and the rankings obtained in the sensitivity analysis.';
            txtrejected.Visible := true;
            txtnorejected.Visible := false;
            lblasteristico.left := 271;
          end
          else
          begin
            teste := 'Not Rejected'; // nao há correlação
            //iwlink16.Left := 284;
            lblstatustau.Text := teste;
            lblstatustau.Font.Color := clWEBRED;
            txtabout.Lines.Text := '► This indicates that there is no correlation between the original ranking and the rankings obtained in the sensitivity analysis.';
            txtnorejected.Visible := true;
            txtrejected.Visible := false;
            lblasteristico.left := 301;
          end;
    txtnivelsignificancia.Lines.Text := 'For the significance level (α) = ' + TrocaVP((cmbbxalpha.ItemIndex+1)/100) + ':';
    txtporcentagens.Lines[0] := '► For ' + TrocaVP(ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '% of the simulation instances the null hypothesis is rejected (there is correlation between the simulation rankings and original rankings)';
    txtporcentagens.Lines[1] := '► For ' + TrocaVP(100 - ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '% of the simulation instances the null hypothesis is not rejected (there is no correlation between the simulation rankings and original rankings)';

    txtnivelsignificancia2.Lines.Text := 'For the significance level (α) = ' + TrocaVP((cmbbxalpha.ItemIndex+1)/100) + ':';
    txtporcentagens2.Lines[0] := '► For ' + TrocaVP(ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '% of the simulation instances the null hypothesis is rejected (there is correlation between the simulation rankings and original rankings)';
    txtporcentagens2.Lines[1] := '► For ' + TrocaVP(100 - ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '% of the simulation instances the null hypothesis is not rejected (there is no correlation between the simulation rankings and original rankings)';

    //ChrtKendall.Title.Caption := 'Hypothesis Test for α = ' + floattostr((cmbbxalpha.ItemIndex+1)/100);



   chrtKendall.Series[0].Clear;
    chrtkendall.Series[0].Add(ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10, 'Rejected: ' + TrocaVP(ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '%', ClWebGreen);
    chrtkendall.Series[0].Add(100-ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10, 'Not Rejected: '  + TrocaVP(100-ResultadoAlpha[cmbbxalpha.ItemIndex+1]/10) + '%', ClWebRed);
     imgKendall.Picture.Bitmap.Assign
        (chrtKendall.TeeCreateBitmap(clWebPURPLE, rect(0, 0, imgKendall.Width,
            imgKendall.Height)));


    chrtValorP.Series[0].Clear;
    chrtValorP.Series[1].Clear;
    chrtValorP.Series[2].Clear;
    maior := 0;
     for i := 0 to 9999 do
     begin
     if freqalpha[i] <> 0 then
     begin
     if freqalpha[i]/10 > maior then
     maior := freqalpha[i]/10;
     //chrtvalorp.bottomaxis.Items.Add(i*100, floattostr(i/100));
     if i/10000 > (cmbbxalpha.ItemIndex+1)/100 then
     chrtvalorp.series[1].AddXY( i/10000,TIWUserSession(WebApplication.Data).freqalpha[i]/10, '', clwebred)
     else
     chrtvalorp.series[1].AddXY( i/10000,TIWUserSession(WebApplication.Data).freqalpha[i]/10, '', clwebgreen);

     chrtvalorp.series[0].AddXY( i/10000,TIWUserSession(WebApplication.Data).freqalpha[i]/10, '');
     end;
     end;
     chrtvalorp.Series[2].addxy((cmbbxalpha.itemindex+1)/100, 0, 'alpha = ' + floattostr((cmbbxalpha.itemindex+1)/100));
     chrtvalorp.Series[2].addxy((cmbbxalpha.itemindex+1)/100, maior+1, '');
     chrtvalorp.LeftAxis.AutomaticMaximum := false;
     chrtvalorp.LeftAxis.maximum := maior + 1;
     for i := 0 to 20 do
     begin
     if i*5 > maior then
     break;
     chrtvalorp.LeftAxis.Items.Add(i*5, inttostr(i*5) + '%');
     end;

     chrtvalorp.Series[0].Marks.visible := false;
     chrtvalorp.Series[1].Marks.visible := false;
     //chrtvalorp.Series[2].Marks.visible := false;
     chrtvalorp.Legend.Visible := false;
     //chrtvalorp.bottomaxis.AutomaticMaximum := false;
     //chrtvalorp.BottomAxis.Maximum := 100;
     //chrtvalor.leftaxis.
      imgValorP.Picture.Bitmap.Assign
        (chrtValorP.TeeCreateBitmap(clWebPURPLE, rect(0, 0, imgValorP.Width,
            imgValorP.Height)));

  end;
end;

procedure TfrmResultados.cmbbxposicoesChange(Sender: TObject);
var
i,j,k, aux, aux2 : integer;
posicao, auxiliar : string;

begin
with TIWUserSession(WebApplication.Data) do
begin

   posicao := cmbbxposicoes.Items[cmbbxposicoes.ItemIndex];
   for j := 1 to length(posicao) do
    begin
    if posicao[j] = ' ' then
    break
    else
    auxiliar := auxiliar + posicao[j];
    end;
   i := strtoint(auxiliar)- 1;

      //iwgridpercent.Top := 0;
      ///iwgridpercent.width := 80*(numalt+1);
      ///iwgridpercent.height := 30*(numalt-1);
      iwgridpercent.Align := alclient;


      iwgridpercent.visible := True;
      iwgridpercent.caption := '';
      iwgridpercent.Font.FontName := 'verdana';
      iwgridpercent.clear;

      iwgridpercent.RowCount := NumAlt+1;
      iwgridpercent.ColumnCount := i+ 2;
      iwgridpercent.Cell[0,0].Text := 'Alternatives';
      iwgridpercent.cell[0,0].Alignment := taCenter;
      iwgridpercent.cell[0,0].wrap := True;
      iwgridpercent.Cell[0,0].Font.Style := [fsbold];
      iwgridpercent.Cell[0,0].Font.FontName := 'verdana';

      for k := 0 to i  do
      begin
      iwgridpercent.Cell[0,k + 1].Text := inttostr(k+1) + 'º';
      iwgridpercent.cell[0,k + 1].wrap := True;
      iwgridpercent.cell[0,k+1].Alignment := taCenter;
      iwgridpercent.Cell[0,k+1].Font.FontName := 'verdana';
      iwgridpercent.Cell[0,k+1].Font.Style := [fsbold];
      lblpercentualposicoes.Caption := 'Note: Ranking with ' + inttostr(i+1) + ' ' + 'positions were obtained in '  + FormatFloat('0.00', qtdranking[i]*100/ninst) + '% of cases simulated.';



      aux2 := 0;
      for aux := 0 to NumAlt - 1 do
      begin
      for j := 0 to Numalt - 1 do
      begin
         if (TIWUserSession(WebApplication.Data).ValtPositionsO[j] = aux + 1) then
         begin
          iwgridpercent.Cell[aux2+1,0].Text := Nomealt[j];
          iwgridpercent.Cell[aux2+1,k+1].Text := FormatFloat('0.00', TIWUserSession(WebApplication.Data).matrizposicao[i,k,j]*100/TIWUserSession(WebApplication.Data).qtdranking[i]) + '%';
          iwgridpercent.Cell[aux2+1,0].Font.FontName := 'verdana';
          iwgridpercent.Cell[aux2+1,k+1].Font.FontName := 'verdana';
          inc(aux2);
         end;
        end;
      end;
      end;

end;

end;

procedure TfrmResultados.cmbxgroupindexChange(Sender: TObject);
var
  i, J, k, auxc: integer;
begin

  // ** Limpando os dados contidos nas séries ** //
  chrtsensitivity.series[0].Clear;
  chrtsensitivity.series[1].Clear;
  chrtsensitivity.BottomAxis.Items.Clear;

  grdaltinout.RowCount := 1;

  with TIWUserSession(WebApplication.Data) do
  begin

    IWLabel63.Visible := True;
    cmbxgroupindex.Visible := True;

    { IWLabel28.caption := 'Deviation from the Group ' + IntToStr
      (cmbxgroupindex.ItemIndex + 1) + ' original subset of Alternatives:';
      IWLabel23.caption :=
      'Alternatives Included in and Excluded from the original Group ' +
      IntToStr(cmbxgroupindex.ItemIndex + 1) +
      ' subset throughout Sensitivity Analysis interations:';
      chrtsensitivity.Title.caption :=
      'Alternatives found in the Group ' + IntToStr
      (cmbxgroupindex.ItemIndex + 1) +
      ' subset while performing Sensitivity Analysis';

      /// ///////////////////////////////////////////////////////////////////////
      // ** Escreve as alt originais no Grid ** //

      grddeviation.Cell[0, 0].Text := 'Original Subset of Alternatives';
      grddeviation.Cell[0, 1].Text := 'Number of Simulations';
      grddeviation.Cell[0, 2].Text := '% Original Subset';
      grddeviation.Cell[0, 3].Text := '% Change'; }

    auxc := 0;
    for i := 0 to NumAlt - 1 do
      if TIWUserSession(WebApplication.Data).VAltPositionsO[i] =
        (cmbxgroupindex.ItemIndex + 1) then
        INC(auxc);

    grddeviation.Cell[1, 0].Text := '{';
    i := 0;
    k := 0;
    while i < auxc do
    begin
      if VAltPositionsO[k] = (cmbxgroupindex.ItemIndex + 1) then
      begin
        grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + AltSiglas
          [k];
        INC(i);
        if i < (auxc) then
          grddeviation.Cell[1, 0].Text := grddeviation.Cell[1, 0].Text + ', ';
      end;
      INC(k);
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
    k := 0;
    for i := 0 to Numcrit - 1 do
    begin
      if CriSel[i] then
      begin
        grdaltinout.Cell[0, 1].Text := grdaltinout.Cell[0, 1].Text + NomeCrit
          [i];
        INC(k);
        if k < NCV then
          grdaltinout.Cell[0, 1].Text := grdaltinout.Cell[0, 1].Text + ', ';
      end;
      if k = NCV then
      begin
        grdaltinout.Cell[0, 1].Text := grdaltinout.Cell[0, 1].Text + ')';
        break;
      end;

    end;
    grdaltinout.Cell[0, 2].Text := '% Ocurrence';

    k := 1;
    for i := 0 to NumAlt - 1 do
    begin

      if TIWUserSession(WebApplication.Data).MatrizprofileOrdenacao
        [cmbxgroupindex.ItemIndex, i, 0] = '+' then
      // ** Alt Incluída **//
      begin
        INC(k);
        grdaltinout.RowCount := k;
        grdaltinout.Cell[k - 1, 0].Text := AltSiglas[i] + '(Inc)';
        grdaltinout.Cell[k - 1, 2].Text := FloatToStr
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
        INC(k);
        grdaltinout.RowCount := k;
        grdaltinout.Cell[k - 1, 0].Text := AltSiglas[i] + '(Exc)';
        grdaltinout.Cell[k - 1, 2].Text := FloatToStr
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
        for J := 2 to length(TIWUserSession(WebApplication.Data)
            .MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i]) - 1 do
          grdaltinout.Cell[k - 1, 1].Text := grdaltinout.Cell[k - 1, 1].Text +
            MatrizprofileOrdenacao[cmbxgroupindex.ItemIndex, i, J];
      end;
    end; // i|NumAlt

    chrtsensitivity.LeftAxis.Increment := 0.2; // ?

    chrtsensitivity.BottomAxis.LabelsAlternate;
    chrtsensitivity.BottomAxis.Items.Automatic := false;

    imgsensgraph.Picture.Bitmap.Assign(chrtsensitivity.TeeCreateBitmap
        (clWebPURPLE, rect(0, 0, imgsensgraph.Width, imgsensgraph.Height)));
  end;
end;

procedure TfrmResultados.cmbxHEA1Change(Sender: TObject);
var
  i, J: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    cmbxHEA2.Clear;
    J := 0;
    // ** Procurando alternativas que podem der comparadas holisticamente **//
    for i := 0 to length(VtrAlternatives) - 1 do
      if (TIWUserSession(WebApplication.Data).VtrAlternatives[i]
          <> VtrAlternatives[cmbxHEA1.ItemIndex]) and
        ((ArmazenaParaPar[Ciclo - 1, VtrAlternatives[i],
          VtrAlternatives[cmbxHEA1.ItemIndex]] = 0) and
          (ArmazenaParaPar[Ciclo - 1, VtrAlternatives[cmbxHEA1.ItemIndex],
          VtrAlternatives[i]] = 0)) then
      begin
        Setlength(VtrAlternativesND, J + 1);
        TIWUserSession(WebApplication.Data).VtrAlternativesND[J] :=
          VtrAlternatives[i];
        cmbxHEA2.Items.Add(NomeAlt[VtrAlternativesND[J]]);
        INC(J);
      end;

    // ** Só chama caso a pessoa não esteja voltando a um par anterior **//
    if not reverPar then
    begin
      cmbxHEA2.ItemIndex := 0;
      cmbxHEA2Change(self);
      if cmbxSPairs.Items.Count > 0 then
        cmbxSPairs.ItemIndex := -1;
    end;
  end;

end;

procedure TfrmResultados.cmbxHEA2Change(Sender: TObject);
var
  i, J: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    cmbxSPairs.ItemIndex := -1;
    // ** Atualiza as visualizações **//
    for i := 0 to length(VtrAlternatives) - 1 do
      if (VtrAlternatives[i] <> VtrAlternatives[cmbxHEA1.ItemIndex]) and
        (VtrAlternatives[i] <> VtrAlternativesND[cmbxHEA2.ItemIndex]) then
        chcklstbxResults.Selected[i] := false
      else
        chcklstbxResults.Selected[i] := True;
    btnUpFRClick(self);
    CmbxHEAG2.ItemIndex := -1;

    // ** Identificar o par selecionado **//
    if (cmbxHEA1.ItemIndex <> -1) and (cmbxHEA2.ItemIndex <> -1) then
      if PHOChange then
      begin
        for i := 0 to length(Matcombination) - 1 do
          if ((cmbxHEA1.Items[cmbxHEA1.ItemIndex] = NomeAlt[Matcombination[i,
              0]]) or (cmbxHEA1.Items[cmbxHEA1.ItemIndex] = NomeAlt
                [Matcombination[i, 1]])) and
            ((cmbxHEA2.Items[cmbxHEA2.ItemIndex] = NomeAlt[Matcombination[i, 0]]
              ) or (cmbxHEA2.Items[cmbxHEA2.ItemIndex] = NomeAlt
                [Matcombination[i, 1]])) then
          begin
            ParHolisticaOrd := i;
            break;
          end;

        lblcurpair.caption := IntToStr(ParHolisticaOrd + 1);
      end;
  end;
end;

procedure TfrmResultados.IWButton21Click(Sender: TObject);
begin
  delete_grid_max_diff;
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



procedure TfrmResultados.btnbackASClick(Sender: TObject);
var
i : integer;
begin
 with TIWUserSession(WebApplication.Data) do
begin
  Finalize(pmax);
  finalize(pmin);
  finalize(crisel);
  //finalize(vtrordem);   // Mudança - Pedro - 01.12
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
btnsaveAS.Enabled := true;
btnbackAS.Enabled := false;
btnstartas.Enabled := False;
grdvariation.Enabled := true;
end;
procedure TfrmResultados.btnbackClick(Sender: TObject);
begin
  IWLabel63.Visible := false;
  cmbxgroupindex.Visible := false;
  IWRgnanalisedesensibilidade.Visible := false;
  IWRgnfinaltabela.Show;
  btnstartAS.Enabled := false;
  //rgninstructions.Visible := True;
  //rgncrisel.Visible := false;
  //btncrisel.Visible := false;
  //btninstruc.Visible := false;
  //grdcrisel.RowCount := 0;
  //grdcrisel.ColumnCount := 0;
  TIWUserSession(WebApplication.Data).Auxall := 0;
end;

procedure TfrmResultados.BtnBackHEG1Click(Sender: TObject);
begin
  // ** Voltando a pergunta se deseja seguir a Holística **//
  rdbtnEXp1.Checked := false;
  rdbtnEXp2.Checked := false;
  rdbtnEXp3.Checked := false;
  RgnHEG2.Visible := false;
  RgnHEG1.Visible := True;
end;

procedure TfrmResultados.btncancelClick(Sender: TObject);
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
  TfrmResultados.Create(WebApplication).Show;

  // salvar banco de dados na tabela he_question
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 16;
  SalvarresultBD;
end;

procedure TfrmResultados.BtnCancelHEG1Click(Sender: TObject);
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
    TfrmResultados.Create(WebApplication).Show;
end;

procedure TfrmResultados.btncloseClick(Sender: TObject);
begin
lnkexpcolchetes.visible := true;
txtexpcolchetes.visible := true;
lnkdominancematrix.Visible := true;
RgnRelationsMatrix.Visible := false;
  rgntable.Visible := True;
  TIWUserSession(WebApplication.Data).update:= false;
    txtEVHE.Visible := false;
   btnUpFR.Visible := false;
   txtEVHE.Top := 230;
   chcklstbxResults.Visible := false;
   checklistboxdominance.Visible := false;
   TbCtrlvisualizations.Width := 860;
   TbCtrlP4.Width := 860;
   btnLHDFR.left := 721;
   btnUHDFR.left := 606;
   btnhasse1.left := 495;
   btnSIHDFR.left := 380;
   lblHDFR.left := 388;
   RgnRelationsMatrix.Width := 860;
   TbCtrlvisualizationsPage0.Width := 860;
   TbCtrlP1.Width := 860;
   rgntable.Width := 860;
end;

procedure TfrmResultados.btncloseHordClick(Sender: TObject);
begin
tbctrlHolisticRanking1Page0.Visible := false;
tbctrlHolisticRanking1.ActivePage:= tbctrlHolisticRanking.TabOrder;
end;

procedure TfrmResultados.btnclosemaxClick(Sender: TObject);
begin
  rgnimagemax.Hide;
end;

procedure TfrmResultados.BtnCSCClick(Sender: TObject);
begin
  IWRgnfinaltabela.Visible := True;
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



procedure TfrmResultados.IWButton2Click(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
  WebApplication.Terminate();


end;



procedure TfrmResultados.IWButton11Click(Sender: TObject);
begin
regionanalyst.visible := false;
TbCtrlvisualizations.visible := True;
rgnHEG.visible := True;
lblCRFR.visible := True;
IWImage52.top := 814;
IWImage51.top := 814;
IWRgnfinaltabela.Height := 870;

if TIWUserSession(WebApplication.Data).Problematica = 1 then
begin
rgnHolisticaOrd.visible := true;
IWRgnfinaltabela.visible := false;
end;
end;

procedure TfrmResultados.IWButton12Click(Sender: TObject);
var
  i: integer;
  Series2: TBarSeries;
  error: TErrorSeries;
  point: TPointSeries;
begin
  lstbxcritg.Items.Clear;
  IWRgnresultadografico.Visible := True;
  IWRgnfinaltabela.Visible := false;
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
    { if (Problematica = 0) and (NDA = 1) then
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




procedure TfrmResultados.IWButton14Click(Sender: TObject);
begin
IWRegion41.Visible:= False;
end;

{ procedure TfrmResultados.IWButton14Click(Sender: TObject);
  begin
  // Verificar qual o status na planilha desk do campo AS_in_progress
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 19;
  SalvarresultBD;
  // Se o status na planilha desk do AS_in_progress for 0 (desk esta rodando) apenas adicionar informações na fila
  if TIWUserSession(WebApplication.Data).as_in_progress = 0 then
  begin
  // procedimento que salva informações no BD
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 20;
  SalvarresultBD;
  end;

  // Se o status na planilha desk do AS_in_progress for 1( desk não esta rodando) chamar procedimento que executa o desk e adicionar as informações na fila
  if TIWUserSession(WebApplication.Data).as_in_progress = 1 then
  begin
  // procedimento que salva informações no BD
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 20;
  SalvarresultBD;
  // procedimento que executa o desk

  end;

  end; }

procedure TfrmResultados.BtnMaxIClick(Sender: TObject);
begin
  rgnimagemax.Show;
end;

procedure TfrmResultados.btnmaxminClick(Sender: TObject);
begin
  rgnMatrizDistancias.Hide;
  lnkmaxdif.Visible := True;
  lnkhide.Visible := false;
  lnkmaxdifhol.Visible := True;
  lnkmaxdifhohide.Visible := false;
  rgnHEQ0.Top := 228;

  { if rgnMatrizDistancias.Height > 51 then
    begin
    TIWUserSession(WebApplication.Data).RegMaxDifDim :=
    rgnMatrizDistancias.Height;
    rgnMatrizDistancias.Height := 51;
    rgnMatrizDistancias.Top := 753;
    btnmaxmin.caption := '◳';
    rgnMatrizDistancias.HorzScrollBar.Visible := false;
    rgnMatrizDistancias.VertScrollBar.Visible := false;
    end
    else
    begin
    rgnMatrizDistancias.Height := TIWUserSession(WebApplication.Data)
    .RegMaxDifDim;
    rgnMatrizDistancias.Top := 360;
    btnmaxmin.caption := '◱';
    rgnMatrizDistancias.HorzScrollBar.Visible := True;
    rgnMatrizDistancias.VertScrollBar.Visible := True;
    end; }

end;

procedure TfrmResultados.btnNoIFRClick(Sender: TObject);
begin
  rgnrusfinishing.Visible := false;
end;

procedure TfrmResultados.btnNxtVClick(Sender: TObject);
begin
  if TIWUserSession(WebApplication.Data).ParHolisticaOrd < length
    (TIWUserSession(WebApplication.Data).Matcombination) - 1 then
  begin
    TIWUserSession(WebApplication.Data).PHOChange := false;
    INC(TIWUserSession(WebApplication.Data).ParHolisticaOrd);
    NextView;
    TIWUserSession(WebApplication.Data).PHOChange := True;
  end
  else if TIWUserSession(WebApplication.Data).idioma = 0 then
    WebApplication.ShowMessage('This is the last pair of the exhibition list.')
  else
    WebApplication.ShowMessage('Este é o último par da lista de exibição.')

end;

procedure TfrmResultados.btnOkEQTClick(Sender: TObject);
var
  i: integer;
begin
  With TIWUserSession(WebApplication.Data) do
  begin
    if (TrocaVP1(edtMaxdif.Text) = 1) and ((Problematica <> 0) or (NDA <> 1))
      then
      WebApplication.ShowMessage(
        'Warning: As the maximmum overall value is one, considering this equivalence threshold will make the alternatives equivalent despite of their performances.');
    if TrocaVP1(edtMaxdif.Text) > 1 then
    begin
      WebApplication.ShowMessage(
        'Warning: The equivalence threshold must be a number between 0 and 1.');
      Exit;
    end;

    TIWUserSession(WebApplication.Data).epsilon := TrocaVP1(edtMaxdif.Text);

    // ** Supõem que necessitará deuma nova pergunta **//
    if Sol <> -5 then
      Novaperg := True;

    Sol := -5;
    if Problematica = 0 then
    begin
      // ** Coloca todas as alternativas como POAs **//
      NDA := NumAlt;
      for i := 0 to NumAlt - 1 do
        VetPOA[i] := i;

      // ** Roda novamente a PL **//
      PLEscolha;
    end
    else
    begin
      // ** Indica que as relações anteriormente encontradas devem ser desprezadas **//
      zeramatriz := True;
      // ** Roda novamente a PL **//
      if ClpSolve then
        LPsOrdenacao
      else
        PLOrdenacao(0);
    end;

    if Sol <> -5 then
      Novaperg := false;

    // ** Salva o Epsilon escolhido **//
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 26;
    SalvarresultBD;

    TfrmResultados.Create(WebApplication).Show;
  end;
end;

procedure TfrmResultados.btnokhe0Click(Sender: TObject);
begin
  if rdbtnEDFR.Checked then
    IWButton21Click(self);
  if rdbtnHEFR.Checked then
    BtnheyClick(self);
end;

// ** Calcula os valores máximos e mínimos globais de todas as alternativas para a exportação **//
Procedure TfrmResultados.CalmaxminOverallVelues;
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
        TIWUserSession(WebApplication.Data).MatOverallValues[Z, 0] := ResultVector[0];

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

procedure TfrmResultados.BtnOKHEG2Click(Sender: TObject);
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
    TfrmResultados.Create(WebApplication).Show;
end;

procedure TfrmResultados.btnexportationClick(Sender: TObject);
var
  i, J, k, P, n, h, a, c: integer;
  Data: string;
  auxpoa, auxpoa1, auxnomealtexp: string;
  vet_poa_ciclo_aux: array of string;
begin
  Data := DateToStr(Now);
  for i := 1 to length(Data) - 1 do
    if Data[i] = '/' then
      Data[i] := '_';

  with TIWUserSession(WebApplication.Data) do
  begin
  ///Alex Alves da Silva 07/08/2024
  if grdexport.Columns.Count > 3 then ///Essa parte do codigo visa limpar o grdexport
  begin
  c :=3;
      for i :=3  to grdexport.Columns.Count-1 do
    begin
      grdexport.Columns.Delete(c);
    end;
  end;
    updateexp := True;
    if grdexport.Columns.Count >= Numcrit + nsel + 8 + 3then  ///Alex Alves,(Função adicionada para caso o usuario relaize a operação novamente não sejam adicionadas mais colunas)
    begin

     end
     else
     begin
    for i :=0  to Numcrit + nsel + 8 do
    begin
      grdexport.Columns.Add;
    end;
    end;

    for i := 0 to grdexport.RowCount - 1 do
      for J := 0 to grdexport.Columns.Count - 1 do
        grdexport.Cells[J, i] := '';
    if Problematica = 0 then
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

        /// / INSERINDO OS PONTOS ELICITADOS NA ETAPA INTRACRITÉRIO ///

        grdexport.Cells[0, 8 + TIWUserSession(WebApplication.Data).NumAlt] :=
          'Elicited points intracriteria:'; // "Título da info"
        grdexport.Cells[0, 9 + NumAlt] := 'V(X)';
        grdexport.Cells[0, 10 + NumAlt] := '0,25';
        grdexport.Cells[0, 11 + NumAlt] := '0,50';
        grdexport.Cells[0, 12 + NumAlt] := '0,75';

        for J := 0 to Numcrit - 1 do
        begin
          StrDInd := j;
          // Adicionar o nome dos critérios no "cabeçalho"
          grdexport.Cells[1 + J, 9 + NumAlt] := NomeCrit[J];
          // Adicionando os valores
          grdexport.Cells[1 + J, 10 + NumAlt] := {FloatToStr}
            Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[3, J]);
          grdexport.Cells[1 + J, 11 + NumAlt] := {FloatToStr}
            Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[2, J]);
          grdexport.Cells[1 + J, 12 + NumAlt] := {FloatToStr}
            Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[4, J]);

        end;

        grdexport.Cells[0, 17 + NumAlt + TIWUserSession(WebApplication.Data)
          .NDA] := 'Scaling Constants Range of values:';
        grdexport.Cells[0, 14 + NumAlt] := 'Results:';
        grdexport.Cells[0, 21 + NumAlt + NDA] :=
          'Note: A valid scaling constants vector has its components values within this interval as long as the sum of those values is equal to one.';

      end;
      grdexport.Cells[0, 19 + NumAlt + NDA] := 'Max';
      grdexport.Cells[0, 20 + NumAlt + NDA] := 'Min';
      for J := 0 to Numcrit - 1 do
      begin
        grdexport.Cells[1 + J, 18 + NumAlt + NDA] := 'K(' + NomeCrit
          [vtrordem[J]] + ')';
        grdexport.Cells[1 + J, 19 + NumAlt + NDA] := FormatFloat
          ('0.00', MaxPeso[J]);
        grdexport.Cells[1 + J, 20 + NumAlt + NDA] := FormatFloat
          ('0.00', MinPeso[J]);
      end;
      for i := 0 to NDA - 1 do
      begin
        grdexport.Cells[0, 16 + NumAlt + i] := NomeAlt[VetPOA[i]];

        for J := 0 to Numcrit - 1 do
        begin
        StrDInd := j;
          grdexport.Cells[1 + J, 15 + NumAlt] := NomeCrit[vtrordem[J]];
          grdexport.Cells[1 + J, 16 + NumAlt + i] := {FloatToStr}
            Rounding(ConsMatrix[VetPOA[i], vtrordem[J]]);
        end;
      end;
    end;

    if Problematica = 1 then
    begin

      grdexport.TotalRows := 12 + { (Ciclo + 2) * 2 * (Ciclo + 2)
        * NumAlt + } 5 * NumAlt;
      if NumAlt > Numcrit then
      begin
       if grdexport.Columns.Count <> NumAlt + 77  then ////Adicionado por Alex Alves da Silva /06/08/2024
       // Este filtros tem o objetivo de verificar a quantidade de colunas com o objetivo de filtrar a quantidade de colunas
       begin
        for i := 0 to NumAlt + 50 do
        begin
          grdexport.Columns.Add;
        end;
       end;
       end


      else
      begin
        // Caso NumAlt < NumCrit
        if grdexport.Columns.Count <> 11+ 26 then   ////Adicionado por Alex Alves da Silva /06/08/2024
        // Este filtros tem o objetivo de verificar a quantidade de colunas com o objetivo de filtrar a quantidade de coluna

        begin
        for i := 0 to 10 do
        begin
          grdexport.Columns.Add;
        end;
        end;
      end;

      // Preenche o Ranking obtido na matriz
      for i := 0 to Rlevels - 1 do
      begin
        for J := 0 to 2 - 1 do
          grdexport.Cells[Numcrit + 2 + J, 1 + i] := MatResultOrd[i, J];
      end;

      for i := 0 to Rlevels - 1 do
      begin
        for J := 0 to 2 - 1 do
          grdexport.Cells[Numcrit + 5 + J, 1 + i] := TIWUserSession
            (WebApplication.Data).MatResultOrd1[i, J];
      end;

      if TIWUserSession(WebApplication.Data).idioma = 1 then
      begin
        grdexport.Cells[Numcrit + 2, 0] := 'Ordem:';
        grdexport.Cells[0, 10 + NumAlt] :=
          'Intervalo de valores das constantes de escala:';
        grdexport.Cells[0, 13 + NumAlt] :=
          'Nota: Um vetor de constantes de escala viável tem os valores de seus componentes dentro deste intervalo e a soma destes valores é igual a um.';
      end
      else
      begin
        grdexport.Cells[Numcrit + 2, 0] := 'Ranking:';
        grdexport.Cells[Numcrit + 5, 0] := 'Alternatives by position:';
        grdexport.Cells[0, 16 + NumAlt] := 'Scaling Constants Range of values:';
        grdexport.Cells[0, 29 + NumAlt] :=
          'Note: A valid scaling constants vector has its components values within this interval as long as the sum of those values is equal to one.';
        grdexport.Cells[0, 21 + NumAlt] := 'Dominance Matrix:';
      end;

      /// / INSERINDO OS PONTOS ELICITADOS NA ETAPA INTRACRITÉRIO ///
      grdexport.Cells[0, 9 + TIWUserSession(WebApplication.Data).NumAlt] :=
        'Elicited points intracriteria:'; // "Título da info"
      grdexport.Cells[0, 10 + NumAlt] := 'V(X)';
      grdexport.Cells[0, 11 + NumAlt] := '0,25';
      grdexport.Cells[0, 12 + NumAlt] := '0,50';
      grdexport.Cells[0, 13 + NumAlt] := '0,75';

      for J := 0 to Numcrit - 1 do
      begin
      StrDInd := j;
        // Adicionar o nome dos critérios no "cabeçalho"
        grdexport.Cells[1 + J, 10 + NumAlt] := NomeCrit[J];
        // Adicionando os valores
        grdexport.Cells[1 + J, 11 + NumAlt] := {FloatToStr}
          Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[3, J]);
        grdexport.Cells[1 + J, 12 + NumAlt] := {FloatToStr}
          Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[2, J]);
        grdexport.Cells[1 + J, 13 + NumAlt] := {FloatToStr}
          Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[4, J]);

      end;

      // Inserindo a matriz de dominância
      lnkrelationsClick(self);
      for i := 0 to grdrelations.ColumnCount - 1 do
      begin
        for k := 0 to grdrelations.RowCount - 1 do
        begin
          // Aqui, estamos preenchendo o gridexport começando da primeira coluna e mantendo o mesmo número de linhas que o grdrelations
          grdexport.Cells[i, 22 + NumAlt + k] := grdrelations.Cell[k, i].Text;
        end;
      end;

      //Modificado por Alex Alves da Silva    /05/08/2024
       // Separando a matrix de dominancia para a exportação em HTML

      grdmatrizdominacia.TotalRows:=grdrelations.RowCount;
      if grdmatrizdominacia.Columns.Count<> grdrelations.ColumnCount then
      begin
        for i := 0 to (grdrelations.ColumnCount-3) - 1 do
        begin
            grdmatrizdominacia.Columns.add;
        end;
      end;

         for i := 0 to grdrelations.ColumnCount - 1 do
      begin
        for k := 0 to grdrelations.RowCount - 1 do
        begin
          // Aqui, estamos preenchendo o gridexport começando da primeira coluna e mantendo o mesmo número de linhas que o grdrelations
          grdmatrizdominacia.Cells[i, k] := grdrelations.Cell[k, i].Text;
        end;
      end;


      TIWUserSession(WebApplication.Data).updateexp := false;
      // Fim do preenchimento da matriz de dominância

      grdexport.Cells[0, 17 + NumAlt] := 'Max';
      grdexport.Cells[0, 18 + NumAlt] := 'Min';
      for J := 0 to Numcrit - 1 do
      begin
        grdexport.Cells[1 + J, 17 + NumAlt] := FormatFloat('0.00', MaxPeso[J]);
        grdexport.Cells[1 + J, 18 + NumAlt] := FormatFloat('0.00', MinPeso[J]);
      end;

      { grdexport.Cells[0, 15 + NumAlt] := 'Dominance Matrix:';
        for K := 0 to (TIWUserSession(WebApplication.Data).Ciclo - 1) do
        begin
        grdexport.Cells[0, 16 + (K + 1) * NumAlt + K * 2] := 'Cicle ' + IntToStr
        (K + 1);
        // Escreve os nomes das alternativas junto a matriz de dominância par a par
        for j := 0 to NumAlt - 1 do
        begin
        grdexport.Cells[1 + j, 16 + (K + 1) * NumAlt + K * 2] := NomeAlt[j];
        grdexport.Cells[0, 17 + (K + 1) * NumAlt + j + K * 2] := NomeAlt[j];
        end;
        // Escreve a matriz de dominância
        for i := 0 to NumAlt - 1 do
        for j := 0 to NumAlt - 1 do
        begin
        if ArmazenaParaPar[K, i, j] <> 2 then
        grdexport.Cells[1 + j, 17 + (K + 1) * NumAlt + i + K * 2] :=
        IntToStr(ArmazenaParaPar[K, i, j])
        else
        grdexport.Cells[1 + j, 17 + (K + 1) * NumAlt + i + K * 2] := 'I';
        end; // for j
        end; // for k }
      // Adiciona os resultados obtidos da Análise de Sensibilidade
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
          grdranking.Cells[J, i] := grdexport.Cells[J + TIWUserSession
            (WebApplication.Data).Numcrit + 2, i]
        end;
      end;
    end;
    { no componente advwebgrid o endereçamento de celulas segue o padrão AdvWebGrid.Cells[coluna, linha]:= }
    n:=grdexport.Columns.Count;
    grdexport.Cells[0, 0] := 'Criteria:';
    grdexport.Cells[0, 1] := '0-Cont Min; 1-Cont Max; 2-Disc Min; 3-Disc Max';
    // grdexport.Cells[0, 2] := 'Weights';
    grdexport.Cells[0, 2] := 'Type:';
    grdexport.Cells[0, 3] := 'a:';
    grdexport.Cells[0, 4] := 'b:';
    grdexport.Cells[0, 5] := 'c:';
    grdexport.Cells[0, 6] := 'Alternatives:';

    for i := 0 to Numcrit - 1 do
    begin
      grdexport.Cells[1 + i, 0] := NomeCrit[vtrordem[i]];
      grdexport.Cells[1 + i, 1] := IntToStr(TypeOfCrit[vtrordem[i]]);
      grdexport.Cells[1 + i, 2] := IntToStr(FTipo[vtrordem[i]]);
      grdexport.Cells[1 + i, 3] := FloatToStr(parA[vtrordem[i]]);
      grdexport.Cells[1 + i, 4] := FloatToStr(parB[vtrordem[i]]);
      grdexport.Cells[1 + i, 5] := IntToStr(niveis[vtrordem[i]]);
    end;

    // grdexport.Cells[1, 6] := 'Alternatives:';

    for i := 0 to TIWUserSession(WebApplication.Data).NumAlt - 1 do
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
    if html = false then // verifica se o botão para gerar o arquivo em html foi feiclicado
    begin

      TIWAdvWebGridExcelIO2.AdvWebGrid := grdexport;

      TIWAdvWebGridExcelIO2.XLSExport
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

procedure TfrmResultados.btnexpRCSAClick(Sender: TObject);
begin
  SensitivityAnalysisReport1.Visible := True;
  SensitivityAnalysisReport1Click(self);
end;

procedure TfrmResultados.btngoresultasClick(Sender: TObject);
begin
IWRegion17.Show;
rgnAS.Visible := False;
end;

procedure TfrmResultados.IWButtonexpotClick(Sender: TObject);
begin
  SensitivityAnalysisReport1.Visible := True;
  Preencher_MatDadosAS;
  SensitivityAnalysisReport1Click(self);
end;



Procedure TfrmResultados.DestruirElementosAS;
var
i, j : integer;
begin
//rgnsav.Align := AlClient;
btnsaveas.enabled := True;
btnbackAS.enabled := False;
btnstartas.Enabled := False;
with TIWUserSession(WebApplication.Data) do
begin
  count_01 := 0;
  count_05 := 0;
  count_10 := 0;
  count_15 := 0;
  count_20 := 0;
  count_25 := 0;
  count_30 := 0;
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
end;

end;

Procedure TfrmResultados.CriarElementosAS;
var
NumAlt, Numcrit : integer;
NomeAlt, Nomecrit : string;
i, j : integer;
begin
//rgnsav.Align := AlClient;
btnsaveas.enabled := True;
btnbackAS.enabled := False;
btnstartas.Enabled := False;
with TIWUserSession(WebApplication.Data) do
begin
  grdvariation.RowCount := NumCrit;
  grdvariation.Columns[0].ColumnType := ctCheckbox;
  for i := 0 to Numcrit - 1 do
  begin
   grdvariation.Cells[1,i] := CritSiglas[TIWUserSession(WebApplication.Data).vtrordem[i]];
   if (Typeofcrit[vtrordem[i]] = 0) or (Typeofcrit[vtrordem[i]] = 2) or (Typeofcrit[vtrordem[i]] = 4) then
    grdvariation.Cells[3,i] := 'Minimization'
   else
    grdvariation.Cells[3,i] := 'Maximization';
   if (Typeofcrit[vtrordem[i]] = 2) or (Typeofcrit[vtrordem[i]] = 3) then
    grdvariation.Cells[2,i] := 'Constructed'
   else
    grdvariation.Cells[2,i] := 'Natural'
  end;


  grdvariation.Columns[0].enabled := true;
  SetLength(edtmaxAS, grdvariation.RowCount);
  SetLength(edtminAS, grdvariation.RowCount);
  SetLength(cmbbxmaxAS, grdvariation.RowCount);
  SetLength(cmbbxminAS, grdvariation.RowCount);
  SetLength(lblmax, grdvariation.RowCount);
  SetLength(lblmin, grdvariation.RowCount);
  SetLength(lblvariationmax, grdvariation.RowCount);
  SetLength(lblvariationmin, grdvariation.RowCount);

  for i := 0 to grdvariation.RowCount - 1 do
  begin
    lblmin[i] := TiwLabel.Create(Self);
    lblmin[i].Parent := IwRegion3;
    lblmin[i].Left := 680 + 15;
    lblmin[i].Top := 26 + i*23;
    lblmin[i].Font.FontName := 'verdana';
    lblmin[i].Caption := '-';
    //lblmin[i].Name := 'lblmin' + inttostr(i);
    lblmin[i].Visible := False;
    lblmin[i].ZIndex := 10000;

    lblmax[i] := TiwLabel.Create(Self);
    lblmax[i].Parent := IwRegion3;
    lblmax[i].Left := 880 + 15;
    lblmax[i].Top := 26 + i*23;
    lblmax[i].Font.FontName := 'verdana';
    lblmax[i].Caption := '+';
    //lblmax[i].Name := 'lblmax' + inttostr(i);
    lblmax[i].Visible := False;
    lblmax[i].ZIndex := 10000;

    if grdvariation.Cells[2,i] = 'Natural' then
    begin
      edtminAS[i] := TiwEdit.Create(Self);
      edtminAS[i].Parent := IwRegion3;
      edtminAS[i].Left := 680 + 31;
      edtminAS[i].Top := 26 + i*23;
      edtminAS[i].Font.FontName := 'verdana';
      edtminAS[i].Height := 21;
      edtminAS[i].Width := 56;
      edtminAS[i].Caption := '';
      //edtminAS[i].Name := 'edtminAS' + inttostr(i);
      edtminAS[i].Visible := False;
      edtminAS[i].ZIndex := 10000;


      edtmaxAS[i] := TiwEdit.Create(Self);
      edtmaxAS[i].Parent := IwRegion3;
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
      lblvariationmin[i].Parent := IwRegion3;;
      lblvariationmin[i].Left := 680 + 92;
      lblvariationmin[i].Top := 26 + i*23;
      lblvariationmin[i].Font.FontName := 'verdana';
      lblvariationmin[i].Caption := '%';
      lblvariationmin[i].Name := 'lblvariationmin' + inttostr(i);
      lblvariationmin[i].Visible := False;
      lblvariationmin[i].ZIndex := 10000;

      lblvariationmax[i] := TiwLabel.Create(Self);
      lblvariationmax[i].Parent := IwRegion3;;
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
      cmbbxminAS[i].Parent := IwRegion3;;
      cmbbxminAS[i].Left := 680 + 31;
      cmbbxminAS[i].Top := 26 + i*23;
      cmbbxminAS[i].Font.FontName := 'verdana';
      cmbbxminAS[i].Height := 21;
      cmbbxminAS[i].Width := 56;
      cmbbxminAS[i].Caption := '';
      //cmbbxminAS[i].Name := 'cmbbxminAS' + inttostr(i);
      cmbbxminAS[i].Visible := False;
      cmbbxminAS[i].ZIndex := 10000;

      cmbbxmaxAS[i] := tiwComboBox.Create(Self);
      cmbbxmaxAS[i].Parent := IwRegion3;
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
      lblvariationmin[i].Parent := IwRegion3;
      lblvariationmin[i].Left := 680 + 92;
      lblvariationmin[i].Top := 26 + i*23;
      lblvariationmin[i].Font.FontName := 'verdana';
      lblvariationmin[i].Caption := 'Levels';
      //lblvariationmin[i].Name := 'lblvariationmin' + inttostr(i);
      lblvariationmin[i].Visible := False;
      lblvariationmin[i].ZIndex := 10000;

      lblvariationmax[i] := TiwLabel.Create(Self);
      lblvariationmax[i].Parent := IwRegion3;
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

procedure TfrmResultados.IWLabel26AsyncClick(Sender: TObject;
  EventParams: TStringList);
var
i : integer;
begin

for I := 0 to grdvariation.rowcount - 1 do
grdvariation.ClearRows(i, grdvariation.RowCount);
grdvariation.RowCount := 0;

end;

procedure TfrmResultados.IWLink10Click(Sender: TObject);
begin
lnkref.Visible := true;
end;

procedure TfrmResultados.IWLink11Click(Sender: TObject);
begin
rgnAS.Visible := True;
rgnAS.Align := AlClient;
iwregion17.Visible := False;
end;

procedure TfrmResultados.IWLink12Click(Sender: TObject);
begin
IWRegion41.Visible:= True;
end;

procedure TfrmResultados.IWLink13Click(Sender: TObject);
begin
IWRegion49.Visible:= True;
end;

procedure TfrmResultados.IWLink16Click(Sender: TObject);
begin
 rgaboutresult.Visible:=true;
{if lblstatustau.Caption = 'Rejected' then
begin
rgaboutresult.Visible:=true;
lblaboutstatustau.Caption:= 'The null hypothesis is rejected';
iwlink16.Left := 274;
txtabout.Lines.Text := '► The null hypothesis is rejected: This indicates that there is correlation between the original ranking and the rankings obtained in the sensitivity analysis.';
end
else
if lblstatustau.Caption = 'Not Rejected' then
begin
rgaboutresult.Visible:=true;
lblaboutstatustau.Caption:= 'The null hypothesis is not rejected';
txtabout.Lines.Text := '► The null hypothesis is not rejected: This indicates that there is no correlation between the original ranking and the rankings obtained in the sensitivity analysis.';
iwlink16.Left := 289;
end; }


end;

procedure TfrmResultados.IWLink17Click(Sender: TObject);
begin
IWRegion17.Show;
rgnAS.Visible := False;
end;

procedure TfrmResultados.IWLink18Click(Sender: TObject);
begin
iwregion55.visible := true;
end;

procedure TfrmResultados.IWLink20Click(Sender: TObject);
begin
rgnaltpositions.Visible := True;
IWImage34.Visible := false;
IWImage33.Top := 900;
end;

procedure TfrmResultados.IWLink22Click(Sender: TObject);
begin
  WebApplication.ShowMessage(
    'You can define preference relations between the alternatives through holistic evaluation.');

end;

procedure TfrmResultados.IWLink23Click(Sender: TObject);
begin
  WebApplication.ShowMessage(
    'The Holistic Evaluation can be performed considering only ranking positions in which there are incomparable alternatives. In case of doubts, check the Hasse Diagram.');
end;

procedure TfrmResultados.IWLink24Click(Sender: TObject);
begin
  WebApplication.ShowMessage(
    'Only alternatives that are incomparable can be Holistically Evaluated. In case of doubts, check the Hasse Diagram.');
end;

procedure TfrmResultados.IWLink26Click(Sender: TObject);
begin
rgnaltpositions.Visible := False;
IWImage34.Visible := true;
IWImage33.Top := 834;
end;

procedure TfrmResultados.IWLink27Click(Sender: TObject);
begin
rgndetalheskendall.Visible := true;
//rgnvalorp.Visible := true;
end;

procedure TfrmResultados.IWLink28Click(Sender: TObject);
begin
rgndetalheskendall.Visible := false;
end;

procedure TfrmResultados.IWLink29Click(Sender: TObject);
begin
rgnvalorp.Visible := false;
end;

procedure TfrmResultados.IWLink30Click(Sender: TObject);
begin
 rgndetalheskendall.Visible := false;
  rgnvalorp.Visible := true;
end;

procedure TfrmResultados.IWLink31Click(Sender: TObject);
begin
  rgndetalheskendall.Visible := true;
  rgnvalorp.Visible := false;
end;

procedure TfrmResultados.IWLink4Click(Sender: TObject);
begin
  WebApplication.NewWindow('http://fitradeoff.org/');
end;

procedure TfrmResultados.IWLink7Click(Sender: TObject);
begin
iwregion35.Visible := True;
end;

procedure TfrmResultados.lnkhideClick(Sender: TObject);
begin
  rgnMatrizDistancias.Hide;
  lnkmaxdif.Visible := True;
  lnkhide.Visible := false;
  rgnHEQ0.Top := 228;

end;

procedure TfrmResultados.lnkmaxdifClick(Sender: TObject);
begin
  rgnMatrizDistancias.Show;
  plotar_max_diff;
  lnkmaxdif.Visible := false;
  lnkhide.Visible := True;
  rgnHEQ0.Top := 187;

end;

procedure TfrmResultados.lnkmaxdifhohideClick(Sender: TObject);
begin
  rgnMatrizDistancias.Hide;
  lnkmaxdifhol.Visible := True;
  lnkmaxdifhohide.Visible := false;
end;

procedure TfrmResultados.lnkmaxdifholClick(Sender: TObject);
begin
  rgnMatrizDistancias.Show;
  rgnHolisticaOrd.Show;
  plotar_max_diff;
  lnkmaxdifhol.Visible := false;
  lnkmaxdifhohide.Visible := True;
  rgnMatrizDistancias.ZIndex := 20;
  rgnMatrizDistancias.left := 3;
  rgnMatrizDistancias.Top := 139;
end;

procedure TfrmResultados.lnksensitanalysisClick(Sender: TObject);
begin
  mnBtnConsequences1Click(self);
end;

procedure TfrmResultados.logoutrecomendClick(Sender: TObject);
begin
  WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
  WebApplication.Terminate();
end;

procedure TfrmResultados.IWLink9Click(Sender: TObject);
begin
  WebApplication.ShowMessage(
    'You can explore the graphical and tabular visualizations to define dominance relations between alternatives.');
end;

procedure TfrmResultados.btnASClick(Sender: TObject);
begin
  // rgnasq.Show;
  IWButton15Click(self);
end;

procedure TfrmResultados.IWButton15Click(Sender: TObject);
var
  i, J: integer;

begin
  if StrToint(edtinst.Text) > 10000 then
  begin
    WebApplication.ShowMessage(
      'It has a limit of 10.000 instances for this version. We apologize for this inconvenience.');
    Exit;
  end;

  rgnsav.Show;
  CriarElementosAS;
  IWRgnfinaltabela.Hide;
  //cmbbxAS.Items.Clear;
  with TIWUserSession(WebApplication.Data) do
  begin
    ninst := StrToint(edtinst.Text);
    Setlength(CriSel, Numcrit);
    Setlength(pmax, Numcrit);
    Setlength(pmin, Numcrit);
    nsel := 0;
    NCV := 0;
    VauxSel := -1;
    //cmbbxAS.Items.Clear;
    for i := 0 to Numcrit - 1 do
    begin
      //cmbbxAS.Items.Add(NomeCrit[i]);
      /// / Inicializa ós vetores ////
      CriSel[i] := false;
      pmax[i] := 0;
      pmin[i] := 0;
    end;
  end;

  // limpando vetores da AS de ordenação
  Setlength(TIWUserSession(WebApplication.Data).vtrASordchange, TIWUserSession
      (WebApplication.Data).NumAlt);
  for J := 0 to TIWUserSession(WebApplication.Data).NumAlt - 1 do
  begin
    TIWUserSession(WebApplication.Data).vtrASordchange[J] := 0;
  end;

end;

procedure TfrmResultados.IWButton16Click(Sender: TObject);
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


if Problematica = 1 then
rgnHolisticaOrd.visible := false;

IWRgnfinaltabela.visible := false;
regionanalyst.visible := false;
rgnrulevizualization.visible := true;
rgnrulevizualization.Align := Talign(5);
end;
end;

procedure TfrmResultados.iwbtnSaveImageDHClick(Sender: TObject);
begin
  TIWFadeImage1.Picture.SaveToFile('C:\inetpub\fitradeoff\Images\' +
      'Diagrama de Hasse' + '.jpg');

  WebApplication.SendFile
    ('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' + '.jpg', True);

  DeleteFile(Pchar('C:\inetpub\fitradeoff\Images\' + 'Diagrama de Hasse' +
        '.jpg'));

  iwrgnLegendDH.Visible := false;
end;

procedure TfrmResultados.btnBackSAVClick(Sender: TObject);
begin
  rgnsav.Hide;
  IWRgnfinaltabela.Show;
  btnstartAS.Enabled := false;
  //rgninstructions.Visible := True;
 // rgncrisel.Visible := false;
  //btncrisel.Visible := false;
  //btninstruc.Visible := false;
  //grdcrisel.RowCount := 0;
  //grdcrisel.ColumnCount := 0;
 // cmbbxAS.Items.Clear;
  //cmbbxAS.Enabled := True;
  TIWUserSession(WebApplication.Data).Auxall := 0;
  //cmbbxAS.ItemIndex := -1;
 // btnasp.visible := false;
 // btnASwv.visible := false;
  //IWBtnvarycrit.Enabled := True;
  //IWLblallcrit.Enabled := True;
  //btnasok.Enabled := True;
 // cmbbxAS.Enabled := True;
  //rgnACSSA.Visible := false;
//  lblSOCSAV.Visible := True;
end;

procedure TfrmResultados.iwbtnRefreshDHClick(Sender: TObject);
var
  DH_inprogress: integer;
begin
  delete_grid_max_diff;
  with TIWUserSession(WebApplication.Data) do
  begin
    // Tirando o usuário da fila
    UserSession.ZQuery1.SQL.Text :=
      'DELETE FROM line_dh WHERE id_problem = "' + id_problema + '"';
    ZQuery1.ExecSQL;

    // Insere o usuário na fila novamente
    UserSession.ZQuery1.SQL.Text :=
      'INSERT INTO line_dh (id_problem, id_user, dom_matrix, ah_matrix, NomeAlt, levels_numalt ) VALUES ("' + id_problema + '", "' + ID_user + '", "' + DomMat + '", "' + HolMat + '", "' + NomAlt + '", "' + levels_numalt + '")';
    UserSession.ZQuery1.ExecSQL;


  // Verifica se o DH já está em execução
  UserSession.ZQuery1.SQL.Text := 'SELECT dh_in_progress FROM desk';
  UserSession.ZQuery1.ExecSQL;
  UserSession.ZQuery1.open;
  DH_inprogress := UserSession.ZQuery1.FieldByName('dh_in_progress').AsInteger;
  UserSession.ZQuery1.close;

  // Se não estiver, indica que deve ser executado
  if DH_inprogress = -1 then
  begin
    UserSession.ZQuery1.SQL.Text :=
      'UPDATE desk SET dh_in_progress = "' + IntToStr(1) + '"';
    UserSession.ZQuery1.ExecSQL;
  end;

  if DH_inprogress = 2 then
  begin
    UserSession.ZQuery1.SQL.Text :=
      'DELETE FROM line_dh WHERE id_problem = "' + TIWUserSession(WebApplication.Data).id_problema + '"';
    UserSession.ZQuery1.ExecSQL;

    // Insere o usuário na fila novamente
    UserSession.ZQuery1.SQL.Text :=
      'INSERT INTO dh_naogerado (id_problem, id_user, dom_matrix, ah_matrix, NomeAlt, levels_numalt ) VALUES ("' + id_problema + '", "' + ID_user + '", "' + DomMat + '", "' + HolMat + '", "' + NomAlt + '", "' + levels_numalt + '")';
    UserSession.ZQuery1.ExecSQL;

    UserSession.ZQuery1.SQL.Text :=
      'UPDATE desk SET dh_in_progress = "' + IntToStr(-1) + '"';
    UserSession.ZQuery1.ExecSQL;
  end;
  end;
  // Se estiver (dh_in_progess = 0), não altera a variável no BD (não deve chamar o DH Desk novamente)

  tmrhasse.Enabled := True;

  iwbtnRefreshDH.Cursor := crWait;
  iwbtnCloseDH.Cursor := crWait;
  iwbtnSaveImageDH.Cursor := crWait;
  btnLegendDH.Cursor := crWait;
  iwrgnHasseDiagram.Cursor := crWait;
end;

procedure TfrmResultados.IWButton19Click(Sender: TObject);
begin
  btnexportationClick(self);
end;

procedure TfrmResultados.IWButton1Click(Sender: TObject);
begin
  chrtpesoslim.TeeCreateBitmap(clWhite, rect(0, 0, chrtpesoslim.Width,
      chrtpesoslim.Height)).SaveToFile(
    'C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' + '.jpg');
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' + '.jpg',
    True);
  DeleteFile('C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' +
      '.jpg');

end;

procedure TfrmResultados.salvarimageClick(Sender: TObject);
var
  bmp: TBitmap;
begin
  bmp := TBitmap.Create;
  try
    bmp.Width := rgnMatrizDistancias.Width;
    bmp.Height := rgnMatrizDistancias.Height;
    rgnMatrizDistancias.PaintTo(bmp.Canvas, 0, 0);
    bmp.SaveToFile('table_image.bmp');
  finally
    bmp.Free;
  end;
end;

procedure TfrmResultados.IWButton32Click(Sender: TObject);
begin
  Bolhas(TIWUserSession(WebApplication.Data).Escala);
end;

procedure TfrmResultados.IWButton333Click(Sender: TObject);
begin
rgaboutresult.Visible:= False;
end;

procedure TfrmResultados.IWButton33Click(Sender: TObject);
begin
  Radar(TIWUserSession(WebApplication.Data).Escala);
end;

procedure TfrmResultados.IWButton35Click(Sender: TObject);
begin
IWRegion49.Visible:= False;
end;


procedure TfrmResultados.IWButton3Click(Sender: TObject);
begin
iwregion55.Visible := False;
iwregion49.Visible := false;
end;

procedure TfrmResultados.btnUpFRClick(Sender: TObject);
var
i, j, select : integer;
//SelectedIndex: array of integer;
begin
if TIWUserSession(WebApplication.Data).Problematica = 1 then
begin
Select := 0;
TIWUserSession(WebApplication.Data).update:= true;
lnkrelationsClick(self);
end;

  Radar(0);
  Barras(0);
  Bolhas(0);
  with TIWUserSession(WebApplication.Data) do
  begin
    if (Problematica = 0) or (PAH) then
      CTabela;

    if PAH then
      preencher_Alt_Holistica;
  end;
end;

procedure TfrmResultados.btnUpFRHordClick(Sender: TObject);
var
i, j, select : integer;
begin
if TIWUserSession(WebApplication.Data).Problematica = 1 then
begin
Select := 0;
TIWUserSession(WebApplication.Data).updateHord:= true;
lnkdominancematrixHordClick(self);
end;
end;

procedure TfrmResultados.IWButton42Click(Sender: TObject);
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
    TfrmResultados.Create(WebApplication).Show;
end;

procedure TfrmResultados.IWButton4Click(Sender: TObject);
begin
  iwrgnCaixaDialogoResultado.Visible := false;
end;

procedure TfrmResultados.IWButton5Click(Sender: TObject);
begin
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
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;

  // auxiliar que armazena a sequencia de respostas
  TIWUserSession(WebApplication.Data).Ans_seq := '';
end;

procedure TfrmResultados.IWButton6Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).VerificaUnit := -55;
  TFrmEntrada.Create(WebApplication).Show;
  IWRgnReset2.Visible := false;
end;

procedure TfrmResultados.IWButton7Click(Sender: TObject);
begin
  rgnCEQT.Show;
end;

procedure TfrmResultados.IWButton8Click(Sender: TObject);
begin
iwregion31.Visible := False;
end;

procedure TfrmResultados.IWButton9Click(Sender: TObject);
begin
iwregion35.Visible := False;
end;



procedure TfrmResultados.btnsaveasClick(Sender: TObject);
var
i, a, b  : integer;
verifica : boolean;
verifica2 : boolean;
begin
 with TIWUserSession(WebApplication.Data) do
  begin
  Finalize(pmax); // Mudança - Pedro - 01.12
  Finalize(pmin); // Mudança - Pedro - 01.12
  finalize(crisel); // Mudança - Pedro - 01.12
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
btnsaveAS.Enabled := False;
btnbackAS.Enabled := true;
btnstartAS.enabled := True;
grdvariation.Enabled := False;
end;

procedure TfrmResultados.btnshowrecommedation1Click(Sender: TObject);
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
rgnHEG.visible := false;
TbCtrlvisualizations.visible := false;
lblCRFR.visible := false;
IWImage52.top := 614;
IWImage51.top := 614;
IWRgnfinaltabela.Height := 700;
end
else
begin
rgnrulevizualization.visible := true;
rgnrulevizualization.Align := Talign(5);
if TIWUserSession(WebApplication.Data).Problematica = 0 then
begin
IWRgnfinaltabela.visible := false;
    lblcriterios.caption := 'Number of Criteria: ' + IntToStr(TIWUserSession(WebApplication.Data).Numcrit)
      + ' criteria.';
    lblPesorecom.caption := 'Number of Alternatives: ' + IntToStr
      (length(TIWUserSession(WebApplication.Data).VtrAlternatives)) + ' alternatives.';
    labnovodesvio.Visible := true;
    editalternativas.Visible := true;
    butcomp.Visible := true;
    btnrecomenda.Visible := true;
end;
if TIWUserSession(WebApplication.Data).Problematica = 1 then
rgnHolisticaOrd.visible := false;

end;
end;

procedure TfrmResultados.btnshowrecommedationClick(Sender: TObject);
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
rgnHolisticaOrd.visible := false;
IWRgnfinaltabela.visible := true;
regionanalyst.visible := true;
rgnHEG.visible := false;
TbCtrlvisualizations.visible := false;
lblCRFR.visible := false;
IWImage52.top := 614;
IWImage51.top := 614;
IWRgnfinaltabela.Height := 700;
end
else
begin
rgnrulevizualization.visible := true;
rgnrulevizualization.Align := Talign(5);
if TIWUserSession(WebApplication.Data).Problematica = 0 then
IWRgnfinaltabela.visible := false;
if TIWUserSession(WebApplication.Data).Problematica = 1 then
begin
  lblcriterios.caption := 'Number of Criteria: ' + IntToStr(TIWUserSession(WebApplication.Data).Numcrit)
      + ' criteria.';
   lblPesorecom.caption := 'Number of Alternatives: 2 alternatives.';
   rgnHolisticaOrd.visible := false;
    labnovodesvio.Visible := false;
    editalternativas.Visible := false;
    butcomp.Visible := false;
    butranking.Visible := true;
  end;

end;
end;

procedure TfrmResultados.btnsi2Click(Sender: TObject);
begin
  crtEhraph.TeeCreateBitmap
    (clWhite, rect(0, 0, chrtpesoslim.Width, chrtpesoslim.Height)).SaveToFile(
    'C:\inetpub\fitradeoff\Images\Optimal Alternative Scaling Constants Value'
      + '.jpg');
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Optimal Alternative Scaling Constants Value'
      + '.jpg', True);
  DeleteFile(
    'C:\inetpub\fitradeoff\Images\Optimal Alternative Scaling Constants Value'
      + '.jpg');
end;

procedure TfrmResultados.btnSISCClick(Sender: TObject);
begin
  chrtpesoslim.TeeCreateBitmap(clWhite, rect(0, 0, chrtpesoslim.Width,
      chrtpesoslim.Height)).SaveToFile(
    'C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' + '.jpg');
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' + '.jpg',
    True);
  DeleteFile('C:\inetpub\fitradeoff\Images\Scaling Constants Range of Values' +
      '.jpg');
end;


procedure TfrmResultados.btnstartasClick(Sender: TObject);
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

procedure TfrmResultados.btnOKHEG4Click(Sender: TObject);
var
  str: string;
  nonsel: array of integer;
  Selected, i, l, P, y, k: integer;
  Stop: boolean;
  ComboBox: TIWComboBox;
  POASB: array of integer;
begin

  With TIWUserSession(WebApplication.Data) do
  begin
    TIWUserSession(WebApplication.Data).passouaqui:= false;
    if Problematica = 0 then
    begin
      // ** Verifica se trata-se de seleção ou exclusão **//
      Case rdgrpHEG2.ItemIndex of
        0:
          begin
            AHType := 2;
            if TIWUserSession(WebApplication.Data).idioma = 1 then
              str := 'selecionar como a melhor do subgrupo'
            else
              str := 'select as the best one';
          end;
        1:
          begin
            AHType := 1;
            if TIWUserSession(WebApplication.Data).idioma = 1 then
              str := 'excluir do subgrupo'
            else
              str := 'exclude from the subset';
          end;
      End;

      // ** Verifica se a alternativa foi selecionada **//
      if CmbxHEAG1.ItemIndex = -1 then
      begin
        if TIWUserSession(WebApplication.Data).idioma = 1 then
          WebApplication.ShowMessage(
            'Por favor, informe qual alternativa deseja ' + str + '.')
        else
          WebApplication.ShowMessage(
            'Please, inform which alternative you wish to ' + str + '.');
        Exit;
      end;
      // ** Recebe o componente que possui a informação **//
      ComboBox := CmbxHEAG1;
    end;

    if Problematica = 1 then
    begin
      // ** Para ordenação sempre se trata de seleção da melhor alternativa **//
      AHType := 2;
      if TIWUserSession(WebApplication.Data).idioma = 1 then
        str := 'selecionar como a melhor do subgrupo'
      else
        str := 'select as the best one';

      // ** Verifica se a alternativa foi selecionada **//
      if CmbxHEAG2.ItemIndex = -1 then
      begin
        if TIWUserSession(WebApplication.Data).idioma = 1 then
          WebApplication.ShowMessage(
            'Por favor, informe qual alternativa deseja ' + str + '.')
        else
          WebApplication.ShowMessage(
            'Please, inform which alternative you wish to ' + str + '.');
        Exit;
      end;
      // ** Recebe o componente que possui a informação **//
      ComboBox := CmbxHEAG2;
    end;

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
    if (AHType = 2) and (Problematica = 0) then
      for i := 0 to length(nonsel) - 1 do
      begin
        for l := 0 to TIWUserSession(WebApplication.Data).NDA - 1 do
        begin
          if Selected = VetPOA[l] then
            P := l;
          if nonsel[i] = TIWUserSession(WebApplication.Data).VetPOA[l] then
            y := l;
        end;
        if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, y] = 'I') or
          (TIWUserSession(WebApplication.Data).MatIndiferenca[P, y] = 'NP') then
        begin
          if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, y] = 'I')
            then
            WebApplication.ShowMessage(
              'It is not possible to state this relations because alternatives '
                + AltSiglas[Selected] + ' and ' + AltSiglas[nonsel[i]] +
                ' have already been considered indifferent. Please inform a different relation of dominance.');
          if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, y] = 'NP')
            then
            WebApplication.ShowMessage(
              'It is not possible to state this relations because according to the current iformation level, ' + AltSiglas[Selected]
                + ' cannot dominate ' + AltSiglas[nonsel[i]]
                + ' in all the feasible weight space. Please inform a different relation of dominance.');

          Stop := True;
        end; // se há indiferença
      end;
    /// / Trava para exclusão envolvendo alternativas não domináveis pelo grupo
    /// de alternativas remanescente ///////////////////////////////////////
    if (AHType = 1) and (Problematica = 0) then
      for i := 0 to length(nonsel) - 1 do
      begin
        for l := 0 to TIWUserSession(WebApplication.Data).NDA - 1 do
        begin
          if Selected = VetPOA[l] then
            P := l;
          if nonsel[i] = TIWUserSession(WebApplication.Data).VetPOA[l] then
            y := l;
        end;
        /// / Se a alt não selecionada Y for indiferente ou não for capaz de dominar
        /// a alternativa eliminada P  incrmenta o contador M, se M = número de
        /// alternativas não selecionadas, ou seja, alternativas remanecentes
        /// significa que nenhuma alternativa daquele grupo é capaz de dominar
        /// Y, por isso, bloqueia-se o processo /////////////////////////////
        if (TIWUserSession(WebApplication.Data).MatIndiferenca[P, y] = 'I') or
          (TIWUserSession(WebApplication.Data).MatIndiferenca[y, P] = 'NP') then
        begin
          INC(k);
          if k = length(nonsel) then
            Stop := True;
        end; // se há indiferença
      end;

    /// / Caso as verificações tenham identificado algum problema, o processo
    /// é interrompido ////////////////////////////////////////////////////
    if Stop = True then
    begin
      TIWUserSession(WebApplication.Data).PAH := false;
      // ** Exibe mensagem **//
      iwrgnCaixaDialogoResultado.Visible := True;
      txtCaixaDialogoResults.Lines.Clear;
      if idioma = 0 then
        txtCaixaDialogoResults.Lines.Add(
          'According to the current weight space, the alternatives compared have already been considered indifferent.')
      else
        txtCaixaDialogoResults.Lines.Add(
          'De acordo com o atual espaço de pesos, as alternativas avaliadas já foram consideradas indiferentes entre si.');
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
        for i := 0 to TIWUserSession(WebApplication.Data).NDA - 1 do
          POASB[i] := VetPOA[i];
      end;
      PLEscolha;
      // ** Se não houverem mais Poas, o DM foi inconsistente **//
      if NDA = 0 then
      begin
        // ** Devolve a informação anterior **//
        Setlength(VetPOA, length(POASB));
        for i := 0 to length(POASB) - 1 do
        begin
          TIWUserSession(WebApplication.Data).VetPOA[i] := POASB[i];
          TIWUserSession(WebApplication.Data).NDA := length(POASB);
        end;
        // ** Exibe mensagem **//
        iwrgnCaixaDialogoResultado.Visible := True;
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

    if Problematica = 1 then
      if ClpSolve then
        LPsOrdenacao
      else
        PLOrdenacao(0);

    // ** Calcula os valores máximos e mínimos de cada Constante de Escala **//
    calmaxminweights;
  end;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 8;
  SalvarresultBD;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 12;
  SalvarresultBD;

  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;
  TfrmResultados.Create(WebApplication).Show;
end;

procedure TfrmResultados.btninfClick(Sender: TObject);
begin
lnkref.Visible := false;
end;

procedure TfrmResultados.BtnPrevVClick(Sender: TObject);
begin
  if TIWUserSession(WebApplication.Data).ParHolisticaOrd > 0 then
  begin
    TIWUserSession(WebApplication.Data).PHOChange := false;
    INC(TIWUserSession(WebApplication.Data).ParHolisticaOrd, -1);
    NextView;
    TIWUserSession(WebApplication.Data).PHOChange := True;
  end
  else if TIWUserSession(WebApplication.Data).idioma = 0 then
    WebApplication.ShowMessage('This is the first pair of the exhibition list.')
  else
    WebApplication.ShowMessage('Este é o primeiro par da lista de exibição.')
end;

procedure TfrmResultados.btnrecomendaClick(Sender: TObject);
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

procedure TfrmResultados.btnrecommendationpageClick(Sender: TObject);
begin
  rgnrulevizualization.Hide;
  with TIWUserSession(WebApplication.Data) do
    case visualization of
      0:
        IWRgnfinaltabela.Show;
      1:
        IWRgnfinaltabela.Show;
      2:
        IWRgnfinaltabela.Show;
      3:
        IWRgnfinaltabela.Show;
    end;
end;

procedure TfrmResultados.btnrecommendationTClick(Sender: TObject);
var
  a: integer;
begin
  {with TIWUserSession(WebApplication.Data) do
  begin
    if (visualization = -1) or (IWRgnfinaltabela.Visible) then
    begin
      visualization := 0;
      IWRgnfinaltabela.Visible := True;
    end;
    lblcriterios.caption := 'Considering That Problem Has' + ' ' + IntToStr
      (Numcrit) + ' criteria.';
    { lblAlternativas.Caption := 'Evaluating' + ' ' + IntToStr(NumAltAH)
      + ' alternatives.'; }

    {if HeurQuest <> -1 then
      if HeurQuest = 2 then
        lblPesorecom.caption := 'The Weight distribution' + ' ' +
          'Can be approximately equal.'
      else
        lblPesorecom.caption := 'The Weight distribution is' + ' ' +
          'Markedly Different.';

    a := -1;
    lblProbDev.Visible := True;
    lblRecommendation.Visible := false;
    lblNorecommendation.Visible := false;

    case visualization of
      0:
        begin
          /// / Tabular ////
          lbltypeofview.caption := 'Tabular';

          /// / Distribuição aprox igual ////
          if HeurQuest = 1 then
          begin
            if (Numcrit = 4) then
            begin
              case NumAltAH of
                3:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.88 and the Standard Deviation is less than 0.40.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Possible Use';
                    a := 0;
                  end;
                4:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.55 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Risk in Use';
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.73 and the Standard Deviation is less than 0.40.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Possible Use';
                    a := 0;
                  end;
              end;
              // case of
            end; // numcri
            if NumAltAH = 4 then
            begin
              case Numcrit of
                3:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.39 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption :=
                      'Do not use the visualization.';
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.78 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Risk in Use';
                    a := 0;
                  end;
              end;
              // Case of
            end; // NumALtAH
            if (NumAltAH = 2) and (Numcrit = 7) then
            begin
              lblProbDev.caption :=
                'The pobability of success is 0.78 and the Standard Deviation is less than 0.50.';
              txtrecommends.Visible := True;
              lblRecommendation.Visible := True;
              lblRecommendation.caption := 'Risk in Use';
              a := 0;
            end;
          end;
          // Heurquest

          /// / Distribuição marcadamente diferente ////
          if (HeurQuest <> 1) and (HeurQuest <> -1) then
          begin
            if (Numcrit = 4) then
            begin
              case NumAltAH of
                3:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.45 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
                4:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.16 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.08 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
              end; // case of
            end; // numcri
            if NumAltAH = 4 then
            begin
              case Numcrit of
                3:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.59 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Risk in Use.';
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.47 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
              end; // Case of
            end; // NumALtAH
            if NumAltAH = 2 then
            begin
              case Numcrit of
                4:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.54 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Risk in Use.';
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.93 and the Standard Deviation is less than 0.30.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Use with Confidence.';
                    a := 0;
                  end;
                6:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.49 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption :=
                      'Do not use the visualization.';
                    a := 0;
                  end;
                7:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.27 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption :=
                      'Do not use the visualization.';
                    a := 0;
                  end;
              end;
            end;
          end; // Heurquest

          /// ////  Não Há recomendação ////////
          if a = -1 then
          begin
            lblNorecommendation.Visible := True;
            txtrecommends.Visible := false;
            lblProbDev.Visible := false;
          end;

        end;
      1:
        begin
          /// / Radar ///
          lbltypeofview.caption := 'Radar Graph';
          if HeurQuest = 1 then
          begin
            if (NumAltAH = 2) and (Numcrit = 7) then
            begin
              lblProbDev.caption :=
                'The pobability of success is 0.81 and the Standard Deviation is less than 0.40.';
              txtrecommends.Visible := True;
              lblRecommendation.Visible := True;
              lblRecommendation.caption := 'Possible Use';
              a := 0;
            end;
            // if
          end; // HeurQuest

          if HeurQuest <> 1 then
          begin
            if (NumAltAH = 2) then
              case Numcrit of
                4:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.57 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Risk in Use';
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.78 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Risk in Use';
                    a := 0;
                  end;
                6:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.40 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
                7:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.46 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
              end; // Case of
          end; // HeurQuest
          /// ////  Não Há recomendação ////////
          if a = -1 then
          begin
            lblNorecommendation.Visible := True;
            txtrecommends.Visible := false;
            lblProbDev.Visible := false;
          end;
        end;
      2:
        begin
          /// Bolha ///
          lbltypeofview.caption := 'Bubble Graph';
          lblNorecommendation.Visible := True;
          txtrecommends.Visible := false;
          lblProbDev.Visible := false;

        end;
      3:
        begin
          /// / Bar /////
          lbltypeofview.caption := 'Bar Graph';

          /// / Distribuição aprox igual ////
          if HeurQuest = 1 then
          begin
            if (Numcrit = 4) then
            begin
              case NumAltAH of
                3:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.88 and the Standard Deviation is less than 0.40.';
                    txtrecommends.Visible := True;
                    lblRecommendation.caption := 'Possible Use';
                    lblRecommendation.Visible := True;
                    a := 0;
                  end;
                4:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.55 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.caption := 'Risk in Use';
                    lblRecommendation.Visible := True;
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.73 and the Standard Deviation is less than 0.40.';
                    txtrecommends.Visible := True;
                    lblRecommendation.caption := 'Possible Use';
                    lblRecommendation.Visible := True;
                    a := 0;
                  end;
              end;
              // case of
            end; // numcri
            if NumAltAH = 4 then
            begin
              case Numcrit of
                3:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.39 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.caption :=
                      'Do not use the visualization.';
                    lblRecommendation.Visible := True;
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.78 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.caption := 'Risk in Use';
                    lblRecommendation.Visible := True;
                    a := 0;
                  end;
              end;
              // Case of
            end; // NumALtAH
            if (NumAltAH = 2) and (Numcrit = 7) then
            begin
              lblProbDev.caption :=
                'The pobability of success is 0.31 and the Standard Deviation is less than 0.50.';
              txtrecommends.Visible := True;
              lblRecommendation.Visible := True;
              lblRecommendation.caption := 'Do not use the visualization';
              a := 0;
            end;
          end; // Heurquest

          /// / Distribuição marcadamente diferente ////
          if (HeurQuest <> 1) and (HeurQuest <> -1) then
          begin
            if (Numcrit = 4) then
            begin
              case NumAltAH of
                3:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.45 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
                4:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.16 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.08 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
              end; // case of
            end; // numcri
            if NumAltAH = 4 then
            begin
              case Numcrit of
                3:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.59 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Risk in Use.';
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.47 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Do not use the visualization';
                    a := 0;
                  end;
              end; // Case of
            end; // NumALtAH
            if NumAltAH = 2 then
            begin
              case Numcrit of
                4:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.75 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Risk in Use.';
                    a := 0;
                  end;
                5:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.91 and the Standard Deviation is less than 0.30.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Use with Confidence.';
                    a := 0;
                  end;
                6:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.60 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption := 'Risk in Use.';
                    a := 0;
                  end;
                7:
                  begin
                    lblProbDev.caption :=
                      'The pobability of success is 0.31 and the Standard Deviation is less than 0.50.';
                    txtrecommends.Visible := True;
                    lblRecommendation.Visible := True;
                    lblRecommendation.caption :=
                      'Do not use the visualization.';
                    a := 0;
                  end;
              end;
            end;
          end; // Heurquest

          /// ////  Não Há recomendação ////////
          if a = -1 then
          begin
            lblNorecommendation.Visible := True;
            txtrecommends.Visible := false;
            lblProbDev.Visible := false;
          end;
          if a = 0 then
            lblNorecommendation.Visible := false;
        end;
    end;
  end;
  rgnrulevizualization.Visible := True;
  IWRgnfinaltabela.Visible := false;}
end;

procedure TfrmResultados.btnRelationsClick(Sender: TObject);
var
  i, J: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    if Problematica = 0 then
    begin
      equivalence_Test_HE;
      lblMexplanation.caption :=
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
        for J := 1 to NDA do
          if MatIndiferenca[i - 1, J - 1] = 'NP' then
            grdrelations.Cell[i, J].Text := ' 0'
          else
            grdrelations.Cell[i, J].Text := ' ' + MatIndiferenca[i - 1, J - 1];
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
        for J := 1 to NumAlt do
          if ArmazenaParaPar[Ciclo - 1, i - 1, J - 1] <> 2 then
            grdrelations.Cell[i, J].Text := ' ' + IntToStr
              (ArmazenaParaPar[Ciclo - 1, i - 1, J - 1])
          else
            grdrelations.Cell[i, J].Text := ' ' + 'I';
      end;
    end; // Ordenação
  end;
  rgntable.Visible := false;
  RgnRelationsMatrix.Visible := True;
end;

procedure TfrmResultados.btnResetNovoProblemaClick(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).passouaqui := false;

  with UserSession.ZQuery1 do
  begin
  sql.Text := 'UPDATE current_stage SET solinter ="' + '' + '" WHERE id_problem="' +
  (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
  ExecSQL;
  end;

  TIWUserSession(WebApplication.Data).VerificaUnit := -55;
  TFrmEntrada.Create(WebApplication).Show;
  IWRgnReset2.Visible := false;
end;

procedure TfrmResultados.btnResetRecomcProblemaClick(Sender: TObject);
begin

  Setlength(TIWUserSession(WebApplication.Data).vetorgrafico, 0);
  Setlength(TIWUserSession(WebApplication.Data).vordem, 0);
  Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, 0);

  { TIWUserSession(WebApplication.Data).VerificaUnit := -50;
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
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
    SalvarresultBD;

    TIWUserSession(WebApplication.Data).PAH := false;
    TIWUserSession(WebApplication.Data).Aux0501 := false;

    // auxiliar que armazena a sequencia de respostas
    TIWUserSession(WebApplication.Data).Ans_seq := ' '; }

end;

procedure TfrmResultados.btnResetRgnFinalTabelaClick(Sender: TObject);
begin
  IWRgnfinaltabela.Visible := false;
  IWRgnReset2.Visible := True;
  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;

end;

procedure TfrmResultados.btnResetVoltarClick(Sender: TObject);
begin
  IWRgnfinaltabela.Visible := True;
  IWRgnReset2.Visible := false;
  TIWUserSession(WebApplication.Data).PAH := false;
  TIWUserSession(WebApplication.Data).Aux0501 := false;
end;

procedure TfrmResultados.BtnheyClick(Sender: TObject);
begin
  if TIWUserSession(WebApplication.Data).Problematica = 0 then
  begin
    equivalence_Test_HE;
    // ** Exibe a região da pergunta **//
    RgnAHT.Visible := True;
    chckbxhidec.Visible := True;
  end;
  if TIWUserSession(WebApplication.Data).Problematica = 1 then
  begin
    avalia_niveis;
    hlptpExploreHER.LinesHelp.Text := txtSDAFR.Lines.Text;
    IWRgnfinaltabela.Hide;
    rgnHolisticaOrd.Show;
    chckbxhidec.Parent := rgnHERCtrl2;
    chckbxhidec.Width := 400;
    if TIWUserSession(WebApplication.Data).idioma = 0 then
      chckbxhidec.Top := 55
    else
      chckbxhidec.Top := 115;
    chckbxhidec.Visible := True;
    chckbxhidec.left := 5;
    { rgnMatrizDistancias.Parent := RHasse_Holistic;
      rgnMatrizDistancias.left := 03; }
    IWImage4.Width := 478;
    IWImage4.Parent := tbctrlBarHR;
    grdchoosepoa.Width := 478;
    grdchoosepoa.Parent := rgnTabHER;
    IWImage5.Width := 478;
    IWImage5.Parent := tbctrlRadH;
    IWImage6.Width := 478;
    IWImage6.Parent := tbctrlBubH;
    TIWFadeImage2.Parent := RHasse_Holistic;
    TIWFadeImage2.left := -200;
    // ** Para fazer com que o "current pair" seja alterado com a mudança no combobox **//
    TIWUserSession(WebApplication.Data).PHOChange := True;
    TIWUserSession(WebApplication.Data).reverPar := false;
    // ** Componentes do conceptual explanations **//
    btnmaxCEBr.caption := '◳';
    rgnCEBR.Top := 326;
    rgnCEBR.Height := 41;
    btnmaxCER.caption := '◳';
    rgnRGexp.Top := 326;
    rgnRGexp.Height := 41;
    btnmaxCEBb.caption := '◳';
    rgnCEBb.Top := 326;
    rgnCEBb.Height := 41;
    RgnSelBAO.left := 497;
    RgnSelBAO.Top := 54;
    RgnSelBAO.Parent := tbctrlBarHR;
    tbctrlHolisticRanking.TabOrder := 1;
    tbctrlHasseHR.TabOrder := 0;
    tbctrlHolisticRanking1.TabOrder := 0;

    TbCtrlvisualizations.ActivePage := TbCtrlvisualizationsPage0.TabOrder;

  end;
  /// / Ativa o botão 1 da HE.
  TIWUserSession(WebApplication.Data).PAH := True;
  /// / Informa que uma HE está sendo realizada.
  rgnHEQ0.Visible := false;
  with TIWUserSession(WebApplication.Data) do
  begin
    /// / Ao realizar uma avaliação holística é possível acessar a área do analista ////
    if Analystkey <> 1 then
    else
    begin
      btnrecommendationT.Visible := True;
      if HeurQuest <> -1 then
      begin
        /// /////////////////////////////////////////////////////////////////////////////////
        /// / Ativa a visibilidade da região que mostra o tipo de distribuição dos pesos ////
        RgnAttentionT.Visible := True;
        /// ////////////////////////////////////////////////////////////////////////////////
        if HeurQuest = 1 then
        /// Respondeu B
        begin
          lblWDT2.Visible := True;
        end
        else
        begin
          lblWDT1.Visible := True;
        end;
      end;
    end;
    // ** Não foram selecionadas alternativas **//
    Aux0501 := false;
  end;
  INC(TIWUserSession(WebApplication.Data).auxid_ah);
  rgnNoteExp.Visible := false;

end;



procedure TfrmResultados.btnLegendDHClick(Sender: TObject);
begin
  iwrgnLegendDH.Visible := True;
  // iwrgnHasseDiagram.Visible := false;
  // btnLegendDH.enabled := false;
  // IWButton14.enabled := false;
end;

procedure TfrmResultados.btnlegenddhcloseClick(Sender: TObject);
begin
  iwrgnLegendDH.Visible := false;
end;

procedure TfrmResultados.btnlgoutClick(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).AUXLOGOUT := -363636;
  TFrmEntrada.Create(WebApplication).Show;
  IWRgnReset2.Visible := false;
end;

procedure TfrmResultados.btnloginClick(Sender: TObject);
var
  analista: string;
begin
  with UserSession.ZQuery1 do
  begin
    TIWUserSession(WebApplication.Data).analyst := -1;
    SQL.Text := 'SELECT analyst FROM user WHERE email="' + (eduser.Text) + '"';
    ExecSQL;
    open;
    analista := FieldByName('analyst').AsString;
    close;
    if analista <> '' then
    begin
      TIWUserSession(WebApplication.Data).analyst := StrToint(analista);
      lblemailwarning.Visible := false;
    end
    else
    begin
      lblemailwarning.Visible := True;
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
    TIWUserSession(WebApplication.Data).Analystkey := 1;
    btnrecommendationT.Visible := True;
    if (TIWUserSession(WebApplication.Data).PAH = True) and
      (TIWUserSession(WebApplication.Data).HeurQuest <> -1) then
    begin
      /// /////////////////////////////////////////////////////////////////////////////////
      /// / Ativa a visibilidade da região que mostra o tipo de distribuição dos pesos ////
      RgnAttentionT.Visible := True;
      /// ////////////////////////////////////////////////////////////////////////////////
      if TIWUserSession(WebApplication.Data).HeurQuest = 1 then
      /// Respondeu B
      begin
        lblWDT2.Visible := True;
      end
      else
      begin
        lblWDT1.Visible := True;
      end; // A
    end; // PAH Heurquest
    lblpasswarning.Visible := false;
    lblemailwarning.Visible := false;
  end // Senha correta
  else
    lblpasswarning.Visible := True;
end;

procedure TfrmResultados.btnmaxCEBbClick(Sender: TObject);
begin
  if rgnCEBb.Height = 41 then
  begin
    btnmaxCEBb.caption := '◱';
    rgnCEBb.Top := 54;
    rgnCEBb.Height := 299;
  end
  else
  begin
    btnmaxCEBb.caption := '◳';
    rgnCEBb.Top := 326;
    rgnCEBb.Height := 41;
  end;
end;

procedure TfrmResultados.btnmaxCEBrClick(Sender: TObject);
begin
  if rgnCEBR.Height = 41 then
  begin
    btnmaxCEBr.caption := '◱';
    rgnCEBR.Top := 54;
    rgnCEBR.Height := 310;
    rgnCEBR.HorzScrollBar.Visible := True;
    rgnCEBR.VertScrollBar.Visible := True;
  end
  else
  begin
    btnmaxCEBr.caption := '◳';
    rgnCEBR.Top := 326;
    rgnCEBR.Height := 41;
    rgnCEBR.HorzScrollBar.Visible := false;
    rgnCEBR.VertScrollBar.Visible := false;
  end;
end;

procedure TfrmResultados.btnmaxCERClick(Sender: TObject);
begin
  if rgnRGexp.Height = 41 then
  begin
    btnmaxCER.caption := '◱';
    rgnRGexp.Top := 51;
    rgnRGexp.Height := 316;
    // rgnRGexp.HorzScrollBar.Visible := True;
    rgnRGexp.VertScrollBar.Visible := True;
  end
  else
  begin
    btnmaxCER.caption := '◳';
    rgnRGexp.Top := 326;
    rgnRGexp.Height := 41;
    // rgnRGexp.HorzScrollBar.Visible := false;
    rgnRGexp.VertScrollBar.Visible := false;
  end;
end;

procedure TfrmResultados.IWRgnfinaltabelaCreate(Sender: TObject);
var
  i, J, k: integer;
  Mat: ARRAY OF ARRAY OF STRING;
  ProxNivel: boolean;
  M, n: integer;
  teste: cardinal;
  str1, str2: string;
begin

  alinhamento;
  // ** Gera uma cor para cada alternativa do problema **//
  Graficoaux;
  RgnAttentionT.Visible := false;
  calmaxminweights;
  Definir_Idioma;

  with UserSession.ZQuery1 do
  begin
  SQL.Text := 'SELECT solinter FROM current_stage WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
  ExecSQL;
  open;
  TIWUserSession(WebApplication.Data).solint := FieldByName('solinter')
  .AsString;
  close;
  end;


  /// / Preenche as alternativas potencialmente ótimas no grid de resultados ////
  With TIWUserSession(WebApplication.Data) do
  begin
    ///*Esse trecho é para casos de retomada quando não há mais perguntas na decomposição
    if (solint <> '') and not (TIWUserSession(WebApplication.Data).Sol in [2, 3]) then
    Sol := 10;

    lblnQA.caption := IntToStr(NumQuest);
    if (Sol = -2) OR (Sol = -1) OR (Sol = 0) OR (Sol = 1) OR (Sol = 2) OR
      (Sol = 10) OR (Sol = 3) OR (Sol = 11) then
    begin
      { btnGraficoBarras.Visible := false;
        btnGraficoBolha.Visible := false;
        btnGraficoRadar.Visible := false; }
      TbCtrlvisualizationsPage0.Visible := false;
      iwrgnCaixaDialogoResultado.Visible := True;
      if Problematica = 0 then
        lnkrelations.Visible := false;
      txtCaixaDialogoResults.Lines.Clear;
      if Problematica = 1 then
        lnkmaxdif.Visible := false;
      HLPTPmAXdIF.Visible := false;

      if TIWUserSession(WebApplication.Data).idioma = 0 then
      begin
        case Sol of
          - 2:
            txtCaixaDialogoResults.Lines.Add(
              'A partial pre-order has been found.');
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
            txtCaixaDialogoResults.Lines.Add('These are the partial results.');

        end; // case of
      end // Idioma
      else
      begin
        case Sol of
          - 2:
            txtCaixaDialogoResults.Lines.Add(
              'Uma pré-ordem parcial foi encontrada.');
          -1:
            txtCaixaDialogoResults.Lines.Add
              ('Uma ordem parcial foi encontrada.');
          0:
            txtCaixaDialogoResults.Lines.Add('A solução foi encontrada.');
          1:
            txtCaixaDialogoResults.Lines.Add(
              'De acordo com o limiar de equivalência, uma solução contendo ' +
                IntToStr(NDA) + ' alternativas foi encontrada.');
          // according com o que
          2:
            txtCaixaDialogoResults.Lines.Add(
              'Uma pré-ordem completa foi encontrada.');
          3:
            txtCaixaDialogoResults.Lines.Add(
              'Uma ordem completa foi encontrada.');

          10:
            txtCaixaDialogoResults.Lines.Add(
              'Não existem mais comparações a serem feitas na Elicitação por Decomposição. Você pode continuar o processo através da Avaliação Holística, ou encerrar a elicitação de preferências considerando os resultados atuais.');
          11:
            txtCaixaDialogoResults.Lines.Add
              ('Estes são os resultados parciais.');

        end; // case of
      end; // else
    end;

    mmngraphicsT.Font.FontName := 'Verdana';
    mmngraphicsT.Font.Size := 11;
    mmngraphicsT.Font.Style := [fsbold];

    if Sol = -5 then
    begin
      Problematic1.Visible := false;
      Choice1.Visible := false;
      Ranking1.Visible := false;
    end;

    if Problematica = 0 then
    begin
      lnkweightsgraphDH.Visible := false;
      lnkdominancematrixDH.Visible := false;
      lnkfinalizeDH.Visible := false;
      PmnlblExportingDH.Visible := false;
      lnksensitanalysisDH.Visible := false;
      txtexpcolchetes.Visible := false;
      lnkexpcolchetes.Visible := false;

      CmbxResults.Visible := false;
      Ranking1.Visible := True;
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
      txtEVHE.Visible := true;
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
      CalmaxminOverallVelues;
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
      /// /////////////////////////////////////////////////////////////////////////
    end;
    // Problematica = 0

    if Problematica = 1 then
    begin
      Choice1.Visible := True;
      TbCtrlP4.Visible := True;
      lnkweightsgraphDH.Visible := true;
      lnkdominancematrixDH.Visible := true;
      lnkfinalizeDH.Visible := true;
      PmnlblExportingDH.Visible := true;

      TbCtrlvisualizations.ActivePage := 0;
      TbCtrlvisualizations.Width := 860;
      btnLHDFR.left := 721;
      btnUHDFR.left := 606;
      btnhasse1.left := 495;
      btnSIHDFR.left := 380;
      lblHDFR.left := 388;
      IWRegion48.Width := 840;
      rgntable.Width := 856;
      grdchoosepoa.Width := 814;
      lblnQA.left := 801;
      LblQA.left := 590;
      lnksensitanalysis.left := 690;
      lnkfinalize.left := 580;
      lnkweightsgraph.left := 192;

      visualization := 0;
      // ** Oculta os componentes da seleção de alternativas para não confundir o DM **//
      // rgnNoteExp.Visible := false;
      txtEVHE.Visible := false;
      chcklstbxResults.Visible := false;
      CmbxResults.Visible := false;
      btnUpFR.Visible := false;
      TbCtrlP0.Visible := false;
      TbCtrlP3.Visible := false;
      TbCtrlP2.Visible := false;

      AuxRSel := false;
      /// /////////////////////////////////////////////////////////////////////
      lnkrelations.caption := 'Dominance Matrix';
      lblranking.Visible := True;
      IWGrid3.RowCount := Rlevels + 1;
      IWGrid3.ColumnCount := 2;
      grdchoosepoa.RowCount := Rlevels + 1;
      grdchoosepoa.ColumnCount := 2;
      if TIWUserSession(WebApplication.Data).idioma = 1 then
      begin
        grdchoosepoa.Cell[0, 0].Text := 'Níveis';
        grdchoosepoa.Cell[0, 1].Text := 'Alternativas';
        IWGrid3.Cell[0, 0].Text := 'Níveis';
        IWGrid3.Cell[0, 1].Text := 'Alternativas';
      end
      else
      begin
        grdchoosepoa.Cell[0, 0].Text := 'Ranking Position';
        grdchoosepoa.Cell[0, 1].Text := 'Alternatives';
        IWGrid3.Cell[0, 0].Text := 'Ranking Position';
        IWGrid3.Cell[0, 1].Text := 'Alternatives';
      end;

      for J := 0 to 2 - 1 do
      begin
        grdchoosepoa.Cell[0, J].Font.Style := [fsbold];
        IWGrid3.Cell[0, J].Font.Style := [fsbold];
        for i := 0 to Rlevels - 1 do
        begin
          grdchoosepoa.Cell[i + 1, J].Text := MatResultOrd[i, J];
          grdchoosepoa.Cell[i + 1, J].Wrap := True;
          IWGrid3.Cell[i + 1, J].Text := MatResultOrd[i, J];
          IWGrid3.Cell[i + 1, J].Wrap := True;
        end;
      end;
      IWGrid3.Font.FontName := 'Verdana';
      IWGrid3.Font.Size := 10;
      // **Preparando o combbox de níveis **//
      CmbxResults.Items.Clear;
      for i := 0 to length(MatrizGrupo) - 1 do
      begin
        ProxNivel := false;
        for J := 1 to length(TIWUserSession(WebApplication.Data)
            .MatrizGrupo[i]) - 2 do
        begin
          if ProxNivel then
            break;
          for k := J + 1 to length(MatrizGrupo[i]) - 1 do
            if (ArmazenaParaPar[TIWUserSession(WebApplication.Data).Ciclo - 1,
              MatrizGrupo[i, J], MatrizGrupo[i, k]] = 0) and
              (ArmazenaParaPar[Ciclo - 1, MatrizGrupo[i, k], MatrizGrupo[i, J]]
                = 0) then
            begin
              if TIWUserSession(WebApplication.Data).idioma = 1 then
                CmbxResults.Items.Add('Nível ' + IntToStr(i + 1))
              else
                CmbxResults.Items.Add('Ranking Position ' + IntToStr(i + 1));
              ProxNivel := True;
              break;
            end;
        end;
      end;

      // ** Por default exibe-se o primeiro nível do Ranking para qual existe incomparabilidade**//
      if CmbxResults.Items.Count >= 1 then
      begin
        CmbxResults.ItemIndex := 0;
        CmbxResultsChange(self);
      end;

    end; // Problematica = 1

    if Sol <> -5 then
    begin
      // ** Apresenta o botão de exportação da AS **//
      if Sensitivity then
        SensitivityAnalysisReport1.Visible := True
      else
        SensitivityAnalysisReport1.Visible := false;

      txtEVHE.Visible := false;
      chcklstbxResults.Visible := false;
      CmbxResults.Visible := false;
      btnUpFR.Visible := false;
      rgnNoteExp.Visible := false;
      IWButton21.Visible := false;
      btnstopelicitation.Visible := false;
      //Problematic1.Visible := True;
      // ** Supõem que nenhum critério teve a FV elicitada **//
      mnBtnValueFunction1.Visible := false;
      for i := 0 to Numcrit - 1 do
        // ** se ao menos um critério tiver a FV elicitada, libera a AS **//
        if VtrcritBisec[i] then
        begin
          mnBtnValueFunction1.Visible := True;
          break;
        end;
       end; //yara
      /// / Se uma (pré)ordem completa, ou se uma solução for encontrada com alt indiferentes
      /// então não é preciso perguntar se o DM quer realizar uma holística ////
      if ((Sol >= 0) and (Sol <= 3)) or (Sol = 11) then
      begin
        rgnHEQ0.Visible := false;
        lnkrelations.Visible := false;
        rdbtnEDFR.Enabled := false;
        chcklstbxResults.Visible := false;
        CmbxResults.Visible := false;
        btnUpFR.Visible := false;
     // end;
      TbCtrlP0.Visible := false;
      TbCtrlP2.Visible := false;
      TbCtrlP3.Visible := false;
      TbCtrlvisualizations.ActivePage := 0;
      TbCtrlvisualizations.Enabled := false;
          TbCtrlvisualizations.Width := 860;
          rgntable.Width := 856;
          lnksensitanalysis.left := 690;
          lnkfinalize.left := 580;
          lnkweightsgraph.left := 192;

      if (TIWUserSession(WebApplication.Data).Problematica = 1) and (Sol <> 10) then
      begin
      lnksensitanalysisDH.Visible := True;
      lnksensitanalysisDH.Enabled := True;
      lnkfinalizeDH.Visible := false;
      lnksensitanalysis.Visible := True;
      lnksensitanalysis.Enabled := True;
      lnkfinalize.Visible := false;
      end;

      if (TIWUserSession(WebApplication.Data).Problematica = 0) and (Sol <> 10) then
      begin
      lnksensitanalysis.Visible := True;
      lnksensitanalysis.Enabled := True;
      lnkfinalize.Visible := false;
      TbCtrlvisualizations.ActivePage := 0;
      end;

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
        J := length(VtrAlternatives);
        chcklstbxResults.Items.Clear;
        for i := 0 to J - 1 do
        begin
          chcklstbxResults.Items.Add(AltSiglas[TIWUserSession(WebApplication.Data).VtrAlternatives[i]]);
          chcklstbxResults.Selected[i] := True;
        end;
      end;
      Escala := 0;
      Radar(Escala);
      Barras(Escala);
      Bolhas(Escala);
    end;
   if (TIWUserSession(WebApplication.Data).Problematica = 0) and (Sol = 10) then
   begin
     txtEVHE.Visible := true;
     chcklstbxResults.Visible := true;
     btnUpFR.Visible := true;
   end;
  end; // With
  IWRgnfinaltabela.Align := Talign(5);

  // *** Diagrama de Hasse *** //
  With TIWUserSession(WebApplication.Data) do
  begin
    if (Problematica = 1) { and (Rlevels > 1) } then
    // o diagrama vai ser construido
    begin
      btnhasse1.Visible := True;
      lnkrelations.Visible := false;

      // Organiza as informações que vão ser inseridas no banco de dados - necessárias para a construção do diagrama
      DomMat := '';
      // Dados da Matriz de Consequências
      for i := 0 to NumAlt - 1 do
      begin
        for J := 0 to NumAlt - 1 do
        begin
          auxDM := TIWUserSession(WebApplication.Data).ArmazenaParaPar
            [(TIWUserSession(WebApplication.Data).Ciclo) - 1, i, J];
          DomMat := DomMat + IntToStr(auxDM);
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
        TIWUserSession(WebApplication.Data).NomAlt := NomAlt + '§' + AltSiglas
          [i];
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

      tmrhasse.Enabled := True;
    end;
  end; // with

end;

procedure TfrmResultados.IWTimer1Timer(Sender: TObject);
var
  i, k: integer;
begin

  if TIWUserSession(WebApplication.Data).Start = True then
    if not TIWUserSession(WebApplication.Data).AsVF then
      sensitivityA
    else
      AsValueFunction;

  if TIWUserSession(WebApplication.Data).Finish = True then
  begin
    INC(TIWUserSession(WebApplication.Data).auxas);
    Definir_Idioma;
    if TIWUserSession(WebApplication.Data).idioma = 1 then
    begin
      // para  escolha
      grdcrivar.Cell[0, 0].Text := 'Critério';
      if not TIWUserSession(WebApplication.Data).AsVF then
      begin
        grdcrivar.ColumnCount := 3;
        grdcrivar.Cell[0, 2].Text := 'Limite Superior';
        grdcrivar.Cell[0, 1].Text := 'Limite Inferior';
      end;

      // para a ordenação
      IWGrid1.Cell[0, 0].Text := 'Criterion';
      if not TIWUserSession(WebApplication.Data).AsVF then
      begin
        IWGrid1.ColumnCount := 3;
        IWGrid1.Cell[0, 2].Text := 'Limite Superior';
        IWGrid1.Cell[0, 1].Text := 'Limite Inferior';
      end;
    end
    else
    begin
      // para  escolha
      grdcrivar.Cell[0, 0].Text := 'Criterion';
      if not TIWUserSession(WebApplication.Data).AsVF then
      begin
        grdcrivar.ColumnCount := 3;
        grdcrivar.Cell[0, 2].Text := 'Upper Bound';
        grdcrivar.Cell[0, 1].Text := 'Lower Bound';
      end;
      grdcrivar.Cell[0,0].Font.Style := [fsbold];
      grdcrivar.Cell[0,1].Font.Style := [fsbold];
      grdcrivar.Cell[0,2].Font.Style := [fsbold];
      // para a ordenação
      IWGrid1.Cell[0, 0].Text := 'Criterion';
      if not TIWUserSession(WebApplication.Data).AsVF then
      begin
        IWGrid1.ColumnCount := 3;
        IWGrid1.Cell[0, 2].Text := 'Upper Bound';
        IWGrid1.Cell[0, 1].Text := 'Lower Bound';
      end;
    end;

    k := 1;
    with TIWUserSession(WebApplication.Data) do
    begin
      IWTimer1.Enabled := false;
      //btnasok.Enabled := True;
      btnstartAS.Enabled := True;
      //btnBackSAV.Enabled := True;
      cmbxgroupindex.Items.Clear;
      { for i := 0 to Rlevels - 1 do
        cmbxgroupindex.Items.Add('Group ' + IntToStr(i + 1));
        // cmbxgroupindex.ItemIndex := 0; }

      for i := 0 to Numcrit - 1 do
        if CriSel[i] then
        begin
          INC(k);
          grdcrivar.RowCount := k;
          grdcrivar.Cell[k - 1, 0].Text := CritSiglas[vtrordem[i]];
          if not TIWUserSession(WebApplication.Data).AsVF then
          begin
            if (TypeofCrit[vtrordem[i]] = 2) or (TypeofCrit[vtrordem[i]] = 3) then
            begin
             grdcrivar.Cell[k - 1, 2].Text := '+' + FloatToStr(pmax[i]) + ' levels';
             grdcrivar.Cell[k - 1, 1].Text := '-' + FloatToStr(pmin[i]) + ' levels';
            end
            else
            begin
            grdcrivar.Cell[k - 1, 2].Text := '+' + FloatToStr(pmax[i]) + '%';
            grdcrivar.Cell[k - 1, 1].Text := '-' + FloatToStr(pmin[i]) + '%';
            end;
          end
          else
            grdcrivar.ColumnCount := 1;
          // para ordenação
          IWGrid1.RowCount := k;
          IWGrid1.Cell[k - 1, 0].Text := CritSiglas[vtrordem[i]];
          if not TIWUserSession(WebApplication.Data).AsVF then
          begin
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
          end
          else
            IWGrid1.ColumnCount := 1;

        end; // CriSel
      Sensitivity := True;
      Preencher_MatDadosAS;
      SensitivityAnalysisReport1.Visible := True;
    end; // with
    if TIWUserSession(WebApplication.Data).Problematica = 0 then
      IWRgnanalisedesensibilidade.Show;
    if TIWUserSession(WebApplication.Data).Problematica = 1 then
    begin
      TauforNRep;
       iwregion17.Show;
    end;
    IWRgnAS.Visible := false;

    if TIWUserSession(WebApplication.Data).Problematica = 0 then
    // caso seja um problema de escolha
    begin
      // salvar banco de dados na tabela sensitivity
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 9;
      // SalvarresultBD;
    end;

    if TIWUserSession(WebApplication.Data).Problematica = 1 then
    // caso seja um problema de escolha
    begin
      // salvar banco de dados na tabela sensitivity_ord
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 10;
      // SalvarresultBD;

      // salvar banco de dados na tabela sensitivity_ord_change
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 11;
      // SalvarresultBD;
    end;
    rgnsav.Visible := false;
    IWRgnAS.Visible := false;
    if TIWUserSession(WebApplication.Data).Problematica = 0 then
      IWRgnanalisedesensibilidade.Visible := True;
    if TIWUserSession(WebApplication.Data).Problematica = 1 then
       iwregion17.Visible := True;
    //cmbbxAS.Items.Clear;

  end;
end;

procedure TfrmResultados.lblCRSAClick(Sender: TObject);
begin
  IWLabel63.Visible := false;
  cmbxgroupindex.Visible := false;
  IWRgnanalisedesensibilidade.Visible := false;
  IWRgnfinaltabela.Show;
  //btnstartAS.Enabled := false;
  //rgninstructions.Visible := True;
  //rgncrisel.Visible := false;
  //btncrisel.Visible := false;
  //btninstruc.Visible := false;
  //grdcrisel.RowCount := 0;
 // grdcrisel.ColumnCount := 0;
  IWRegion17.Visible := false;
  TIWUserSession(WebApplication.Data).Auxall := 0;
  TIWUserSession(WebApplication.Data).reiniciaAS := 1;
end;

procedure TfrmResultados.lblrec1Click(Sender: TObject);
begin
WebApplication.TerminateAndRedirect('https://onlinelibrary.wiley.com/doi/full/10.1111/itor.12958');
end;

procedure TfrmResultados.linkClick(Sender: TObject);
begin
  WebApplication.GoToURL('http://cdsid.org.br/');
end;

procedure TfrmResultados.lnkrelationsClick(Sender: TObject);
var
  i, J, k, y, l, x, select: integer;
  NumAlternativas: array of integer;
  SelectedIndex1: array of Integer;
  SelectedItem: array of String;
  nomelinha, nomecoluna, nomelinha1, nomecoluna1, nomelinha2, nomecoluna2: string;
  linha, coluna: integer;
begin
 with TIWUserSession(WebApplication.Data) do
  begin
if Problematica = 1 then
    begin

If TbCtrlvisualizations.ActivePage = TbCtrlP4.TabOrder then
begin
TbCtrlvisualizations.ActivePage := TbCtrlP1.TabOrder;
lnkweightsgraphDH.Visible := false;
lnkdominancematrixDH.Visible := false;
lnkfinalizeDH.Visible := false;
PmnlblExportingDH.Visible := false;
end;

     // Limpa o grid antes de adicionar novas linhas
    grdrelations.RowCount := 1;
    grdrelations.ColumnCount := NumAlt + 1;
    if updateexp = false then
    begin
    lnkexpcolchetes.visible := false;
   txtexpcolchetes.visible := false;
   txtEVHE.Visible := true;
   btnUpFR.Visible := true;
   txtEVHE.Top := 230;
   checklistboxdominance.Visible := true;
   TbCtrlvisualizations.Width := 715;
   TbCtrlP4.Width := 715;
   TbCtrlP1.Width := 715;
   btnLHDFR.left := 596;
   btnUHDFR.left := 481;
   btnhasse1.left := 368;
   btnSIHDFR.left := 255;
   lblHDFR.left := 263;
   RgnRelationsMatrix.Width := 715;
   //TbCtrlvisualizationsPage0.Width := 715;
   rgntable.Width := 715;
   end;

  select := 0;

    if  TIWUserSession(WebApplication.Data).update = false then
  begin
   checklistboxdominance.Items.Clear;
  // Iterar sobre os itens do CheckListBox e inicialmente selecioná-los
  for i := 0 to Length(TIWUserSession(WebApplication.Data).MatrizGrupo) - 1 do
  begin
    checklistboxdominance.Items.Add('Position ' + IntToStr(i + 1));
    checklistboxdominance.Selected[i] := true;
    INC(select);

    // Verificar se o item está selecionado e, em seguida, processá-lo
    if checklistboxdominance.Selected[i] then
    begin
      // Obtém o nome do item selecionado
      SetLength(SelectedItem, select);
      SetLength(SelectedIndex1, select);
      SelectedItem[select - 1] := 'Position ' + IntToStr(i + 1);
      SelectedIndex1[select - 1] := i + 1;
      end;
      end;
  end;

  if  TIWUserSession(WebApplication.Data).update = true then
  begin
  SetLength(TIWUserSession(WebApplication.Data).SelectedIndex, 0);
  SetLength(SelectedItem, 0);
  SetLength(SelectedIndex1, 0);
  for i := 0 to checklistboxdominance.Items.Count - 1 do
    begin
    // Verificar se o item está selecionado e, em seguida, processá-lo
    if checklistboxdominance.Selected[i] then
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
     checklistboxdominance.Selected[TIWUserSession(WebApplication.Data).SelectedIndex[j]] := True;
     end;
    TIWUserSession(WebApplication.Data).update:= false;
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
        grdrelations.RowCount := grdrelations.RowCount + 1;
        // Adicione suas alternativas ao grid aqui
      end;


      if TIWUserSession(WebApplication.Data).idioma = 0 then
      begin
        Txtrel.Lines[1] := '1 - Dominance Relation - (A dominates B)';
        Txtrel.Lines[2] := '-1 - Dominated alternative - (B is dominated by A)';
        Txtrel.Lines[3] := '2 - Indifference Relation';
        Txtrel.Lines[4] := '0 - Incomparability so far';
        lblrel.Text := 'Dominance Matrix';
      end
      else
      begin
        Txtrel.Lines[1] := '1 - Relação de dominância';
        Txtrel.Lines[2] := 'I - Relação de indiferença';
        Txtrel.Lines[3] := '0 - Nenhuma relação foi estabelescida';
        lblrel.Text := 'Matriz de dominância';
      end;
      //grdrelations.RowCount := NumAlt + 1;
      //grdrelations.ColumnCount := NumAlt + 1;
      for l := 0 to High(NumAlternativas) do
  begin
      grdrelations.Cell[l+1, 0].Text := TIWUserSession(WebApplication.Data).AltSiglas[NumAlternativas[l]];
  end;


      for i := 1 to NumAlt do
      begin
        //grdrelations.Cell[i, 0].Text := AltSiglas[i - 1];
        grdrelations.Cell[0, i].Text := TIWUserSession(WebApplication.Data).AltSiglas[i - 1];
        for J := 0 to High(NumAlternativas) do
          if TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession(WebApplication.Data).Ciclo - 1, i - 1, NumAlternativas[J]] <> 2 then
          begin
            grdrelations.Cell[j+1, i].Text := ' ' + IntToStr(ArmazenaParaPar[Ciclo - 1, NumAlternativas[J], i - 1])
           end
          else
            grdrelations.Cell[j+1, i].Text := ' ' + '2';
        end;

    for i := 1 to NumAlt do
      begin
        for J := 0 to High(NumAlternativas) do
          if TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession(WebApplication.Data).Ciclo - 1, i - 1, NumAlternativas[J]] = 1 then
          begin
          linha := i;
          coluna := j;
          grdrelations.Cell[j+1, i].Text := ' -1';
            end;
        end;
    end; // Ordenação
  end;
  if TIWUserSession(WebApplication.Data).updateexp = false then
  begin
  rgntable.Visible := false;
  RgnRelationsMatrix.Visible := True;
  end;
end;


procedure TfrmResultados.lnksavefurtherClick(Sender: TObject);
var
  aux1, aux2, Aux3, str1: string;
  i: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    if idioma = 0 then
      aux1 := 'Pair ' + IntToStr(ParHolisticaOrd + 1)
    else
      aux1 := 'Par ' + IntToStr(ParHolisticaOrd + 1);
    aux2 := AltSiglas[Matcombination[ParHolisticaOrd, 0]];
    Aux3 := AltSiglas[Matcombination[ParHolisticaOrd, 1]];
    str1 := aux1 + ': ' + aux2 + '|' + Aux3;

    // ** Se o par já tiver sido salvo, ignora o comando **//
    for i := 0 to cmbxSPairs.Items.Count - 1 do
      if cmbxSPairs.Items[i] = str1 then
        Exit;

    Setlength(SavedPairs, length(SavedPairs) + 1);
    // ** Salva o índice da combinação no vetor de pares salvos **//
    SavedPairs[length(SavedPairs) - 1] := ParHolisticaOrd;
    cmbxSPairs.Items.Add(aux1 + ': ' + aux2 + '|' + Aux3);
  end;
end;

procedure TfrmResultados.lnkBackASClick(Sender: TObject);
begin
rgnsav.Hide;
IWRgnfinaltabela.Show;
DestruirElementosAS;
btnSaveAS.Enabled := true;
btnbackas.Enabled := False;
btnstartas.Enabled := False;
grdvariation.Enabled := true;
end;

procedure TfrmResultados.lnkbackavordClick(Sender: TObject);
begin
  // ** Exibe a pergunta do porquê interromper **//
  // rgnHERCtrl.Visible := false;
  rgnWHER.Visible := True;
  btnWOKHE.Enabled := True;
end;

procedure TfrmResultados.lnkbackrecomClick(Sender: TObject);
begin
if TIWUserSession(WebApplication.Data).Problematica = 0 then
begin
IWRgnfinaltabela.visible := true;
rgnHEG.visible := True;
TbCtrlvisualizations.visible := True;
lblCRFR.visible := True;
IWImage52.top := 814;
IWImage51.top := 814;
IWRgnfinaltabela.Height := 870;
end;

if TIWUserSession(WebApplication.Data).Problematica = 1 then
rgnHolisticaOrd.visible := true;
rgnrulevizualization.visible := false;
end;

procedure TfrmResultados.lnkCategoriesClick(Sender: TObject);
begin
iwregion31.visible := True;
iwregion31.Show;
end;

procedure TfrmResultados.lnkcloseaboutClick(Sender: TObject);
begin
  rgnAbout.Hide;
end;

procedure TfrmResultados.lnkdominancematrixHordClick(Sender: TObject);
var
  i, J, k, y, l, x, select: integer;
  NumAlternativas: array of integer;
  SelectedIndex1: array of Integer;
  SelectedItem: array of String;
  nomelinha, nomecoluna, nomelinha1, nomecoluna1, nomelinha2, nomecoluna2: string;
  linha, coluna: integer;
begin
 with TIWUserSession(WebApplication.Data) do
  begin
if Problematica = 1 then
    begin

     // Limpa o grid antes de adicionar novas linhas
    grdrelationsHord.RowCount := 1;
    grdrelationsHord.ColumnCount := NumAlt + 1;

  select := 0;

    if  TIWUserSession(WebApplication.Data).updateHord = false then
  begin
   checklistboxdominanceHord.Items.Clear;
  // Iterar sobre os itens do CheckListBox e inicialmente selecioná-los
  for i := 0 to Length(TIWUserSession(WebApplication.Data).MatrizGrupo) - 1 do
  begin
    checklistboxdominanceHord.Items.Add('Position ' + IntToStr(i + 1));
    checklistboxdominanceHord.Selected[i] := true;
    INC(select);

    // Verificar se o item está selecionado e, em seguida, processá-lo
    if checklistboxdominanceHord.Selected[i] then
    begin
      // Obtém o nome do item selecionado
      SetLength(SelectedItem, select);
      SetLength(SelectedIndex1, select);
      SelectedItem[select - 1] := 'Position ' + IntToStr(i + 1);
      SelectedIndex1[select - 1] := i + 1;
      end;
      end;
  end;

  if  TIWUserSession(WebApplication.Data).updateHord = true then
  begin
  SetLength(TIWUserSession(WebApplication.Data).SelectedIndexHord, 0);
  SetLength(SelectedItem, 0);
  SetLength(SelectedIndex1, 0);
  for i := 0 to checklistboxdominanceHord.Items.Count - 1 do
    begin
    // Verificar se o item está selecionado e, em seguida, processá-lo
    if checklistboxdominanceHord.Selected[i] then
    begin
      // Obtém o nome do item selecionado
      INC(Select);
      SetLength(TIWUserSession(WebApplication.Data).SelectedIndexHord, select);
      TIWUserSession(WebApplication.Data).SelectedIndexHord[select - 1] := i;
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

   for j := 0 to Length(TIWUserSession(WebApplication.Data).SelectedIndexHord) - 1 do
    begin
    checklistboxdominanceHord.Selected[TIWUserSession(WebApplication.Data).SelectedIndexHord[j]] := True;
     end;
    TIWUserSession(WebApplication.Data).updateHord:= false;
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
        //lblrel.Text := 'Matriz de dominância';
      end;
      //grdrelations.RowCount := NumAlt + 1;
      //grdrelations.ColumnCount := NumAlt + 1;
      for l := 0 to High(NumAlternativas) do
  begin
      grdrelationsHord.Cell[l+1, 0].Text := TIWUserSession(WebApplication.Data).AltSiglas[NumAlternativas[l]];
  end;


      for i := 1 to NumAlt do
      begin
        //grdrelations.Cell[i, 0].Text := AltSiglas[i - 1];
        grdrelationsHord.Cell[0, i].Text := TIWUserSession(WebApplication.Data).AltSiglas[i - 1];
        for J := 0 to High(NumAlternativas) do
          if TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession(WebApplication.Data).Ciclo - 1, i - 1, NumAlternativas[J]] <> 2 then
          begin
            grdrelationsHord.Cell[j+1, i].Text := ' ' + IntToStr(ArmazenaParaPar[Ciclo - 1, NumAlternativas[J], i - 1])
           end
          else
            grdrelationsHord.Cell[j+1, i].Text := ' ' + '2';
        end;

    for i := 1 to NumAlt do
      begin
        for J := 0 to High(NumAlternativas) do
          if TIWUserSession(WebApplication.Data).ArmazenaParaPar[TIWUserSession(WebApplication.Data).Ciclo - 1, i - 1, NumAlternativas[J]] = 1 then
          begin
          linha := i;
          coluna := j;
          grdrelationsHord.Cell[j+1, i].Text := ' -1';
            end;
        end;
    end; // Ordenação
  end;
tbctrlHolisticRanking1Page0.Visible := true;
tbctrlHolisticRanking1.ActivePage:= tbctrlHolisticRanking1Page0.TabOrder;
end;

procedure TfrmResultados.lnkfinalizeClick(Sender: TObject);
begin
  rgnrusfinishing.Visible := True;
end;

procedure TfrmResultados.lnkfinishprClick(Sender: TObject);
begin
  rgnapresentacaoauto.Hide;
  lnkpresentpairs.Visible := True;
  lnkfinishpr.Visible := false;
end;

procedure TfrmResultados.lnkpresentpairsClick(Sender: TObject);
var
  i: integer;
begin
  rgnapresentacaoauto.Visible := True;
  lnkpresentpairs.Visible := false; ;
  lnkfinishpr.Visible := True;
  lnkfinishpr.Top := 33;
  With TIWUserSession(WebApplication.Data) do
  begin
    // ** Indica que a primeira combinação será exibida **//
    ParHolisticaOrd := 0;
    // ** Atualiza a visualização **//
    NextView;
    // ** Inicializa o vetor de pares salvos com 0 **//
    Setlength(SavedPairs, 0);
  end;
end;

procedure TfrmResultados.NextView;
var
  i: integer;
begin
  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to cmbxHEA1.Items.Count - 1 do
      if cmbxHEA1.Items[i] = NomeAlt[Matcombination[ParHolisticaOrd, 0]] then
      begin
        cmbxHEA1.ItemIndex := i;
        break;
      end;

    // ** Atualiza o segundo combobox a partir do que foi selecionado no primeiro **//
    cmbxHEA1Change(self);
    for i := 0 to cmbxHEA2.Items.Count - 1 do
      if cmbxHEA2.Items[i] = NomeAlt[Matcombination[ParHolisticaOrd, 1]] then
      begin
        cmbxHEA2.ItemIndex := i;
        break;
      end;

    // ** Atualiza a visualização a partir do que foi selecionado em ambos os comboboxes **//
    cmbxHEA2Change(self);

    lblcurpair.caption := IntToStr(TIWUserSession(WebApplication.Data)
        .ParHolisticaOrd + 1);
  end;
end;

procedure TfrmResultados.SalvarresultBD;
var
  AuxsalvarBD, tamauxid_alt, k: integer;
  time, auxmx_value, auxmin_value, auxid_criteria, auxid_alt_inc,
    auxid_alt_exc, aux_finc, aux_fexc, auxprofile_inct, auxprofile_exct: string;
  vtrAuxPOA, vetauxexc: array of integer;
  vtrVouFPOA, auxnumchange, auxpos_inc, auxpos_exc, axprofile_inc,
    frequencia_exc, axfreq_exc, profiles_inc, profiles_exc, axprofile_exc,
    frequencia_inc, axfreq_inc: array of string;
  NumAlt, i, J, tampos_inc: integer;
  auxprofile_inc, auxprofile_exc, auxchange2, auxnchange, auxid_as: string;
  auxdatafinal, auxdecision, auxnum_alt, auxalt_avaliadas, auxaltexcoupre,
    auxaltcomparadas, auxquestii: string;
  ic, fn, TT: ttime;
  auxchange: Real;
  auxpoa, auxcancel, auxbdidh, auxbdidah, id_pro, S: string;
  auxcontelicitation, P, id_round: integer;
  auxnumpoa: integer;
  vtrpercigual: array of Double;
  vtrniveis: array of string;
  auxvtrniveis: string;
  auxmarizpercent1: array of array of Double;
  id_round_, id_pro_, AuxMatVar: string;

  /// auxiliares utilizadas nos casos referentes á etapa intracriterio- case 25///
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

          TIWUserSession(WebApplication.Data).tempofinal := TimeToStr(Now);
          ic := strtotime(TIWUserSession(WebApplication.Data).tempinicio);
          fn := strtotime(TIWUserSession(WebApplication.Data).tempofinal);
          if TIWUserSession(WebApplication.Data).tempexecant <> '' then
            TT := fn - ic + strtotime(TIWUserSession(WebApplication.Data)
                .tempexecant)
          else
            TT := fn - ic;
          TIWUserSession(WebApplication.Data).tempexec := TimeToStr(TT);
          TIWUserSession(WebApplication.Data).tempexec := TimeToStr(TT);

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
              for J := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)
                - 1 do
              begin
                if TIWUserSession(WebApplication.Data).VetPOA[J] = i then
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
          auxdatafinal := DateToStr(date);
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

          // para preencher a planilha problema
          SQL.Text := 'UPDATE problem SET stage ="0" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).id_problema) + '";';
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
            Setlength(TIWUserSession(WebApplication.Data).VAltPositionsO,
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
            else // salvando o caso de preferencia
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
          for i := 0 to length(TIWUserSession(WebApplication.Data).pmax) - 1 do
          begin
            if TIWUserSession(WebApplication.Data).pmax[i] <> 0 then
              auxmx_value := auxmx_value + ',' + FloatToStr
                (TIWUserSession(WebApplication.Data).pmax[i]);
            if TIWUserSession(WebApplication.Data).pmin[i] <> 0 then
              auxmin_value := auxmin_value + ',' + FloatToStr
                (TIWUserSession(WebApplication.Data).pmin[i]);
          end;

           // pegando os indices dos criterios que foram selecionados
          for i := 0 to TIWUserSession(WebApplication.Data).Numcrit - 1 do
          begin
            if TIWUserSession(WebApplication.Data).CriSel[i] = True then
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
          for i := 0 to length(TIWUserSession(WebApplication.Data).pmax) - 1 do
          begin
            if TIWUserSession(WebApplication.Data).pmax[i] <> 0 then
              auxmx_value := auxmx_value + ',' + FloatToStr
                (TIWUserSession(WebApplication.Data).pmax[i]);
            if TIWUserSession(WebApplication.Data).pmin[i] <> 0 then
              auxmin_value := auxmin_value + ',' + FloatToStr
                (TIWUserSession(WebApplication.Data).pmin[i]);
          end;

          // pegando os indices dos criterios que foram selecionados
          for i := 0 to TIWUserSession(WebApplication.Data).Numcrit - 1 do
          begin
            if TIWUserSession(WebApplication.Data).CriSel[i] = True then
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
            for J := 0 to TIWUserSession(WebApplication.Data).NumLevels - 1 do
            begin
             auxmarizpercent1[i, J] := (TIWUserSession(WebApplication.Data)
                  .Marizpercent[i, J] / (TIWUserSession(WebApplication.Data)
                    .ninst)) * 100;
              auxvtrniveis := auxvtrniveis + FloatToStr(auxmarizpercent1[i, J]);
              if J < TIWUserSession(WebApplication.Data).NumLevels - 1 then
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
            TIWUserSession(WebApplication.Data).avaliable := True;
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
                id_round := StrToint(S);
              if (id_pro = TIWUserSession(WebApplication.Data).id_problema) and
                (id_round = TIWUserSession(WebApplication.Data).nround) then
              begin
                INC(P);
                Setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                Setlength(TIWUserSession(WebApplication.Data).vet_poa_ciclo, P);
                Setlength(TIWUserSession(WebApplication.Data)
                    .vet_preferences_ciclo, P);
                Setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo, P);
                Setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo, P);
                Setlength(TIWUserSession(WebApplication.Data)
                    .vet_real_consA_ciclo, P);
                Setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
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
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]:= '-10';
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
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]:= FieldByName('real_cons_a').AsString;
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
            TIWUserSession(WebApplication.Data).avaliable := True;
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
                id_round := StrToint(S);
              if (id_pro = TIWUserSession(WebApplication.Data).id_problema) and
                (id_round = TIWUserSession(WebApplication.Data).nround) then
              begin
                INC(P);
                Setlength(TIWUserSession(WebApplication.Data).qp_ret_exp, P);
                Setlength(TIWUserSession(WebApplication.Data).vet_rpos_ciclo,
                  P);
                Setlength(TIWUserSession(WebApplication.Data)
                    .vet_preferences_ciclo, P);
                Setlength(TIWUserSession(WebApplication.Data).vet_idA_ciclo, P);
                Setlength(TIWUserSession(WebApplication.Data).vet_idB_ciclo, P);
                Setlength(TIWUserSession(WebApplication.Data)
                    .vet_real_consA_ciclo, P);
                Setlength(TIWUserSession(WebApplication.Data).vet_ret_hc, P);
                TIWUserSession(WebApplication.Data).qp_ret_exp[i] := FieldByName('perg').AsString;
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
                  TIWUserSession(WebApplication.Data).vet_real_consA_ciclo[i]:= FieldByName('real_cons_a').AsString;
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

          for i := 0 to length(TIWUserSession(WebApplication.Data).pmax) - 1 do
          begin
            auxmx_value := auxmx_value + FloatToStr
              (TIWUserSession(WebApplication.Data).pmax[i]);
            auxmin_value := auxmin_value + FloatToStr
              (TIWUserSession(WebApplication.Data).pmin[i]);

            if i < length(TIWUserSession(WebApplication.Data).pmax) - 1 then
            begin
              auxmx_value := auxmx_value + '/';
              auxmin_value := auxmin_value + '/';
            end;
          end;

          // pegando os criterios que foram selecionados
          for i := 0 to TIWUserSession(WebApplication.Data).Numcrit - 1 do
          begin
            if TIWUserSession(WebApplication.Data).CriSel[i] = True then
              auxid_criteria := auxid_criteria + IntToStr(1);
            if TIWUserSession(WebApplication.Data).CriSel[i] = false then
              auxid_criteria := auxid_criteria + IntToStr(0);

            if i < TIWUserSession(WebApplication.Data).Numcrit - 1 then
              auxid_criteria := auxid_criteria + ',';

          end;

          SQL.Text :=
            'INSERT INTO sensitivity_line (id_problem,user,round,ep,num_poa,num_inst,num_ah,vet_poa,crit_changes,mx_value,min_value) VALUES ("' + (TIWUserSession(WebApplication.Data).id_problema) + '","' + (TIWUserSession(WebApplication.Data).ID_user) + '","' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).epsilon) + '","' + IntToStr(auxnumpoa) + '","' + IntToStr(TIWUserSession(WebApplication.Data).ninst) + '","' + IntToStr(TIWUserSession(WebApplication.Data).NumAH) + '","' + (auxpoa) + '","' + (auxid_criteria) + '","' + (auxmx_value) + '","' + (auxmin_value) + '")';
          ExecSQL;
        end; // referente ao caso 20
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
          Setlength(TIWUserSession(WebApplication.Data).vtr_alt_avaliadas_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
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
        end; // referente ao caso 21

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
          Setlength(TIWUserSession(WebApplication.Data).vtr_alt_avaliadas_sum,
            TIWUserSession(WebApplication.Data).auxquantdeah);
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

      /// caso criado para planilha Intracriterio do BD///
      25: // cria cópia dos dados referentes a round inter -1, para situação em que decisor deseje reiniciar somente elic INTER
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

          for i := 0 to TIWUserSession(WebApplication.Data).Numcrit - 1 do
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
          for J := 0 to TIWUserSession(WebApplication.Data).Numcrit - 1 do
          begin
            for i := 0 to NumAlt - 1 do
            begin
              AuxMatInterpol := AuxMatInterpol + FloatToStr
                (TIWUserSession(WebApplication.Data).ConsNorm[i, J]) + '/';
            end; // for i
          end; // for j

          for J := 0 to TIWUserSession(WebApplication.Data).Numcrit - 1 do
          begin
            for i := 0 to 5 - 1 do
            begin
              AuxPointsBisec := AuxPointsBisec + FloatToStr
                (TIWUserSession(WebApplication.Data).matrizpontosreais[i, J])
                + '/';
            end; // for i
          end; // for j

          with TIWUserSession(WebApplication.Data) do
          begin
            AuxMatVar := '';
            // ** Salvando Matriz de Variação da AS **//
            for i := 0 to length(TIWUserSession(WebApplication.Data).MvarIntra)
              - 1 do
            begin
              if length(MvarIntra[i]) > 0 then
              begin
                // ** § separa as informações de critérios distintos **//
                if AuxMatVar <> '' then
                  AuxMatVar := AuxMatVar + '§';
                for J := 0 to length(MvarIntra[i]) - 1 do
                begin
                  if J > 0 then
                    // ** - separa as informações de pontos distintos do mesmo critério I**//
                    AuxMatVar := AuxMatVar + '-';
                  for k := 0 to length(MvarIntra[i, J]) - 1 do
                    // ** / separa as valores distintos atribuídos ao mesmo ponto J**//
                    AuxMatVar := AuxMatVar + FloatToStr(MvarIntra[i, J, k])
                      + '/';
                end;
              end
              else
                { S significa que o critério não teve a FV elicitada e portanto,
                  não tem pontos para serem variados }
                AuxMatVar := AuxMatVar + 's';
            end;
          end;

                {wagner - 07/08/24 - Pegando os ciclos no banco de dados}
      with UserSession.ZQuery1 do
      begin

        sql.Text := 'SELECT Cycles FROM intracrit WHERE id_problem="' +
          (TIWUserSession(WebApplication.Data).ID_Problema)
          + '"AND round="' + IntToStr
          (TIWUserSession(WebApplication.Data).nround-1)
          + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
            .fvround) + '";';
        ExecSQL;
        open;
        TIWUserSession(WebApplication.Data).infoCYCLE := FieldByName('Cycles').AsString;
        close;
      end;





          SQL.Text :=
            'INSERT INTO intracrit (Id_problem, round, RoundIntra, stage, BoundMx, BoundMn, OriginalFtipo, Verificaintra, LinearIntra, ChangeLinear, CritsElicitados, percent, NormalizaInterpol, PointsBisec, matasvar, cycles) VALUES ("' + (TIWUserSession(WebApplication.Data).id_problema) + '", "' + IntToStr(TIWUserSession(WebApplication.Data).nround) + '", "' + IntToStr(TIWUserSession(WebApplication.Data).fvround) + '", "' + IntToStr(TIWUserSession(WebApplication.Data).estagiointra) + '", "' + AuxBoundMx + '", "' + AuxBoundMn + '" , "' + AuxFtipoOrig + '", "' + AuxverificaIntra + '", "' + AuxLinearIntra + '", "' + AuxChangeLinear + '", "' + AuxCritElicit + '", "' + Auxpercentcrit + '", "' + AuxMatInterpol + '", "' + AuxPointsBisec + '", "' + AuxMatVar + '", "' + TIWUserSession(WebApplication.Data).infoCYCLE + '");';
          ExecSQL;

        end; // case 25
      26:
        begin

          SQL.Text := 'UPDATE current_stage SET epsilon ="' + edtMaxdif.Text +
            '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .id_problema) + '";';
          ExecSQL;

        end; // case26

    end;
  end;
end;

initialization

// TIWForm3.SetAsMainForm;

end.
