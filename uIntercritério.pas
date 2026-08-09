unit uIntercritério;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWCompListbox,
  IWExtCtrls, IWCompButton, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl,
  IWControl, IWCompLabel, Controls, Forms, IWVCLBaseContainer, IWContainer,
  IWHTMLContainer, IWHTML40Container, IWRegion, IWCompText, jpeg, BubbleCh,
  TeePolar,
  { IWAdvWebGridExcel, } pngimage, IWGrids, Chart, Series, TeEngine, ExtCtrls,
  TeeProcs, DB, ADODB, TeeGDIPlus, Graphics, IWBaseComponent,
  IWBaseHTMLComponent, IWBaseHTML40Component, IWAdvWebGridExcel, IWHelpTip,
  IWTMSCtrls, IWTMSPopup, IWHTMLControls, Menus, uPortfolioResults, IWCompEdit,
  TeeTools, TeePageNumTool;

type
  Tfrmaintercriterio = class(TIWAppForm)
    tmr2: TIWTimer;
    TIWAdvWebGridExcelIO1: TTIWAdvWebGridExcelIO;
    pmnHelp: TPopupMenu;
    About1: TMenuItem;
    UserGuide1: TMenuItem;
    English1: TMenuItem;
    Portuguese1: TMenuItem;
    pmnResetoption: TPopupMenu;
    Insertanewproblem1: TMenuItem;
    Restartthecurrentproblem1: TMenuItem;
    rgnHExED: TIWRegion;
    lblWarning: TIWLabel;
    imgEbD: TIWImage;
    IWLabel30: TIWLabel;
    lblnbra: TIWLabel;
    lblnmbl: TIWLabel;
    rdbtnHE: TTIWRadioButton;
    rdbtndecomp: TTIWRadioButton;
    ImgHE: TIWImage;
    btncontinueHED: TIWButton;
    btnrstinitial: TIWButton;
    IWImage12: TIWImage;
    IWLabel52: TIWLabel;
    IWLabel57: TIWLabel;
    IWLink8: TIWLink;
    IWLink9: TIWLink;
    IWLink2: TIWLink;
    TIWPopupMenuButton3: TTIWPopupMenuButton;
    TIWPopupMenuButton5: TTIWPopupMenuButton;
    IWImage38: TIWImage;
    IWImage14: TIWImage;
    IWImage16: TIWImage;
    TIWHelpTip1: TTIWHelpTip;
    TIWHelpTip2: TTIWHelpTip;
    IWRegion39: TIWRegion;
    IWText5: TIWText;
    IWLink11: TIWLink;
    IWRegion34: TIWRegion;
    IWRegion38: TIWRegion;
    IWText4: TIWText;
    IWLink10: TIWLink;
    Intracriteriaevaluation1: TMenuItem;
    Intercriteriaevaluation1: TMenuItem;
    IWRgncomparacaopareada: TIWRegion;
    IWButton14: TIWButton;
    pmnbRPC: TTIWPopupMenuButton;
    lblAnsABPC: TIWLabel;
    lblRCSCPC: TIWLabel;
    lblPCExp: TIWLabel;
    IWLabel60: TIWLabel;
    pmnbHPC: TTIWPopupMenuButton;
    IWImage9: TIWImage;
    IWImage22: TIWImage;
    imgING3: TIWImage;
    imgPORT3: TIWImage;
    IWRegion14: TIWRegion;
    lblCPC: TIWLabel;
    IWRegion15: TIWRegion;
    IWRegion13: TIWRegion;
    lblWiPC: TIWLabel;
    lblBiPC: TIWLabel;
    IWRegion16: TIWRegion;
    IWImage5: TIWImage;
    lblCAPC: TIWLabel;
    Chart1A: TChart;
    IWRegion17: TIWRegion;
    IWImage4: TIWImage;
    lblCBPC: TIWLabel;
    Chart2B: TChart;
    IWRegion20: TIWRegion;
    IWRegion18: TIWRegion;
    IWRegion19: TIWRegion;
    rdgrpCPC: TIWRadioGroup;
    IWRegion1: TIWRegion;
    lblDYAPC: TIWLabel;
    btnYPC: TIWButton;
    btnNPC: TIWButton;
    IWRegionescolherentrecriteriosindiferentes: TIWRegion;
    IWButton6: TIWButton;
    btnOkPairWise: TIWButton;
    IWRegion27: TIWRegion;
    IWescolhadorepresentante: TIWListbox;
    txtIndifM: TIWText;
    lblCAC: TIWLabel;
    IWRgnReset: TIWRegion;
    btnResetNovoProblema: TIWButton;
    btnResetRecomcProblema: TIWButton;
    btnResetVoltar: TIWButton;
    btnlgout: TIWButton;
    IWLabel44: TIWLabel;
    imgLogoCDSID: TIWImage;
    IWLabel49: TIWLabel;
    IWRegion2: TIWRegion;
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
    rgnCEQT: TIWRegion;
    lblWCEQT: TIWLabel;
    edtMaxdif: TIWEdit;
    btnOkEQT: TIWButton;
    hptpEQT: TTIWHelpTip;
    IWLabel17: TIWLabel;
    rgnECDI: TIWRegion;
    IWButton1: TIWButton;
    TIWPopupMenuButton2: TTIWPopupMenuButton;
    IWImage25: TIWImage;
    IWLabel18: TIWLabel;
    IWLabel20: TIWLabel;
    IWImage26: TIWImage;
    IWLink5: TIWLink;
    TIWPopupMenuButton6: TTIWPopupMenuButton;
    IWImage27: TIWImage;
    IWImage28: TIWImage;
    imgING4: TIWImage;
    imgPORT4: TIWImage;
    lblCDPW: TIWLabel;
    lblCDP: TIWLabel;
    IWRegion41: TIWRegion;
    IWLabel21: TIWLabel;
    rgnPergID: TIWRegion;
    IWListbox1: TIWListbox;
    IWButton7: TIWButton;
    IWLabel22: TIWLabel;
    lnkchangeE3: TIWLink;
    IWRegion44: TIWRegion;
    ImgCADP: TIWImage;
    IWLabel23: TIWLabel;
    chrtCDA: TChart;
    Series16: TBarSeries;
    Series17: TBarSeries;
    Series18: TBarSeries;
    Series14: TBarSeries;
    IWRegion45: TIWRegion;
    ImgCBDP: TIWImage;
    IWLabel24: TIWLabel;
    chrtCDB: TChart;
    BarSeries1: TBarSeries;
    BarSeries2: TBarSeries;
    rgnLID: TIWRegion;
    IWLabel25: TIWLabel;
    IWLabel26: TIWLabel;
    IWLabel27: TIWLabel;
    IWLabel33: TIWLabel;
    rgnComCPD: TIWRegion;
    IWRadioGroup2: TIWRadioGroup;
    IWRegion51: TIWRegion;
    IWRgnstep2: TIWRegion;
    IWTxtbdord: TIWText;
    btnResetRgnStep2: TIWButton;
    IWButton10: TIWButton;
    IWButton11: TIWButton;
    IWButton9: TIWButton;
    IWButton13: TIWButton;
    IWLabel56: TIWLabel;
    pmnbRED: TTIWPopupMenuButton;
    IWImage8: TIWImage;
    IWImage21: TIWImage;
    pmnbHED: TTIWPopupMenuButton;
    IWRegion10: TIWRegion;
    IWRegion9: TIWRegion;
    lnkchangeE4: TIWLink;
    IWRegion11: TIWRegion;
    rdgrppreference: TIWRadioGroup;
    IWRegion4: TIWRegion;
    IWRegion6: TIWRegion;
    IWRegion7: TIWRegion;
    IWImage2: TIWImage;
    lblCADE: TIWLabel;
    IWRegion8: TIWRegion;
    IWImage3: TIWImage;
    lblCBDE: TIWLabel;
    IWRegion5: TIWRegion;
    lblNoteDE: TIWLabel;
    lblWiDE: TIWLabel;
    lblXiDE: TIWLabel;
    lblBiDE: TIWLabel;
    ChartA1: TChart;
    ChartB1: TChart;
    IWRgnavaliacaoholistica: TIWRegion;
    IWButton12: TIWButton;
    pmnbROE: TTIWPopupMenuButton;
    lblRCSCOE: TIWLabel;
    lblOEExp: TIWLabel;
    pmnbHOE: TTIWPopupMenuButton;
    IWImage32: TIWImage;
    IWImage31: TIWImage;
    imgIngles: TIWImage;
    imgportugues: TIWImage;
    IWRegion23: TIWRegion;
    lblS1OE: TIWLabel;
    IWRegion22: TIWRegion;
    IWImggraficoordholistica: TIWImage;
    btngerargraficoavhol: TIWButton;
    IWRegion21: TIWRegion;
    lblBiOE: TIWLabel;
    lblWiOE: TIWLabel;
    IWRegion3: TIWRegion;
    lblARSOE: TIWLabel;
    lnkpairwisecomparison: TIWLink;
    lblNoteOE: TIWLabel;
    lblM7COE: TIWLabel;
    IWRgnconfirmarordenacao: TIWRegion;
    lblDYAOE: TIWLabel;
    btnYOE: TIWButton;
    btnNOE: TIWButton;
    Chart11: TChart;
    Series4: TBarSeries;
    Series1: TBarSeries;
    IWRegion25: TIWRegion;
    lblNSOE: TIWLabel;
    txtS2OE: TIWText;
    txtSWOE: TIWText;
    IWRegion24: TIWRegion;
    lblCOSCOOE: TIWLabel;
    IWListboxordenarcrit: TIWListbox;
    Btnrestart: TIWButton;
    Btnchoose: TIWButton;
    IWListboxcriteriosordenados: TIWListbox;
    IWBtnstep2: TIWButton;
    RgnInconsistency: TIWRegion;
    IWLabel58: TIWLabel;
    IWImage23: TIWImage;
    IWImage24: TIWImage;
    rgngraphcomp: TIWRegion;
    rdgrpincnsistency: TIWRadioGroup;
    lblOpIncDE: TIWLabel;
    btninconsistencyok: TIWButton;
    lblIncExpED: TIWLabel;
    lblIncFoundDE: TIWLabel;
    lblSWICDE: TIWLabel;
    rgnGraphintDisc: TIWRegion;
    IWLabel2: TIWLabel;
    IWLabel14: TIWLabel;
    IWRegion42: TIWRegion;
    imgincADisc: TIWImage;
    lblCAIncDisc: TIWLabel;
    IWRegion43: TIWRegion;
    imgincBDisc: TIWImage;
    lblCBIncDisc: TIWLabel;
    rgnGraphDecomp: TIWRegion;
    rgninchori: TIWRegion;
    imgincA: TIWImage;
    lblCAInc: TIWLabel;
    CRTincA: TChart;
    IWRegion30: TIWRegion;
    lblHEInc: TIWLabel;
    lblinconsistencyAH: TIWLabel;
    IWRegion31: TIWRegion;
    imginconsistency: TIWImage;
    grdinconsistency: TIWGrid;
    btnnuminc: TIWButton;
    btnbarinc: TIWButton;
    btnradinc: TIWButton;
    btnbubinc: TIWButton;
    crtinconsistencyg: TChart;
    Series11: TBarSeries;
    IWButton3: TIWButton;
    IWButton4: TIWButton;
    IWButton8: TIWButton;
    IWButton15: TIWButton;
    IWGrid1: TIWGrid;
    IWImage6: TIWImage;
    IWLink6: TIWLink;
    IWRegion26: TIWRegion;
    IWLabel1: TIWLabel;
    imgING1: TIWImage;
    imgPORT1: TIWImage;
    lblOpDE: TIWLabel;
    BrnOK: TIWButton;
    IWLabel3: TIWLabel;
    Series7: TBarSeries;
    Series8: TBarSeries;
    IWRegion37: TIWRegion;
    IWRegion40: TIWRegion;
    IWImage15: TIWImage;
    IWLink3: TIWLink;
    lblWConsPC: TIWLabel;
    IWLabel4: TIWLabel;
    btnrestartPC: TIWButton;
    IWButton2: TIWButton;
    btnOKPairWiseCO: TIWButton;
    IWRegion35: TIWRegion;
    Series9: TBarSeries;
    Series10: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series5: TBarSeries;
    Series6: TBarSeries;
    rgnIncAsk: TIWRegion;
    btnResumeED: TIWButton;
    btnGBOSDE: TIWButton;
    btnx: TIWButton;
    IWLabel48: TIWLabel;
    IWImage10: TIWImage;
    RgnNaosabe: TIWRegion;
    IWLabel41: TIWLabel;
    IWRadioGroup1: TIWRadioGroup;
    Btnnconfirm: TIWButton;
    btnncancel: TIWButton;
    IWLabel46: TIWLabel;
    IWImage11: TIWImage;
    IWLabel42: TIWLabel;
    IWButton5: TIWButton;
    rgncorreserva: TIWRegion;
    HorizBarSeries3: TBarSeries;
    HorizBarSeries4: TBarSeries;
    IWRegion47: TIWRegion;
    IWRegion48: TIWRegion;
    lblLegendPC: TIWLabel;
    IWListbox4: TIWListbox;
    lblCOSCOPC: TIWLabel;
    IWListbox5: TIWListbox;
    IWBtnstep22: TIWButton;
    IWRegion49: TIWRegion;
    IWRegion50: TIWRegion;
    IWRegion12: TIWRegion;
    GrdInd: TIWGrid;
    lstbxtco: TIWListbox;
    lbllegendDE: TIWLabel;
    lbleqtest: TIWLabel;
    btnstopelicitation: TIWButton;
    lblQADE: TIWLabel;
    lblnqa: TIWLabel;
    lblnpoa: TIWLabel;
    lblnda: TIWLabel;
    Btnshowresults: TIWButton;
    lblmaxdif: TIWLabel;
    ChartTool1: TPageNumTool;
    IWRegion52: TIWRegion;
    IWLabel75: TIWLabel;
    IWLabel6: TIWLabel;
    IWRegion53: TIWRegion;
    IWLabel8: TIWLabel;
    rgnviewtab: TIWRegion;
    edtconsA: TIWEdit;
    edtconsA1: TIWEdit;
    IWEdit1: TIWEdit;
    IWEdit2: TIWEdit;
    edtconsB: TIWEdit;
    edtconsB1: TIWEdit;
    btnconseqA: TIWButton;
    IWLabel10: TIWLabel;
    btnconseqB: TIWButton;
    btnindeferente: TIWButton;
    btnnenhumaopcao: TIWButton;
    IWLabel15: TIWLabel;
    lnkgrfvertical: TIWLink;
    lnkgrfhoriz: TIWLink;
    rgnviewgraph: TIWRegion;
    lnkvis1: TIWLink;
    IWLabel13: TIWLabel;
    IWLabel16: TIWLabel;
    IWLink14: TIWLink;
    lnktabular: TIWLink;
    btnconseqA1: TIWButton;
    btnconseqB1: TIWButton;
    btnindeferente1: TIWButton;
    btnnenhumaopcao1: TIWButton;
    IWRegion57: TIWRegion;
    IWImage20: TIWImage;
    IWImage18: TIWImage;
    edtcrit1: TIWEdit;
    edtcrit2: TIWEdit;
    edtvis: TIWEdit;
    edvis2: TIWEdit;
    ChartC: TChart;
    HorizBarSeries5: THorizBarSeries;
    HorizBarSeries6: THorizBarSeries;
    ChartD: TChart;
    HorizBarSeries7: THorizBarSeries;
    HorizBarSeries8: THorizBarSeries;
    IWRegion60: TIWRegion;
    IWImage29: TIWImage;
    edtvis1: TIWEdit;
    IWRegion55: TIWRegion;
    IWImage30: TIWImage;
    edvis3: TIWEdit;
    IWLabel7: TIWLabel;
    IWRegion61: TIWRegion;
    IWLabel32: TIWLabel;
    rgnviewtabOC: TIWRegion;
    IWLabel34: TIWLabel;
    btnconseqAOC: TIWButton;
    btnconseqBOC: TIWButton;
    lnkgrfverticalOC: TIWLink;
    IWLink7: TIWLink;
    IWLabel35: TIWLabel;
    edtconsAOC: TIWEdit;
    edtconsA1OC: TIWEdit;
    IWEdit1OC: TIWEdit;
    IWEdit2OC: TIWEdit;
    edtconsBOC: TIWEdit;
    edtconsB1OC: TIWEdit;
    IWLabel5: TIWLabel;
    rgnviewgraphOC: TIWRegion;
    IWLabel40: TIWLabel;
    btnconseqA1OC: TIWButton;
    btnconseqB1OC: TIWButton;
    IWLabel43: TIWLabel;
    lnkvis1OC: TIWLink;
    IWLink13: TIWLink;
    lnktabularOC: TIWLink;
    IWRegion57OC: TIWRegion;
    IWImage26OC: TIWImage;
    edtcrit1OC: TIWEdit;
    edtcrit2OC: TIWEdit;
    edtvisOC: TIWEdit;
    edvis2OC: TIWEdit;
    IWImage20OC: TIWImage;
    edtvisOC2: TIWEdit;
    Chart1: TChart;
    BarSeries7: TBarSeries;
    BarSeries8: TBarSeries;
    PageNumTool2: TPageNumTool;
    Chart1H: TChart;
    HorizBarSeries11: THorizBarSeries;
    HorizBarSeries12: THorizBarSeries;
    Chart2H: TChart;
    HorizBarSeries13: THorizBarSeries;
    HorizBarSeries14: THorizBarSeries;
    IWRegion51OC: TIWRegion;
    IWImage2OC: TIWImage;
    IWRegion60OC: TIWRegion;
    IWImage3OC: TIWImage;
    IWButton16: TIWButton;
    btngoback: TIWButton;
    btngoback1: TIWButton;
    IWButton17: TIWButton;
    IWLabel53: TIWLabel;
    btnindif: TIWButton;
    IWButton18: TIWButton;
    IWRegion32: TIWRegion;
    lblARSPC: TIWLabel;
    lnkoverallevaluation: TIWLink;
    IWLabel36: TIWLabel;
    IWLabel54: TIWLabel;
    IWImage7: TIWImage;
    IWLink1: TIWLink;
    IWRegion33: TIWRegion;
    IWLabel29: TIWLabel;
    IWRegion64: TIWRegion;
    Chart2: TChart;
    BarSeries9: TBarSeries;
    BarSeries10: TBarSeries;
    PageNumTool3: TPageNumTool;
    ChartA: TChart;
    BarSeries3: TBarSeries;
    BarSeries4: TBarSeries;
    PageNumTool1: TPageNumTool;
    ChartB: TChart;
    BarSeries5: TBarSeries;
    BarSeries6: TBarSeries;
    PageNumTool4: TPageNumTool;
    IWImage1: TIWImage;
    IWLink4: TIWLink;
    IWRegion36: TIWRegion;
    IWLabel45: TIWLabel;
    lblinconsistency01: TIWLabel;
    rgnincostab: TIWRegion;
    IWLabel59: TIWLabel;
    IWLabel61: TIWLabel;
    IWRegion65: TIWRegion;
    IWEdit3: TIWEdit;
    IWEdit4: TIWEdit;
    IWEdit5: TIWEdit;
    IWEdit6: TIWEdit;
    IWEdit7: TIWEdit;
    IWEdit8: TIWEdit;
    IWRegion46: TIWRegion;
    IWLabel55: TIWLabel;
    IWLabel62: TIWLabel;
    IWLabel63: TIWLabel;
    imgincB: TIWImage;
    IWEdit9: TIWEdit;
    IWEdit10: TIWEdit;
    IWEdit11: TIWEdit;
    IWEdit12: TIWEdit;
    IWLabel64: TIWLabel;
    IWLabel65: TIWLabel;
    rgnincvert: TIWRegion;
    IWImage17: TIWImage;
    IWLabel66: TIWLabel;
    IWImage19: TIWImage;
    IWLabel67: TIWLabel;
    IWEdit13: TIWEdit;
    IWEdit14: TIWEdit;
    CRTincB: TChart;
    BarSeries11: TBarSeries;
    BarSeries12: TBarSeries;
    IWRegion28: TIWRegion;
    IWLabel47: TIWLabel;
    IWLabel50: TIWLabel;
    IWLabel51: TIWLabel;
    IWRegion29: TIWRegion;
    IWLabel19: TIWLabel;
    IWLabel28: TIWLabel;
    IWLabel31: TIWLabel;
    IWRegion56: TIWRegion;
    IWLabel68: TIWLabel;
    IWLabel69: TIWLabel;
    IWLabel70: TIWLabel;
    IWRegion62: TIWRegion;
    IWLabel37: TIWLabel;
    IWLabel38: TIWLabel;
    IWLabel39: TIWLabel;
    IWRegion54: TIWRegion;
    IWLabel9: TIWLabel;
    IWLabel11: TIWLabel;
    IWLabel12: TIWLabel;
    IWRegion63: TIWRegion;
    IWLabel71: TIWLabel;
    IWLabel72: TIWLabel;
    IWLabel73: TIWLabel;
    IWLabel74: TIWLabel;
    IWRegion66: TIWRegion;
    IWLabel76: TIWLabel;
    IWLabel77: TIWLabel;
    IWLabel78: TIWLabel;
    IWLabel79: TIWLabel;
    procedure BtnchooseClick(Sender: TObject);
    procedure IWBtnmudarpareadaClick(Sender: TObject);
    procedure IWBtnstep2Click(Sender: TObject);
    procedure IWBtnstep22Click(Sender: TObject);
    procedure IWBtnmudarparaholisticaClick(Sender: TObject);
    procedure IWButton6Click(Sender: TObject);
    procedure IWButton3Click(Sender: TObject);
    procedure BtnrestartClick(Sender: TObject);
    procedure IWButton4Click(Sender: TObject);
    procedure IWListboxordenarcritChange(Sender: TObject);
    procedure IWButton2Click(Sender: TObject);
    procedure btnrestartPCClick(Sender: TObject);
    procedure btnNPCClick(Sender: TObject);
    procedure btngerargraficoavholClick(Sender: TObject);
    /// //////////////// Procedimentos da Elicitação Flexível ///////////////////
    procedure PLEscolha;
    procedure PLOrdenacao(Valorep: real);
    procedure LPsOrdenacao;
    procedure PLCBPortfolio;
    procedure PLClassificacao;
    procedure EFp;
    // Procedure Normaliza;  {realizada na unitIntracriterio}
    procedure CalcLimMin;
    procedure CalcLimMax;
    procedure Proximarel;
    procedure Inversa;
    procedure InterpolacaoInversa(IRa, Val: integer);
    // relacionada à avaliação intracritério
    procedure ConsRealDisc;
    procedure MatrizFaixaDisc;
    procedure ConstruirMatrizgrupo;
    procedure calmaxminweights;
    Procedure inconsistencytest;
    Procedure GraficosInconsistencias(TNFS: array of boolean);
    procedure limiar_criterio;
    procedure classificar(ValorAltMin, ValorAltMax: array of real);
    /// /////////////////////////////////////////////////////////////////////////
    function TrocaVP(Num: Double): String;
    function TrocaPV(Num: String): Double;
    function Rounding(Value: Double): String;
    procedure BrnOKClick(Sender: TObject);
    Procedure PlotaGraphic(IndiceA, IndiceB: integer; DesenpenhoReal: Double);
    procedure BtnshowresultsClick(Sender: TObject);
    Procedure proximaetapa;
    procedure IWRgnavaliacaoholisticaCreate(Sender: TObject);
    procedure btnYPCClick(Sender: TObject);
    procedure btnResetNovoProblemaClick(Sender: TObject);

    procedure btnResetRecomcProblemaClick(Sender: TObject);
    procedure btnResetVoltarClick(Sender: TObject);
    procedure btnbarincClick(Sender: TObject);
    procedure btninconsistencyokClick(Sender: TObject);
    procedure btnnumincClick(Sender: TObject);
    procedure btnradincClick(Sender: TObject);
    procedure btnbubincClick(Sender: TObject);
    procedure IWButton13Click(Sender: TObject);
    procedure IWButton12Click(Sender: TObject);
    procedure IWButton14Click(Sender: TObject);
    procedure btnncancelClick(Sender: TObject);
    procedure BtnnconfirmClick(Sender: TObject);
    procedure IWButton15Click(Sender: TObject);
    procedure btnGBOSDEClick(Sender: TObject);
    procedure btnxClick(Sender: TObject);
    procedure SalvarBDinter;
    procedure btnstopelicitationClick(Sender: TObject);
    procedure btnlgoutClick(Sender: TObject);
    procedure alinhamento;
    Function trescasas(Num: Double): string;
    Procedure EscalaRazao;
    procedure btnprofileelicitClick(Sender: TObject);
    procedure About1Click(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure Portuguese1Click(Sender: TObject);
    procedure rdbtndecompClick(Sender: TObject);
    procedure rdbtnHEClick(Sender: TObject);
    procedure btncontinueHEDClick(Sender: TObject);
    procedure lnkcloseaboutClick(Sender: TObject);
    procedure lnkpairwisecomparisonClick(Sender: TObject);
    procedure lnkoverallevaluationClick(Sender: TObject);
    procedure Intracriteriaevaluation1Click(Sender: TObject);
    procedure Intercriteriaevaluation1Click(Sender: TObject);
    // ** Alterações 24/10/22 **//
    procedure pairwise_comparison;
    procedure btnOKPairWiseCOClick(Sender: TObject);
    procedure btnOkPairWiseClick(Sender: TObject);
    // ** Alterações 28/10/22 **//
    procedure Atualiza_limites_E3;
    procedure Testa_Faixa_Discreta;
    procedure Prepara_cri_nadj;
    Function Obtem_Valor(Consequence: real; TProcedure, IndA: integer): real;
    procedure lnkchangeE4Click(Sender: TObject);
    procedure Prepara_Disc_Int;
    Function testar_faixa(IRa, IRb: integer): boolean;
    procedure lnkchangeE3Click(Sender: TObject);
    // ** Alterações 11/11/22 **//
    procedure intra_razao;
    procedure btnYOEClick(Sender: TObject);
    procedure btnNOEClick(Sender: TObject);
    procedure btnResumeEDClick(Sender: TObject);
    procedure IWButton8Click(Sender: TObject);
    procedure IWRgnstep2Create(Sender: TObject);
    procedure rgnECDICreate(Sender: TObject);
    procedure btnconseqAClick(Sender: TObject);
    procedure btnindeferenteClick(Sender: TObject);
    procedure lnkgrfverticalClick(Sender: TObject);
    procedure lnkgrfhorizClick(Sender: TObject);
    procedure btnconseqA1Click(Sender: TObject);
    procedure btnconseqBClick(Sender: TObject);
    procedure btnnenhumaopcaoClick(Sender: TObject);
    procedure btnconseqB1Click(Sender: TObject);
    procedure btnindeferente1Click(Sender: TObject);
    procedure btnnenhumaopcao1Click(Sender: TObject);
    procedure lnktabularClick(Sender: TObject);
    procedure lnkvis1Click(Sender: TObject);
    procedure IWLink14Click(Sender: TObject);
    procedure btngobackClick(Sender: TObject);
    procedure btnconseqAOCClick(Sender: TObject);
    procedure btngoback1Click(Sender: TObject);
    procedure btnindifClick(Sender: TObject);
    procedure btnconseqBOCClick(Sender: TObject);
    procedure btnconseqA1OCClick(Sender: TObject);
    procedure btnconseqB1OCClick(Sender: TObject);
    procedure IWButton18Click(Sender: TObject);
    procedure lnkgrfverticalOCClick(Sender: TObject);
    procedure IWLink7Click(Sender: TObject);
    procedure lnkvis1OCClick(Sender: TObject);
    procedure lnktabularOCClick(Sender: TObject);
    procedure IWLink13Click(Sender: TObject);

    // procedure IWRegion23Create(Sender: TObject);
  public
  end;

implementation

uses UserSessionUnit, lpsolve51,
  ServerController, untIntro, uResultados, uCode, uAPI_SolveLP, Math, uPerfis,
  untIntraCriterio, untSortingResults, untPortfolioresults;
{$R *.dfm}
// var
{ numcrit, }{ m, n, contclickpair: integer;
  vordem: array of integer; // vetor que vai armezanar a ordem dos criterios selecionados
  vtrrelacoesblin: array of boolean; // vetor que vai armazenar as rela~coes blindadas
  vtrblin: array of boolean; // vetor que vai armazenar os criterios blindados
  vtrposicoes: array of integer; // vetor que vai colocar as posições do criterio no ranqueamento
  auxiAPAGAR, numcrit: integer;
  vtrnomecrit: array of string; // APAGAR POIS VAI VIM DA PARTE DE PAOLLA
  bar: array of TBarSeries;
  qtitensselected: integer; // conta quantos itens foram selecionados no listbox inicial
  vetorgrafico: array of integer; }

procedure Tfrmaintercriterio.About1Click(Sender: TObject);
begin
  rgnAbout.show;
end;

// ** Este procedimento aplica a transformação v(x) a uma consequência específica **//
function Tfrmaintercriterio.Obtem_Valor(Consequence: real;
  TProcedure, IndA: integer): real;
var
  i, j, k: integer;
  zmin, zmax: Double;
  MatAuxPontos: array [0 .. 4] of array [0 .. 1] of Double;
begin
  With TIWUserSession(WebApplication.Data) do
  Begin
    if TProcedure = 0 then
    begin
      case TIWUserSession(WebApplication.Data).FTipo[vtrordem[IndA]] of // função que armazena o vetor dos tipos de FO declaradas na planilha

        1: // procedimento realiza a normalização das consequências considerando a função valor linear ///////////////////////
          begin
            // Normalização para os critérios de maximização //////////////////////
            if (Typeofcrit[vtrordem[IndA]] = 1) or
              (Typeofcrit[vtrordem[IndA]] = 3) then
              Result := (Consequence - Min[vtrordem[IndA]]) /
                (Max[vtrordem[IndA]] - Min[vtrordem[IndA]]);
            /// Normalização para os critérios de minimização //////////////////////
            if (Typeofcrit[vtrordem[IndA]] = 0) or
              (Typeofcrit[vtrordem[IndA]] = 2) then
              Result := (Consequence - Max[vtrordem[IndA]]) /
                (-Max[vtrordem[IndA]] + Min[vtrordem[IndA]]);

          end;

        2: // procedimento realiza a normalização das consequencias considerando função valor exponencial
          begin
            if Min[vtrordem[IndA]] = 0 then
              Min[vtrordem[IndA]] := Power(10, -5); // O QUE É POWER??
            zmin := Exp(TIWUserSession(WebApplication.Data)
                .parA[vtrordem[IndA]] * Min[vtrordem[IndA]]);
            // exponencial do parametro A vezes o valor minimo capturado no criterio
            zmax := Exp(parA[vtrordem[IndA]] * Max[vtrordem[IndA]]); // exponencial do parametro A vezes o valor máximo capturado no criterio

            // normalização para os criterios de maximização//
            if (Typeofcrit[vtrordem[IndA]] = 1) or
              (Typeofcrit[vtrordem[IndA]] = 3) then
              Result := (Exp(parA[vtrordem[IndA]] * Consequence) - zmin) /
                (zmax - zmin);
            // normalização para os criterios de minimização//
            if (Typeofcrit[vtrordem[IndA]] = 0) or
              (Typeofcrit[vtrordem[IndA]] = 2) then
              Result := (Exp(parA[vtrordem[IndA]] * Consequence) - zmax) /
                (zmin - zmax);
          end;

        3: // procedimento realiza a normalização das consequencias considerando função valor logaritmica
          begin
            if Min[vtrordem[IndA]] = 0 then
              Min[vtrordem[IndA]] := Power(10, -5); // O QUE É POWER??
            zmin := Ln(parA[vtrordem[IndA]] * Min[vtrordem[IndA]] + 1 - parA
                [vtrordem[IndA]] * Min[vtrordem[IndA]]);
            zmax := Ln(parA[vtrordem[IndA]] * Max[vtrordem[IndA]] + 1 - parA
                [vtrordem[IndA]] * Min[vtrordem[IndA]]);

            // normalização para os criterios de maximização///
            if (Typeofcrit[vtrordem[IndA]] = 1) or
              (Typeofcrit[vtrordem[IndA]] = 3) then
              Result :=
                (Ln(parA[vtrordem[IndA]] * Consequence + 1 - parA
                    [vtrordem[IndA]] * Min[vtrordem[IndA]]) - zmin) /
                (zmax - zmin);
            // normalização para os criterios de minimização//
            if (Typeofcrit[vtrordem[IndA]] = 0) or
              (Typeofcrit[vtrordem[IndA]] = 2) then
              Result :=
                (Ln(parA[vtrordem[IndA]] * Consequence + 1 - parA
                    [vtrordem[IndA]] * Min[vtrordem[IndA]]) - zmax) /
                (zmin - zmax);
            { else
              Result := 1; }
          end;

        4: // procedimento realiza a normalização das consequencias considerando função valor logistica (S-Shape)
          begin
            if Min[vtrordem[IndA]] = 0 then
              Min[vtrordem[IndA]] := Power(10, -5);

            zmax := Exp(-parA[vtrordem[IndA]] / TIWUserSession
                (WebApplication.Data).Max[vtrordem[IndA]]);
            zmin := Exp(-TIWUserSession(WebApplication.Data)
                .parA[vtrordem[IndA]] / TIWUserSession(WebApplication.Data)
                .Min[vtrordem[IndA]]);

            // normalização para os criterios de maximização///
            if (Typeofcrit[vtrordem[IndA]] = 1) or
              (Typeofcrit[vtrordem[IndA]] = 3) then
              Result :=
                (Exp(-TIWUserSession(WebApplication.Data).parA[vtrordem[IndA]]
                    / Consequence) - zmin) / (zmax - zmin);
            // normalização para os criterios de minimização//
            if (Typeofcrit[vtrordem[IndA]] = 0) or
              (Typeofcrit[vtrordem[IndA]] = 2) then
              Result := (Exp(-parA[vtrordem[IndA]] / Consequence) - zmax) /
                (zmin - zmax);
            { else
              Result := 1; }
          end;
      end; // Case
    end // TProcedura = 0
    else
    begin
      // ** Caso tenha havido a elicitação intra **//
      // ** Recebe os pontos na matriz auxiliar **//
      MatAuxPontos[0, 0] := matrizpontosreais[1, vtrordem[IndA]];
      MatAuxPontos[1, 0] := matrizpontosreais[3, vtrordem[IndA]];
      MatAuxPontos[2, 0] := matrizpontosreais[2, vtrordem[IndA]];
      MatAuxPontos[3, 0] := matrizpontosreais[4, vtrordem[IndA]];
      MatAuxPontos[4, 0] := matrizpontosreais[0, vtrordem[IndA]];

      for i := 0 to 5 - 1 do
        MatAuxPontos[i, 1] := i / 4;

      for i := 0 to 4 - 1 do
      begin
        if (Typeofcrit[vtrordem[IndA]] = 1) or (Typeofcrit[vtrordem[IndA]] = 3)
          then
          if (Consequence >= MatAuxPontos[i, 0]) and
            (Consequence <= MatAuxPontos[i + 1, 0]) then
            Result := MatAuxPontos[i, 1] +
              (((Consequence - MatAuxPontos[i, 0]) /
                  (MatAuxPontos[i + 1, 0] - MatAuxPontos[i, 0])) *
                (MatAuxPontos[i + 1, 1] - MatAuxPontos[i, 1]));

        if (Typeofcrit[vtrordem[IndA]] = 0) or (Typeofcrit[vtrordem[IndA]] = 2)
          then
          if (Consequence <= MatAuxPontos[i, 0]) and
            (Consequence >= MatAuxPontos[i + 1, 0]) then
            Result := MatAuxPontos[i, 1] +
              (((Consequence - MatAuxPontos[i, 0]) /
                  (MatAuxPontos[i + 1, 0] - MatAuxPontos[i, 0])) *
                (MatAuxPontos[i + 1, 1] - MatAuxPontos[i, 1]));

      end; // for
    end;
  End; // with
end;

procedure Tfrmaintercriterio.alinhamento;
begin
  IWRgnavaliacaoholistica.Align := Talign(5);
  IWRgnstep2.Align := Talign(5);
  RgnInconsistency.Align := Talign(5);
  IWRgncomparacaopareada.Align := Talign(5);
  rgnHExED.Align := Talign(5);
  rgnECDI.Align := Talign(5);
  IWRgnReset.Left := 454;
  IWRgnReset.Top := 154;
  RgnNaosabe.Left := 551;
  RgnNaosabe.Top := 330;
  rgnIncAsk.Left := 551;
  rgnIncAsk.Top := 330;
  rgnAbout.Left := 250;
  rgnAbout.Top := 180;
end;

procedure Tfrmaintercriterio.btnstopelicitationClick(Sender: TObject);
begin
  IWRgnstep2.Visible := false;
  TIWUserSession(WebApplication.Data).sol := 11;
  if (TIWUserSession(WebApplication.Data).Problematica = 2) then
    Tfrmportfolioresults.Create(WebApplication).show;
  if (TIWUserSession(WebApplication.Data).Problematica = 3) then
    TfrmSortingResults.Create(WebApplication).show;
  if (TIWUserSession(WebApplication.Data).Problematica = 0) or
    (TIWUserSession(WebApplication.Data).Problematica = 1) then
    TfrmResultados.Create(WebApplication).show;
  calmaxminweights;
  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).estagio := 4;
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 7;
  SalvarBDinter;
  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  SalvarBDinter;
  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 17;
  SalvarBDinter;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '1';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
  SalvarBDinter;

end;

procedure Tfrmaintercriterio.classificar
  (ValorAltMin, ValorAltMax: array of real);
var
  i, k: integer;
  auxValAltMax, auxValAltMin: real;
begin
  for k := 0 to Length(ValorAltMin) - 1 do
  begin
    auxValAltMax := Round(ValorAltMax[k] * 100) / 100;
    auxValAltMin := Round(ValorAltMin[k] * 100) / 100;
    TIWUserSession(WebApplication.Data).class_min[k] := 1;

    for i := 0 to Length(TIWUserSession(WebApplication.Data).perfis) - 1 do
    begin
      if auxValAltMin >= TIWUserSession(WebApplication.Data).perfis[i] then
        TIWUserSession(WebApplication.Data).class_min[k] := 1 + TIWUserSession
          (WebApplication.Data).class_min[k]
      else
        break;
    end;

    TIWUserSession(WebApplication.Data).class_max[k] := TIWUserSession
      (WebApplication.Data).class_min[k];
    for i := TIWUserSession(WebApplication.Data).class_min[k] - 1 to Length
      (TIWUserSession(WebApplication.Data).perfis) - 1 do
    begin
      if auxValAltMax > TIWUserSession(WebApplication.Data).perfis[i] then
        TIWUserSession(WebApplication.Data).class_max[k] := 1 + TIWUserSession
          (WebApplication.Data).class_max[k]
      else
        break;
    end

  end;
end;

procedure Tfrmaintercriterio.Prepara_cri_nadj;
var
  i, j, k: integer;
  value, Aux1: real;
begin
  exit;
  with TIWUserSession(WebApplication.Data) do
  begin
    // ** Seta as dimensões das matrizes **//
    Setlength(MLimMin, numcrit, numcrit);
    Setlength(MLimMax, numcrit, numcrit);
    Setlength(MLimMinA, numcrit, numcrit);
    Setlength(MLimMaxA, numcrit, numcrit);
    Setlength(Mblindados, numcrit, numcrit);
    // ** ~Considera-se apenas a matriz triangular superior, entretanto, são setadas com
    // ** Numcrit x Numcrit para facilitar a operação dos índices

    // ** Passa as relações blindadas para a matriz **//
    for i := 0 to numcrit - 2 do
    begin
      if vtrrelacoesblin[i] then
        Mblindados[i, i + 1] := true;
      if Niveis[vtrordem[i]] = 2 then
        for j := i + 1 to numcrit - 1 do
          Mblindados[i, j] := true;
    end;

    // ** Inicializando as matrizes **//
    for i := 0 to numcrit - 1 do
      if i <= numcrit - 2 then
      begin
        MLimMin[i, i + 1] := LimMin[i];
        MLimMax[i, i + 1] := LimMax[i];
      end;
    { for j := i + 2 to Numcrit - 1 do
      begin
      // ** Se a resposta da pergunta da heurística for B, todos os limites mínimos ficam igual a 0,5
      if HeurQuest = 1 then
      MlimMin[i, j] := 0.5
      else
      // ** Caso contrário, não temos informação sobre o limite mínimo das relações entre não adjascentes

      end; }

    // ** Calculando os valores dos limites superiores e inferiores de cri não adjascentes**//
    for i := 0 to numcrit - 1 do
      for j := i + 2 to numcrit - 1 do
      begin
        // ** Multiplica pelo valor da relação do critério J - 1 com j **//
        TIWUserSession(WebApplication.Data).MLimMax[i, j] := MLimMax[i, j - 1]
          * MLimMax[j - 1, j];
        TIWUserSession(WebApplication.Data).MLimMin[i, j] := MLimMin[i, j - 1]
          * MLimMin[j - 1, j];
      end;

    // ** Salva os v(x) utilizados para a atualização dos limites impostos pelas
    Setlength(MLimMaxImp, numcrit - 1);
    Setlength(MLimMinImp, numcrit - 1);
    // ** perguntas envolvendo cri n-adj /**
    // ** Neste momento temos apenas os limites impostos pela pergunta da heurística **//
    for i := 0 to numcrit - 2 do
    begin
      if HeurQuest = 0 then
      begin
        Setlength(MLimMaxImp, numcrit - 1, 1, 3);
        TIWUserSession(WebApplication.Data).MLimMaxImp[i, 0, 0] := WDPHEUR;
        TIWUserSession(WebApplication.Data).MLimMax[IdAHeur, IdBHeur] :=
          WDPHEUR;
        MLimMaxImp[i, 0, 1] := IdAHeur;
        MLimMaxImp[i, 0, 2] := IdBHeur;
      end;
      if HeurQuest = 1 then
      begin
        Setlength(MLimMinImp, numcrit - 1, 1, 3);
        TIWUserSession(WebApplication.Data).MLimMinImp[i, 0, 0] := WDPHEUR;
        TIWUserSession(WebApplication.Data).MLimMin[IdAHeur, IdBHeur] :=
          WDPHEUR;
        MLimMinImp[i, 0, 1] := IdAHeur;
        MLimMinImp[i, 0, 2] := IdBHeur;
      end;
    end;
  end; // With

end;

procedure Tfrmaintercriterio.Atualiza_limites_E3;
var
  i, j, k, I1A, I2B, RPans: integer;
  Aux1, Aux2, Aux3: Double;
  Str1: String;
begin
  exit;
  with TIWUserSession(WebApplication.Data) do
  begin
    // ** Salvando os nomos limites impostos a cada restrição **//
    if PAns < 3 then
    begin
      // ** Indiferença **//
      if PAns = 2 then
      begin
        RPans := 2;
        // ** Recebe o efeito de responder B **//
        ConseqB := WDP1 - 0.1 * (WDP1 - TIWUserSession(WebApplication.Data)
            .MLimMinA[Indice, BIndex]);
        TIWUserSession(WebApplication.Data).MLimMin[Indice, BIndex] :=
          TIWUserSession(WebApplication.Data).ConseqB;
        PAns := 1;
        AvaliandoInd := true;
        Atualiza_limites_E3;

        // ** Recebe o efeito de responder A **//
        ConseqA := WDP1 + 0.1 * (TIWUserSession(WebApplication.Data)
            .MLimMaxA[Indice, BIndex] - TIWUserSession(WebApplication.Data)
            .WDP1);
        if (MLimMin[Indice, BIndex] < ConseqA) and
          (MLimMax[Indice, BIndex] >= ConseqA) then
        begin
          PAns := 0;
          TIWUserSession(WebApplication.Data).MLimMax[Indice, BIndex] :=
            TIWUserSession(WebApplication.Data).ConseqA;
        end
        else
          exit;
      end
      else if not AvaliandoInd then
      begin
        ConseqA := WDP1;
        ConseqB := WDP1;
      end;

      for i := Indice to BIndex - 1 do
      begin

        // ** Consequencia A preferída **//
        if (PAns = 0) then
        begin
          RPans := 0;
          Setlength(MLimMaxImp[i], Length(MLimMaxImp[i]) + 1, 3);
          TIWUserSession(WebApplication.Data)
            .MLimMaxImp[i, Length(MLimMaxImp[i]) - 1, 0] := TIWUserSession
            (WebApplication.Data).ConseqA;
          MLimMaxImp[i, Length(MLimMaxImp[i]) - 1, 1] := Indice;
          MLimMaxImp[i, Length(MLimMaxImp[i]) - 1, 2] := BIndex;
        end;
        // ** Consequencia B preferída **//
        if (PAns = 1) then
        begin
          RPans := 1;
          Setlength(MLimMinImp[i], Length(MLimMinImp[i]) + 1, 3);
          TIWUserSession(WebApplication.Data)
            .MLimMinImp[i, Length(MLimMinImp[i]) - 1, 0] := TIWUserSession
            (WebApplication.Data).ConseqB;
          MLimMinImp[i, Length(MLimMinImp[i]) - 1, 1] := Indice;
          MLimMinImp[i, Length(MLimMinImp[i]) - 1, 2] := BIndex;
        end;

      end;

    end;

    // ** Atualiza os limites a depender da resposta dada na elicitação **//
    if (PAns < 3) then
    begin
      for i := 0 to numcrit - 2 do
      begin
        Aux2 := 0;
        // ** Procura a condição mais restritiva da relação I **//

        for k := 0 to Length(TIWUserSession(WebApplication.Data).MLimMinImp[i])
          - 1 do
        begin
          Aux1 := 1;
          Aux3 := 0;
          // ** Recebendo os índices relativos aos crit não adj comparados para a
          // ** geração  de cada limite imposto **//
          Str1 := FormatFloat('0', MLimMinImp[i, k, 1]);
          I1A := StrToInt(Str1);
          Str1 := FormatFloat('0', MLimMinImp[i, k, 2]);
          I2B := StrToInt(Str1);
          for j := I1A to I2B - 1 do
            if j <> i then
              Aux1 := Aux1 * LimMax[j];
          if Aux1 > 0 then
          begin
            Aux3 := MLimMinImp[i, k, 0] / Aux1;
          end;
          if Aux2 < Aux3 then
            // ** Pega o V(x) que resultará no maior limite inferior **//
            Aux2 := Aux3;
        end; // k
        if LimMin[i] < (Aux2) then
          TIWUserSession(WebApplication.Data).LimMin[i] := (Aux2);
      end; // if PANS
    end;

    if (PAns < 3) then
    begin
      for i := 0 to numcrit - 2 do
      begin
        Aux2 := 1;
        // ** Procura a condição mais restritiva da relação I **//
        for k := 0 to Length(TIWUserSession(WebApplication.Data).MLimMaxImp[i])
          - 1 do
        begin
          Aux1 := 1;
          Aux3 := 1;
          // ** Recebendo os índices relativos aos crit não adj comparados para a
          // ** geração  de cada limite imposto **//
          Str1 := FormatFloat('0', MLimMaxImp[i, k, 1]);
          I1A := StrToInt(Str1);
          Str1 := FormatFloat('0', MLimMaxImp[i, k, 2]);
          I2B := StrToInt(Str1);
          for j := I1A to I2B - 1 do
            if j <> i then
              Aux1 := Aux1 * LimMin[j];
          if Aux1 > 0 then
          begin
            Aux3 := MLimMaxImp[i, k, 0] / Aux1;
          end;
          if Aux2 > Aux3 then
            // ** Pega o V(x) que resultará no maior limite inferior **//
            Aux2 := Aux3;
        end; // k
        if LimMax[i] > (Aux2) then
          TIWUserSession(WebApplication.Data).LimMax[i] := (Aux2);
      end;
    end; // if pans

    // ** Calculando os valores dos limites superiores e inferiores de cri não adjascentes**//
    for i := 0 to numcrit - 2 do
    begin
      MLimMax[i, i + 1] := TIWUserSession(WebApplication.Data).LimMax[i];
      MLimMin[i, i + 1] := TIWUserSession(WebApplication.Data).LimMin[i];
    end;

    for i := 0 to numcrit - 1 do
    begin
      for j := i + 2 to numcrit - 1 do
      begin
        if (i <> Indice) or (j <> BIndex) then
        begin
          // ** Multiplica pelo valor da relação do critério J - 1 com j **//
          Aux1 := MLimMax[i, j - 1] * MLimMax[j - 1, j];
          if MLimMax[i, j] > Aux1 then
            TIWUserSession(WebApplication.Data).MLimMax[i, j] := Aux1;
          Aux2 := MLimMin[i, j - 1] * MLimMin[j - 1, j];
          if MLimMin[i, j] < Aux2 then
            TIWUserSession(WebApplication.Data).MLimMin[i, j] := Aux2;
        end; // if
      end; // j
    end; // i

    PAns := RPans;
    AvaliandoInd := false;
  end; // with
end;

Function Tfrmaintercriterio.testar_faixa(IRa, IRb: integer): boolean;
var
  z, zmax, zmin, C1, C2: real;
  Fmax, Fmin, Vrmax, Vrmin: real;
  Relacao: integer;
begin
  // ** Verifica se a faixa atual é menor que 10-^2, caso assim seja, deve-se interromper
  // ** as perguntas para a relação de critérios **//
  with TIWUserSession(WebApplication.Data) do
  begin
    Relacao := TIWUserSession(WebApplication.Data)
      .Representantes[TIWUserSession(WebApplication.Data)
      .vtrposicoes[IRa] - 1]; ;

    if Etapa <> 3 then
    begin
      Vrmax := TIWUserSession(WebApplication.Data).LimMax[IRa];
      Vrmin := TIWUserSession(WebApplication.Data).LimMin[IRa];
    end
    else
    begin
      Vrmax := MLimMax[IRa, IRb];
      Vrmin := MLimMin[IRa, IRb];
    end;
    if TIWUserSession(WebApplication.Data).VtrcritBisec[vtrordem[Relacao]]
      = false then
    begin
      case TIWUserSession(WebApplication.Data)
        .FTipo[TIWUserSession(WebApplication.Data).vtrordem[Relacao]] of
        1: // Função valor linear
          begin
            /// FUNÇÃO INVERSA PARA FUNÇÃO DO TIPO LINEAR
            case TIWUserSession(WebApplication.Data)
              .Typeofcrit[vtrordem[Relacao]] of
              1:
                begin
                  Fmax := (TIWUserSession(WebApplication.Data)
                      .Max[vtrordem[Relacao]] - TIWUserSession
                      (WebApplication.Data).Min[vtrordem[Relacao]])
                    * Vrmax + Min[vtrordem[Relacao]]; // crescente
                  Fmin := (TIWUserSession(WebApplication.Data)
                      .Max[vtrordem[Relacao]] - TIWUserSession
                      (WebApplication.Data).Min[vtrordem[Relacao]])
                    * Vrmin + Min[vtrordem[Relacao]]; // crescente

                end;
              0:
                begin
                  Fmax := (-Max[vtrordem[Relacao]] + Min[vtrordem[Relacao]])
                    * Vrmin + Max[vtrordem[Relacao]]; // decrescente

                  Fmin := (-Max[vtrordem[Relacao]] + Min[vtrordem[Relacao]])
                    * Vrmax + Max[vtrordem[Relacao]]; // decrescente

                end;
            end;
          end;

        /// / FUNÇÕES INVERSAS PARA FUNÇÕES VALOR NÃO LINEARES////////////

        2: // função valor exponencial
          begin
            zmax := Exp(parA[vtrordem[Relacao]] * Max[vtrordem[Relacao]]);
            zmin := Exp(parA[vtrordem[Relacao]] * Min[vtrordem[Relacao]]);

            case Typeofcrit[vtrordem[Relacao]] of
              0:
                begin // continuo decrescente
                  z := Vrmin * (zmin - zmax) + zmax;
                  Fmax := Ln(z) / parA[vtrordem[Relacao]];

                  z := Vrmax * (zmin - zmax) + zmax;
                  Fmin := Ln(z) / parA[vtrordem[Relacao]];
                  /// //nesse estou em duvida se existe a necessidade
                  /// de criação do vtrAordem ou se posso chamar o vtrordem de inteiros com o vetor parA, para o indice A.
                  /// ficaria   Consreal[Relacao] := Ln(z) / vtrordem[parA[Relacao]]

                end; // fim continuo decrescente
              1:
                begin // continuo crescente
                  z := Vrmax * (zmax - zmin) + zmin;
                  Fmax := Ln(z) / parA[vtrordem[Relacao]];

                  z := Vrmin * (zmax - zmin) + zmin;
                  Fmin := Ln(z) / parA[vtrordem[Relacao]];

                end; // fim continuo crescente
            end; // fim case
          end; // fim função valor exponencial

        3: // função valor logaritmica
          begin
            zmax := Ln(parA[vtrordem[Relacao]] * Max[vtrordem[Relacao]]
                + 1 - parA[vtrordem[Relacao]] * Min[vtrordem[Relacao]]);
            zmin := Ln(parA[vtrordem[Relacao]] * Min[vtrordem[Relacao]]
                + 1 - parA[vtrordem[Relacao]] * Min[vtrordem[Relacao]]);

            case Typeofcrit[vtrordem[Relacao]] of
              0:
                begin // continuo decrescente
                  z := Vrmin * (zmin - zmax) + zmax;
                  Fmax := (Exp(z) + parA[vtrordem[Relacao]] * Min
                      [vtrordem[Relacao]] - 1) / (parA[vtrordem[Relacao]]);
                  z := Vrmax * (zmin - zmax) + zmax;
                  Fmin := (Exp(z) + parA[vtrordem[Relacao]] * Min
                      [vtrordem[Relacao]] - 1) / (parA[vtrordem[Relacao]]);
                end; // fim continuo decrescente
              1:
                begin // continuo crescente
                  z := Vrmax * (zmax - zmin) + zmin;
                  Fmax := (Exp(z) + parA[vtrordem[Relacao]] * Min
                      [vtrordem[Relacao]] - 1) / (parA[vtrordem[Relacao]]);
                  z := Vrmin * (zmax - zmin) + zmin;
                  Fmin := (Exp(z) + parA[vtrordem[Relacao]] * Min
                      [vtrordem[Relacao]] - 1) / (parA[vtrordem[Relacao]]);
                end; // fim continuo crescente
            end; // fim case
          end; // fim função valor logaritmica

        4: // função valor logistica
          begin
            zmax := Exp(-parA[vtrordem[Relacao]] / Max[vtrordem[Relacao]]);
            zmin := Exp(-parA[vtrordem[Relacao]] / Min[vtrordem[Relacao]]);

            case Typeofcrit[vtrordem[Relacao]] of
              0:
                begin // continuo decrescente
                  z := Vrmin * (zmin - zmax) + zmax;
                  Fmax := -parA[vtrordem[Relacao]] / Ln(z);

                  z := Vrmax * (zmin - zmax) + zmax;
                  Fmin := -parA[vtrordem[Relacao]] / Ln(z);
                end; // fim continuo decrescente
              1:
                begin // continuo crescente
                  z := Vrmax * (zmax - zmin) + zmin;
                  Fmax := -parA[vtrordem[Relacao]] / Ln(z);

                  z := Vrmin * (zmax - zmin) + zmin;
                  Fmin := -parA[vtrordem[Relacao]] / Ln(z);
                end; // fim contiuo crescente
            end; // fim case
          end; // fim função valor logistica
      end; // fim do case geral

    end // Não houve elicitação via intra
    else
    begin
      TIWUserSession(WebApplication.Data).WDP1 := Vrmax;
      InterpolacaoInversa(Relacao, -1);
      C1 := ConsReal;
      TIWUserSession(WebApplication.Data).WDP1 := Vrmin;
      InterpolacaoInversa(Relacao, -1);
      C2 := ConsReal;

      case Typeofcrit[vtrordem[Relacao]] of
        0:
          begin // continuo decrescente
            Fmax := C2;
            Fmin := C1;
          end; // fim continuo decrescente
        1:
          begin // continuo crescente
            Fmax := C1;
            Fmin := C2;
          end; // fim contiuo crescente
      end;
    end;

  end; // With

  if (Fmax - Fmin) < Power(10, -2) then
    Result := true
  else
    Result := false;

end;

procedure Tfrmaintercriterio.Testa_Faixa_Discreta;
var
  i, cont, j, IndA: integer;
  VNorm: array of real;
  VPInt: array [0 .. 2] of real;
  MnRvalue, MxRvalue: real;
  TProcedure: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin

    // ** Supõem que não há mais critério discreto para elicitar **//
    lnkchangeE4.Visible := false;
    DCLab := false;
    TADC := false;
    // ** Verifica se ainda faz sentido realizar perguntas para níveis disc intermediários **//
    for i := 0 to numcrit - 2 do
      if (TIWUserSession(WebApplication.Data).Niveis[vtrordem[Representantes[vtrposicoes[i] - 1]]] > 2) and
        (not TIWUserSession(WebApplication.Data).DiscIntBlind[vtrordem[Representantes[vtrposicoes[i] - 1]]]) then
      begin
        IndA := Representantes[vtrposicoes[i] - 1];

        // ** Indica se há FV analítica ou deve-se usar interpolação **//
        if TIWUserSession(WebApplication.Data).VtrcritBisec[vtrordem[IndA]]
          = true then
          TProcedure := 1
        else
          TProcedure := 0;

        Setlength(VNorm, Niveis[vtrordem[IndA]]);

        // ** Obtem o valor v(x) para cada nível da escala em ordem crescente **//
        for j := 0 to Niveis[vtrordem[IndA]] - 1 do
          if Typeofcrit[vtrordem[IndA]] = 2 then
            VNorm[j] := Obtem_Valor(Niveis[vtrordem[IndA]] - j, TProcedure,
              IndA)
          else
            VNorm[j] := Obtem_Valor(j + 1, TProcedure, IndA);

        // ** É necessário encontrar os limitantes inferior e superior dos limites **//
        for j := 0 to Niveis[vtrordem[IndA]] - 2 do
          if (TIWUserSession(WebApplication.Data).LimMin[i] >= VNorm[j]) and
            (TIWUserSession(WebApplication.Data).LimMax[i] <= VNorm[j + 1]) then
          begin
            if TIWUserSession(WebApplication.Data)
              .Typeofcrit[TIWUserSession(WebApplication.Data).vtrordem[IndA]]
              = 3 then
            begin
              MnRvalue := j + 1;
              MxRvalue := j + 2;
            end;
            if Typeofcrit[vtrordem[IndA]] = 2 then
            begin
              MnRvalue := Niveis[vtrordem[IndA]] - j - 1;
              MxRvalue := Niveis[vtrordem[IndA]] - j;
            end;
          end;

        // ** Calcula v(x) das perguntasque seriam feitas ao critério **//
        VPInt[0] := Obtem_Valor(MnRvalue + 0.5 * (MxRvalue - MnRvalue),
          TProcedure, IndA);
        if Typeofcrit[vtrordem[IndA]] = 3 then
        begin
          VPInt[1] := Obtem_Valor(MnRvalue + (1 / 3) * (MxRvalue - MnRvalue),
            TProcedure, IndA);
          VPInt[2] := Obtem_Valor(MnRvalue + (2 / 3) * (MxRvalue - MnRvalue),
            TProcedure, IndA);
        end
        else
        begin
          VPInt[2] := Obtem_Valor(MnRvalue + (1 / 3) * (MxRvalue - MnRvalue),
            TProcedure, IndA);
          VPInt[1] := Obtem_Valor(MnRvalue + (2 / 3) * (MxRvalue - MnRvalue),
            TProcedure, IndA);

        end;

        // ** Captando os limies **//
        MnRvalue := LimMin[i];
        MxRvalue := LimMax[i];

        for j := 0 to 3 - 1 do
          // ** Se algum dos valores intermediários estiver limitado pelos limites atuais, então, este critério ainda pode ser elicitado **//
          if (MnRvalue < VPInt[j]) and (MxRvalue > VPInt[j]) then
          begin
            // ** Se existir ao menos um critério discreto a ser elicitado, permite que o link fique visível **//
            lnkchangeE4.Visible := true;
            DCLab := true;
            TADC := true;
            exit;
          end;
      end
      else
      begin
        if Length(DiscIntBlind) > i then
          TIWUserSession(WebApplication.Data).DiscIntBlind[i] := true
        else
          // ** Não existem critérios discretos **//
          break;
      end;
  end;
end;

procedure Tfrmaintercriterio.limiar_criterio;
var
  i, j: integer;
  MinK: Double;
begin
  // ** Calcula os limites para os valores dos pesos **//
  calmaxminweights;
  MinK := 10;
  with TIWUserSession(WebApplication.Data) do
  begin
    // Como é impossível que K1 <= 0.00001, verificam-se apenas os critérios seguintes //
    for i := 1 to numcrit - 1 do
    begin
      /// /Caso o maior valor possível de K1 seja menor que o L1, então não se fazem mais
      /// / perguntas envolvendo tal critério ////////////////////////////////////////
      if (TIWUserSession(WebApplication.Data).MaxPeso[i] <= 0.00001) and
        (TIWUserSession(WebApplication.Data).vtrrelacoesblin[i - 1] = false)
        then
      begin
        vtrrelacoesblin[i - 1] := true;
        if i <> numcrit - 1 then
          vtrrelacoesblin[i] := true;
        Cri_Cong[i] := 1;
      end; // Ifmax

      if MaxPeso[i] < MinK then
        MinK := MaxPeso[i];
    end;
    /// / Atualiza o menor valor admissível para uma contante de escala caso o menor
    /// valor máximo esteja muito próximo ////
    if MinK <= MinVK * 10 then
      MinVK := MinK / 100;
  end;

end;

procedure Tfrmaintercriterio.lnkchangeE3Click(Sender: TObject);
begin
  { TIWUserSession(WebApplication.Data).Etapa := 3;
    Prepara_cri_nadj; }
  if (not TIWUserSession(WebApplication.Data).PergDiscFinalized) then
    EFp;
  TIWUserSession(WebApplication.Data).stage := 3;
  TIWUserSession(WebApplication.Data).auxgoback := -56231;
  TIWUserSession(WebApplication.Data).DCLab := true;
  Tfrmaintercriterio.Create(WebApplication).show;
  Testa_Faixa_Discreta;
end;

procedure Tfrmaintercriterio.lnkchangeE4Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).Etapa := 4;
  TIWUserSession(WebApplication.Data).PAns := -1;
  with TIWUserSession(WebApplication.Data) do
  begin
    NextRelDisc := true;
    EFp;
    Prepara_Disc_Int;
  end;
end;

procedure Tfrmaintercriterio.Prepara_Disc_Int;
begin
  // ** Envia e Posiciona os componentes na tela de elicitação **//
  //lblOpDE.Parent := rgnComCPD;
  rdgrppreference.Parent := rgnComCPD;


  BrnOK.Parent := rgnPergID;
  BrnOK.Top := 527;
  BrnOK.Left := 718;

  lblQADE.Parent := rgnLID;
  lblQADE.Top := 11;
  lblQADE.Left := 10;

  lblnqa.Parent := rgnLID;
  lblnqa.Top := 11;

  lblnda.Parent := rgnLID;
  lblnda.Top := 34;
  if TIWUserSession(WebApplication.Data).Idioma = 0 then
  begin
    lblnqa.Left := 157;
    if (TIWUserSession(WebApplication.Data).Problematica = 0) or
      (TIWUserSession(WebApplication.Data).Problematica = 3) then
      lblnda.Left := 234
    else
      lblnda.Left := 138
  end;

  if TIWUserSession(WebApplication.Data).Idioma = 1 then
  begin
    lblnqa.Left := 175;
    if (TIWUserSession(WebApplication.Data).Problematica = 0) or
      (TIWUserSession(WebApplication.Data).Problematica = 3) then
      lblnda.Left := 262
    else
      lblnda.Left := 138
  end;

  lblnpoa.Parent := rgnLID;
  lblnpoa.Top := 34;
  lblnpoa.Left := 10;

  Btnshowresults.Parent := rgnPergID;
  Btnshowresults.Top := 480;
  Btnshowresults.Left := 796;

  //lbllegendDE.Visible := true;
  //lbllegendDE.Parent := rgnPergID;
  lbllegendDE.Top := 390;
  lbllegendDE.Left := 3;

  //lstbxtco.Visible := true;
  //lstbxtco.Parent := rgnPergID;
  lstbxtco.Top := 408;
  lstbxtco.Left := 3;

  rgnECDI.Visible := true;
  IWRgnstep2.Visible := false;
  /// ///////////////////////////////////////////////////////////////////////////
end;

procedure Tfrmaintercriterio.lnkcloseaboutClick(Sender: TObject);
begin
  rgnAbout.Hide;
end;

procedure Tfrmaintercriterio.lnkgrfhorizClick(Sender: TObject);
var
seq_cam : string;
begin
rgnviewgraph.Visible := true;
rgnviewtab.Visible := false;
IWImage30.Visible := false;
IWImage29.Visible := false;
IWImage20.Visible := true;
IWImage18.Visible := true;
Iwregion55.Visible := false;
Iwregion57.Visible := true;
Iwregion60.Visible := false;
edtcrit1.Visible := true;
edtcrit2.Visible := true;
lnktabular.Visible := true;
IWLink14.Visible := false;
lnkvis1.visible := true;
lnkvis1.top := 438;
lnktabular.top := 461;


TIWUserSession(WebApplication.Data).vis := 'GH';
TIWUserSession(WebApplication.Data).resp := '';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;

end;

procedure Tfrmaintercriterio.lnkgrfverticalClick(Sender: TObject);
var
seq_cam : string;
begin
rgnviewgraph.Visible := true;
rgnviewtab.Visible := false;
IWImage30.Visible := true;
IWImage29.Visible := true;
IWImage20.Visible := false;
IWImage18.Visible := false;
Iwregion55.Visible := true;
Iwregion57.Visible := false;
Iwregion60.Visible := true;
edtcrit1.Visible := false;
edtcrit2.Visible := false;
lnkvis1.visible := false;
IWLink14.Visible := true;
lnktabular.Visible := true;
lnktabular.top := 438;


TIWUserSession(WebApplication.Data).vis := 'GV';
TIWUserSession(WebApplication.Data).resp := '';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;

end;

procedure Tfrmaintercriterio.lnkgrfverticalOCClick(Sender: TObject);
begin
rgnviewgraphOC.Visible := true;
rgnviewtabOC.Visible := false;
IWImage2OC.Visible := true;
IWImage3OC.Visible := true;
IWImage20OC.Visible := false;
IWImage26OC.Visible := false;
Iwregion51OC.Visible := true;
Iwregion57OC.Visible := false;
Iwregion60OC.Visible := true;
edtcrit1OC.Visible := false;
edtcrit2OC.Visible := false;
lnkvis1OC.visible := false;
IWLink13.Visible := true;
lnktabularOC.Visible := true;
lnktabularOC.top := 432;

TIWUserSession(WebApplication.Data).visPC := 'GV';
TIWUserSession(WebApplication.Data).respPC := '';
TIWUserSession(WebApplication.Data).seq_camPC :=
TIWUserSession(WebApplication.Data).seq_camPC + '(' +
TIWUserSession(WebApplication.Data).visPC +
TIWUserSession(WebApplication.Data). respPC + ')'
end;

procedure Tfrmaintercriterio.lnkoverallevaluationClick(Sender: TObject);
var
  i: integer;
  numcrit: integer;
begin
  btnOkPairWise.Visible := false;
  IWButton6.Visible := true;
  IWListbox4.Items.clear;
  IWRgncomparacaopareada.Visible := false;
  IWRgnavaliacaoholistica.Visible := true;
  btngerargraficoavholClick(self);
  numcrit := TIWUserSession(WebApplication.Data).numcrit;
  Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, numcrit);

  for i := 0 to numcrit - 1 do
  begin
    TIWUserSession(WebApplication.Data).vtrposicoes[i] := 0;
  end;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  SalvarBDinter;
  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
  SalvarBDinter;
end;

procedure Tfrmaintercriterio.lnkpairwisecomparisonClick(Sender: TObject);
var
  i: integer;
begin
  btnOkPairWise.Visible := true;
  IWButton6.Visible := false;
  IWRgncomparacaopareada.Visible := true;
  IWRgnavaliacaoholistica.Visible := false;
  IWBtnstep22.Enabled := false;
  btnrestartPC.Enabled := false;
  IWListbox4.Items.clear;
  with TIWUserSession(WebApplication.Data) do
    // inserir os nomes dos critérios no listbox da legenda
    for i := 0 to numcrit - 1 do
    begin
      Setlength(MatPositions, 0, 0);
      IWListbox4.Items.Insert(i, CritSiglas[i] + '-' + NomeCrit[i]);
    end;
  TIWUserSession(WebApplication.Data).Crepresentante := 0;
  pairwise_comparison;

  if rdgrpCPC.Items.Count = 4 then
  begin
  rdgrpCPC.Items.Delete(3);
  btngoback.Visible := false;
  btngoback1.Visible := false;
  end;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  SalvarBDinter;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
  SalvarBDinter;
end;

procedure Tfrmaintercriterio.lnktabularClick(Sender: TObject);
begin
rgnviewgraph.Visible := false;
rgnviewtab.Visible := true;

TIWUserSession(WebApplication.Data).vis := 'TB';
TIWUserSession(WebApplication.Data).resp := '';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';

end;

procedure Tfrmaintercriterio.lnktabularOCClick(Sender: TObject);
begin
rgnviewgraphOC.Visible := false;
rgnviewtabOC.Visible := true;

TIWUserSession(WebApplication.Data).visPC := 'TB';
TIWUserSession(WebApplication.Data).respPC := '';
TIWUserSession(WebApplication.Data).seq_camPC :=
TIWUserSession(WebApplication.Data).seq_camPC + '(' +
TIWUserSession(WebApplication.Data).visPC +
TIWUserSession(WebApplication.Data). respPC + ')';
end;

procedure Tfrmaintercriterio.lnkvis1Click(Sender: TObject);
begin
IWImage30.Visible := true;
IWImage29.Visible := true;
IWImage20.Visible := false;
IWImage18.Visible := false;
Iwregion55.Visible := true;
Iwregion57.Visible := false;
Iwregion60.Visible := true;
edtcrit1.Visible := false;
edtcrit2.Visible := false;
lnkvis1.visible := false;
lnktabular.Visible := true;
lnktabular.top := 438;
IWLink14.Visible := true;


TIWUserSession(WebApplication.Data).vis := 'GV';
TIWUserSession(WebApplication.Data).resp := '';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

procedure Tfrmaintercriterio.lnkvis1OCClick(Sender: TObject);
begin
IWImage2OC.Visible := true;
IWImage3OC.Visible := true;
IWImage20OC.Visible := false;
IWImage26OC.Visible := false;
Iwregion51OC.Visible := true;
Iwregion57OC.Visible := false;
Iwregion60OC.Visible := true;
edtcrit1OC.Visible := false;
edtcrit2OC.Visible := false;
lnkvis1OC.visible := false;
lnktabularOC.Visible := true;
lnktabularOC.top := 432;
IWLink13.Visible := true;

TIWUserSession(WebApplication.Data).visPC := 'GV';
TIWUserSession(WebApplication.Data).respPC := '';
TIWUserSession(WebApplication.Data).seq_camPC :=
TIWUserSession(WebApplication.Data).seq_camPC + '(' +
TIWUserSession(WebApplication.Data).visPC +
TIWUserSession(WebApplication.Data). respPC + ')';
end;

// Transforma os valores da consMatrix em uma escala de razão
procedure Tfrmaintercriterio.EscalaRazao;
var
  i, j: integer;
  Maxl, Minl, MaxA, MinA, MaxB, MinB: Array of Double;
  AuxVetPOA: array of integer;
  // ConsRazao: array of array of Double;
begin

  with TIWUserSession(WebApplication.Data) do
  begin
    Setlength(Consrazao, NumAlt, numcrit);
    Setlength(Maxl, numcrit);
    Setlength(Minl, numcrit);
    Setlength(AuxVetPOA, Length(VtrAlternatives));

    Setlength(MaxA, numcrit);
    Setlength(MinA, numcrit);
    Setlength(MaxB, numcrit);
    Setlength(MinB, numcrit);

    for i := 0 to Length(VtrAlternatives) - 1 do
    begin
      AuxVetPOA[i] := TIWUserSession(WebApplication.Data).VtrAlternatives[i];
    end;

    if TIWUserSession(WebApplication.Data).Problematica <> 3 then
    begin
      // ** Buscando maximos e minimos locais (Escala de Razão) **//
      for j := 0 to numcrit - 1 do
      begin
        Maxl[j] := ConsMatrix[AuxVetPOA[0], j];
        Minl[j] := ConsMatrix[AuxVetPOA[0], j];
      end;
      for j := 0 to numcrit - 1 do
        for i := 0 to Length(VtrAlternatives) - 1 do
        begin
          if ConsMatrix[AuxVetPOA[i], j] > Maxl[j] then
            Maxl[j] := ConsMatrix[AuxVetPOA[i], j];
          if ConsMatrix[AuxVetPOA[i], j] < Minl[j] then
            Minl[j] := ConsMatrix[AuxVetPOA[i], j];
        end;

      for j := 0 to numcrit - 1 do
        for i := 0 to Length(VtrAlternatives) - 1 do
        begin
          if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) or (Typeofcrit[j] = 0)
            or (Typeofcrit[j] = 2) then
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

          { if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
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
            TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], j] /
            (Minl[j] - Maxl[j]) + 1 - Minl[j] / (Minl[j] - Maxl[j]);

            // * Consequencias negativas *//
            if (Minl[j] < 0) and (Maxl[j] < 0) then
            TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j] :=
            TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], j]
            / Minl[j];

            end; // fim dos critérios de minimização }
        end; // i
    end;
    if TIWUserSession(WebApplication.Data).Problematica = 3 then
    begin
      for j := 0 to numcrit - 1 do
      begin
        if (AuxVetPOA[0] >= 0) and (AuxVetPOA[1] < 0) then
        begin
          MaxA[j] := ConsMatrix[AuxVetPOA[0], j];
          MinA[j] := ConsMatrix[AuxVetPOA[0], j];
          MaxB[j] := TIWUserSession(WebApplication.Data)
            .altperfil[-AuxVetPOA[1] - 1, j];
          MinB[j] := altperfil[-AuxVetPOA[1] - 1, j];
        end;

        if (AuxVetPOA[0] < 0) and (AuxVetPOA[1] >= 0) then
        begin
          MaxA[j] := ConsMatrix[AuxVetPOA[1], j];
          MinA[j] := ConsMatrix[AuxVetPOA[1], j];
          MaxB[j] := TIWUserSession(WebApplication.Data)
            .altperfil[-AuxVetPOA[0] - 1, j];
          MinB[j] := altperfil[-AuxVetPOA[0] - 1, j];
        end;

        if (AuxVetPOA[0] >= 0) and (AuxVetPOA[1] >= 0) then
        begin
          MaxA[j] := ConsMatrix[AuxVetPOA[0], j];
          MinA[j] := ConsMatrix[AuxVetPOA[0], j];
          MaxB[j] := ConsMatrix[AuxVetPOA[0], j];
          MinB[j] := ConsMatrix[AuxVetPOA[0], j];
        end;
      end;

      for j := 0 to numcrit - 1 do
      begin
        if MaxA[j] >= MaxB[j] then
        begin
          Maxl[j] := MaxA[j];
        end
        else
        begin
          Maxl[j] := MaxB[j];
        end;
        if MinA[j] <= MinB[j] then
        begin
          Minl[j] := MinA[j];
        end
        else
          Minl[j] := MinB[j];
      end;

      for j := 0 to numcrit - 1 do
        for i := 0 to Length(VtrAlternatives) - 1 do
        begin
          if AuxVetPOA[i] >= 0 then
          begin
            if TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], j]
              > Maxl[j] then
              Maxl[j] := ConsMatrix[AuxVetPOA[i], j];
            if ConsMatrix[AuxVetPOA[i], j] < Minl[j] then
              Minl[j] := ConsMatrix[AuxVetPOA[i], j];
          end
          else
          begin
            if TIWUserSession(WebApplication.Data)
              .altperfil[-AuxVetPOA[i] - 1, j] > Maxl[j] then
              Maxl[j] := altperfil[AuxVetPOA[i] * (-1) - 1, j];
            if altperfil[AuxVetPOA[i] * (-1) - 1, j] < Minl[j] then
              Minl[j] := altperfil[AuxVetPOA[i] * (-1) - 1, j];
          end;
        end;

      for j := 0 to numcrit - 1 do
        for i := 0 to Length(VtrAlternatives) - 1 do
        begin
          if AuxVetPOA[i] >= 0 then
          begin

            if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) or
              (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) or
              (Typeofcrit[j] = 4) or (Typeofcrit[j] = 5) then
            begin // dos criterios de maximização

              // * ConsequenciaPositivas ou zero *//
              if (Maxl[j] > 0) and (Minl[j] >= 0) then
                TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j]
                  := (TIWUserSession(WebApplication.Data)
                    .ConsMatrix[AuxVetPOA[i], j] / Maxl[j]);

              // fim caso para consequencias são diferente de zero

              // * Consequencias mistas (+, -, 0)*//
              if (Maxl[j] >= 0) and (Minl[j] < 0) then
                TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j]
                  := TIWUserSession(WebApplication.Data)
                  .ConsMatrix[AuxVetPOA[i], j] / (Maxl[j] - Minl[j])
                  + 1 - Maxl[j] / (Maxl[j] - Minl[j]);

              // * Consequencias negativas *//
              if (Minl[j] < 0) and (Maxl[j] < 0) then
                TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j]
                  := Maxl[j] / TIWUserSession(WebApplication.Data)
                  .ConsMatrix[AuxVetPOA[i], j];

            end; // Fimdoscritérios de maximização

            { if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
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
              TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], j] /
              (Minl[j] - Maxl[j]) + 1 - Minl[j] / (Minl[j] - Maxl[j]);

              // * Consequencias negativas *//
              if (Minl[j] < 0) and (Maxl[j] < 0) then
              TIWUserSession(WebApplication.Data).Consrazao[AuxVetPOA[i], j] :=
              TIWUserSession(WebApplication.Data).ConsMatrix[AuxVetPOA[i], j]
              / Minl[j];

              end; // fim dos critérios de minimização }
          end; // if
        end; // i

      // ****** ALTERNATIVAS PERFIS
      for j := 0 to numcrit - 1 do
        for i := 0 to Length(indice_altp) - 1 do
        begin
          if AuxVetPOA[i] < 0 then
          begin

            if Maxl[j] = Minl[j] then
            begin
              TIWUserSession(WebApplication.Data).Consrazaop[i, j] := 1;
            end
            else
            begin
              if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
              // dos criterios de maximização
              begin
                if (Maxl[j] > 0) and (Minl[j] >= 0) then
                  // * ConsequenciaPositivas *//
                  TIWUserSession(WebApplication.Data).Consrazaop[i, j] :=
                    altperfil[indice_altp[i] - 1, j] / Maxl[j];
                if (Maxl[j] >= 0) and (Minl[j] < 0) then
                  // * Consequencias mistas (+, -, 0)*//
                  Consrazaop[i, j] := altperfil[indice_altp[i] - 1, j] /
                    (Maxl[j] - Minl[j]) + 1 - Maxl[j] / (Maxl[j] - Minl[j]);
                if (Minl[j] < 0) and (Maxl[j] < 0) then
                  // * Consequencias negativas *//
                  Consrazaop[i, j] := Maxl[j] / altperfil
                    [indice_altp[i] - 1, j];
              end // Fimdoscritérios de maximização
              else // (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then // inicio dos critérios de minimização
              begin
                if (ConsMatrix[i, j] <> 0) and (Minl[j] > 0) then
                  // * ConsequenciaPositivas *//
                  Consrazaop[i, j] :=
                    (Minl[j] / altperfil[indice_altp[i] - 1, j]);
                if (Minl[j] <= 0) and (Maxl[j] >= 0) then
                  // * Consequencias mistas (+, -, 0)*//
                  Consrazaop[i, j] := altperfil[indice_altp[i] - 1, j] /
                    (Minl[j] - Maxl[j]) + 1 - Minl[j] / (Minl[j] - Maxl[j]);
                if (Minl[j] < 0) and (Maxl[j] < 0) then
                  // * Consequencias negativas *//
                  Consrazaop[i, j] := altperfil[indice_altp[i] - 1, j] / Minl
                    [j];
              end; // fim dos critérios de minimização
            end; // else
          end; // for i := 0 to length(indice_alt) - 1 do
        end; // for j := 0 to NumCrit - 1 do
    end;

  end; // with
end; // fim do procedimento

procedure Tfrmaintercriterio.BtnrestartClick(Sender: TObject);
var
  i: integer;
begin
  lnkpairwisecomparison.Enabled := true;
  IWListboxordenarcrit.clear;
  IWListboxcriteriosordenados.clear;
  for i := 0 to TIWUserSession(WebApplication.Data).numcrit - 1 do
  // Colocar novamente os vetores no listbox inicial
  begin
    IWListboxordenarcrit.Items.Add(TIWUserSession(WebApplication.Data)
        .CritSiglas[i] + '-' + TIWUserSession(WebApplication.Data).NomeCrit[i]);
    // IWListboxordenarcrit.Items.Add(TIWUserSession(WebApplication.Data).vtrnomecrit[i]);
  end;
  TIWUserSession(WebApplication.Data).m := 0;
  TIWUserSession(WebApplication.Data).n := 0;
  TIWUserSession(WebApplication.Data).auxiAPAGAR := 0;
  Setlength(TIWUserSession(WebApplication.Data).vtrrelacoesblin, 0);
  Setlength(TIWUserSession(WebApplication.Data).vtrblin, 0);
  Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, 0);
  Setlength(TIWUserSession(WebApplication.Data).vordem, 0);
  btngerargraficoavholClick(self);
  TIWUserSession(WebApplication.Data).contord := 0; // BD
  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
  SalvarBDinter;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
  SalvarBDinter;
end;

procedure Tfrmaintercriterio.inconsistencytest;
var
  i, j, Nrest, a, b, c, z, II, JJ, P: integer; // Contadores
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
  ResultVector: array of real;
  // typeprob determina se o problema é contínuo (typeprob = 0) ou binário (typeprob = 1).
  // No caso do fitradeoff, é sempre contínuo pois as constantes de escala são contínuas.
  // dirprob determina se o problema é de minimização (dirprob = 0) ou de maximização
  // (dirprob = 1), SF nos diz se houve solução viável.
  typeprob, dirprob, SF: integer;
  FO, Op: array of string;
  limit: array of real;
  Rmod: array of AnsiString;
  var_int, var_bin: Array of integer;
  /// /vetores que carregam var de decisão inteiras e binárias
  Lp: THandle;
  S1: string;
  Aux1, Aux2: Double;
  AuxHEz: array of integer; // vetor auxiliar para facilitar a elaboração de res_
  // trições com var binária da HE
  TIFS: boolean; // There Is Feasible Solution
  TINFS: array of boolean; // There isn't feasible solution
  CBT: boolean; // indica que é uma combinação que causa a inconsistência
  MSSG: integer;
  MinVK: Double;

  // VARIAVEIS ADD POR ELVIRA
  pt, PontoTrans: integer;
  ConseqHolística: Array of Array of Double;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////

  NAH := TIWUserSession(WebApplication.Data).NumAH;

  /// ////Caso nenhuma HE tenha sido realizada, não é necessário testar inconsistencia ///////
  if NAH = 0 then
  begin
    TIFS := true;
    exit;
  end;
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 4 + 2 * Length(TIWUserSession(WebApplication.Data)
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
  Setlength(TINFS, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);
  setlength(ConseqHolística, 2, NumCri); // Elvira
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
      Setlength(VetAH[j], Length(MATAH[j]));
      for i := 0 to Length(MATAH[j]) - 1 do
        VetAH[j, i] := MATAH[j, i];
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

  // ** Restrições das relações entre critérios não adjascentes **//
  with TIWUserSession(WebApplication.Data) do
  begin
    if Length(PergNAdj) > 0 then
    begin
      for i := a to a + Length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := TIWUserSession
          (WebApplication.Data).MLimMin[TIWUserSession(WebApplication.Data)
          .PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
      end;

      a := Nrest;

      for i := a to a + Length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1) * TIWUserSession
          (WebApplication.Data).MLimMax[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := 1;
        Op[i] := '<=';
        INC(Nrest);
      end;
    end;
  end;

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
  P := a;
  /// Preenchendo as Restrições referentes à Avaliação Holística ///
  /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
  for i := P to P + NAH - 1 do
  begin
    case VetAH[i - P, 0] of
      - 55:
        begin
          /// Exclusão ///
          /// / Incrementa o número de var de decisão /////////////////////////
          NumDV := NumDV + 2 * (Length(VetAH[i - P]) - 2);
          /// / Acrescentando espaço para as restrições //////////////////////
          Numl := Numl + 3 * (Length(VetAH[i - P]) - 2) + 1;
          Setlength(MatA, Numl, NumDV + 1);
          Setlength(Op, Numl - 1);
          Setlength(limit, Numl - 1);
          Setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          Setlength(AuxHEz, Length(VetAH[i - P]));
          for z := 2 to Length(VetAH[i - P]) - 1 do
          begin
            for j := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - P), z], Criorder[j]]
                - MatCons[VetAH[i - P, 1], Criorder[j]];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, j + 1] := MatCons[VetAH[(i - P), 1], Criorder[j]]
                - MatCons[VetAH[i - P, z], Criorder[j]];
              MatA[Nrest + 2, 0] := -0.000001;
            end; // j

            AuxHEz[z] := NumCri + NRB + 1;
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

          for j := 0 to Length(AuxHEz) - 1 do
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
          for z := 2 to Length(VetAH[i - a]) - 1 do
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
                - MatCons[VetAH[i - a, z], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -Power(10, -5);
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end; // 1

      2:
        begin
          /// Seleção ///
          for z := 2 to Length(VetAH[i - P]) - 1 do
          begin
            /// / Acrescentando espaço para as restrições ///////////////////////
            INC(Numl);
            Setlength(MatA, Numl, NumCri + 1);
            Setlength(Op, Numl - 1);
            Setlength(limit, Numl - 1);
            Setlength(Rmod, Numl - 1);
            /// / Acrescentando espaço para as restrições ///////////////////////
            if TIWUserSession(WebApplication.Data).Problematica <> 3 then
            begin
              for j := 0 to NumCri - 1 do
              begin
                MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - P), z],
                  Criorder[j]] - MatCons[VetAH[i - P, 1], Criorder[j]];
              end; // j
            end; // if prob <> 3

                        if TIWUserSession(WebApplication.Data).Problematica = 2 then       // Inicio alteração Elvira
            begin
             // Indentificando onde acontece a transição dos projetos
            for pt := 1 to length(VetAH[(i - a)]) - 1 do
              if VetAH[(i - a), pt] = -1 then
              begin
                PontoTrans := pt;
                break;
              end;

            //  Fazendo o somatório das consequências dos projetos - Portfólio selecionado
            for j := 0 to NumCri - 1 do
              for pt := 1 to PontoTrans - 1 do
                ConseqHolística[0, j] := ConseqHolística[0, j] + MatCons
                  [VetAH[(i - a), pt], Criorder[j]];

            // Portfólio não-selecionado
            for j := 0 to NumCri - 1 do
              for pt := PontoTrans + 1 to length(VetAH[(i - a)]) - 1 do
                ConseqHolística[1, j] := ConseqHolística[1, j] + MatCons
                  [VetAH[(i - a), pt], Criorder[j]];

            //  Adicionando Restrição à PL
            for pt := 0 to NumCri - 1 do
              MatA[i + 1, pt + 1] := ConseqHolística[1, pt] - ConseqHolística
                [0, pt];

            {MatA[i + 1, 0] := 0;
            INC(Nrest);}

            end;    // prob = 2                    // Fim alteração Elvira

            if TIWUserSession(WebApplication.Data).Problematica = 3 then
            begin
              for j := 0 to NumCri - 1 do
              begin
                { if (VetAH[i - P,2]>=0) and (VetAH[i - P,1]>=0) then
                  MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - P), Z], Criorder[j]]
                  - MatCons[VetAH[i - P, 1], Criorder[j]]; }
                if VetAH[i - P, 1] < 0 then // Se a mlr alt for perfil
                begin
                  // perfis_inseridos[i] começa de zero
                  MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - P), z],
                    Criorder[j]] - TIWUserSession(WebApplication.Data)
                    .perfis[-1 - VetAH[(i - P), 1]];
                end;
                if VetAH[i - P, 2] < 0 then // Se a pior alt for perfil
                begin
                  MatA[Nrest + 1, j + 1] := TIWUserSession(WebApplication.Data)
                    .perfis[-1 - VetAH[(i - P), 2]] - MatCons
                    [VetAH[i - P, 1], Criorder[j]];
                end;
              end; // j
            end; // prob = 3
          end; // z

          MatA[Nrest + 1, 0] := -0.00001;
          Op[Nrest] := '<';
          INC(Nrest);

        end; // 2
    end; // case
  end; // for i

  /// / Adiciona variáveis binárias ao problema caso necessário ////////////////
  Setlength(FO, NumDV);
  Setlength(var_bin, (NumDV - NumCri));
  Setlength(ResultVector, NumDV + 1);
  for j := 0 to Length(var_bin) - 1 do
    var_bin[j] := NumCri + j;
  /// //////////////////////////////////////////////////////////////////////////
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

  /// ////////////////// Tenta calcular o máximo K1 /////////////////////

  for i := 0 to NumDV - 1 do
  begin
    MatA[0, i + 1] := 0;
    FO[i] := intTostr(0);
  end;
  FO[0] := intTostr(1);

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
      TIFS := true;
  end; // SF
  TIWUserSession(WebApplication.Data).TIFS := TIFS;
  /// / Inicia-se com a hipótese de que é uma combinação de restrições consistentes
  /// que está causando a inconsistência, se na próxima etapa ficar evidente que é
  /// pelo menos uma restrição inconsistente que está causando o problema
  /// CBT passará a ser falso e dispensará a realização da fase 2 do teste ////
  CBT := true;

  /// /////////// Limpando o vetor de resultados e removendo as restrições da Avaliação Holística  /////////////
  Setlength(ResultVector, 0);
  Setlength(ResultVector, NumCri + 1);
  Setlength(var_bin, 0);
  Numl := 2 * (NumCri - 1) + 4 + 2 * Length(TIWUserSession(WebApplication.Data)
      .PergNAdj);
  Setlength(MatA, Numl, NumCri + 1);
  Setlength(Op, Numl - 1);
  Setlength(limit, Numl - 1);
  Setlength(Rmod, Numl - 1);
  Setlength(VetAH, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);
  NumDV := NumCri;
  NRA := 0;
  NRB := 0;
  a := P; // nº de restrições sem as avaliações holísticas
  Nrest := P;
  /// P é uma variável auxiliar que armazena o número de restrições desconsiderando
  /// as restrições da Avaliação Holística. É útil para a montagem do modelo. ///
  P := a;

  // ** Se não há solução viável **//
  if TIFS = false then
  begin
    /// ///////////// PRIMEIRA FASE DO TESTE DE INCONSISTÊNCIA ////////////////////
    /// / Faz a verificação individual de cada AH x Resposta DE ///////////////////
    for II := P to P + NAH - 1 do
    begin
      i := II;
      /// Preenchendo as Restrições referentes à Avaliação Holística ///
      /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
      case VetAH[i - P, 0] of
        - 55:
          begin
            /// Exclusão ///
            /// / Incrementa o número de var de decisão /////////////////////////
            NumDV := NumDV + 2 * (Length(VetAH[i - P]) - 2);
            /// / Acrescentando espaço para as restrições //////////////////////
            Numl := Numl + 3 * (Length(VetAH[i - P]) - 2) + 1;
            Setlength(MatA, Numl, NumDV + 1);
            Setlength(Op, Numl - 1);
            Setlength(limit, Numl - 1);
            Setlength(Rmod, Numl - 1);
            /// ////////////////////////////////////////////////////////////////
            Setlength(AuxHEz, Length(VetAH[i - P]));
            for z := 2 to Length(VetAH[i - P]) - 1 do
            begin
              for j := 0 to NumCri - 1 do
              begin
                /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
                MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - P), z],
                  Criorder[j]] - MatCons[VetAH[i - P, 1], Criorder[j]];
                MatA[Nrest + 1, 0] := -0.000001;

                /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
                MatA[Nrest + 2, j + 1] := MatCons[VetAH[(i - P), 1],
                  Criorder[j]] - MatCons[VetAH[i - P, z], Criorder[j]];
                MatA[Nrest + 2, 0] := -0.000001;
              end; // j

              AuxHEz[z] := NumCri + NRB + 1;
              /// / Salva o índice das var binárias da
              /// restrição de que v(b) < v(a)
              MatA[Nrest + 1, NumCri + NRB + 1] := -1;
              MatA[Nrest + 2, NumCri + NRB + 2] := -1;
              Op[Nrest + 1] := '<';
              Op[Nrest] := '<';
              INC(Nrest, 2);
              INC(a, 2);
              INC(NRB, 2); // Número de variáveis binárias adicionadas
              /// / Resrição Z1 + Z2 <= 1 /////////////////////////////////////////
              MatA[Nrest + 1, NumCri + NRB] := 1;
              MatA[Nrest + 1, NumCri + NRB - 1] := 1;
              MatA[Nrest + 1, 0] := 1;
              Op[Nrest] := '<=';
              INC(Nrest);
              INC(a);

            end; // z

            for j := 0 to Length(AuxHEz) - 1 do
              MatA[Nrest + 1, AuxHEz[j]] := -1;
            MatA[Nrest + 1, 0] := -1;
            Op[Nrest] := '<=';
            INC(Nrest);
            INC(a);
            /// ///////////////////////////////////////////////////////////////////
            /// ////////////////////////////////////////////////////////////////
            typeprob := 3;
            /// Var de decisão são mistas ///
          end; // -55

        1:
          begin
            /// Exclusão 2 ///
            for z := 2 to Length(VetAH[i - a]) - 1 do
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
                MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), 1],
                  Criorder[j]] - MatCons[VetAH[i - a, z], Criorder[j]];
              end; // j
              MatA[Nrest + 1, 0] := -Power(10, -5);
              Op[Nrest] := '<';
              INC(Nrest);
            end; // z
          end;

        2:
          begin
            /// Seleção ///
            for z := 2 to Length(VetAH[i - P]) - 1 do
            begin
              /// / Acrescentando espaço para as restrições ///////////////////////
              INC(Numl);
              Setlength(MatA, Numl, NumCri + 1);
              Setlength(Op, Numl - 1);
              Setlength(limit, Numl - 1);
              Setlength(Rmod, Numl - 1);
              /// / Acrescentando espaço para as restrições ///////////////////////
              if TIWUserSession(WebApplication.Data).Problematica <> 3 then
              begin
                for j := 0 to NumCri - 1 do
                begin
                  MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - P), z],
                    Criorder[j]] - MatCons[VetAH[i - P, 1], Criorder[j]];
                end; // j
                if TIWUserSession(WebApplication.Data).Problematica = 1 then
                  MatA[Nrest + 1, 0] := -0.0001;
                Op[Nrest] := '<=';
                INC(Nrest);
              end; // if prob <> 3

              if TIWUserSession(WebApplication.Data).Problematica = 2 then       // Inicio alteração Elvira
            begin
             // Indentificando onde acontece a transição dos projetos
            for pt := 1 to length(VetAH[(i - a)]) - 1 do
              if VetAH[(i - a), pt] = -1 then
              begin
                PontoTrans := pt;
                break;
              end;

            //  Fazendo o somatório das consequências dos projetos - Portfólio selecionado
            for j := 0 to NumCri - 1 do
              for pt := 1 to PontoTrans - 1 do
                ConseqHolística[0, j] := ConseqHolística[0, j] + MatCons
                  [VetAH[(i - a), pt], Criorder[j]];

            // Portfólio não-selecionado
            for j := 0 to NumCri - 1 do
              for pt := PontoTrans + 1 to length(VetAH[(i - a)]) - 1 do
                ConseqHolística[1, j] := ConseqHolística[1, j] + MatCons
                  [VetAH[(i - a), pt], Criorder[j]];

            //  Adicionando Restrição à PL
            for pt := 0 to NumCri - 1 do
              MatA[i + 1, pt + 1] := ConseqHolística[1, pt] - ConseqHolística
                [0, pt];

            {MatA[i + 1, 0] := 0;
            INC(Nrest);}

            end;    // prob = 2                    // Fim alteração Elvira


              if TIWUserSession(WebApplication.Data).Problematica = 3 then
              begin
                for j := 0 to NumCri - 1 do
                begin
                  if VetAH[i - P, 1] < 0 then // Se a mlr alt for perfil
                  begin
                    // perfis_inseridos[i] começa de zero
                    MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - P), z],
                      Criorder[j]] - TIWUserSession(WebApplication.Data)
                      .perfis[-1 - VetAH[(i - P), 1]];
                  end;
                  if VetAH[i - P, 2] < 0 then // Se a pior alt for perfil
                  begin
                    MatA[Nrest + 1, j + 1] := TIWUserSession
                      (WebApplication.Data).perfis[-1 - VetAH[(i - P), 2]]
                      - MatCons[VetAH[i - P, 1], Criorder[j]];
                  end;
                  if (VetAH[i - P, 2] >= 0) and (VetAH[i - P, 1] >= 0) then
                  begin
                    MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - P), z],
                      Criorder[j]] - MatCons[VetAH[i - P, 1], Criorder[j]];
                  end;
                end; // j
              end; // if prob = 3
            end; // z
          end; // 2
      end; // case
      /// / Adiciona variáveis binárias ao problema caso necessário ////////////////
      a := Nrest;
      Setlength(FO, NumDV);
      Setlength(var_bin, (NumDV - NumCri));
      Setlength(ResultVector, NumDV + 1);
      for j := 0 to Length(var_bin) - 1 do
        var_bin[j] := NumCri + j;
      /// //////////////////////////////////////////////////////////////////////////

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

      /// ////////////////// Calcula o máximo K1 /////////////////////

      for i := 0 to NumDV - 1 do
      begin
        MatA[0, i + 1] := 0;
        FO[i] := intTostr(0);
      end;
      FO[0] := intTostr(1);

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
          TIFS := true;
      end;
      /// /// Caso não haja solução viável com a inclusão da restrição da avaliação
      /// holística II - K, então seu índice no vetor TINFS recebe true //////////
      if TIFS = false then
      begin
        /// / Existe pelo menos uma restrição inconsistente, não sendo uma combinação
        /// de restrições consistentes ////////////////////////////////////////////
        CBT := false;
        /// //////////////////////////////////////////////////////////////////////
        // * Armazena qual(is) a(s) restrição(ões) inconsistente(s) **//
        TINFS[II - P] := true;
      end;
      /// /////////// Limpando o vetor de resultados e removendo as restrições da Avaliação Holística  /////////////
      Setlength(ResultVector, 0);
      Setlength(ResultVector, NumCri + 1);
      Setlength(var_bin, 0);
      Numl := 2 * (NumCri - 1) + 4 + 2 * Length
        (TIWUserSession(WebApplication.Data).PergNAdj); ;
      Setlength(MatA, Numl, NumCri + 1);
      Setlength(Op, Numl - 1);
      Setlength(limit, Numl - 1);
      Setlength(Rmod, Numl - 1);
      // setlength(VetAH, NAH);
      Setlength(FO, NumCri);
      Setlength(ResultVector, NumCri + 1);
      NumDV := NumCri;
      TIFS := false;
      NRA := 0;
      NRB := 0;
      Nrest := P;
    end; // For II
    /// //////////////////// FIM DA PRIMEIRA FASE //////////////////////////////

    /// ///////////// SEGUNDA FASE DO TESTE DE INCONSISTÊNCIA ///////////////////
    /// Restrições removidas uma a uma do problema, testa possíveis combinações//
    if CBT = true then
    begin
      for II := P to P + NAH - 1 do
      begin
        /// Preenchendo as Restrições referentes à Avaliação Holística ///
        /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
        for i := 0 to NAH - 1 do
          if i <> (II - P) then
          begin
            case VetAH[i, 0] of
              - 55:
                begin
                  /// Exclusão ///
                  /// / Incrementa o número de var de decisão /////////////////////////
                  NumDV := NumDV + 2 * (Length(VetAH[i]) - 2);
                  /// / Acrescentando espaço para as restrições //////////////////////
                  Numl := Numl + 3 * (Length(VetAH[i]) - 2) + 1;
                  Setlength(MatA, Numl, NumDV + 1);
                  Setlength(Op, Numl - 1);
                  Setlength(limit, Numl - 1);
                  Setlength(Rmod, Numl - 1);
                  /// ////////////////////////////////////////////////////////////////
                  Setlength(AuxHEz, Length(VetAH[i]));
                  for z := 2 to Length(VetAH[i]) - 1 do
                  begin
                    for j := 0 to NumCri - 1 do
                    begin
                      /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
                      MatA[Nrest + 1, j + 1] := MatCons
                        [VetAH[(i), z], Criorder[j]] - MatCons
                        [VetAH[i, 1], Criorder[j]];
                      MatA[Nrest + 1, 0] := -0.000001;

                      /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
                      MatA[Nrest + 2, j + 1] := MatCons
                        [VetAH[(i), 1], Criorder[j]] - MatCons
                        [VetAH[i, z], Criorder[j]];
                      MatA[Nrest + 2, 0] := -0.000001;
                    end; // j

                    AuxHEz[z] := NumCri + NRB + 1;
                    /// / Salva o índice das var binárias da
                    /// restrição de que v(b) < v(a)
                    MatA[Nrest + 1, NumCri + NRB + 1] := -1;
                    MatA[Nrest + 2, NumCri + NRB + 2] := -1;
                    Op[Nrest + 1] := '<';
                    Op[Nrest] := '<';
                    INC(Nrest, 2);
                    INC(a, 2);
                    INC(NRB, 2); // Número de variáveis binárias adicionadas
                    /// / Resrição Z1 + Z2 <= 1 /////////////////////////////////////////
                    MatA[Nrest + 1, NumCri + NRB] := 1;
                    MatA[Nrest + 1, NumCri + NRB - 1] := 1;
                    MatA[Nrest + 1, 0] := 1;
                    Op[Nrest] := '<=';
                    INC(Nrest);
                    INC(a);

                  end; // z

                  for j := 0 to Length(AuxHEz) - 1 do
                    MatA[Nrest + 1, AuxHEz[j]] := -1;
                  MatA[Nrest + 1, 0] := -1;
                  Op[Nrest] := '<=';
                  INC(Nrest);
                  INC(a);
                  /// ///////////////////////////////////////////////////////////////////
                  /// ////////////////////////////////////////////////////////////////
                  typeprob := 3;
                  /// Var de decisão são mistas ///
                end; // -55

              1:
                begin
                  /// Exclusão 2 ///
                  for z := 2 to Length(VetAH[i - a]) - 1 do
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
                      MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), 1],
                        Criorder[j]] - MatCons[VetAH[i - a, z], Criorder[j]];
                    end; // j
                    MatA[Nrest + 1, 0] := -Power(10, -5);
                    Op[Nrest] := '<';
                    INC(Nrest);
                  end; // z
                end;

              2:
                begin
                  /// Seleção ///
                  for z := 2 to Length(VetAH[i]) - 1 do
                  begin
                    /// / Acrescentando espaço para as restrições ///////////////////////
                    INC(Numl);
                    Setlength(MatA, Numl, NumCri + 1);
                    Setlength(Op, Numl - 1);
                    Setlength(limit, Numl - 1);
                    Setlength(Rmod, Numl - 1);
                    /// / Acrescentando espaço para as restrições ///////////////////////
                    if TIWUserSession(WebApplication.Data)
                      .Problematica <> 3 then
                    begin
                      for j := 0 to NumCri - 1 do
                      begin
                        MatA[Nrest + 1, j + 1] := MatCons
                          [VetAH[(i), z], Criorder[j]] - MatCons
                          [VetAH[i, 1], Criorder[j]];
                      end; // j
                      if TIWUserSession(WebApplication.Data)
                        .Problematica = 1 then
                        MatA[Nrest + 1, 0] := -0.0001;
                      Op[Nrest] := '<=';
                      INC(Nrest);
                    end; // if prob <> 3

                    if TIWUserSession(WebApplication.Data).Problematica = 3 then
                    begin
                      for j := 0 to NumCri - 1 do
                      begin
                        if VetAH[i, 1] < 0 then // Se a mlr alt for perfil
                        begin
                          // perfis_inseridos[i] começa de zero
                          MatA[Nrest + 1, j + 1] := MatCons
                            [VetAH[(i), z], Criorder[j]] - TIWUserSession
                            (WebApplication.Data).perfis[-1 - VetAH[(i), 1]];
                        end;
                        if VetAH[i, 2] < 0 then // Se a pior alt for perfil
                        begin
                          MatA[Nrest + 1, j + 1] := TIWUserSession
                            (WebApplication.Data).perfis[-1 - VetAH[(i), 2]]
                            - MatCons[VetAH[i, 1], Criorder[j]];
                        end;
                        if (VetAH[i, 2] >= 0) and (VetAH[i, 1] >= 0) then
                        begin
                          MatA[Nrest + 1, j + 1] := MatCons
                            [VetAH[(i), z], Criorder[j]] - MatCons
                            [VetAH[i, 1], Criorder[j]];
                        end;
                      end;

                    end; // if prob = 3
                  end; // z
                end; // 2
            end; // i <> II - P
          end; // case
        /// / Adiciona variáveis binárias ao problema caso necessário ////////////////
        a := Nrest;
        Setlength(FO, NumDV);
        Setlength(var_bin, (NumDV - NumCri));
        Setlength(ResultVector, NumDV + 1);
        for j := 0 to Length(var_bin) - 1 do
          var_bin[j] := NumCri + j;
        /// //////////////////////////////////////////////////////////////////////////

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

        /// ////////////////// Calcula o máximo K1 /////////////////////

        for i := 0 to NumDV - 1 do
        begin
          MatA[0, i + 1] := 0;
          FO[i] := intTostr(0);
        end;
        FO[0] := intTostr(1);

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

          if b <> NumCri then
            TIFS := true;
        end;
        /// /// Caso haja solução viável com a remoção da restrição II-P
        /// da holística, então seu índice no vetor TINFS recebe true //////////
        if TIFS = true then
        begin
          TIWUserSession(WebApplication.Data).CBT := true;
          /// //////////////////////////////////////////////////////////////////////
          // * Armazena qual(is) a(s) restrição(ões) inconsistente(s) **//
          TINFS[II - P] := true;
        end;
        /// /////////// Limpando o vetor de resultados e removendo as restrições da Avaliação Holística  /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);
        Setlength(var_bin, 0);
        Numl := 2 * (NumCri - 1) + 4 + 2 * Length
          (TIWUserSession(WebApplication.Data).PergNAdj);
        Setlength(MatA, Numl, NumCri + 1);
        Setlength(Op, Numl - 1);
        Setlength(limit, Numl - 1);
        Setlength(Rmod, Numl - 1);
        // setlength(VetAH, NAH);
        Setlength(FO, NumCri);
        Setlength(ResultVector, NumCri + 1);
        NumDV := NumCri;
        TIFS := false;
        NRA := 0;
        NRB := 0;
        Nrest := P;
      end; // For II
    end; // Combination = true

    /// / Após encontrar a(s) restrição (oes) conflitantes com a resposta do DM
    /// Chama-se a região para avaliação de incnsistências e são plotados os
    /// gráficos com esse fim. ///////////////////////////////////////////////
    GraficosInconsistencias(TINFS);

  end; // TIFS = false

end;

procedure Tfrmaintercriterio.GraficosInconsistencias(TNFS: array of boolean);
var
  i, NumCri, a, j: integer;
  vordem1: array of integer; //
  CMin, Cmax, Bconseq, Wconseq: array of real; //
  barraazul: real;
  wt, wt1, bt, bt1: string;
begin
  { IWLabel34.Left := 471;
    IWLabel16.Left := 479;
    IWLabel39.Left := 261; }
  if TIWUserSession(WebApplication.Data).Idioma = 1 then
  begin
    wt := 'Pior';
    bt := 'Melhor';
    wt1 := 'P';
    bt1 := 'M';
  end
  else
  begin
    wt := 'Worst';
    bt := 'Best';
    wt1 := 'W';
    bt1 := 'B';
  end;
  /// ////////////////////////////////////////////////////////////////////////////
  /// /////////////////  Plota o gráfico da decomposição /////////////////////////
  with TIWUserSession(WebApplication.Data) do
  begin
    NumCri := numcrit;
    a := 1;
    case PAns of
      0:
        lblinconsistency01.Caption := 'A P B';
      1:
        lblinconsistency01.Caption := 'B P A';
      2:
        lblinconsistency01.Caption := 'A I B';
    end;

    lblinconsistency01.Left := 324;

    // ** Utliza-se downto pois as perguntas são sempre realizadas com a HE mais recente **//
    for i := Length(TNFS) - 1 downto 0 do
      if TNFS[i] then
      begin
        Setlength(TINFS, a);
        TINFS[a - 1] := i;
        INC(a);
      end;
  end;

  Setlength(vordem1, NumCri);
  Setlength(CMin, NumCri);
  Setlength(Cmax, NumCri);
  Setlength(Bconseq, NumCri);
  Setlength(Wconseq, NumCri);

  with TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumCri - 1 do
    begin
      Cmax[i] := Maxcons[i];
      CMin[i] := Mincons[i];

      vordem1[i] := vtrordem[i];
      if (Typeofcrit[i] = 1) or (Typeofcrit[i] = 3) then

      begin
        Bconseq[i] := Cmax[i];
        Wconseq[i] := CMin[i];
      end;
      if (Typeofcrit[i] = 0) or (Typeofcrit[i] = 2) then

      begin
        Bconseq[i] := CMin[i];
        Wconseq[i] := Cmax[i];
      end;
    end
    end;


  if TIWUserSession(WebApplication.Data).Etapa <> 4 then
  begin

    // ** Perguntas com gráficos horizontais **//
    //lblEDInc.Parent := rgnGraphDecomp;
    lblinconsistency01.Parent := rgnGraphDecomp;
    rgnGraphDecomp.Visible := true;
    rgnGraphintDisc.Visible := false;

    CRTincA.BottomAxis.Visible := true;
    CRTincA.leftAxis.Visible := false;
    CRTincA.RightAxis.Items.clear;
    CRTincA.leftAxis.Items.clear;
    CRTincA.BottomAxis.Items.clear;
    CRTincA.SeriesList.ClearValues;
    CRTincA.Title.clear;
    // ChartA.Title.Text.Add('Consequence A');  //o título está na região

    /// // Condição para fonte dos "marks" mudar de tamanho a partir de 23 criterios///////
    for i := 0 to NumCri - 1 do
    begin
      if ((NumCri <= 22)) then
      begin
        CRTincA.Series[1].Marks.Font.Size := 8;
        CRTincA.Series[0].Marks.Font.Size := 8;
      end;
    end;
    /// /////////////////////////////////////////////
    for i := 0 to NumCri - 1 do
    begin
      if i = TIWUserSession(WebApplication.Data).IndiceA then
      // constroi as barras da ultimo até a primeira
      begin
        TIWUserSession(WebApplication.Data).StrDInd := i;
        CRTincA.Series[1].AddXY(i, 50, ' ', clwebWHITE);
        CRTincA.Series[1].Marks.Item[i].Visible := false;

        barraazul := { Cmax[vordem[NumCri - i - 1]] / DesenpenhoReal{ }
        TIWUserSession(WebApplication.Data).WDP1 * 100;
        if barraazul = 0 then
          barraazul := 3;
        // ** Para a consequência não aparecer pior do que a pior consequência no gráfico **//
        if barraazul <= 3 then
          barraazul := barraazul + 3;

        CRTincA.Series[0].AddXY(i, barraazul, 'X' + intTostr(i + 1)
            + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data).ConsReal),
          clWebdarkBLUE);

          CRTincA.BottomAxis.Items.Add(i, TIWUserSession(WebApplication.Data)
          .NomeCrit[vordem1[TIWUserSession(WebApplication.Data).IndiceA]]);
      end;
      end;

      for i := 0 to NumCri - 1 do
      begin
      if i = TIWUserSession(WebApplication.Data).IndiceB then
      begin
        TIWUserSession(WebApplication.Data).StrDInd := i;
        CRTincA.Series[1].AddXY(i, 100, bt1 + intTostr(TIWUserSession(WebApplication.Data).IndiceB + 1)
            + ':' + {trescasas}Rounding(Bconseq[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]), clwebWHITE);
        CRTincA.Series[0].AddXY(i, 3, wt1 + intTostr(TIWUserSession(WebApplication.Data).IndiceB + 1)
            + ':' + {trescasas}Rounding(Wconseq[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]), clwebRED);
       CRTincA.BottomAxis.Items.Add(i, TIWUserSession(WebApplication.Data)
          .NomeCrit[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]);
      end;
      //CRTincA.BottomAxis.Items.Add(i, TIWUserSession(WebApplication.Data)
          //.CritSiglas[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]);
    end;

  with TIWUserSession(WebApplication.Data) do
  begin
  ZQuery2.SQL.Text := 'SELECT seqcam FROM visualization_elic WHERE id_problem="' +
  (TIWUserSession(WebApplication.Data).ID_Problema) +
  '"AND id_cria="' + inttostr(TIWUserSession(WebApplication.Data).IndiceA) + '"AND Id_crib="' + inttostr
  (TIWUserSession(WebApplication.Data).IndiceB) + '";';
  ZQuery2.ExecSQL;
  ZQuery2.open;
  TIWUserSession(WebApplication.Data).verbd := ZQuery2.FieldByName('seqcam').Asstring;
  ZQuery2.close;

  TIWUserSession(WebApplication.Data).ultimovalor:= Copy(verbd, LastDelimiter('-', verbd) + 1, Length(verbd) - LastDelimiter('-', verbd) - 1);;

  if (ultimoValor = 'AGV') or (ultimoValor = 'BGV') or (ultimoValor = 'GV') then
  begin
  rgnGraphDecomp.Visible := true;
  rgnincvert.Visible := true;
  end;

  if (ultimoValor = 'AT') or (ultimoValor = 'BT') or (ultimoValor = 'T') or (ultimoValor = '') then
  rgnincostab.Visible := true;

  if (ultimoValor = 'AGH') or (ultimoValor = 'BGH') or (ultimoValor = 'GH') then
  begin
  rgninchori.Visible := true;
  rgnGraphDecomp.Visible := true;
  end;
  end;

    IwImage17.Picture.Bitmap.Assign
      (ChartA.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage30.Width,
          IwImage17.Height)));

    imgincA.Picture.Bitmap.Assign
      (ChartC.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage20.Width,
          imgincA.Height)));
    // print do gráfico (para web)

    CRTincB.BottomAxis.Visible := true;
    CRTincB.leftAxis.Visible := false;
    CRTincB.RightAxis.Items.clear;
    CRTincB.leftAxis.Items.clear;
    CRTincB.BottomAxis.Items.clear;
    CRTincB.SeriesList.ClearValues;
    CRTincB.Title.clear;
    // ChartB.Title.Text.Add('Consequence B'); //título na região

    /// // Condição para fonte dos "marks" mudar de tamanho a partir de 23 criterios///////
    for i := 0 to NumCri - 1 do
    begin
      if ((NumCri <= 22)) then
      begin
        CRTincB.Series[1].Marks.Font.Size := 8;
        CRTincB.Series[0].Marks.Font.Size := 8;
      end;
    end;
    /// /////////////////////////////////////////////

    for i := 0 to NumCri - 1 do
    begin
      if i = TIWUserSession(WebApplication.Data).IndiceB then
      begin
        TIWUserSession(WebApplication.Data).StrDInd := i;
        CRTincB.Series[1].AddXY(i, 100, bt1 + intTostr(TIWUserSession(WebApplication.Data).IndiceB + 1)
            + ':' + {trescasas}Rounding(Bconseq[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]),
          clwebdarkGREEN);
        CRTincB.Series[1].Marks.Item[(TIWUserSession(WebApplication.Data).IndiceB+1)].Visible := false;

        CRTincB.Series[0].AddXY(i, 0, '', clwebdarkGREEN);
        CRTincB.Series[0].Marks.Item[i].Visible := false;

        CRTincB.BottomAxis.Items.Add(i, TIWUserSession(WebApplication.Data)
          .NomeCrit[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]);

      end;
      end;

      for i := 0 to NumCri - 1 do
      begin
      if i = TIWUserSession(WebApplication.Data).IndiceA then
      begin
        TIWUserSession(WebApplication.Data).StrDInd := i;
        CRTincB.Series[1].AddXY(i, 100, bt1 + intTostr(TIWUserSession(WebApplication.Data).IndiceA + 1)
            + ':' + {trescasas}Rounding(Bconseq[vordem1[TIWUserSession(WebApplication.Data).IndiceA]]), clwebWHITE);
        CRTincB.Series[1].Marks.Item[i].Visible := false;
        CRTincB.Series[0].AddXY(i, 3, wt1 + intTostr(TIWUserSession(WebApplication.Data).IndiceA + 1)
            + ':' + {trescasas}Rounding(Wconseq[vordem1[TIWUserSession(WebApplication.Data).IndiceA]]), clwebRED);
        CRTincB.Series[0].Marks.Visible := true;

        CRTincB.BottomAxis.Items.Add(i, TIWUserSession(WebApplication.Data)
          .NomeCrit[vordem1[TIWUserSession(WebApplication.Data).IndiceA]]);

      end;
      //CRTincB.leftAxis.Items.Add(i, TIWUserSession(WebApplication.Data)
          //.CritSiglas[vordem1[NumCri - 1 - i]]);
    end;

    IwImage19.Picture.Bitmap.Assign
      (ChartB.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage29.Width,
          IwImage19.Height)));
    imgincB.Picture.Bitmap.Assign
      (ChartD.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage18.Width,
          imgincB.Height)));
  end
    // print do gráfico (para web)
    /// /////////////////////////////////////////////////////////////////////////////
    /// ///////////////////// Plotando a tabela /////////////////////////////////////


  else
  begin
    // ** Níveis intermediários dos discretos **//
    //lblEDInc.Parent := rgnGraphintDisc;
    lblinconsistency01.Parent := rgnGraphintDisc;
    rgnGraphDecomp.Visible := false;
    rgnGraphintDisc.Visible := true;

  end;
  RgnInconsistency.Refresh;

  With TIWUserSession(WebApplication.Data) do
  begin
    grdinconsistency.RowCount := Length
      (MATAH[TIWUserSession(WebApplication.Data).TINFS[0]]);
    grdinconsistency.ColumnCount := numcrit + 1;
    if TIWUserSession(WebApplication.Data).Idioma = 1 then
      grdinconsistency.Cell[0, 0].Text := 'Alternativas'
    else
      grdinconsistency.Cell[0, 0].Text := 'Alternatives';

    for j := 0 to numcrit - 1 do
    begin
      grdinconsistency.Cell[0, j + 1].Text := CritSiglas[vtrordem[j]];
      if TIWUserSession(WebApplication.Data).Problematica <> 3 then
      begin
        for i := 1 to Length(TIWUserSession(WebApplication.Data)
            .MATAH[TINFS[0]]) - 1 do
        begin
          grdinconsistency.Cell[i, 0].Text := AltSiglas[MATAH[TINFS[0], i]];
          TIWUserSession(WebApplication.Data).VtrAlternatives[i] := MATAH
            [TINFS[0], i];
          grdinconsistency.Cell[i, j + 1].Text := FloatToStr
            (ConsMatrix[MATAH[TINFS[0], i], vtrordem[j]]);
        end; // i
      end; // if problematica <> 3
      Setlength(VtrAlternatives, Length(MATAH[TINFS[0]]) - 1);

      if TIWUserSession(WebApplication.Data).Problematica = 3 then
      begin
        for i := 1 to Length(MATAH[TINFS[0]]) - 1 do
        begin
          if MATAH[TINFS[0], i] > 0 then
          begin
            grdinconsistency.Cell[i, 0].Text := NomeAlt
              [TIWUserSession(WebApplication.Data).MATAH[TINFS[0], i]];
            grdinconsistency.Cell[i, j + 1].Text := FloatToStr
              (ConsMatrix[MATAH[TINFS[0], i], vtrordem[j]]);
          end
          else
          begin
            grdinconsistency.Cell[i, 0].Text := 'Profiles ' + intTostr
              (MATAH[TINFS[0], i] * (-1));
            grdinconsistency.Cell[i, j + 1].Text := FloatToStr
              (TIWUserSession(WebApplication.Data).altperfil[-TIWUserSession
                (WebApplication.Data).MATAH[TINFS[0], i] - 1, j]);
          end;
          VtrAlternatives[i] := MATAH[TINFS[0], i];

        end; // i
      end; // if problematica = 3
    end; // for j

    grdinconsistency.Font.FontName := 'Verdana';
    grdinconsistency.Font.Size := 11;

    if (Problematica <> 3) and (Problematica <> 2)  then
    begin
      if MATAH[TINFS[0], 0] = 1 then
      begin
        if TIWUserSession(WebApplication.Data).Idioma = 1 then
          lblinconsistencyAH.Caption := AltSiglas[MATAH[TINFS[0], 1]] +
            ' foi eliminada deste grupo.'
        else
          lblinconsistencyAH.Caption := AltSiglas[MATAH[TINFS[0], 1]] +
            ' was excluded from this group.';

        if MATAH[TINFS[0], 0] = 2 then
        begin
          if TIWUserSession(WebApplication.Data).Idioma = 1 then
            lblinconsistencyAH.Caption := AltSiglas[MATAH[TINFS[0], 1]] +
              ' foi apontada como a melhor alternativa deste grupo.'
          else
            lblinconsistencyAH.Caption := AltSiglas[MATAH[TINFS[0], 1]] +
              ' was belived to be the best alternative from this group.';
        end;
      end
      else
      begin
        if TIWUserSession(WebApplication.Data).Idioma = 1 then
          lblinconsistencyAH.Caption := AltSiglas[MATAH[TINFS[0], 1]] +
            ' foi apontada como a melhor alternativa deste grupo.'
        else
          lblinconsistencyAH.Caption := AltSiglas[MATAH[TINFS[0], 1]] +
            ' was belived to be the best alternative from this group.';
      end;

    end;

    RgnInconsistency.show;
    RgnInconsistency.Align := Talign(5);
    if Etapa <> 4 then
      IWRgnstep2.Hide
    else
      rgnECDI.Hide;

 Setlength(VtrAlternatives, Length(MATAH[TINFS[0]]) - 1);
    for i := 1 to Length(VtrAlternatives) do
      VtrAlternatives[i - 1] := MATAH[TINFS[0], i];
    EscalaRazao;
    /// / Mostra o tipo de visualização utilizada pelo DM na AH /////
    case VetVisualization[TINFS[0]] of
      1:
        btnradincClick(self);
      2:
        btnbubincClick(self);
      3:
        btnbarincClick(self);
    end;

  end; // with
end;



{ procedure Tfrmaintercriterio.Normaliza;
  var
  i, j: integer;
  Zmax, Zmin: Double;
  matriztestesnormal: array of array of Double;
  begin
  /// / Esse procedimento realiza a normalização das consequências considerando /
  /// a função valor linear para todos os critérios. ////////////////////////////
  with TIWUserSession(WebApplication.Data) do
  begin
  setlength(ConsNorm, NumAlt, numcrit);
  for j := 0 to numcrit - 1 do
  for i := 0 to NumAlt - 1 do

  begin
  /// verificar se os criterios DISCRETOS devem seguir uma regra diferente de transformação da escala///
  case FTipo[j] of // função que armazena o vetor dos tipos de FO declaradas na planilha

  1: // procedimento realiza a normalização das consequências considerando a função valor linear ///////////////////////
  begin
  // Normalização para os critérios de maximização //////////////////////
  if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
  ConsNorm[i, j] := (ConsMatrix[i, j] - Min[j]) /
  (Max[j] - Min[j]);
  /// Normalização para os critérios de minimização //////////////////////
  if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
  ConsNorm[i, j] := (ConsMatrix[i, j] - Max[j]) /
  (-Max[j] + Min[j]);

  end;

  2: // procedimento realiza a normalização das consequencias considerando função valor exponencial
  begin
  if Min[j] = 0 then
  Min[j] := Power(10, -5); // O QUE É POWER??
  Zmin := Exp(parA[j] * Min[j]); // exponencial do parametro A vezes o valor minimo capturado no criterio
  Zmax := Exp(parA[j] * Max[j]); // exponencial do parametro A vezes o valor máximo capturado no criterio

  // normalização para os criterios de maximização//
  if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
  ConsNorm[i, j] := (Exp(parA[j] * ConsMatrix[i, j]) - Zmin) /
  (Zmax - Zmin);
  // normalização para os criterios de minimização//
  if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
  ConsNorm[i, j] := (Exp(parA[j] * ConsMatrix[i, j]) - Zmax) /
  (Zmin - Zmax);
  end;

  3: // procedimento realiza a normalização das consequencias considerando função valor logaritmica
  begin
  if Min[j] = 0 then
  Min[j] := Power(10, -5); // O QUE É POWER??
  Zmin := Ln(parA[j] * Min[j] + 1 - parA[j] * Min[j]);
  Zmax := Ln(parA[j] * Max[j] + 1 - parA[j] * Min[j]);

  // normalização para os criterios de maximização///
  if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
  ConsNorm[i, j] :=
  (Ln(parA[j] * ConsMatrix[i, j] + 1 - parA[j] * Min[j])
  - Zmin) / (Zmax - Zmin);
  // normalização para os criterios de minimização//
  if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
  ConsNorm[i, j] :=
  (Ln(parA[j] * ConsMatrix[i, j] + 1 - parA[j] * Min[j])
  - Zmax) / (Zmin - Zmax);
  { else
  ConsNorm[i, j] := 1; }
{ end;

  4: // procedimento realiza a normalização das consequencias considerando função valor logistica (S-Shape)
  begin
  if Min[j] = 0 then
  Min[j] := Power(10, -5);

  Zmax := Exp(-parA[j] / Max[j]);
  Zmin := Exp(-parA[j] / Min[j]);

  // normalização para os criterios de maximização///
  if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
  ConsNorm[i, j] := (Exp(-parA[j] / ConsMatrix[i, j]) - Zmin) /
  (Zmax - Zmin);
  // normalização para os criterios de minimização//
  if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
  ConsNorm[i, j] := (Exp(-parA[j] / ConsMatrix[i, j]) - Zmax) /
  (Zmin - Zmax);
  { else
  ConsNorm[i, j] := 1; }
{ end;
  end;

  end; // final dos contadores }

{ setlength(matriztestesnormal, NumAlt, numcrit);
  for i := 0 to NumAlt - 1 do
  for j := 0 to numcrit - 1 do
  matriztestesnormal[i, j] := TIWUserSession(WebApplication.Data)
  .ConsNorm[i, j];

  end; // final dos casos

  // salvar banco de dados na tabela  consequences
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 9;
  SalvarBDinter;

  end; }

procedure Tfrmaintercriterio.proximaetapa;
begin
  if TIWUserSession(WebApplication.Data).stage = 2 then
  begin
    IWRgnavaliacaoholistica.Visible := false;
    IWRgnstep2.Visible := true;
  end;
end;

procedure Tfrmaintercriterio.BtnshowresultsClick(Sender: TObject);
begin
  IWRgnstep2.Visible := false;
  TIWUserSession(WebApplication.Data).stage := 3;
  if (TIWUserSession(WebApplication.Data).Problematica = 2) then
    Tfrmportfolioresults.Create(WebApplication).show;
  if (TIWUserSession(WebApplication.Data).Problematica = 3) then
    TfrmSortingResults.Create(WebApplication).show;
  if (TIWUserSession(WebApplication.Data).Problematica = 0) or
    (TIWUserSession(WebApplication.Data).Problematica = 1) then
    TfrmResultados.Create(WebApplication).show;
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
  SalvarBDinter;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 11;
  SalvarBDinter;

  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).BDstatus := '0';
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
  SalvarBDinter;

end;

procedure Tfrmaintercriterio.btnxClick(Sender: TObject);
var
  i: integer;
begin

  // auxiliar BD
  TIWUserSession(WebApplication.Data).Auxinconsistency := -1997;
  // salvar banco de dados na tabela current_stage
  TIWUserSession(WebApplication.Data).auxinconsi := 3;
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 32;
  SalvarBDinter;
  /// / Este procedimento é acionado para reiniciar a elicitação considerando a
  /// mesma ordenação dos critérios /////////////////////////////////////////
  with TIWUserSession(WebApplication.Data) do
  begin
    // ** Limpando as informações dos critérios não-adjacentes **//
    if Etapa = 3 then
    begin
      Setlength(MLimMin, 0, 0);
      Setlength(MLimMax, 0, 0);
      Setlength(MLimMinA, 0, 0);
      Setlength(MLimMaxA, 0, 0);
      Setlength(Mblindados, 0, 0);
      Setlength(PergNAdj, 0, 0);
    end;
    Etapa := 0;
    for i := 0 to numcrit - 2 do
    begin
      // ** Limpando o vetor pergunta **//
      Vetorpergunta[i] := Power(10, -5);

      // ** Desblinda os critérios blindados na elicitação **//
      if Cri_Cong[i] = 1 then
      begin
        TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] := false;
        TIWUserSession(WebApplication.Data).DiscIntBlind[i] := false;

      end;

      TIWUserSession(WebApplication.Data).Cri_Cong[i] := 0;

      // ** Se os critérios foram considerados indiferentes na ordenação das constantes, não limpa os vetores **//
      if (LimMax[i] = 1) and (LimMin[i] = 1) then
        continue;

      // ** Reinicializa os vetores **//
      LimMax[i] := 1;
      LimMaxA[i] := 1;
      LimMin[i] := 0;
      LimMinA[i] := 0;

    end;

    NumQuest := 0;
    HeurQuest := -1;
    PAns := -1;
    if Etapa = 4 then
    begin
      NiveisIntermediarios[0] := true;
      NiveisIntermediarios[1] := true;
      NiveisIntermediarios[2] := true;
      NextRelDisc := true;
      // ** Descongela todos os critérios, os póprios limites das relações se encarregarão de blindá-los novamente **//
      for i := 0 to numcrit - 1 do
        TIWUserSession(WebApplication.Data).DiscIntBlind[i] := false;
    end;
    Etapa := 0;
    EtapaAnt := 0;
    // ** Limpa a Matriz de Holísticas **//
    Setlength(MATAH, 0, 0);

    if (Problematica = 0) or (Problematica = 4) then
    begin
      NDA := NumAlt;
      for i := 0 to NumAlt - 1 do
        VetPOA[i] := i;
    end;
    if (Problematica = 1) or (Problematica = 2) then
    begin
      NumRel := 0;
      Ciclo := 0;
      Setlength(ArmazenaParaPar, 0, 0, 0);
      Setlength(ArmazenaParaPar, 150, NumAlt, NumAlt);
    end;
    EFp;
    lblnqa.Text := '0';
    if (Problematica = 0) or (Problematica = 4) then
      lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).NDA);
    if (Problematica = 1) or (Problematica = 2) then
      lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).Rlevels);
    if Problematica = 3 then
      lblnda.Text := intTostr(Alt_nao_classificadas);
    rgnIncAsk.Hide;
    IWRgnstep2.show;
    TIWUserSession(WebApplication.Data).stage := 3;
    Tfrmaintercriterio.Create(WebApplication).show;
    rdgrppreference.Items.Delete(4);

  end;
  { // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).auxinconsi := 3;
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 26;
    SalvarBDinter; }

  BrnOK.Enabled := true;
  Btnshowresults.Enabled := true;
  btnstopelicitation.Enabled := true;
  rdgrppreference.Enabled := true;

end;

procedure Tfrmaintercriterio.ConsRealDisc;
var
  i, j, k, cont: integer;
  LimDisc: array of Array of Double;
  Lim, Lim2: array [0 .. 6] of Double;
  zmin, zmax, Vmin, Vmax, VCMin, VCMax, VCInt: Double;
  TProcedure: integer;
Begin
  Setlength(LimDisc, 5);
  Setlength(LimDisc[0], 3);
  Setlength(LimDisc[1], 4);
  Setlength(LimDisc[2], 5);
  Setlength(LimDisc[3], 6);
  Setlength(LimDisc[4], 7);

  With TIWUserSession(WebApplication.Data) do
  Begin

    if TIWUserSession(WebApplication.Data).VtrcritBisec
      [vtrordem[TIWUserSession(WebApplication.Data).IndiceA]] = true then
      TProcedure := 1
    else
      TProcedure := 0;

    /// / Preenchendo os limites das consequências discretas  ///
    /// Os valores máximos e mínimos já estão nas variáveis globais, assim não
    /// é necessário passar como parâmetro. Só é necessário preencher a coluna
    /// da LimDisc referente a quantidade de níveis do critério atual ///
    // ** A Ordem que deve aparecer é do menos preferível ao mais preferível **//
    for i := 0 to TIWUserSession(WebApplication.Data)
      .Niveis[vtrordem[TIWUserSession(WebApplication.Data).IndiceA]] - 1 do
      if (TIWUserSession(WebApplication.Data)
          .Typeofcrit[vtrordem[TIWUserSession(WebApplication.Data).IndiceA]]
          = 3) then
        LimDisc[TIWUserSession(WebApplication.Data).Niveis[TIWUserSession
          (WebApplication.Data).vtrordem[IndiceA]] - 3,
          Niveis[vtrordem[TIWUserSession(WebApplication.Data).IndiceA]]
          - i - 1] := Obtem_Valor(Niveis[vtrordem[IndiceA]] - i, TProcedure,
          IndiceA)
      else
        LimDisc[Niveis[vtrordem[TIWUserSession(WebApplication.Data).IndiceA]]
          - 3, i] := Obtem_Valor(Niveis[vtrordem[IndiceA]] - i, TProcedure,
          IndiceA)
  end;

  for i := 0 to 5 - 1 do
    if (LimDisc[i, 0] < 0) or (LimDisc[i, 0] <= 0.00001) then
      LimDisc[i, 0] := 0;

  With TIWUserSession(WebApplication.Data) do
  Begin

    { for i := 0 to 7 - 1 do
      begin
      Lim[i] := LimMin[i];
      Lim2[i] := LimMax[i];
      end; }

    if Etapa <> 3 then
    begin
      Vmin := LimMin[Indice];
      Vmax := LimMax[TIWUserSession(WebApplication.Data).Indice];
    end
    else
    begin
      Vmin := TIWUserSession(WebApplication.Data).MLimMin[Indice, BIndex];
      Vmax := TIWUserSession(WebApplication.Data).MLimMax[Indice, BIndex];
    end;

    if Etapa <> 4 then
      case TIWUserSession(WebApplication.Data)
        .Niveis[TIWUserSession(WebApplication.Data).vtrordem[TIWUserSession
        (WebApplication.Data).IndiceA]] of

        3:
          Begin
            /// Verifica se os limites estão restringidos pelos limites das conseq discretas ///
            /// caso estejam a relação deverá ser blindada e uma nova relação deve ser avaliada. ///
            for i := 0 to 2 - 1 do
              if (Vmin >= LimDisc[0, i]) and (Vmax <= LimDisc[0, i + 1]) then
              Begin
                if Etapa <> 3 then
                begin
                  TIWUserSession(WebApplication.Data).vtrrelacoesblin[Indice]
                    := true;
                  Cri_Cong[Indice] := 1;
                  INC(NumCriBlind);
                  INC(NumCriCong);
                end
                else
                Mblindados[Indice, BIndex] := true;
                Proximarel;
                FlagDiscBlin := true;
                exit;
              End;

            /// Caso a condição anterior não seja atendida, ainda há uma consequência ///
            /// a ser perguntada que equivale ao pont médio da escala de 3 pontos. ///
            TIWUserSession(WebApplication.Data).WDP1 := LimDisc[0, 1];
            TIWUserSession(WebApplication.Data).ConsReal := TIWUserSession
              (WebApplication.Data).MatrizFaixa[1, IndiceA];
          End;

        4:
          Begin
            /// Verifica se os limites estão restringidos pelos limites das conseq discretas ///
            /// caso estejam a relação deverá ser blindada e uma nova relação deve ser avaliada. ///
            for i := 0 to 3 - 1 do
              if (Vmin >= LimDisc[1, i]) and (Vmax <= LimDisc[1, i + 1]) then
              Begin
                if Etapa <> 3 then
                begin
                  TIWUserSession(WebApplication.Data).vtrrelacoesblin[TIWUserSession(WebApplication.Data).Indice]:= true;
                  Cri_Cong[Indice] := 1;
                  INC(TIWUserSession(WebApplication.Data).NumCriBlind);
                  INC(NumCriCong);
                end
                else
                Mblindados[Indice, BIndex] := true;
                Proximarel;
                FlagDiscBlin := true;
                exit;
              End;

            /// Caso a condição anterior não seja atendida, ainda há alguma consequência ///
            /// a ser Elicitada. ///
            if Vmax - Vmin = 1 then
            begin
              // ** Procura a consequência mais próxima de 0,5 **//
              zmin := 1;
              for i := 1 to Niveis[vtrordem[IndiceA]] - 2 do
                if Abs(LimDisc[1, i] - 0.5) < zmin then
                begin
                  zmin := Abs(LimDisc[1, i] - 0.5);
                  k := i;
                end;

              WDP1 := LimDisc[1, k];
              ConsReal := TIWUserSession(WebApplication.Data)
                .MatrizFaixa[k, IndiceA];
            end
            else
              for i := 1 Downto 0 do
              begin
                if Vmin >= LimDisc[1, i] then
                begin
                  for j := 2 Downto i + 1 do
                    if Vmax > LimDisc[1, j] then
                    begin
                      WDP1 := LimDisc[1, j];
                      ConsReal := MatrizFaixa[j, IndiceA];
                    end;
                  break;
                end;
              end;

          End;

        5:
          Begin
            /// Verifica se os limites estão restringidos pelos limites das conseq discretas ///
            /// caso estejam a relação deverá ser blindada e uma nova relação deve ser avaliada. ///
            for i := 0 to 4 - 1 do
              if (Vmin >= LimDisc[2, i]) and (Vmax <= LimDisc[2, i + 1]) then
              Begin
                if TIWUserSession(WebApplication.Data).Etapa <> 3 then
                begin
                  TIWUserSession(WebApplication.Data).vtrrelacoesblin[Indice]:= true;
                  Cri_Cong[Indice] := 1;
                  INC(TIWUserSession(WebApplication.Data).NumCriBlind);
                  INC(TIWUserSession(WebApplication.Data).NumCriCong);

                end
                else
                TIWUserSession(WebApplication.Data).Mblindados[Indice, BIndex] := true;
                Proximarel;
                FlagDiscBlin := true;
                exit;
              End;

            /// Caso a condição anterior não seja atendida, ainda há alguma consequência ///
            /// a ser Elicitada. ///
            if Vmax - Vmin = 1 then
            begin

              // ** Procura a consequência mais próxima de 0,5 **//
              zmin := 1;
              for i := 1 to Niveis[vtrordem[IndiceA]] - 2 do
                if Abs(LimDisc[2, i] - 0.5) < zmin then
                begin
                  zmin := Abs(LimDisc[2, i] - 0.5);
                  k := i;
                end;

              WDP1 := LimDisc[2, k];
              ConsReal := MatrizFaixa[k, IndiceA];
            end
            else
              for i := 2 Downto 0 do
              begin
                if Vmin >= LimDisc[2, i] then
                begin
                  for j := 3 Downto i + 1 do
                    if Vmax > LimDisc[2, j] then
                    begin
                      TIWUserSession(WebApplication.Data).WDP1 := LimDisc[2, j];
                      TIWUserSession(WebApplication.Data).ConsReal :=
                        MatrizFaixa[j, IndiceA];
                    end;
                  break;
                end;
              end;
          End;

        6:
          Begin
            /// Verifica se os limites estão restringidos pelos limites das conseq discretas ///
            /// caso estejam a relação deverá ser blindada e uma nova relação deve ser avaliada. ///
            for i := 0 to 5 - 1 do
              if (Vmin >= LimDisc[3, i]) and (Vmax <= LimDisc[3, i + 1]) then
              Begin
                if Etapa <> 3 then
                begin
                  TIWUserSession(WebApplication.Data).vtrrelacoesblin[Indice]
                    := true;
                  Cri_Cong[Indice] := 1;
                  INC(NumCriBlind);
                  INC(NumCriCong);
                end
                else
                  Mblindados[Indice, BIndex] := true;
                Proximarel;
                FlagDiscBlin := true;
                exit;
              End;

            /// Caso a condição anterior não seja atendida, ainda há alguma consequência ///
            /// a ser Elicitada. ///
            if Vmax - Vmin = 1 then
            begin
              // ** Procura a consequência mais próxima de 0,5 **//
              zmin := 1;
              for i := 1 to Niveis[vtrordem[IndiceA]] - 2 do
                if Abs(LimDisc[3, i] - 0.5) < zmin then
                begin
                  zmin := Abs(LimDisc[3, i] - 0.5);
                  k := i;
                end;

              WDP1 := LimDisc[3, k];
              ConsReal := MatrizFaixa[k, IndiceA];
            end
            else
              for i := 3 Downto 0 do
              begin
                if Vmin >= LimDisc[3, i] then
                begin
                  for j := 4 Downto i + 1 do
                    if Vmax > LimDisc[3, j] then
                    begin
                      WDP1 := LimDisc[3, j];
                      ConsReal := MatrizFaixa[j, IndiceA];
                    end;
                  break;
                end;
              end;

          End;

        7:
          Begin
            /// Verifica se os limites estão restringidos pelos limites das conseq discretas ///
            /// caso estejam a relação deverá ser blindada e uma nova relação deve ser avaliada. ///
            for i := 0 to 6 - 1 do
              if (Vmin >= LimDisc[4, i]) and (Vmax <= LimDisc[4, i + 1]) then
              Begin
                if Etapa <> 3 then
                begin
                  TIWUserSession(WebApplication.Data).vtrrelacoesblin[Indice]
                    := true;
                  Cri_Cong[Indice] := 1;
                  INC(NumCriBlind);
                  INC(NumCriCong);
                end
                else
                  Mblindados[Indice, BIndex] := true;
                Proximarel;
                FlagDiscBlin := true;
                exit;
              End;

            /// Caso a condição anterior não seja atendida, ainda há alguma consequência ///
            /// a ser Elicitada. ///
            if TIWUserSession(WebApplication.Data)
              .LimMax[TIWUserSession(WebApplication.Data).Indice]
              - Vmin = 1 then
            begin
              // ** Procura a consequência mais próxima de 0,5 **//
              zmin := 1;
              for i := 1 to Niveis[vtrordem[IndiceA]] - 2 do
                if Abs(LimDisc[4, i] - 0.5) < zmin then
                begin
                  zmin := Abs(LimDisc[4, i] - 0.5);
                  k := i;
                end;

              TIWUserSession(WebApplication.Data).WDP1 := LimDisc[4, k];
              TIWUserSession(WebApplication.Data).ConsReal := MatrizFaixa
                [k, IndiceA];
            end
            else
              for i := 4 Downto 0 do
              begin
                if Vmin >= LimDisc[4, i] then
                begin
                  for j := 5 Downto i + 1 do
                    if Vmax > LimDisc[4, j] then
                    begin
                      WDP1 := LimDisc[4, j];
                      ConsReal := MatrizFaixa[j, IndiceA];
                    end;
                  break;
                end;
              end;

          End;
      end; // Case

    // ** Perguntas para níveis intermédiários **//
    if Etapa = 4 then
    begin
      cont := 0;
      for i := 0 to Niveis[vtrordem[TIWUserSession(WebApplication.Data).IndiceA]
        ] - 2 do
        if (Vmin >= LimDisc[Niveis[vtrordem[IndiceA]] - 3, i]) and
          (Vmax <= LimDisc[Niveis[vtrordem[IndiceA]] - 3, i + 1]) then
        Begin
          /// ////////** Testando a aplicabilidade das perguntas **//////////////
          // ** VC é o valor v(x) candidato a ser perguntado ao decisor **//
          if (TIWUserSession(WebApplication.Data)
              .Typeofcrit[vtrordem[TIWUserSession(WebApplication.Data).IndiceA]
              ] = 3) then
          begin
            VCMin := Obtem_Valor(TIWUserSession(WebApplication.Data)
                .MatrizFaixa[i, IndiceA] + 1 / 3, TProcedure, IndiceA);
            VCInt := Obtem_Valor(MatrizFaixa[i, IndiceA] + 1 / 2, TProcedure,
              IndiceA);
            VCMax := Obtem_Valor(MatrizFaixa[i, IndiceA] + 2 / 3, TProcedure,
              IndiceA);
          end;
          if (TIWUserSession(WebApplication.Data)
              .Typeofcrit[vtrordem[TIWUserSession(WebApplication.Data).IndiceA]
              ] = 2) then
          begin
            VCMin := Obtem_Valor(MatrizFaixa[i, IndiceA] - 1 / 3, TProcedure,
              IndiceA);
            VCInt := Obtem_Valor(MatrizFaixa[i, IndiceA] - 1 / 2, TProcedure,
              IndiceA);
            VCMax := Obtem_Valor(MatrizFaixa[i, IndiceA] - 2 / 3, TProcedure,
              IndiceA);
          end;
          TIWUserSession(WebApplication.Data).VMinG := MatrizFaixa[i, IndiceA];
          // ** Supõem que não existem perguntas a serem feitas para essa relação **//
          NextRelDisc := true;
          if (VCInt > Vmin) and (VCInt < Vmax) then
          begin
            // ** a pergunta do 1/2 ainda pode ser feita **//
            NiveisIntermediarios[0] := true;
            // ** Hipótese rejeitada **//
            NextRelDisc := false;
            // ** Não precisamos testar outra relação **//
            NRDTest := false;

          end
          else
            // ** a pergunta do 1/2 não pode ser feita **//
            NiveisIntermediarios[0] := false;

          if (VCMin > Vmin) and (VCMin < Vmax) then
          begin
            // ** a pergunta do 1/3 ainda pode ser feita **//
            NiveisIntermediarios[1] := true;
            // ** Hipótese rejeitada **//
            NextRelDisc := false;
            // ** Não precisamos testar outra relação **//
            NRDTest := false;

          end
          else
            // ** a pergunta do 1/3 não pode ser feita **//
            NiveisIntermediarios[1] := false;

          if (VCMax > Vmin) and (VCMax < Vmax) then
          begin
            // ** a pergunta do 2/3 ainda pode ser feita **//
            NiveisIntermediarios[2] := true;
            // ** Hipótese rejeitada **//
            NextRelDisc := false;
            // ** Não precisamos testar outra relação **//
            NRDTest := false;
          end
          else
            // ** a pergunta do 2/3 não pode ser feita **//
            NiveisIntermediarios[2] := false;

          // ** Se a hipótese inicial não tiver sido rejeitada, devemos buscar a
          // ** próxima relação para ser perguntada **//
          if NextRelDisc then
          begin
            DiscIntBlind[Indice] := true;
            // ** Caso a relação seja a mesma que estávamos verificando, significa
            // ** que esta etapa se encontra finalizada e a Etapa 3 é a única opção
            // ** Para que a elicitação seja continuada **//
            if (PergDiscFinalized) then
            begin
              // Etapa := 3;    //Bloqueando as perguntas dos não adjascentes
              sol := 10;
              BtnshowresultsClick(self);
              exit;
              IndiceA := -1; // Inserido por causa do bloqueio das perguntas dos NADJ
              Proximarel;
              if IndiceA <> -1 then
              begin
                // Prepara_cri_nadj;
                Inversa;
                lnkchangeE4.Visible := false;
                lnkchangeE3Click(self);
              end;
              // Yara Mostrar a Manoel
              exit;
            end;
            // ** Indica ao sistema que vamos tentar buscar uma nova relação de critérios
            // ** que envolva critérios discretos **//
            NRDTest := true;
            // ** Procura a próxima relação **//
            Proximarel;

            // ** Chama o presenta procedimento novamente **//
            if (not PergDiscFinalized) then
            begin
              ConsRealDisc;
              exit;
            end;
          end;

          /// ////////////////////////////////////////////////////////////////////
          // ** Pergunta-se para o nível inferior + 1/2
          if NiveisIntermediarios[0] then
          begin
            if (Typeofcrit[vtrordem[IndiceA]] = 3) then
              TIWUserSession(WebApplication.Data).ConsReal := MatrizFaixa
                [i, IndiceA] + 1 / 2
            else
              ConsReal := MatrizFaixa[i, IndiceA] - 1 / 2;

            NiveisIntermediarios[0] := false;
          end
          else
          begin
            // ** Pergunta-se para o nível inferior + 1/3
            if NiveisIntermediarios[1] then
            begin
              if (Typeofcrit[vtrordem[IndiceA]] = 3) then
                ConsReal := MatrizFaixa[i, IndiceA] + 1 / 3
              else
                ConsReal := MatrizFaixa[i, IndiceA] - 1 / 3;
              NiveisIntermediarios[1] := false;
            end;

            // ** Pergunta-se para o nível inferior + 2/3
            if NiveisIntermediarios[2] then
            begin
              if (Typeofcrit[vtrordem[IndiceA]] = 3) then
                ConsReal := MatrizFaixa[i, IndiceA] + 2 / 3
              else
                ConsReal := MatrizFaixa[i, IndiceA] - 2 / 3;
              NiveisIntermediarios[2] := false;
            end;
          end;
          if (not PergDiscFinalized) then
            TIWUserSession(WebApplication.Data).WDP1 := Obtem_Valor
              (TIWUserSession(WebApplication.Data).ConsReal, TProcedure,
              IndiceA);

        End
        else
          INC(cont);

      // ** A etapa a seguir equivale a uma redundância, pois caso tenha havido
      // respostas do tipo "no Answer" os casos acima podem não conseguir tratar
      // sem apresentar um erro ao decisor **//
      if (PergDiscFinalized) then
      begin
        // Etapa := 3;    //Bloqueando as perguntas dos não adjascentes
        //IndiceA := -1; // Inserido por causa do bloqueio das perguntas dos NADJ
        sol := 10;
        BtnshowresultsClick(self);
        exit;
        Proximarel;
        if IndiceA <> -1 then
        begin
          // Prepara_cri_nadj;
          Inversa;
          lnkchangeE4.Visible := false;
          lnkchangeE3Click(self);
        end;
        exit;
      end;

      if cont = Niveis[vtrordem[IndiceA]] - 1 then
      begin
        NextRelDisc := true;
        DiscIntBlind[Indice] := true;
        // ** Indica ao sistema que vamos tentar buscar uma nova relação de critérios
        // ** que envolva critérios discretos **//
        NRDTest := true;
        // ** Procura a próxima relação **//
        Proximarel;
        // ** Chama o presenta procedimento novamente **//
        ConsRealDisc;
        exit;
      end;

    end; // ** Etapa 4

  End; // ** With
End; // **Procedure

procedure Tfrmaintercriterio.Proximarel;
var
  i, j, k, y, Blind, n: integer;
  Aux2, Aux1: Double;
  Equal: boolean;
begin
  Aux2 := 0;
  With TIWUserSession(WebApplication.Data) do
  begin
    n := numcrit;
    if (TIWUserSession(WebApplication.Data).NumQuest = 1) then
      j := 0
    else
      j := TIWUserSession(WebApplication.Data).IndiceA + 1;


    /// / Caso seja a pergunta da heurística, esse procedimento se faz necessário
    /// pois o c1 e o c(n-1) podem ter sido considerados indiferentes a algum
    /// critério adjacente e não terem sido escolhidos como representantes ////
    if HeurQuest = -1 then
    begin
      for i := 0 to numcrit - 2 do
        if TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] = false then
        begin
          TIWUserSession(WebApplication.Data).IndiceA := TIWUserSession
            (WebApplication.Data).Representantes
            [TIWUserSession(WebApplication.Data).vtrposicoes[i] - 1];
          Indice := i;
          break;
        end;
      TIWUserSession(WebApplication.Data).IndiceB := Representantes
        [TIWUserSession(WebApplication.Data).vtrposicoes[numcrit - 1] - 1];
      TIWUserSession(WebApplication.Data).IdAHeur := IndiceA;
      TIWUserSession(WebApplication.Data).IdBHeur := IndiceB;
      exit;
    end;

    /// / Caso o decisor tenha respondido A na pergunta da heurística ou caso já
    /// se tenha respondido certa quantidade de perguntas após responder B,
    /// então utiliza-se o processo de busca pela relação com maior faixa /////
    if (Etapa = 2) then
    begin
      calmaxminweights;
      NumCriBlind := 0;
      Aux2 := 0;

       //YARA - Esse trecho é para blindar os critérios necessários
       //Pois o NumCriBlind zera perdendo os critérios blindados fazendo entrar em looping infinito
    for k := 0 to Length(TIWUserSession(WebApplication.Data).vtrposicoes) - 1 do
  begin
    for y := k + 1 to Length(TIWUserSession(WebApplication.Data).vtrposicoes) - 1 do
    begin
      if TIWUserSession(WebApplication.Data).vtrposicoes[k] = TIWUserSession(WebApplication.Data).vtrposicoes[y] then
      begin
        INC(TIWUserSession(WebApplication.Data).NumCriBlind);
      end;
    end;
  end;
    //YARA

      for i := numcrit - 2 Downto 0 do
        if not TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] then
        begin
          // ** só faz sentido testar a faixa de critérios contínuos não inteiros **//
          if ((TIWUserSession(WebApplication.Data).Typeofcrit[TIWUserSession
                (WebApplication.Data).vtrordem[i]] < 2) and
              (testar_faixa(i, i + 1))) or
            (TIWUserSession(WebApplication.Data).MaxPeso[i] <= Power(10, -9))
            then
          begin
            vtrrelacoesblin[i] := true;
            INC(TIWUserSession(WebApplication.Data).NumCriBlind);
            Cri_Cong[i] := 1;
            continue;
          end;

          Aux1 := (TIWUserSession(WebApplication.Data)
              .LimMax[i] - TIWUserSession(WebApplication.Data).LimMin[i]);
          if Aux1 >= Aux2 then
          begin
            Aux2 := (LimMax[i] - LimMin[i]);
            TIWUserSession(WebApplication.Data).IndiceA := TIWUserSession
              (WebApplication.Data).Representantes
              [TIWUserSession(WebApplication.Data).vtrposicoes[i] - 1];
            TIWUserSession(WebApplication.Data).IndiceB := Representantes
              [TIWUserSession(WebApplication.Data).vtrposicoes[i]];
            TIWUserSession(WebApplication.Data).Indice := i;
          end;
        end
        else if TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] then
          INC(NumCriBlind);
      if (TIWUserSession(WebApplication.Data).NumCriBlind = n - 1) then
      begin
        if sol = -5 then
        begin
          { TIWUserSession(WebApplication.Data).sol := 10;
            TfrmResultados.Create(WebApplication).show;
            Exit;
            // Solução encontrada (<> -5) cria a unit Resultados }
          // ** Se existirem critérios discretos, inicia o processo pela elicitação em níveis intermediários **//
          Testa_Faixa_Discreta;
          // Yara Mostrar a Manoel
          if TADC then
            Etapa := 4
          else
          begin
            { Etapa := 3;
              Prepara_cri_nadj; }
            sol := 10;
            BtnshowresultsClick(self);
            exit;
          end;
          { Proximarel; }
        end;
      end;
    end;

    /// Ao responder B na pergunta da Heurística, as perguntas são feitas na
    /// sequência que as relações aparecem. //////////////////////////////////

    /// Pode acontecer que na etapa1, por relações terem sido blindadas, que seja
    /// necessário voltar para as primeiras relações de critérios /////////////
    if j >= TIWUserSession(WebApplication.Data).numcrit - 1 then
      j := 0;

    if TIWUserSession(WebApplication.Data).Etapa = 1 then
    begin
      calmaxminweights;
      NumCriBlind := 0;

       //YARA - Esse trecho é para blindar os critérios necessários
       //Pois o NumCriBlind zera perdendo os critérios blindados fazendo entrar em looping infinito
  for k := 0 to Length(TIWUserSession(WebApplication.Data).vtrposicoes) - 1 do
  begin
    for y := k + 1 to Length(TIWUserSession(WebApplication.Data).vtrposicoes) - 1 do
    begin
      if TIWUserSession(WebApplication.Data).vtrposicoes[k] = TIWUserSession(WebApplication.Data).vtrposicoes[y] then
      begin
        INC(TIWUserSession(WebApplication.Data).NumCriBlind);
      end;
    end;
  end;
    //YARA


      for i := TIWUserSession(WebApplication.Data).numcrit - 2 Downto j do
        if not TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] then
        begin
          // ** só faz sentido testar a faixa de critérios contínuos não inteiros **//
          if ((TIWUserSession(WebApplication.Data).Typeofcrit[vtrordem[i]] < 2)
              and (testar_faixa(i, i + 1))) or
            (TIWUserSession(WebApplication.Data).MaxPeso[i] <= Power(10, -9))
            then
          begin
            vtrrelacoesblin[i] := true;
            INC(NumCriBlind);
            Cri_Cong[i] := 1;
            continue;
          end;

          TIWUserSession(WebApplication.Data).IndiceA := Representantes
            [TIWUserSession(WebApplication.Data).vtrposicoes[i] - 1];
          TIWUserSession(WebApplication.Data).IndiceB := Representantes
            [TIWUserSession(WebApplication.Data).vtrposicoes[i]];
          Indice := i;

        end
        else if TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] then
          INC(TIWUserSession(WebApplication.Data).NumCriBlind);
      if (TIWUserSession(WebApplication.Data).NumCriBlind = n - 1) then
      begin
        if sol = -5 then
        begin
          { TIWUserSession(WebApplication.Data).sol := 10;
            TfrmResultados.Create(WebApplication).show;
            Exit;
            // Solução encontrada (<> -5) cria a unit Resultadose }
          Testa_Faixa_Discreta;
          // ** Se existirem critérios discretos, inicia o processo pela elicitação em níveis intermediários **//
          if TADC then
            Etapa := 4
          else
          begin
            { Etapa := 3;
              Prepara_cri_nadj; }
            sol := 10;
            BtnshowresultsClick(self);
            exit;
          end;
        end;
        { Proximarel; }
      end;
      NumQP := 1;
      // lbl2.Caption := Criterianame[IndiceA] + 'X' + Criterianame[IndiceB];
    end;

    Aux1 := 0;
    Aux2 := 0;
    if Etapa = 3 then
    begin
      sol := 10;
      BtnshowresultsClick(self);
      exit;

      IndiceA := -1;
      calmaxminweights;
      for i := 0 to numcrit - 1 do
        for j := i + 2 to numcrit - 1 do
        begin
          if not TIWUserSession(WebApplication.Data).Mblindados[i, j] then
          begin
            // ** só faz sentido testar a faixa de critérios contínuos não inteiros **//
            if ((Typeofcrit[vtrordem[i]] < 2) and testar_faixa(i, j)) or
              (MaxPeso[i] <= Power(10, -9)) or (MaxPeso[j] <= Power(10, -9))
              then
            begin
              Mblindados[i, j] := true;
              continue;
            end;
            Aux2 := TIWUserSession(WebApplication.Data).MLimMax[i, j]
              - TIWUserSession(WebApplication.Data).MLimMin[i, j];
            if Aux2 > Aux1 then
            begin
              Aux1 := Aux2;
              TIWUserSession(WebApplication.Data).IndiceA := Representantes
                [TIWUserSession(WebApplication.Data).vtrposicoes[i] - 1];
              Indice := i;
              BIndex := j;
              TIWUserSession(WebApplication.Data).IndiceB := Representantes
                [TIWUserSession(WebApplication.Data).vtrposicoes[j] - 1];
            end;
          end;
        end;

      if IndiceA = -1 then
      begin
        if not PergDiscFinalized then
        begin
          Testa_Faixa_Discreta;
          if TADC then
          begin
            Etapa := 4;
            Prepara_Disc_Int;
            PAns := -1;
            Proximarel;
            exit;
          end;
        end;
        // ** Caso mesmo passando pelas etapas 3 e 4, não tiver obtido o resultado **//
        sol := 10;
        BtnshowresultsClick(self);
        exit;
      end;

      // ** Verifica se a relação já foi perguntada **//
      Equal := false;
      for i := 0 to Length(PergNAdj) - 1 do
        if (PergNAdj[i, 0] = IndiceA) and (PergNAdj[i, 1] = IndiceB) then
        begin
          Equal := true;
          break;
        end;
      // Yara Mostrar a Manoel definir_pergunta_nadj
      // ** Armazena os índices já perguntados **//
      if Equal = false then
      begin
        Setlength(PergNAdj, Length(PergNAdj) + 1, 2);
        TIWUserSession(WebApplication.Data).PergNAdj[Length(PergNAdj) - 1, 0]
          := IndiceA;
        PergNAdj[Length(PergNAdj) - 1, 1] := IndiceB;
        // ** Acima de 72 restrições, a DLL não dá mais conta **//
        if (2 * Length(PergNAdj)) >= (72 - 2 * numcrit + 2) then
          ClpSolve := true;
      end;
    end; // etapa 3

    // ** Inicia sempre pelas constantes de maior valor **//
    if (Etapa = 4) then
    begin
      Aux1 := -568;
      Aux2 := 0;
      for i := numcrit - 2 Downto 0 do
        if (TIWUserSession(WebApplication.Data).Niveis[TIWUserSession
            (WebApplication.Data).vtrordem[i]] > 2) and
          (not TIWUserSession(WebApplication.Data).DiscIntBlind[i]) then
        begin
          Aux1 := 0;
          TIWUserSession(WebApplication.Data).IndiceA := TIWUserSession(WebApplication.Data).Representantes[TIWUserSession(WebApplication.Data).vtrposicoes[i] - 1];
          TIWUserSession(WebApplication.Data).IndiceB := Representantes
            [TIWUserSession(WebApplication.Data).vtrposicoes[i]];
          TIWUserSession(WebApplication.Data).Indice := i;
          btnncancelClick(self);
        end;

      // ** Após encontrar uma relação de critérios para perguntar, só mudaremos
      // ** a relação após todas as perguntas serem feitas ou dependendo da resposta
      // ** do decisor **//
      NextRelDisc := false;
      if Aux1 = -568 then
        PergDiscFinalized := true;

      { //Yara mostrar a Manoel
        if (PergDiscFinalized) then
        begin
        if sol = -5 then
        begin
        // Solução encontrada (<> -5) cria a unit Resultados }
      { Etapa := 3;

        Sol := 10;
        TfrmResultados.Create(WebApplication).show;
        exit;
        end;
        end;
        ProximaRel; }
    end;

  end;

end;

procedure Tfrmaintercriterio.rdbtndecompClick(Sender: TObject);
begin
  rdbtnHE.Checked := false;
end;

procedure Tfrmaintercriterio.rdbtnHEClick(Sender: TObject);
begin
  rdbtndecomp.Checked := false;
end;

procedure Tfrmaintercriterio.rgnECDICreate(Sender: TObject);
begin
//lbllegendDE.Visible := true;
//lstbxtco.Visible := true;
end;

procedure Tfrmaintercriterio.CalcLimMin;
var
  i, j: integer;
  Aux1: Double;
begin
  /// Este Procedimento atualiza todos os limites inferiores para o maior valor /////
  /// entre o limite mínimo anterior e 0.5 dividido pelo produtório entre todos ///
  /// os limites máximos com excessão do limite superior da relação avaliada /////
  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to numcrit - 2 do
    begin
      Aux1 := 1;
      if i <> IndiceA then
      begin
        for j := 0 to numcrit - 2 do
          if i <> j then
            Aux1 := Aux1 * LimMax[j];
        if LimMin[i] < (WDPHEUR / Aux1) then
          LimMin[i] := (WDPHEUR / Aux1);
      end;
    end;
  end;

end;

procedure Tfrmaintercriterio.calmaxminweights;
var
  i, j, k, Nrest, a, b, c, z, II, JJ, DNrel: integer; // Contadores
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
  ResultVector: array of real;
  // typeprob determina se o problema é contínuo (typeprob = 0) ou binário (typeprob = 1).
  // No caso do fitradeoff, é sempre contínuo pois as constantes de escala são contínuas.
  // dirprob determina se o problema é de minimização (dirprob = 0) ou de maximização
  // (dirprob = 1), SF nos diz se houve solução viável.
  typeprob, dirprob, SF: integer;
  FO, Op: array of string;
  limit: array of real;
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

   // VARIAVEIS ADD POR ELVIRA
  pt, PontoTrans: integer;
  ConseqHolística: Array of Array of Double;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 4 + 2 * Length(TIWUserSession(WebApplication.Data)
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
  setlength(ConseqHolística, 2, NumCri); // Elvira
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
      Setlength(VetAH[j], Length(MATAH[j]));
      for i := 0 to Length(MATAH[j]) - 1 do
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
          NumDV := NumDV + 2 * (Length(VetAH[i - a]) - 2);
          /// / Acrescentando espaço para as restrições //////////////////////
          Numl := Numl + 3 * (Length(VetAH[i - a]) - 2) + 1;
          Setlength(MatA, Numl, NumDV + 1);
          Setlength(Op, Numl - 1);
          Setlength(limit, Numl - 1);
          Setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          Setlength(AuxHEz, Length(VetAH[i - a]));
          for z := 2 to Length(VetAH[i - a]) - 1 do
          begin
            for j := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, j + 1] := MatCons[VetAH[(i - a), 1], Criorder[j]]
                - MatCons[VetAH[i - a, z], Criorder[j]];
              MatA[Nrest + 2, 0] := -0.000001;
            end; // j

            AuxHEz[z] := NumCri + NRB + 1;
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

          for j := 0 to Length(AuxHEz) - 1 do
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
          for z := 2 to Length(VetAH[i - a]) - 1 do
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
                - MatCons[VetAH[i - a, z], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -Power(10, -5);
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end;

      2:
        begin
          /// Seleção ///
          for z := 2 to Length(VetAH[i - a]) - 1 do
          begin
            /// / Acrescentando espaço para as restrições ///////////////////////
            INC(Numl);
            Setlength(MatA, Numl, NumCri + 1);
            Setlength(Op, Numl - 1);
            Setlength(limit, Numl - 1);
            Setlength(Rmod, Numl - 1);
            /// / Acrescentando espaço para as restrições ///////////////////////
            if TIWUserSession(WebApplication.Data).Problematica <> 3 then
            begin
              for j := 0 to NumCri - 1 do
              begin
                MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), z],
                  Criorder[j]] - MatCons[VetAH[i - a, 1], Criorder[j]];
              end; // j
            end;

            if TIWUserSession(WebApplication.Data).Problematica = 2 then       // Inicio alteração Elvira
            begin
             // Indentificando onde acontece a transição dos projetos
            for pt := 1 to length(VetAH[(i - a)]) - 1 do
              if VetAH[(i - a), pt] = -1 then
              begin
                PontoTrans := pt;
                break;
              end;

            //  Fazendo o somatório das consequências dos projetos - Portfólio selecionado
            for j := 0 to NumCri - 1 do
              for pt := 1 to PontoTrans - 1 do
                ConseqHolística[0, j] := ConseqHolística[0, j] + MatCons
                  [VetAH[(i - a), pt], Criorder[j]];

            // Portfólio não-selecionado
            for j := 0 to NumCri - 1 do
              for pt := PontoTrans + 1 to length(VetAH[(i - a)]) - 1 do
                ConseqHolística[1, j] := ConseqHolística[1, j] + MatCons
                  [VetAH[(i - a), pt], Criorder[j]];

            //  Adicionando Restrição à PL
            for pt := 0 to NumCri - 1 do
              MatA[i + 1, pt + 1] := ConseqHolística[1, pt] - ConseqHolística
                [0, pt];

            {MatA[i + 1, 0] := 0;
            INC(Nrest);}

            end;    // prob = 2                    // Fim alteração Elvira

            if TIWUserSession(WebApplication.Data).Problematica = 3 then
            begin
              for j := 0 to NumCri - 1 do
              begin
                if VetAH[i - a, 1] < 0 then // Se a mlr alt for perfil
                begin
                  // perfis_inseridos[i] começa de zero
                  MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), z],
                    Criorder[j]] - TIWUserSession(WebApplication.Data)
                    .perfis[-1 - VetAH[(i - a), 1]];
                end;
                if VetAH[i - a, 2] < 0 then // Se a pior alt for perfil
                begin
                  MatA[Nrest + 1, j + 1] := TIWUserSession(WebApplication.Data)
                    .perfis[-1 - VetAH[(i - a), 2]] - MatCons
                    [VetAH[i - a, 1], Criorder[j]];
                end;
                if (VetAH[i - a, 2] >= 0) and (VetAH[i - a, 1] >= 0) then
                begin
                  MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), z],
                    Criorder[j]] - MatCons[VetAH[i - a, 1], Criorder[j]];
                end;
              end; // j
            end;

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
  for j := 0 to Length(var_bin) - 1 do
    var_bin[j] := NumCri + j;
  /// //////////////////////////////////////////////////////////////////////////
  a := Nrest;

  // ** Restrições das relações entre critérios não adjascentes **//
  with TIWUserSession(WebApplication.Data) do
  begin
    if Length(PergNAdj) > 0 then
    begin
      for i := a to a + Length(PergNAdj) - 1 do
      begin
        MatA[i + 1, TIWUserSession(WebApplication.Data).PergNAdj[i - a, 0] + 1]
          := TIWUserSession(WebApplication.Data)
          .MLimMin[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
      end;

      a := Nrest;

      for i := a to a + Length(PergNAdj) - 1 do
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

  /// Adicionando a Restrição da primeira perfunta da Elicitação Flexível ///
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
      FO[i] := intTostr(0);
    end;
    FO[II] := intTostr(1);

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
      FO[i] := intTostr(0);
    end;
    FO[II] := intTostr(-1);

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
      TIWUserSession(WebApplication.Data).MaxPeso[i] := MaxP[i];
      TIWUserSession(WebApplication.Data).MinPeso[i] := MinP[i];
    end;
  end;

end;

procedure Tfrmaintercriterio.CalcLimMax;
var
  i, j: integer;
  Aux1: Double;
begin
  /// Este Procedimento atualiza todos os limites superiores para o menor valor /////
  /// entre o limite máximo anterior e 0.5 dividido pelo produtório entre todos ///
  /// os limites mínimos com excessão do limite inferior da relação avaliada /////
  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to numcrit - 2 do
    begin
      Aux1 := 1;
      if i <> IndiceA then // garante que o lim da pergunta atual não será atualizado
      begin
        for j := 0 to numcrit - 2 do
          if i <> j then // garante que o lim i não entre no produtório que atualiza o lim i
            Aux1 := Aux1 * LimMin[j];
        if Aux1 > 0 then
          if LimMax[i] > (WDPHEUR / Aux1) then
            LimMax[i] := (WDPHEUR / Aux1);
      end;
    end;
  end;

end;

procedure Tfrmaintercriterio.Intercriteriaevaluation1Click(Sender: TObject);
var
i: integer;
begin
   TIWUserSession(WebApplication.Data).passouaqui := false;  // Yara - Usado na PL de ordenação para garantir que rodou duas vezes
   TIWUserSession(WebApplication.Data).heuristica := false;
  // retorna para primeira tela inter - 19.01.22
  // ** Indica que o problema foi reiniciado antes de ser retomado **//
  // este comando é repetido no btnResetRecom, para garantir que não gere erro//
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 35;
  SalvarBDinter;

  TIWUserSession(WebApplication.Data).VerificaUnit := -50;
  TFrmEntrada.Create(WebApplication).show;
  IWRgnReset.Visible := false;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 6;
  SalvarBDinter;




  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).estagio := 0;
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 7;
  SalvarBDinter;

  // case referente à registro criado na planilha intracrit
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 36;
  SalvarBDinter;

  // auxiliar que permite que seja salvo no bd o caso da
  TIWUserSession(WebApplication.Data).Auxinconsistency := 0;

  // auxiliar que armazena a sequencia de respostas
  TIWUserSession(WebApplication.Data).Ans_seq := ' ';

end;

procedure Tfrmaintercriterio.Intracriteriaevaluation1Click(Sender: TObject);
begin { alteração 21.02.22 }
  TIWUserSession(WebApplication.Data).passouaqui := false;  // Yara - Usado na PL de ordenação para garantir que rodou duas vezes
  TIWUserSession(WebApplication.Data).heuristica := false;
  IWRgnReset.Visible := false;
  TIWUserSession(WebApplication.Data).retornointra := 0; // como está resetando, problema volta para estagio inicial.
  Setlength(TIWUserSession(WebApplication.Data).newFtipo, 0);

      TIWUserSession(WebApplication.Data).infoCYCLE := TIWUserSession
      (WebApplication.Data).infoCYCLE + '0////Reset elicitation /';

  //Incrementando a quantidade de ciclos
  inc(TIWUserSession(WebApplication.Data).Nciclos);
  //Salvando a contagem dos ciclos em um vetor
  SetLength(TIWUserSession(WebApplication.Data).guardaciclos, TIWUserSession(WebApplication.Data).Nciclos);
  TIWUserSession(WebApplication.Data).guardaciclos[0] := 1; //O ciclo inicial sempre será 1
  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] :=  0;




  // alteração 22.02.22
  TIWUserSession(WebApplication.Data).resetintra := true;
  TTFrmIntraCriterio.Create(WebApplication).show;
end;

procedure Tfrmaintercriterio.Inversa;
var
  i, j: integer;
  a: string;
  zmax, zmin, z: Double;
  vtrparametroA, vtrparametroB: array of Double;
  Vmin, Vmax: real;
begin

  With TIWUserSession(WebApplication.Data) do
  begin

    // ** Verifica a etapa para decidir de onde obter a informação dos limites das relações**//
    if Etapa <> 3 then
    begin
      Vmin := TIWUserSession(WebApplication.Data)
        .LimMin[TIWUserSession(WebApplication.Data).Indice];
      Vmax := TIWUserSession(WebApplication.Data).LimMax[Indice];
    end
    else
    begin
      Vmin := TIWUserSession(WebApplication.Data)
        .MLimMin[Indice, TIWUserSession(WebApplication.Data).BIndex];
      Vmax := MLimMax[Indice, BIndex];
    end;

    /// // alterando trecho para verificar se passou pela interpolação intracriterio/////

    if (TIWUserSession(WebApplication.Data).VtrcritBisec[TIWUserSession
        (WebApplication.Data).vtrordem[TIWUserSession(WebApplication.Data)
        .IndiceA]] = true) and ((Typeofcrit[vtrordem[IndiceA]] <> 2) and
        (Typeofcrit[vtrordem[IndiceA]] <> 3)) then
    // criterio passou pela interpolação para transformar escala
    begin
      TIWUserSession(WebApplication.Data).WDP1 := 0.5 * (Vmin + Vmax);
      InterpolacaoInversa(IndiceA, 0);
    end

    else // false indica que crit não foi interpolado, entra na inversa normal
    begin

      // ** Critérios Discretos **//
      if (TIWUserSession(WebApplication.Data).Typeofcrit[TIWUserSession
          (WebApplication.Data).vtrordem[TIWUserSession(WebApplication.Data)
          .IndiceA]] = 2) or // se for crit discreto decresc
        (Typeofcrit[vtrordem[IndiceA]] = 3) then
      // se for crit discreto cresc
      begin
        ConsRealDisc;
      end;
      if FlagDiscBlin then
      begin
        // Yara Stack Over Flow Portfólio
        FlagDiscBlin := false;
        if (TIWUserSession(WebApplication.Data).NumCriBlind <> TIWUserSession(WebApplication.Data).numcrit - 1) or (TIWUserSession(WebApplication.Data).Etapa > 2) then
          Inversa;
        exit;
      end;

      if (Typeofcrit[vtrordem[TIWUserSession(WebApplication.Data).IndiceA]]
          = 0) or (Typeofcrit[vtrordem[IndiceA]] = 1) then
      begin
        TIWUserSession(WebApplication.Data).WDP1 := 0.5 * (Vmin + Vmax);
        case TIWUserSession(WebApplication.Data).FTipo[vtrordem[IndiceA]] of
          1: // Função valor linear
            begin
              a := FloatToStr(WDP1);
              /// FUNÇÃO INVERSA PARA FUNÇÃO DO TIPO LINEAR
              case Typeofcrit[vtrordem[IndiceA]] of
                1:
                  ConsReal := (TIWUserSession(WebApplication.Data)
                      .Max[vtrordem[IndiceA]] - TIWUserSession
                      (WebApplication.Data).Min[vtrordem[IndiceA]])
                    * WDP1 + Min[vtrordem[IndiceA]]; // crescente
                0:
                  ConsReal :=
                    (-Max[vtrordem[IndiceA]] + Min[vtrordem[IndiceA]])
                    * WDP1 + Max[vtrordem[IndiceA]]; // decrescente
              end;
              a := FloatToStr(TIWUserSession(WebApplication.Data).ConsReal);

            end;

          /// / FUNÇÕES INVERSAS PARA FUNÇÕES VALOR NÃO LINEARES////////////

          2: // função valor exponencial
            begin
              zmax := Exp(parA[vtrordem[IndiceA]] * Max[vtrordem[IndiceA]]);
              zmin := Exp(parA[vtrordem[IndiceA]] * Min[vtrordem[IndiceA]]);

              case Typeofcrit[vtrordem[IndiceA]] of
                0:
                  begin // continuo decrescente
                    z := WDP1 * (zmin - zmax) + zmax;
                    ConsReal := Ln(z) / parA[vtrordem[IndiceA]];
                    /// //nesse estou em duvida se existe a necessidade
                    /// de criação do vtrAordem ou se posso chamar o vtrordem de inteiros com o vetor parA, para o indice A.
                    /// ficaria   Consreal[indiceA] := Ln(z) / vtrordem[parA[indiceA]]

                  end; // fim continuo decrescente
                1:
                  begin // continuo crescente
                    z := WDP1 * (zmax - zmin) + zmin;
                    TIWUserSession(WebApplication.Data).ConsReal := Ln(z)
                      / parA[vtrordem[IndiceA]];

                  end; // fim continuo crescente
              end; // fim case
            end; // fim função valor exponencial

          3: // função valor logaritmica
            begin
              zmax := Ln(parA[vtrordem[IndiceA]] * Max[vtrordem[IndiceA]]
                  + 1 - parA[vtrordem[IndiceA]] * Min[vtrordem[IndiceA]]);
              zmin := Ln(parA[vtrordem[IndiceA]] * Min[vtrordem[IndiceA]]
                  + 1 - parA[vtrordem[IndiceA]] * Min[vtrordem[IndiceA]]);

              case Typeofcrit[vtrordem[IndiceA]] of
                0:
                  begin // continuo decrescente
                    z := WDP1 * (zmin - zmax) + zmax;
                    ConsReal :=
                      (Exp(z) + parA[vtrordem[IndiceA]] * Min
                        [vtrordem[IndiceA]] - 1) / (parA[vtrordem[IndiceA]]);
                  end; // fim continuo decrescente
                1:
                  begin // continuo crescente
                    z := WDP1 * (zmax - zmin) + zmin;
                    ConsReal :=
                      (Exp(z) + parA[vtrordem[IndiceA]] * Min
                        [vtrordem[IndiceA]] - 1) / (parA[vtrordem[IndiceA]]);
                  end; // fim continuo crescente
              end; // fim case
            end; // fim função valor logaritmica

          4: // função valor logistica
            begin
              zmax := Exp(-parA[vtrordem[IndiceA]] / Max[vtrordem[IndiceA]]);
              zmin := Exp(-parA[vtrordem[IndiceA]] / Min[vtrordem[IndiceA]]);

              case Typeofcrit[vtrordem[IndiceA]] of
                0:
                  begin // continuo decrescente
                    z := WDP1 * (zmin - zmax) + zmax;
                    ConsReal := -parA[vtrordem[IndiceA]] / Ln(z);
                  end; // fim continuo decrescente
                1:
                  begin // continuo crescente
                    z := WDP1 * (zmax - zmin) + zmin;
                    ConsReal := -parA[vtrordem[IndiceA]] / Ln(z);
                  end; // fim contiuo crescente
              end; // fim case
            end; // fim função valor logistica
        end; // fim do case geral
      end; // ** Fim dos Critérios contínuos **//

      // ** Se o critério for inteiro **//
      if TIWUserSession(WebApplication.Data)
        .Cri_Inteiro[vtrordem[TIWUserSession(WebApplication.Data).IndiceA]] then
        if Round(ConsReal) <> ConsReal then
        begin
          // ** Arredonda para o inteiro mais próximo **//
          ConsReal := Round(ConsReal);
          // ** Recalcula a nova consequência v(ConsReal) **//
          TIWUserSession(WebApplication.Data).WDP1 := Obtem_Valor
            (ConsReal, 0, IndiceA);
        end;

      if (HeurQuest <> -1) then
      begin
        /// ///////////////////////////////////////////////////////////////////
        /// / Se ao realizar o arredondamento para três casas decimais a
        /// a consequencia real for igual a uma já elicitada, o critério é
        /// blindado e se segue para a próxima relação /////////////////////
        TIWUserSession(WebApplication.Data).StrDInd := TIWUserSession
          (WebApplication.Data).vtrordem[IndiceA];
        if ((StrToFloat(trescasas(TIWUserSession(WebApplication.Data).ConsReal)) = TIWUserSession(WebApplication.Data).Vetorpergunta
              [TIWUserSession(WebApplication.Data).IndiceA]) and (Etapa < 3)) or (trescasas(TIWUserSession(WebApplication.Data).ConsReal) = '0') then
        begin
          TIWUserSession(WebApplication.Data).vtrrelacoesblin[Indice] := true;
          Cri_Cong[Indice] := 1;
           if Etapa = 3 then
            Mblindados[Indice, BIndex] := true;
          INC(NumCriCong);
          Proximarel;
          if TIWUserSession(WebApplication.Data).sol = -5 then
            Inversa;
          if sol = 10 then
          begin
            { TfrmResultados.Create(WebApplication).show; }
            with TIWUserSession(WebApplication.Data) do
              // ** Se existirem critérios discretos, inicia o processo pela elicitação em níveis intermediários **//
              if TIWUserSession(WebApplication.Data).TADC then
              begin
                Etapa := 4;
                TIWUserSession(WebApplication.Data).sol := -5;
              end;
            { else
              Etapa := 3;
              Prepara_cri_nadj; }
            Proximarel;
            if sol = -5 then
              Inversa;
          end;
          exit;
        end;
        TIWUserSession(WebApplication.Data).StrDInd := vtrordem[IndiceA];
        Vetorpergunta[TIWUserSession(WebApplication.Data).IndiceA] := StrToFloat
          (trescasas(ConsReal));
      end;

    end; // else caso não tenha interpolado

  end;
end;

procedure Tfrmaintercriterio.InterpolacaoInversa(IRa, Val: integer);
/// neste procedimento é realizado o calculo do valor de retorno das conseq reais utilizadas para
/// etapa de elicitação intercriterio. Uma vez que, ao passar pelo procedimento de interpolação
/// os criterios não atendem mais à noção analítica. então nova interpolação deve ser feita, mas
/// desta vez retomando ao valor real, para exibir ao decisor, quando este estiver olhando os graficos da elicitação
/// utilizando os pontos elicitados

var
  i, j, l, q: integer;
  Ct: integer;
  AuxMatFixaNormaliza: array of array of Double; // matriz que armazena pontosd normalizados para utilizar na inversa
  AuxConsReal, AuxDPI: Double;
begin
  with TIWUserSession(WebApplication.Data) do

  begin
    Setlength(AuxMatFixaNormaliza, 5, 1);
    // Setlength(AuxConsReal, numalt);
    Setlength(AuxConsNorm, NumAlt, numcrit);
    Setlength(ConsNorm, NumAlt, numcrit);
    Ct := IRa; //

    for j := 0 to 4 do
      // mtz local pega pontos elicitados, para não mexer na matriz global
      AuxMatFixaNormaliza[j, 0] := TIWUserSession(WebApplication.Data)
        .matrizpontosreais[j, vtrordem[IRa]];

    begin
      AuxDPI := WDP1; // Vai ajudar  código a ficar mais limpo e permitir ver  valor da cons em questão

      // independnete da direção do criterio
      if (AuxDPI >= 0) and (AuxDPI <= 0.25) then // interpolação 0 e 0,25
      begin
        AuxConsReal := AuxMatFixaNormaliza[1, 0] +
          ((AuxMatFixaNormaliza[3, 0] - AuxMatFixaNormaliza[1, 0]) *
            (AuxDPI / 0.25));
      end;

      if (AuxDPI > 0.25) and (AuxDPI <= 0.5) then // interpolação 0,25 e 0,5
      begin
        AuxConsReal := AuxMatFixaNormaliza[3, 0] +
          ((AuxMatFixaNormaliza[2, 0] - AuxMatFixaNormaliza[3, 0]) *
            ((AuxDPI - 0.25) / 0.25));
      end;

      if (AuxDPI > 0.5) and (AuxDPI <= 0.75) then // interpolação 0,5 e 0,75
      begin
        AuxConsReal := AuxMatFixaNormaliza[2, 0] +
          ((AuxMatFixaNormaliza[4, 0] - AuxMatFixaNormaliza[2, 0]) *
            ((AuxDPI - 0.5) / 0.25));
      end;

      if (AuxDPI > 0.75) and (AuxDPI <= 1) then // interpolação 0,75 e 1
      begin
        AuxConsReal := AuxMatFixaNormaliza[4, 0] +
          ((AuxMatFixaNormaliza[0, 0] - AuxMatFixaNormaliza[4, 0]) *
            ((AuxDPI - 0.75) / 0.25));
      end;
    end;

    ConsReal := AuxConsReal; // passando para a var "oficial", por chamar em grafico e tudo mais

    // ** Se o critério for inteiro **//
    if Cri_Inteiro[vtrordem[IRa]] then
      if Round(ConsReal) <> ConsReal then
      begin
        // ** Arredonda para o inteiro mais próximo **//
        ConsReal := Round(ConsReal);
        // ** Recalcula a nova consequência v(ConsReal) **//
        WDP1 := Obtem_Valor(ConsReal, 1, IRa);
      end;

    if (HeurQuest <> -1) and (Val <> -1) then
    begin
      /// ///////////////////////////////////////////////////////////////////
      /// / Se ao realizar o arredondamento para três casas decimais a
      /// a consequencia real for igual a uma já elicitada, o critério é
      /// blindado e se segue para a próxima relação /////////////////////
      TIWUserSession(WebApplication.Data).StrDInd := TIWUserSession
        (WebApplication.Data).vtrordem[IRa];
      if ((StrToFloat(trescasas(AuxConsReal)) = TIWUserSession
            (WebApplication.Data).Vetorpergunta[IRa]) and (Etapa < 3)) or
        (trescasas(TIWUserSession(WebApplication.Data).ConsReal) = '0') then
      begin
        TIWUserSession(WebApplication.Data).vtrrelacoesblin[Indice] := true;
        Cri_Cong[Indice] := 1;
        if Etapa = 3 then
          Mblindados[Indice, BIndex] := true;
        INC(NumCriCong);
        Proximarel;
        if sol = -5 then
          Inversa;
        if sol = 10 then
        begin
          // TfrmResultados.Create(WebApplication).show;

          With TIWUserSession(WebApplication.Data) do
            // ** Se existirem critérios discretos, inicia o processo pela elicitação em níveis intermediários **//
            if TADC then
            begin
              Etapa := 4;
              TIWUserSession(WebApplication.Data).sol := -5;
            end;
          { else
            Etapa := 3;
            Prepara_cri_nadj; }
          Proximarel;
          if sol = -5 then
            Inversa;
        end;
        exit;
      end;
      TIWUserSession(WebApplication.Data).StrDInd := TIWUserSession
        (WebApplication.Data).vtrordem[IRa];
      Vetorpergunta[IRa] := StrToFloat(trescasas(ConsReal));
    end;

  end; // webapp
end;

procedure Tfrmaintercriterio.EFp;
var
  i, j: integer;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
    /// Caso seja a primeira pergunta, a consequência exibida recebe 0.5 ///
    if HeurQuest = -1 then
    begin
      WDP1 := 0.5;
      Proximarel;
      Inversa;
      if (Problematica = 0) or (Problematica = 4) then
        /// / se stage = 3 significa que o decisor está apenas checando os resultados parciais
        PLEscolha;

      if (Problematica = 1) and (stage <> 3) then
        if ClpSolve then
          LPsOrdenacao
        else
      begin
      TIWUserSession(WebApplication.Data).verfpl := false; // Booleana responsável por verificar se a PLordenacao foi rodada duas vezes considerando o parâmetro - YARA
      PLOrdenacao(0);
      end;

      if (Problematica = 2) and (stage <> 3) then
        PLCBPortfolio;

      if Problematica = 3 then
        PLClassificacao;
      /// //////// salvando o número de alternativas potencialmente otimas sem ter respondido nenhuma pergunta////
      if TIWUserSession(WebApplication.Data).Auxinconsistency <> -1997 then
      begin
        /// //////// salvando o número de alternativas potencialmente otimas sem ter respondido nenhuma pergunta////
        TIWUserSession(WebApplication.Data).AuxsalvarBD := 27;
        SalvarBDinter;
        /// ////////////////////////////////////////////////////////////////////////////////////////////////////////
      end;

      TIWUserSession(WebApplication.Data).Auxinconsistency := 0;
      TIWUserSession(WebApplication.Data).auxgoback := 0;
      PlotaGraphic(IndiceA, IndiceB, ConsReal);
      // ** Armazena o WDP1 final após realizar os cálculos **//
      TIWUserSession(WebApplication.Data).WDPHEUR := WDP1;
    end;
    /// /////////////////////////////////////////////////////////////////////////////

    /// Verificando a Etapa da elicitação, caso o decisor tenha respondido B na ///
    /// Primeira pergunta da elicitação inicia-se a Etapa 1, caso contrário ///////
    /// Inicia-se a Etapa 2. //////////////////////////////////////////////////////
    case Etapa of
      1:
        Begin
          if NumQuest = 1 then
          begin
            for i := 0 to numcrit - 2 do
              TIWUserSession(WebApplication.Data).LimMin[i] := WDPHEUR;
            /// /Realiza o teste de inconsistência ////
            inconsistencytest;
            /// Prossegue <=> Há solução viável ////
            if TIFS then
            begin
              if ((Problematica = 0) or (Problematica = 4)) and
                (TIWUserSession(WebApplication.Data).stage <> 3) then
                PLEscolha;
              if (Problematica = 1) and (TIWUserSession(WebApplication.Data)
                  .stage <> 3) then
                if ClpSolve then
                  LPsOrdenacao
                else
              begin
              TIWUserSession(WebApplication.Data).verfpl := false; // Booleana responsável por verificar se a PLordenacao foi rodada duas vezes considerando o parâmetro - YARA
              PLOrdenacao(0);
              end;
              if (Problematica = 2) and (TIWUserSession(WebApplication.Data)
                  .stage <> 3) then
                PLCBPortfolio;
              if (Problematica = 3) and (TIWUserSession(WebApplication.Data)
                  .stage <> 3) then
                PLClassificacao;
              NumQP := 1;
              // ** Armazenam as informações da pergunta atual antes de gerar a nova **//
              IA := IndiceA;
              IR := Indice;
              IB := IndiceB;
              consrealAnt := ConsReal;
              WDP1ant := WDP1;

              if TIWUserSession(WebApplication.Data).auxgoback <> -56231 then
              begin
                /// /////////// salvando pergunta da heurisca no BD ////////////
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 31;
                SalvarBDinter;
                /// ///////////////////////////////////////////////////////////
              end;
              TIWUserSession(WebApplication.Data).auxgoback := 0;
              Proximarel;
              Inversa;
              PlotaGraphic(TIWUserSession(WebApplication.Data).IndiceA,
                TIWUserSession(WebApplication.Data).IndiceB, TIWUserSession
                  (WebApplication.Data).ConsReal);
            end;
            /// / TIFS
            exit;
          end;

          /// Na fase 1 da Etapa 1 são realizadas duas perguntas para cada par de critérios ///
          case Fase of
            1:
              begin
                /// / Armazena as informações anteriores à pergunta ////
                for i := 0 to numcrit - 2 do
                begin
                  TIWUserSession(WebApplication.Data).LimMaxA[i] := LimMax[i];
                  TIWUserSession(WebApplication.Data).LimMinA[i] := LimMin[i];
                end;
                // ** Armazenam as informações da pergunta atual antes de gerar a nova **//
                IA := IndiceA;
                IR := Indice;
                IB := IndiceB;
                consrealAnt := ConsReal;
                WDP1ant := WDP1;
                /// //////////////////////////////////////////////////
                /// ////////////////////////////////////////////////////////////////////
                /// Verificando a resposta da pergunta ///
                case PAns of
                  0:
                    begin
                      LimMax[Indice] := WDP1;
                      // Atualizam-se os limites inferiores //
                      CalcLimMin;
                    end;
                  1:
                    begin
                      LimMin[Indice] := WDP1;
                    end;
                  2:
                    begin
                      LimMin[Indice] := WDP1;
                      LimMax[Indice] := WDP1;
                      // Atualizam-se os limites inferiores //
                      CalcLimMin;
                      /// /Realiza o teste de inconsistência ////
                      inconsistencytest;
                      /// Prossegue <=> Há solução viável ////
                      if TIFS then
                      begin
                        vtrrelacoesblin[Indice] := true;
                        Cri_Cong[Indice] := 1;
                        NumQP := 2;
                      end;
                    end;
                  3:
                    begin
                      vtrrelacoesblin[Indice] := true;
                      Cri_Cong[Indice] := 1;
                      NumQP := 1;
                      Proximarel;
                      Inversa;
                      PlotaGraphic(IndiceA, IndiceB, ConsReal);
                      exit;
                    end;
                end;
                /// ////////////////////////////////////////////////////////////////////
                /// /Realiza o teste de inconsistência ////
                if PAns < 2 then
                  inconsistencytest;
                /// Prossegue <=> Há solução viável ////
                if TIFS then
                begin
                  if NumQP = 2 then
                  begin
                    NumQP := 1;
                    Proximarel;
                  end
                  else
                    INC(NumQP);

                  Inversa;
                  if ((Problematica = 0) or (Problematica = 4)) then
                    PLEscolha;
                  if (TIWUserSession(WebApplication.Data).Problematica = 1) and
                    (TIWUserSession(WebApplication.Data).stage <> 3) then
                    if ClpSolve then
                      LPsOrdenacao
                    else
                  begin
                  TIWUserSession(WebApplication.Data).verfpl := false; // Booleana responsável por verificar se a PLordenacao foi rodada duas vezes considerando o parâmetro - YARA
                  PLOrdenacao(0);
                  end;
                  if (Problematica = 2) and
                    (TIWUserSession(WebApplication.Data).stage <> 3) then
                    PLCBPortfolio;
                  if (Problematica = 3) and
                    (TIWUserSession(WebApplication.Data).stage <> 3) then
                    PLClassificacao;
                  PlotaGraphic(IndiceA, IndiceB, ConsReal);
                end;
              end; // ** E1

            /// Na Etapa 1 Fase 2 realiza-se apenas uma pergunta para cada relação ///
            2:
              Begin
                /// ////////////////////////////////////////////////////////////////////
                // / Armazena as informações anteriores à pergunta ////
                for i := 0 to numcrit - 2 do
                begin
                  LimMaxA[i] := LimMax[i];
                  LimMinA[i] := LimMin[i];
                end;
                // ** Armazenam as informações da pergunta atual antes de gerar a nova **//
                IA := IndiceA;
                IR := Indice;
                IB := IndiceB;
                consrealAnt := ConsReal;
                WDP1ant := WDP1;
                /// //////////////////////////////////////////////////
                /// Verificando a resposta da pergunta ///
                case PAns of
                  0:
                    begin
                      LimMax[Indice] := WDP1;
                      CalcLimMin;
                    end;
                  1:
                    begin
                      LimMin[Indice] := WDP1;
                    end;
                  2:
                    begin
                      LimMin[Indice] := WDP1;
                      LimMax[Indice] := WDP1;
                      // Atualizam-se os limites inferiores //
                      /// /Realiza o teste de inconsistência ////
                      inconsistencytest;
                      /// Prossegue <=> Há solução viável ////
                      if TIFS then
                      begin
                        CalcLimMin;
                        Cri_Cong[Indice] := 1;
                        vtrrelacoesblin[Indice] := true;
                      end;
                    end;
                  3:
                    begin
                      vtrrelacoesblin[Indice] := true;
                      Proximarel;
                      Inversa;
                      PlotaGraphic(IndiceA, IndiceB, ConsReal);
                      exit;
                    end;
                end;
                /// ////////////////////////////////////////////////////////////////////
                /// /Realiza o teste de inconsistência ////
                if PAns < 2 then
                  inconsistencytest;
                /// Prossegue <=> Há solução viável ////
                if TIFS then
                begin
                  Proximarel;
                  Inversa;
                  if ((Problematica = 0) or (Problematica = 4)) then
                    PLEscolha;
                  if (TIWUserSession(WebApplication.Data).Problematica = 1) and
                    (TIWUserSession(WebApplication.Data).stage <> 3) then
                    if ClpSolve then
                      LPsOrdenacao
                    else
                  begin
                  TIWUserSession(WebApplication.Data).verfpl := false; // Booleana responsável por verificar se a PLordenacao foi rodada duas vezes considerando o parâmetro - YARA
                  PLOrdenacao(0);
                  end;
                  if (Problematica = 2) and
                    (TIWUserSession(WebApplication.Data).stage <> 3) then
                    PLCBPortfolio;
                  if (Problematica = 3) and
                    (TIWUserSession(WebApplication.Data).stage <> 3) then
                    PLClassificacao;
                  PlotaGraphic(IndiceA, IndiceB, ConsReal);
                end;

              End;
          end;

        End;
      /// Na etapa 2, apenas uma pergunta é feita para cada par de critérios e a ///
      /// relação da pergunta é definida com base naquela que possui a maior faixa ///
      /// ou seja, a maior diferença entre os lim min e max da relação. ///
      2:
        Begin
          if NumQuest = 1 then
          begin
            /// /Realiza o teste de inconsistência ////
            inconsistencytest;
            /// Prossegue <=> Há solução viável ////
            if TIFS = true then
            begin
              if ((Problematica = 0) or (Problematica = 4)) and
                (TIWUserSession(WebApplication.Data).stage <> 3) then
                PLEscolha;
              if (TIWUserSession(WebApplication.Data).Problematica = 1) and
                (TIWUserSession(WebApplication.Data).stage <> 3) then
                if ClpSolve then
                  LPsOrdenacao
                else
              begin
              TIWUserSession(WebApplication.Data).verfpl := false; // Booleana responsável por verificar se a PLordenacao foi rodada duas vezes considerando o parâmetro - YARA
              PLOrdenacao(0);
              end;
              if (Problematica = 2) and (TIWUserSession(WebApplication.Data)
                  .stage <> 3) then
                PLCBPortfolio;
              if (Problematica = 3) and (TIWUserSession(WebApplication.Data)
                  .stage <> 3) then
                PLClassificacao;

              // ** Armazenam as informações da pergunta atual antes de gerar a nova **//
              IA := IndiceA;
              IR := Indice;
              IB := IndiceB;
              TIWUserSession(WebApplication.Data).consrealAnt := ConsReal;
              WDP1ant := WDP1;
              /// //////////////////////////////////////////////////

              if TIWUserSession(WebApplication.Data).auxgoback <> -56231 then
              begin
                /// ////////salvando a pergunta da heuristica no BD ///////////////
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 31;
                SalvarBDinter;
                /// //////////////////////////////////////////////////////////////
              end;
              TIWUserSession(WebApplication.Data).auxgoback := 0;
              Proximarel;
              Inversa;
              PlotaGraphic(IndiceA, IndiceB, ConsReal);
            end;
            exit;
          end;
          /// ////////////////////////////////////////////////////////////////////
          /// / Armazena as informações anteriores à pergunta ////
          for i := 0 to numcrit - 2 do
          begin
            TIWUserSession(WebApplication.Data).LimMaxA[i] := LimMax[i];
            TIWUserSession(WebApplication.Data).LimMinA[i] := LimMin[i];
          end;
          // ** Armazenam as informações da pergunta atual antes de gerar a nova **//
          TIWUserSession(WebApplication.Data).IA := IndiceA;
          TIWUserSession(WebApplication.Data).IR := Indice;
          TIWUserSession(WebApplication.Data).IB := IndiceB;
          TIWUserSession(WebApplication.Data).consrealAnt := ConsReal;
          TIWUserSession(WebApplication.Data).WDP1ant := WDP1;
          /// //////////////////////////////////////////////////
          /// Verificando a resposta da pergunta ///
          case PAns of
            0:
              begin
                TIWUserSession(WebApplication.Data)
                  .LimMax[TIWUserSession(WebApplication.Data).Indice] :=
                  TIWUserSession(WebApplication.Data).WDP1;
                /// Se a pergunta da heurística tiver sido B, então atualiza-se ///
                /// Os limites inferiores. ///
                if HeurQuest = 1 then
                  CalcLimMin;
              end;
            1:
              begin
                LimMin[Indice] := WDP1;
                /// Se a pergunta da heurística tiver sido A, então atualiza-se ///
                /// Os limites superiores. ///
                if HeurQuest = 0 then
                  CalcLimMax;
              end;
            2:
              begin
                LimMin[Indice] := WDP1;
                LimMax[Indice] := WDP1;

                /// Se a pergunta da heurística tiver sido B, então atualiza-se ///
                /// Os limites inferiores. ///
                if HeurQuest = 1 then
                  CalcLimMin;
                /// Se a pergunta da heurística tiver sido A, então atualiza-se ///
                /// Os limites superiores. ///
                if HeurQuest = 0 then
                  CalcLimMax;
                /// /Realiza o teste de inconsistência ////
                inconsistencytest;
                /// Prossegue <=> Há solução viável ////
                if TIFS then
                begin
                  TIWUserSession(WebApplication.Data).vtrrelacoesblin[Indice]
                    := true;
                  Cri_Cong[Indice] := 1;
                end;
              end;
            3:
              begin
                vtrrelacoesblin[Indice] := true;
                Proximarel;
                Inversa;
                PlotaGraphic(IndiceA, IndiceB, ConsReal);
                exit;
              end;
          end;
          /// ////////////////////////////////////////////////////////////////////
          /// /Realiza o teste de inconsistência ////
          if PAns < 2 then
            inconsistencytest;
          /// Prossegue <=> Há solução viável ////
          if TIFS then
          begin
            Proximarel;
            Inversa;
            if ((Problematica = 0) or (Problematica = 4)) then
              PLEscolha;
            if (TIWUserSession(WebApplication.Data).Problematica = 1) and
              (TIWUserSession(WebApplication.Data).stage <> 3) then
              if ClpSolve then
                LPsOrdenacao
              else
            begin
            TIWUserSession(WebApplication.Data).verfpl := false; // Booleana responsável por verificar se a PLordenacao foi rodada duas vezes considerando o parâmetro - YARA
            PLOrdenacao(0);
            end;
            if (Problematica = 2) and
              (TIWUserSession(WebApplication.Data).stage <> 3) then
              PLCBPortfolio;
            if (Problematica = 3) and
              (TIWUserSession(WebApplication.Data).stage <> 3) then
              PLClassificacao;
            PlotaGraphic((TIWUserSession(WebApplication.Data).IndiceA),
              (TIWUserSession(WebApplication.Data).IndiceB),
              (TIWUserSession(WebApplication.Data).ConsReal));
          end; // tifs

        End; // **E2

      // ** Na etapa 3 são feitas perguntas para critérios não adjascentes **//
      3:
        Begin
          /// ////////////////////////////////////////////////////////////////////
          /// / Armazena as informações anteriores à pergunta ////
          for i := 0 to numcrit - 1 do
            for j := 0 to numcrit - 1 do
            begin
              MLimMaxA[i, j] := TIWUserSession(WebApplication.Data)
                .MLimMax[i, j];
              MLimMinA[i, j] := TIWUserSession(WebApplication.Data)
                .MLimMin[i, j];
            end;
          // ** Armazenam as informações da pergunta atual antes de gerar a nova **//
          IA := IndiceA;
          IR := Indice;
          IB := IndiceB;
          consrealAnt := ConsReal;
          WDP1ant := WDP1;
          /// //////////////////////////////////////////////////

          /// Verificando a resposta da pergunta ///
          case PAns of
            0:
              begin
                TIWUserSession(WebApplication.Data)
                  .MLimMax[TIWUserSession(WebApplication.Data).Indice, BIndex]
                  := TIWUserSession(WebApplication.Data).WDP1;
                Atualiza_limites_E3;
              end;
            1:
              begin
                MLimMin[Indice, BIndex] := WDP1;
                Atualiza_limites_E3;
              end;
            2:
              begin
                Atualiza_limites_E3;
                /// /Realiza o teste de inconsistência ////
                inconsistencytest;
                /// Prossegue <=> Há solução viável ////
                if TIFS then
                begin
                  TIWUserSession(WebApplication.Data)
                    .Mblindados[Indice, BIndex] := true;
                end;
              end;
            3:
              begin
                Mblindados[Indice, BIndex] := true;
                Proximarel;
                Inversa;
                PlotaGraphic(TIWUserSession(WebApplication.Data).IndiceA,
                  IndiceB, ConsReal);
                exit;
              end;
          end;
          /// ////////////////////////////////////////////////////////////////////

          /// /Realiza o teste de inconsistência ////
          if PAns < 2 then
            inconsistencytest;
          /// Prossegue <=> Há solução viável ////
          if TIFS then
          begin
            if (TIWUserSession(WebApplication.Data).Problematica = 0) then
              PLEscolha;
            if (TIWUserSession(WebApplication.Data).Problematica = 1) and
              (TIWUserSession(WebApplication.Data).stage <> 3) then
              if ClpSolve then
                LPsOrdenacao
              else
            begin
            TIWUserSession(WebApplication.Data).verfpl := false; // Booleana responsável por verificar se a PLordenacao foi rodada duas vezes considerando o parâmetro - YARA
            PLOrdenacao(0);
            end;
          end;
          // ** Só faz uma nova pergunta se for necessária **//
          if sol = -5 then
          begin
            /// Prossegue <=> Há solução viável ////
            if TIFS then
            begin
              if TADC then
                Testa_Faixa_Discreta;
              Proximarel;
              Inversa;
            end;
            PlotaGraphic(IndiceA, IndiceB, TIWUserSession(WebApplication.Data)
                .ConsReal);
          end;

        End; // **E3

      // ** Na etapa 4, são feitas perguntas para níveis intermédiários dos
      // ** Critérios discretos **//
      4:
        Begin
          /// ////////////////////////////////////////////////////////////////////
          /// / Armazena as informações anteriores à pergunta ////
          for i := 0 to numcrit - 2 do
          begin
            TIWUserSession(WebApplication.Data).LimMaxA[i] := LimMax[i];
            TIWUserSession(WebApplication.Data).LimMinA[i] := LimMin[i];
          end;
          // ** Armazenam as informações da pergunta atual antes de gerar a nova **//
          IA := IndiceA;
          IR := Indice;
          IB := IndiceB;
          consrealAnt := ConsReal;
          WDP1ant := WDP1;
          /// //////////////////////////////////////////////////
          /// Verificando a resposta da pergunta ///
          case PAns of
            0:
              begin
                TIWUserSession(WebApplication.Data)
                  .LimMax[TIWUserSession(WebApplication.Data).Indice] :=
                  TIWUserSession(WebApplication.Data).WDP1;
                /// Se a pergunta da heurística tiver sido B, então atualiza-se ///
                /// Os limites inferiores. ///
                if HeurQuest = 1 then
                  CalcLimMin;
              end;
            1:
              begin
                LimMin[Indice] := WDP1;
                /// Se a pergunta da heurística tiver sido A, então atualiza-se ///
                /// Os limites superiores. ///
                if HeurQuest = 0 then
                  CalcLimMax;
              end;
            2:
              begin
                TIWUserSession(WebApplication.Data).LimMin[Indice] := WDP1;
                TIWUserSession(WebApplication.Data).LimMax[Indice] := WDP1;

                /// Se a pergunta da heurística tiver sido B, então atualiza-se ///
                /// Os limites inferiores. ///
                if HeurQuest = 1 then
                  CalcLimMin;
                /// Se a pergunta da heurística tiver sido A, então atualiza-se ///
                /// Os limites superiores. ///
                if HeurQuest = 0 then
                  CalcLimMax;
                /// /Realiza o teste de inconsistência ////
                inconsistencytest;
                /// Prossegue <=> Há solução viável ////
                if TIFS then
                begin
                  NiveisIntermediarios[0] := false;
                  NiveisIntermediarios[1] := false;
                  NiveisIntermediarios[2] := false;
                end;
              end;
            3:
              begin
                NiveisIntermediarios[0] := false;
                NiveisIntermediarios[1] := false;
                NiveisIntermediarios[2] := false;
              end;
          end;
          /// ////////////////////////////////////////////////////////////////////
          /// /Realiza o teste de inconsistência ////
          if PAns < 2 then
            inconsistencytest;
          /// Prossegue <=> Há solução viável ////
          if TIFS then
          begin
            // ** Se as duas perguntas intermediárias já tiverem sido feitas,
            // ** passamos para o próximo par de critérios **//
            if (not TIWUserSession(WebApplication.Data).NiveisIntermediarios[0]
              ) and (not NiveisIntermediarios[1]) and
              (not TIWUserSession(WebApplication.Data).NiveisIntermediarios[2])
              then
            begin
              NextRelDisc := true;
              TIWUserSession(WebApplication.Data).DiscIntBlind[Indice] := true;
            end;

            { if (TIWUserSession(WebApplication.Data).Problematica = 0) then
              PLEscolha;
              if (TIWUserSession(WebApplication.Data).Problematica = 1) and
              (TIWUserSession(WebApplication.Data).stage <> 3) then
              if ClpSolve then
              LPsOrdenacao
              else
              PLOrdenacao;
              if (TIWUserSession(WebApplication.Data).Problematica = 2) and
              (TIWUserSession(WebApplication.Data).stage <> 3) then
              PLCBPortfolio;
              if (TIWUserSession(WebApplication.Data).Problematica = 3) and
              (TIWUserSession(WebApplication.Data).stage <> 3) then
              PLClassificacao; }
            // ** A realização de novas per
            if sol = -5 then
            begin
              // ** Caso devamos mudar de par de critérios **//
              if NextRelDisc then
                Proximarel;
              if sol = -5 then
              begin
                // ** Como nessa etapa só são feitas perguntas para critérios discretos,
                // ** Podemos chamar diretamente o procedimento que obtém a próxima
                // ** pergunta para critérios discretos **//
                // pegando informações anteriores para salvar no BD
                consrealAnt := ConsReal;
                WDP1ant := WDP1;
                ConsRealDisc;
                // ** Se chegarmos a este ponto e NRDTest ainda for verdadeira, significa
                // ** que esta etapa já acabou **//
                if not NRDTest then
                  PlotaGraphic(IndiceA, IndiceB, TIWUserSession
                      (WebApplication.Data).ConsReal);
              end;

              if (TIWUserSession(WebApplication.Data).Problematica = 0) then
                PLEscolha;
              if (TIWUserSession(WebApplication.Data).Problematica = 1) and
                (TIWUserSession(WebApplication.Data).stage <> 3) then
                if ClpSolve then
                  LPsOrdenacao
                else
              begin
              TIWUserSession(WebApplication.Data).verfpl := false; // Booleana responsável por verificar se a PLordenacao foi rodada duas vezes considerando o parâmetro - YARA
              PLOrdenacao(0);
              end;
              if (TIWUserSession(WebApplication.Data).Problematica = 2) and
                (TIWUserSession(WebApplication.Data).stage <> 3) then
                PLCBPortfolio;
              if (TIWUserSession(WebApplication.Data).Problematica = 3) and
                (TIWUserSession(WebApplication.Data).stage <> 3) then
                PLClassificacao;

              // salvar banco de dados na tabela current_stage
              TIWUserSession(WebApplication.Data).AuxsalvarBD := 14;
              SalvarBDinter;
            end; // -5

          end; // TIFS
        End; // ** E4

    end; // Case

  end; // With

end;

procedure Tfrmaintercriterio.English1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\User guide FITradeoff web' + '.pdf', true);
end;

Function Tfrmaintercriterio.trescasas(Num: Double): String;
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
  for i := 2 to Length(S) - 1 do
  begin
    if inicia = true then
      INC(k);
    if (S[i] = ',') or (S[i] = '.') then
      inicia := true;
  end;

  if k + 2 >= Length(formato) then
    Result := FormatFloat(formato, Num)
  else
    Result := S;
end;

/// FUNÇÃO REPONSAVEL POR REALIZAR O ARREDONDAMENTO DAS CONSEQUÊNCIAS 7
/// MOSTRADAS AO USUÁRIO - Yara
function Tfrmaintercriterio.Rounding(Value: Double): String;
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

  if (Copy(Result, Length(Result), 1) = 'K') or (Copy(Result, Length(Result), 1) = 'M') then
  IWLabel6.Visible := true;
  {else
  IWLabel6.Visible := false;}

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


Function Tfrmaintercriterio.TrocaVP(Num: Double): String;
var
  S: string;
  i: integer;
begin
  S := FloatToStr(Num);
  for i := 2 to Length(S) - 1 do
    if S[i] = ',' then
      S[i] := '.';

  Result := S;
end;

Function Tfrmaintercriterio.TrocaPV(Num: String): Double;
var
  S: string;
  i: integer;
begin
  S := Num;
  for i := 2 to Length(S) - 1 do
    if S[i] = '.' then
      S[i] := ',';

  Result := StrToFloat(S);
end;

procedure Tfrmaintercriterio.PLClassificacao;
var
  i, j, k, Nrest, a, b, z, II, JJ, c: integer; // Contadores
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

  // PEDRO - auxiliares para critério de parada
  auxValAltMax, auxValAltMin: Double;
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
  Setlength(MatCons, NumAlt, NumCri); // Matriz de cons normalizadas
  Setlength(Criorder, NumCri); // Ordem dos critérios
  Setlength(MatA, Numl, NumCri + 1); // Matriz com o modelo
  Setlength(Op, Numl - 1);
  Setlength(limit, Numl - 1);
  Setlength(Rmod, Numl - 1);
  Setlength(TIWUserSession(WebApplication.Data).VetPOA, NumAlt);
  // Vetor de alt potencialmente ótima
  Setlength(LimMax, NumCri - 1); // limites das relações entre os pesos
  Setlength(LimMin, NumCri - 1); // limites das relações entre os pesos
  Setlength(VetAH, NAH); // NAH setar como zero número de avaliações holísticas
  Setlength(OPAH, NAH);
  Setlength(FO, NumCri);
  Setlength(ResultVector, NumCri + 1);

  // PARA CLASSIFICAÇÃO (MOACIR 08.06.2021)
  Setlength(TIWUserSession(WebApplication.Data).ValAltMax, NumAlt);
  Setlength(TIWUserSession(WebApplication.Data).ValAltMin, NumAlt);
  TIWUserSession(WebApplication.Data).Alt_nao_classificadas := 0;

  for i := 0 to NumAlt - 1 do
    TIWUserSession(WebApplication.Data).VetPOA[i] := i;

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
      Setlength(VetAH[j], Length(MATAH[j]));
      for i := 0 to Length(MATAH[j]) - 1 do
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
  ///
  for i := a to a + NAH - 1 do
  begin
    /// Seleção ///
    for z := 2 to Length(VetAH[i - a]) - 1 do
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
        if VetAH[i - a, 1] < 0 then // Se a mlr alt for perfil
        begin
          // perfis[i] começa de zero
          MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), z], Criorder[j]]
            - TIWUserSession(WebApplication.Data)
            .perfis[-1 - VetAH[(i - a), 1]];
        end;
        if VetAH[i - a, 2] < 0 then // Se a pior alt for perfil
        begin
          MatA[Nrest + 1, j + 1] := TIWUserSession(WebApplication.Data)
            .perfis[-1 - VetAH[(i - a), 2]] - MatCons
            [VetAH[i - a, 1], Criorder[j]];
        end;
        if (VetAH[i - a, 2] >= 0) and (VetAH[i - a, 1] >= 0) then
        begin
          MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), z], Criorder[j]]
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

  // dirprob := 1;
  /// Problema de maximização ///
  // NumPOA := 0;

  { setando o tamanho do vetor de pesos na user session }
  Setlength(TIWUserSession(WebApplication.Data).VetPesosMax, NumAlt);
  Setlength(TIWUserSession(WebApplication.Data).VetPesosMin, NumAlt);
  for i := 0 to NumAlt - 1 do
  begin
    Setlength(TIWUserSession(WebApplication.Data).VetPesosMax[i], NumCri);
    Setlength(TIWUserSession(WebApplication.Data).VetPesosMin[i], NumCri);
  end;

  for k := 0 to NumAlt - 1 do
  begin
    b := a;

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
        TIWUserSession(WebApplication.Data).VetPesosMax[k, i] := ResultVector
          [i + 1];
      end;
    end;

    { salvando o valor maximo da alternativa }
    TIWUserSession(WebApplication.Data).ValAltMax[k] := ResultVector[0];

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
        TIWUserSession(WebApplication.Data).VetPesosMin[k, i] := ResultVector
          [i + 1];
      end;
    end;

    { salvando o valor mínimo da alternativa }
    TIWUserSession(WebApplication.Data).ValAltMin[k] := ResultVector[0];

    Nrest := a;
    Setlength(ResultVector, 0);
    Setlength(ResultVector, NumDV + 1);
  end;

  classificar(TIWUserSession(WebApplication.Data).ValAltMin, TIWUserSession
      (WebApplication.Data).ValAltMax);
  /// Critério de parada /////
  TIWUserSession(WebApplication.Data).solucao_encontrada := true;
  for i := 0 to NumAlt - 1 do
    with TIWUserSession(WebApplication.Data) do
      if TIWUserSession(WebApplication.Data).class_min[i] <> TIWUserSession
        (WebApplication.Data).class_max[i] then
      begin
        auxValAltMax := Round(ValAltMax[i] * 100) / 100;
        auxValAltMin := Round(ValAltMin[i] * 100) / 100;

        if auxValAltMax = auxValAltMin then
        begin
          if (auxValAltMax = TIWUserSession(WebApplication.Data)
              .perfis[class_max[i] - 1]) or
            (auxValAltMin = TIWUserSession(WebApplication.Data)
              .perfis[class_min[i] - 1]) then
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
      Setlength(class_final, Length(class_max));
      for i := 0 to Length(class_final) - 1 do
        class_final[i] := class_max[i];
      Setlength(ValAltMax_final, NumAlt);
      Setlength(ValAltMin_final, NumAlt);
      for i := 0 to NumAlt - 1 do
      begin
        ValAltMax_final[i] := ValAltMax[i];
        ValAltMin_final[i] := ValAltMin[i];
      end;
      BtnshowresultsClick(self);
    end;
    TIWUserSession(WebApplication.Data).sol := 12;
    // BtnshowresultsClick(self);
  end;

  if (TIWUserSession(WebApplication.Data).sol = 10) then
  begin
    // BtnshowresultsClick(self);
  end;
end;

procedure Tfrmaintercriterio.PLEscolha;
var
  i, j, k, Nrest, a, b, z, II, JJ, c: integer; // Contadores
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
  ResultVector: array of real;
  // typeprob determina se o problema é contínuo (typeprob = 0) ou binário (typeprob = 1).
  // No caso do fitradeoff, é sempre contínuo pois as constantes de escala são contínuas.
  // dirprob determina se o problema é de minimização (dirprob = 0) ou de maximização
  // (dirprob = 1), SF nos diz se houve solução viável.
  typeprob, dirprob, SF: integer;
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
  MinVK: Double;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////

  NumCri := TIWUserSession(WebApplication.Data).numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  NumPOA := TIWUserSession(WebApplication.Data).NDA;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  /// Se inicia o número de linhas da Matriz como um valor suficiete para as restrições
  /// da PL, novas linhas serão acrescentadas de acordo ao número de AH realizadas///
  Numl := 2 * (NumCri - 1) + 4 + (NumPOA - 1) + 2 * Length
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
      Setlength(VetAH[j], Length(MATAH[j]));
      for i := 0 to Length(MATAH[j]) - 1 do
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
      - 55:
        begin
          /// Exclusão ///
          /// / Incrementa o número de var de decisão /////////////////////////
          NumDV := NumDV + 2 * (Length(VetAH[i - a]) - 2);
          /// / Acrescentando espaço para as restrições //////////////////////
          Numl := Numl + 3 * (Length(VetAH[i - a]) - 2) + 1;
          Setlength(MatA, Numl, NumDV + 1);
          Setlength(Op, Numl - 1);
          Setlength(limit, Numl - 1);
          Setlength(Rmod, Numl - 1);
          /// ////////////////////////////////////////////////////////////////
          Setlength(AuxHEz, Length(VetAH[i - a]));
          for z := 2 to Length(VetAH[i - a]) - 1 do
          begin
            for j := 0 to NumCri - 1 do
            begin
              /// / restrições v(a) + z'' < v(b) transformada em <= /////////////////
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
              MatA[Nrest + 1, 0] := -0.000001;

              /// / restrições v(a) + z' > v(b) transformada em <= /////////////////e
              MatA[Nrest + 2, j + 1] := MatCons[VetAH[(i - a), 1], Criorder[j]]
                - MatCons[VetAH[i - a, z], Criorder[j]];
              MatA[Nrest + 2, 0] := -0.000001;
            end; // j

            AuxHEz[z] := NumCri + NRB + 1;
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

          for j := 0 to Length(AuxHEz) - 1 do
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
          for z := 2 to Length(VetAH[i - a]) - 1 do
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
                - MatCons[VetAH[i - a, z], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -Power(10, -5);
            Op[Nrest] := '<';
            INC(Nrest);
          end; // z
        end;

      2:
        begin
          /// Seleção ///
          for z := 2 to Length(VetAH[i - a]) - 1 do
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
              MatA[Nrest + 1, j + 1] := MatCons[VetAH[(i - a), z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -0.00001;
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
  for j := 0 to Length(var_bin) - 1 do
    var_bin[j] := NumCri + j;
  /// //////////////////////////////////////////////////////////////////////////
  a := Nrest;

  // ** Restrições das relações entre critérios não adjascentes **//
  with TIWUserSession(WebApplication.Data) do
  begin
    if Length(PergNAdj) > 0 then
    begin
      for i := a to a + Length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := TIWUserSession
          (WebApplication.Data).MLimMin[TIWUserSession(WebApplication.Data)
          .PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
      end;

      a := Nrest;

      for i := a to a + Length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := (-1) * TIWUserSession
          (WebApplication.Data).MLimMax[PergNAdj[i - a, 0], PergNAdj[i - a, 1]];
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

  /// Adicionando a Restrição da primeira perfunta da Elicitação Flexível ///
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

  for z := 0 to TIWUserSession(WebApplication.Data).NDA - 1 do
  begin
    k := VetPOA[z];
    b := a;

    /// Preenchendo as Restrições de Potencial Otimalidade ///
    /// transformando-a em uma restrição do tipo '<=' para seguir o padrão adotado no SAD ///
    for i := a to a + TIWUserSession(WebApplication.Data).NDA - 1 do
    begin
      if VetPOA[i - a] <> k then
      begin
        for j := 0 to NumCri - 1 do
          MatA[b + 1, j + 1] := MatCons[VetPOA[i - a], Criorder[j]] - MatCons
            [k, Criorder[j]];
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
      Setlength(TIWUserSession(WebApplication.Data).Sconst, NumCri);
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

        // ** Só é preciso solucionar o problema de minimização <=> a alternativa é POA **//
        // ** Além disso, as restrições e a FO é a mesma **//
        /// Problema de maximização ///
        { dirprob := 0;
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
  if NumPOA = 0 then
  begin
    TIWUserSession(WebApplication.Data).Epson := 0;
    PLEscolha;
    exit;
  end;

  TIWUserSession(WebApplication.Data).NDA := NumPOA;
  lblnda.Caption := intTostr(NumPOA);
  Setlength(VetPOA, NumPOA);
  for i := 0 to NumPOA - 1 do
    VetPOA[i] := TIWUserSession(WebApplication.Data).VetPOA[i];

  if TIWUserSession(WebApplication.Data).NDA = 1 then
  begin
    TIWUserSession(WebApplication.Data).sol := 0;
    // Solução encontrada (<> -5) cria a unit Resultados
    BtnshowresultsClick(self);
    // exit;
  end;
  // ** Controle dos componentes do teste de equivalencia **//
  if (NumPOA > 1) and (NumPOA <= 3) and (ep <> 0) then
  begin
    lbleqtest.Visible := true;
    lblmaxdif.Visible := true;
    GrdInd.Visible := true;
    //IWRegion12.Visible := true;
    {lbllegendDE.Visible := false;
    lstbxtco.Visible := false;}
  end
  else
  begin
    lbleqtest.Visible := false;
    lblmaxdif.Visible := false;
    GrdInd.Visible := false;
    // Yara IWRegion12.Visible := false;
  end;
  /// ///////////////////////////////////////////////////////////////////////////
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
    GrdInd.ColumnCount := 2;
    GrdInd.RowCount := (NumPOA) * (NumPOA - 1) + 1;
    if TIWUserSession(WebApplication.Data).Idioma = 1 then
    begin
      GrdInd.Cell[0, 0].Text := 'Entre';
      GrdInd.Cell[0, 1].Text := 'Max. Diferença';
    end
    else
    begin
      GrdInd.Cell[0, 0].Text := 'Between';
      GrdInd.Cell[0, 1].Text := 'Max. Difference';
    end;
    c := 0;
    for II := 0 to NumPOA - 1 do
      for JJ := II + 1 to NumPOA - 1 do
      begin
        /// ///////// Verifica a max diferença entre II - JJ////////////////////

        /// / Preenche a função objetivo ///////////////////////////////////////
        for k := 0 to NumCri - 1 do
          FO[k] := TrocaVP
            (MatCons[VetPOA[II], Criorder[k]] - MatCons[VetPOA[JJ], Criorder[k]]
            );
        /// / Caso hajam var binárias no problema, seus coef na FO devem ser 0 ////
        for i := NumCri to NumDV - 1 do
        begin
          FO[i] := '0';
        end;

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
        for k := 0 to NumCri - 1 do
          FO[k] := TrocaVP
            (MatCons[VetPOA[JJ], Criorder[k]] - MatCons[VetPOA[II], Criorder[k]]
            );
        /// / Caso hajam var binárias no problema, seus coef na FO devem ser 0 ////
        for i := NumCri to NumDV - 1 do
        begin
          FO[i] := '0';
        end;

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

        /// / Preenchendo o grid na tela da elicitação ///////////////////////////
        GrdInd.Cell[a, 0].Text := TIWUserSession(WebApplication.Data)
          .AltSiglas[VetPOA[II]] + '-' + TIWUserSession(WebApplication.Data)
          .AltSiglas[VetPOA[JJ]];
        GrdInd.Cell[a, 1].Text := FormatFloat('0.0000', MAXDI[II]); ;
        INC(a);
        GrdInd.Cell[a, 0].Text := TIWUserSession(WebApplication.Data)
          .AltSiglas[VetPOA[JJ]] + '-' + TIWUserSession(WebApplication.Data)
          .AltSiglas[VetPOA[II]];
        GrdInd.Cell[a, 1].Text := FormatFloat('0.0000', MAXDJ[II]); ;
        INC(a);

        /// / Deve-se considerar o módulo da máx diferença entre as alternativas ////�
        if MAXDI[II] < 0 then
          MAXDI[II] := -MAXDI[II];
        if MAXDJ[II] < 0 then
          MAXDJ[II] := -MAXDJ[II];

        if (MAXDI[II] <= ep) and (MAXDJ[II] <= ep) then
          INC(c);

      end; // for JJ

  end; // if numpoa

  // ** Se as POAS forem equivalentes, interrompe a elicitação **//
  if ((c = (NumPOA * NumPOA - NumPOA) / 2) or
      (TIWUserSession(WebApplication.Data).Epson = 0)) and
    (TIWUserSession(WebApplication.Data).sol = -5) then
  begin
    TIWUserSession(WebApplication.Data).sol := 1;
    // Solução encontrada (<> -5) cria a unit Resultados
    BtnshowresultsClick(self);
  end;

  if (TIWUserSession(WebApplication.Data).sol = 10) then
  begin
    // BtnshowresultsClick(self);

    with TIWUserSession(WebApplication.Data) do
      // ** Se existirem critérios discretos, inicia o processo pela elicitação em níveis intermediários **//
      if TADC then
      begin
        Etapa := 4;
        TIWUserSession(WebApplication.Data).sol := -5;
      end;
    { else
      Etapa := 3;
      Prepara_cri_nadj; }
  end;

  // salvar banco de dados na tabela problem
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 13;
  SalvarBDinter;

end;

procedure Tfrmaintercriterio.ConstruirMatrizgrupo;
var
  MatrizKS, MatrizParaPar, MatrizGrupos: Array of array of integer;
  DomCount, Grp, DomCountFiltered, IndicesOrdenados: array of integer;
  i, j, k, NAlt, a, b, c, grupo, temp: integer;
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
    Setlength(VAltPositionsO, NAlt);
    /// //////////// Resgata as relações de dominância par a par //////////////////
    for i := 0 to NumAlt - 1 do
      for j := 0 to NumAlt - 1 do
        MatrizParaPar[i, j] := ArmazenaParaPar[Ciclo - 1, i, j];
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

  /// Contabiliza o número de alt j que domina cada alt i
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
    k := MatrizKS[i, 1];
    for j := 0 to NAlt - 1 do
      if DomCount[j] = k then
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
  for k := 1 to grupo do
  begin
    a := 0;
    for i := NAlt - 1 downto 0 do
      if MatrizKS[i, NAlt + 4] = k then
        if MatrizKS[i, 2] <> 0 then
          for j := 0 to (MatrizKS[i, 2] - 1) do
          begin
            MatrizGrupos[k - 1, a + 1] := MatrizKS[i, j + 4];
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
      for j := 0 to Grp[i] do
        MatrizGrupo[i, j] := MatrizGrupos[i, j];
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
    c := 0;
    for j := 0 to Grp[i] - 1 do
    begin
      for k := j + 1 to Grp[i] - 1 do
      begin
        if MatrizParaPar[MatrizGrupos[i, j + 1], MatrizGrupos[i, k + 1]]
          = 2 then
        begin
          Setlength(MatInd[i], 2 * a + 2);
          MatInd[i, 2 * a] := MatrizGrupos[i, j + 1];
          MatInd[i, 2 * a + 1] := MatrizGrupos[i, k + 1];
          INC(a);
          Ind[MatrizGrupos[i, j + 1]] := true;
          Ind[MatrizGrupos[i, k + 1]] := true;
        end;
      end;
      if Ind[MatrizGrupos[i, j + 1]] = false then
      begin
        Setlength(Mat[i], b + 1);
        Mat[i, b] := MatrizGrupos[i, j + 1];
        INC(b);
      end
      else
        c := 0;
    end;
  end;
  b := 0;
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
      b := 0;
      if Length(MatInd[i]) > 0 then
        b := Round(Length(MatInd[i]) / 2);
      MatResultOrd[i, 0] := intTostr(i + 1);
      if Length(MatInd[i]) > 0 then
        MatResultOrd[i, 1] := '[' + NomeAlt[MatInd[i, 0]] + ', ' + NomeAlt
          [MatInd[i, 1]] + ']';
      for j := 1 to b - 1 do
      begin
        TIWUserSession(WebApplication.Data).MatResultOrd[i, 1] := MatResultOrd
          [i, 1] + '[' + NomeAlt[MatInd[i, 2 * j]] + ', ' + NomeAlt
          [MatInd[i, 2 * j + 1]] + ']';
      end;
    end;
    b := 0;
    /// ///Insere as demais aternativas de cada grupo na matriz que será/////
    /// utilizada para construir a tabela de resultados /////////////////////////
    for i := 0 to grupo - 1 do
    begin
      b := (Length(Mat[i]));
      MatResultOrd[i, 0] := intTostr(i + 1);
      if Length(Mat[i]) > 0 then
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + NomeAlt[Mat[i, 0]]
          + ']';
      for j := 1 to b - 1 do
      begin
        MatResultOrd[i, 1] := MatResultOrd[i, 1] + '[' + NomeAlt[Mat[i, j]]
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

procedure Tfrmaintercriterio.LPsOrdenacao;
var
  i, j, k, Nrest, a, b, c, z, II, JJ, DNrel, NumDV: integer; // Contadores
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
  ResultVector: array of real;
  FO: array of string;
  // typeprob determina se o problema é contínuo (typeprob = 0) ou binário (typeprob = 1).
  // No caso do fitradeoff, é sempre contínuo pois as constantes de escala são contínuas.
  // dirprob determina se o problema é de minimização (dirprob = 0) ou de maximização
  // (dirprob = 1), SF nos diz se houve solução viável.
  typeprob, dirprob, SF: integer;
  Op: array of string;
  limit: array of real;
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
  var_int, var_bin: Array of integer;
  MSSG: integer;
begin

  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
  /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
  /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
  /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
  if Length(TIWUserSession(WebApplication.Data).PergNAdj) > 0 then
    Numl := 2 * (NumCri - 1) + 4 + 2 * Length
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
      Setlength(VetAH[j], Length(TIWUserSession(WebApplication.Data).MATAH[j]));
      for i := 0 to Length(MATAH[j]) - 1 do
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
        maxDiff[i, j] := 0;
        if (TIWUserSession(WebApplication.Data).Ciclo <> 0) and
          (zeramatriz = false) then
          if ArmazenaParaPar[Ciclo - 1, i, j] <> 0 then
            MatrizParaPar[i, j] := TIWUserSession(WebApplication.Data)
              .ArmazenaParaPar[Ciclo - 1, i, j];
      end;
    end;
  // * Se a matriz já foi zerada, zeramatriz recebe false *//
  TIWUserSession(WebApplication.Data).zeramatriz := false;
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
          for z := 2 to Length(VetAH[i - a]) - 1 do
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
              MatA[i + 1, j + 1] := MatCons[VetAH[(i - a), z], Criorder[j]]
                - MatCons[VetAH[i - a, 1], Criorder[j]];
            end; // j
            MatA[Nrest + 1, 0] := -0.00001;
            Op[Nrest] := '<=';
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
    if Length(PergNAdj) > 0 then
    begin
      for i := a to a + Length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := MLimMin[PergNAdj[i - a, 0],
          PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
        INC(m1);
      end;

      a := Nrest;

      for i := a to a + Length(PergNAdj) - 1 do
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
  for j := 0 to NumCri - 1 do
    MatA[a + 1, j + 1] := 1;
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
    for j := 2 to NumCri do
      Rmod[i] := Rmod[i] + ' ' + TrocaVP(MatA[i + 1, j]);
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
          b := 0;
          for i := 1 to NumCri do
            if ResultVector[i] <> 0 then
              break
            else
              INC(b);

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
          b := 0;
          for i := 1 to NumCri do
            if ResultVector[i] <> 0 then
              break
            else
              INC(b);

          MaxDJI := 0;

          // Se obtem o valor da maxdif.
          MaxDJI := ResultVector[0];
        end; // end do if viavel = 1

        /// /////////// Limpando o vetor de resultados /////////////
        Setlength(ResultVector, 0);
        Setlength(ResultVector, NumCri + 1);
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
        if (Aux1 <= ep) and (Aux2 <= ep) then
        begin
          MatrizParaPar[II, JJ] := 2;
          MatrizParaPar[JJ, II] := 2;
          dominance := true;
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
            dominance := true;
          end;
          if (MaxDIJ <= 0.000001) and (MaxDJI > 0.000001) then
          begin
            MatrizParaPar[JJ, II] := 1;
            { for i := 0 to NumAlt - 1 do
              begin
              if MatrizParaPar[JJ, i] = 1 then
              MatrizParaPar[II, i] := 1;
              end; }
            dominance := true;
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
    TIWUserSession(WebApplication.Data).NDRl := b; ;
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    for i := 0 to NumAlt - 1 do
      for j := 0 to NumAlt - 1 do
        TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo, i, j] :=
          MatrizParaPar[i, j];

    INC(Ciclo);
    ConstruirMatrizgrupo;
    if NumRel >= (NumAlt * (NumAlt - 1)) / 2 then
    begin
      // Possíveis soluções
      if NumInd = 0 then
        sol := 3;
      if NumInd > 0 then
        sol := 2;

      // Solução encontrada (<> -5) cria a unit Resultados
      BtnshowresultsClick(self);
    end;
  end;

  if (TIWUserSession(WebApplication.Data).sol = 10) then
  begin
    // BtnshowresultsClick(self);
    with TIWUserSession(WebApplication.Data) do
      // ** Se existirem critérios discretos, inicia o processo pela elicitação em níveis intermediários **//
      if TADC then
      begin
        Etapa := 4;
        TIWUserSession(WebApplication.Data).sol := -5;
      end;
    { else
      Etapa := 3;
      Prepara_cri_nadj; }
  end;
  // salvar banco de dados na tabela dominance_matrix
  TIWUserSession(WebApplication.Data).AuxsalvarBD := 8;
  SalvarBDinter

end;

procedure Tfrmaintercriterio.PLOrdenacao(Valorep: real);
var
  i, j, k, Nrest, a, b, c, z, II, JJ, DNrel: integer; // Contadores
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
  G, ep, auxverf: Double;
  // VARIÁVEIS LP SOLVE
  // ResultVector armazena os resultados obtidos pelo LP Solve (a função máxima e
  // coeficientes das variáveis de decisão).
  // FO recebe os coeficientes das variáveis de decisão na função objetivo e será
  // usado no LP Solve.
  // Limit recebe os valores das constantes das restrições e será usado no LP Solve.
  // X armazena
  ResultVector: array of real;
  // typeprob determina se o problema é contínuo (typeprob = 0) ou binário (typeprob = 1).
  // No caso do fitradeoff, é sempre contínuo pois as constantes de escala são contínuas.
  // dirprob determina se o problema é de minimização (dirprob = 0) ou de maximização
  // (dirprob = 1), SF nos diz se houve solução viável.
  typeprob, dirprob, SF: integer;
  Op: array of string;
  limit: array of real;
  Rmod: array of AnsiString;
  Lp: THandle;
  S1: string;
  MatrizParaPar: Array of Array of integer; // Armazena as relações de dominÂncia par a par
  MaxDIJ, MaxDJI, MaxDIJaux, MaxDJIaux: Double; // Armazena a máxima diferença entre duas alternativas
  Aux1, Aux2: Double;
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
  teste1: boolean; //Verifica se uma solução foi encontrada sem circuito e considerando o ep
  begin
  /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
  MinVK := TIWUserSession(WebApplication.Data).MinVK;
  NumCri := TIWUserSession(WebApplication.Data).numcrit;
  NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
  NAH := TIWUserSession(WebApplication.Data).NumAH;
  ep := TIWUserSession(WebApplication.Data).epsilon;
  /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
  /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
  /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
  /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
  if Length(TIWUserSession(WebApplication.Data).PergNAdj) > 0 then
    Numl := 2 * (NumCri - 1) + NAH + 4 + 2 * Length
      (TIWUserSession(WebApplication.Data).PergNAdj)
  else
    Numl := 2 * (NumCri - 1) + NAH + 4;
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
      Setlength(VetAH[j], Length(TIWUserSession(WebApplication.Data).MATAH[j]));
      for i := 0 to Length(MATAH[j]) - 1 do
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
        maxDiff[i, j] := 0;
        if (TIWUserSession(WebApplication.Data).Ciclo <> 0) and
          (zeramatriz = false) then
          if TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo - 1, i, j] <> 0 then
            MatrizParaPar[i, j] := TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo - 1, i, j];
      end;
    end;
  // * Se a matriz já foi zerada, zeramatriz recebe false *//
  TIWUserSession(WebApplication.Data).zeramatriz := false;
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
          for z := 2 to Length(VetAH[i - a]) - 1 do
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
              MatA[i + 1, j + 1] := MatCons[VetAH[(i - a), z], Criorder[j]] - MatCons[VetAH[i - a, 1], Criorder[j]];
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
          MatA[a + 1, TIWUserSession(WebApplication.Data).IdAHeur + 1] := -TIWUserSession(WebApplication.Data).WDPHEUR;
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

  with TIWUserSession(WebApplication.Data) do
  begin
    if Length(PergNAdj) > 0 then
    begin
      for i := a to a + Length(PergNAdj) - 1 do
      begin
        MatA[i + 1, PergNAdj[i - a, 0] + 1] := MLimMin[PergNAdj[i - a, 0],
          PergNAdj[i - a, 1]];
        MatA[i + 1, PergNAdj[i - a, 1] + 1] := (-1) * 1;
        Op[i] := '<=';
        INC(Nrest);
        INC(m1);
      end;

      a := Nrest;

      for i := a to a + Length(PergNAdj) - 1 do
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
        dominance := false;
       { if II = 30 then
          MatB[i, j] := 0;      }
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
              Break
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
              Break
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
          Aux1 := StrToFloat(FormatFloat('0.000', -MaxDIJ))
        else
          Aux1 := StrToFloat(FormatFloat('0.000', MaxDIJ));
        if MaxDJI < 0 then
          Aux2 := StrToFloat(FormatFloat('0.000', -MaxDJI))
        else
          Aux2 := StrToFloat(FormatFloat('0.000', MaxDJI));

        /// /Se a máx diferença entre as alternativas forem menores que o limiar /////
        /// de indiferença, então as alt são indiferentes /////////////////////
        if (Aux1 <= valorep) and (Aux2 <= valorep) then
        begin
          MatrizParaPar[II, JJ] := 2;
          MatrizParaPar[JJ, II] := 2;
          dominance := true;
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
            dominance := true;
          end;
          if (MaxDIJaux <= valorep) and (MaxDJIaux >= valorep) then
          begin
            MatrizParaPar[JJ, II] := 1;
            { for i := 0 to NumAlt - 1 do
              begin
              if MatrizParaPar[JJ, i] = 1 then
              MatrizParaPar[II, i] := 1;
              end; }
            dominance := true;
          end;
        end;
        if dominance = false then
          with TIWUserSession(WebApplication.Data) do
          begin
            maxDiff[II, JJ] := StrToFloat(FormatFloat('0.000', MaxDIJ));
            maxDiff[JJ, II] := StrToFloat(FormatFloat('0.000', MaxDJI));
          end;
      end; // For II

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

  ///YARA - 21.11.2023
  /// Essa verificação é responsável por salvar a matrizparapar quando
  /// o valorep for = 0.
  /// Essa informação será utilizada após a verificação de circuito
  /// quando ao rodar a PL considerando o ep não haja solução
  IWGrid1.RowCount := NumAlt;
  IWGrid1.ColumnCount := NumAlt;
  if valorep = 0 then
  begin
    for i := 0 to NumAlt - 1 do
      for j := 0 to NumAlt - 1 do
        IWGrid1.Cell[j,i].Text := InttoStr(MatrizParaPar[i, j]);
  end;


  With TIWUserSession(WebApplication.Data) do
  begin
    TIWUserSession(WebApplication.Data).NumRel := b + Round(c / 2);
    NumInd := Round(c / 2);
    TIWUserSession(WebApplication.Data).NDRl := b; ;
  end;

  With TIWUserSession(WebApplication.Data) do
  begin
    ///YARA 21.11.23 - Está comentado pois a contrução da matriz
    /// é realizada após a verificação de circuito
    //////////////***////////////////
    {for i := 0 to NumAlt - 1 do
      for j := 0 to NumAlt - 1 do
        TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo, i, j] :=
          MatrizParaPar[i, j];
    INC(Ciclo);
    ConstruirMatrizgrupo;}

    if NumRel >= (NumAlt * (NumAlt - 1)) / 2 then
    begin
      // Possíveis soluções
      if NumInd = 0 then
        sol := 3;
      if NumInd > 0 then
        sol := 2;
      //BtnshowresultsClick(self); ///YARA 21.11.2023 Definição feita após a verificação de circuito
    end;

  /// Começa aqui a verificação do circuito
  /// Essa verificação só ocorre na segunda vez que roda-se a PL
  /// considerando o ep
  if (TIWUserSession(WebApplication.Data).verfpl = true) then
  begin
  //////////// Resgata as relações de dominância par a par //////////////////
      for i := 0 to NumAlt - 1 do
        for j := 0 to NumAlt - 1 do
          auxMatrizParaParlimiar[i, j] := MatrizParaPar[i, j];

      Setlength(DomCount, NumAlt);
      Setlength(Indices, NumAlt);
      // Inicialize DomCount, MatrizParaPar e Indices com os valores desejados

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
        TIWUserSession(WebApplication.Data).Achousol:= false;
        end;
        ZeroEnc := not TudoZero; // Define ZeroEnc com base na nova verificação
    end;
  end;  //With

  /// Caso a solução não seja encontrada considerando o valorep
  /// roda novamente a PL considerando o ep
  /// para isso o ep tem que <> de 0
  /// Ao rodar a PL considerando ep realiza-se a verificação do circuito
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

  /// Essa variável booleana é para impedir que rode a PL três vezes
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
          TIWUserSession(WebApplication.Data).AuxsalvarBD := 40;
          SalvarBDinter;
         end
         else
         begin
          for i := 0 to NumAlt - 1 do
          for j := 0 to NumAlt - 1 do
            MatrizParaPar[i, j] := Strtoint(IWGrid1.Cell[j,i].Text);
            TIWUserSession(WebApplication.Data).epsol:= 0;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 40;
            SalvarBDinter;
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

            // Solução encontrada (<> -5) cria a unit Resultados  - Yara
            BtnshowresultsClick(self);
          end;
        end;

  if (TIWUserSession(WebApplication.Data).sol = 10) then
  begin
    // BtnshowresultsClick(self);
    with TIWUserSession(WebApplication.Data) do
      // ** Se existirem critérios discretos, inicia o processo pela elicitação em níveis intermediários **//
      if TADC then
      begin
        Etapa := 4;
        TIWUserSession(WebApplication.Data).sol := -5;
      end;
      {else
        Etapa := 3;
    Prepara_cri_nadj; }
  end;

  // salvar banco de dados na tabela dominance_matrix
    if (Valorep = 0) and (TIWUserSession(WebApplication.Data).Achousol = false) then
    Begin
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 8;
    SalvarBDinter;
    End;

    if (TIWUserSession(WebApplication.Data).Achousol = true) then
    Begin
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 8;
    SalvarBDinter;
    End;
    // INICIO - PEDRO - 28/02/2024
  if (TIWUserSession(WebApplication.Data).sol = 3) or (TIWUserSession(WebApplication.Data).sol = 2) then
  TIWUserSession(WebApplication.Data).epsol:= valorep;
  // FIM - PEDRO - 28/02/2024
  TIWUserSession(WebApplication.Data).passouaqui:= true;
  end;
end;


  procedure Tfrmaintercriterio.PLCBPortfolio;
  var
    i, j, k, Nrest, a, b, c, z, II, JJ, DNrel: integer; // Contadores
    m1, m2, m3: integer;
    NumCri, NumAlt, Numl, NAH: integer;
    // Número de critérios,
    // num de alternativas, num de linhasna Matriz do Modelo de PL e número de restrições
    // provenientes de Avaliações holísticas, número de alternativas potencialmente ótimas
    MatA, MatCons: Array of Array of Double; // Matriz do Modelo de PL e Matriz de Consequências Normalizada
    Criorder: Array of integer; // Vetor que armazena a ordenação dos critérios
    LimMin, LimMax, FO, Ncost: Array of Double; // Vetores que armazenam os limites inferior e
    // Superior da relação entre os critérios
    VetAH: Array of Array of integer; // Matriz que armazena as informações das AH
    OPAH: Array of string; // Vetor que armazena o operador definido na relação estabelecida na AH
    G, ep, fmult: Double;
    // VARIÁVEIS LP SOLVE
    // ResultVector armazena os resultados obtidos pelo LP Solve (a função máxima e
    // coeficientes das variáveis de decisão).
    // FO recebe os coeficientes das variáveis de decisão na função objetivo e será
    // usado no LP Solve.
    // Limit recebe os valores das constantes das restrições e será usado no LP Solve.
    // X armazena
    ResultVector: array of real;
    // typeprob determina se o problema é contínuo (typeprob = 0) ou binário (typeprob = 1).
    // No caso do fitradeoff, é sempre contínuo pois as constantes de escala são contínuas.
    // dirprob determina se o problema é de minimização (dirprob = 0) ou de maximização
    // (dirprob = 1), SF nos diz se houve solução viável.
    typeprob, dirprob, SF: integer;
    Op: array of string;
    limit: array of real;
    Rmod: array of AnsiString;
    Lp: THandle;
    S1: string;
    MatrizParaPar: Array of Array of integer;
    // Armazena as relações de dominÂncia par a par
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
    // ** Matriz Auxiliar para computar os dados das holísticas **//
    ConseqHolística: Array of Array of Double;
    // ** Indica onde está o ponto de transição entre os projetos dos portfólios da holística **//
    PontoTrans: integer;
  begin

    /// ///////// Recebendo o valor das variáveis salvas na usersession /////////////
    MinVK := TIWUserSession(WebApplication.Data).MinVK;
    NumCri := TIWUserSession(WebApplication.Data).numcrit;
    NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
    NAH := TIWUserSession(WebApplication.Data).NumAH;
    ep := TIWUserSession(WebApplication.Data).epsilon;
    fmult := TIWUserSession(WebApplication.Data).fmult;
    /// O número de linhas na matriz do PPL equivale ao número de critérios - 1 (número ///////////
    /// de restrições do espaço de pesos, mais o número de restrições da avaliação //////////////
    /// holística, mais um da restrição da normalização dos pesos, mais um da função objetivo,//
    /// mais o número de restrições de potencial otimalidade.//////////////////////////////////
    Numl := 2 * (NumCri - 1) + NAH + 4;
    Setlength(MatrizParaPar, NumAlt, NumAlt);
    Setlength(MatCons, NumAlt, NumCri);
    Setlength(ConseqHolística, 2, NumCri);
    Setlength(Criorder, NumCri);
    Setlength(Ncost, NumAlt);
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
      Ncost[i] := TIWUserSession(WebApplication.Data).CostNorm[i];
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
        Setlength(VetAH[j], Length(MATAH[j]));
        for i := 0 to Length(MATAH[j]) - 1 do
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
          if (TIWUserSession(WebApplication.Data).Ciclo <> 0) and
            (zeramatriz = false) then
            if ArmazenaParaPar[Ciclo - 1, i, j] <> 0 then
              MatrizParaPar[i, j] := TIWUserSession(WebApplication.Data)
                .ArmazenaParaPar[Ciclo - 1, i, j];
        end;
      end;
    // * Se a matriz já foi zerada, zeramatriz recebe false *//
    TIWUserSession(WebApplication.Data).zeramatriz := false;
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
            for z := 2 to Length(VetAH[i - a]) - 1 do
            begin
              /// / Acrescentando espaço para as restrições ///////////////////////
              INC(Numl);
              Setlength(MatA, Numl, NumCri + 1);
              Setlength(Op, Numl - 1);
              Setlength(limit, Numl - 1);
              Setlength(Rmod, Numl - 1);

              // ** Limpa a MatrizAuxiliar **//
              for j := 0 to 2 - 1 do
                for k := 0 to NumCri - 1 do
                  ConseqHolística[j, k] := 0;

              // ** Indentificando onde acontece a transição dos projetos **//
              for j := 1 to Length(VetAH[(i - a)]) - 1 do
                if VetAH[(i - a), j] = -1 then
                begin
                  PontoTrans := j;
                  break;
                end;

              // ** Fazendo o somatório das consequências dos projetos **//
              // ** Portfólio selecionado **//
              for k := 0 to NumCri - 1 do
                for j := 1 to PontoTrans - 1 do
                  ConseqHolística[0, k] := ConseqHolística[0, k] + MatCons
                    [VetAH[(i - a), j], Criorder[k]];

              // ** Portfólio não-selecionado **//
              for k := 0 to NumCri - 1 do
                for j := PontoTrans + 1 to Length(VetAH[(i - a)]) - 1 do
                  ConseqHolística[1, k] := ConseqHolística[1, k] + MatCons
                    [VetAH[(i - a), j], Criorder[k]];
              /// /////////////////////////////////////////////////////////

              // ** Adicionando Restrição à PL ** //
              for j := 0 to NumCri - 1 do
                MatA[i + 1, j + 1] := ConseqHolística[1, j] - ConseqHolística
                  [0, j];

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
            MatA[a + 1, IdAHeur + 1] := -WDPHEUR;
            MatA[a + 1, IdBHeur + 1] := 1;
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
          if II = 30 then
            MatB[i, j] := 0;
          for i := 0 to 103 - 1 do
            for j := 0 to 103 - 1 do
              MatB[i, j] := 0;

          /// Preenchendo a função objetivo, onde as var de decisão são as constantes de ///
          /// escala e os coeficientes são as diferenças entre as consequências das//
          /// alternativa IJ normalizadas ///
          for i := 0 to NumCri - 1 do
          begin
            MatA[0, i + 1] := MatCons[II, Criorder[i]] / Ncost[II] - MatCons
              [JJ, Criorder[i]] / Ncost[JJ];
            MatB[1, i + 2] := MatCons[II, Criorder[i]] / Ncost[II] - MatCons
              [JJ, Criorder[i]] / Ncost[JJ];
            FO[i] := MatCons[II, Criorder[i]] / Ncost[II] - MatCons
              [JJ, Criorder[i]] / Ncost[JJ];
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
            MatA[0, i + 1] := MatCons[JJ, Criorder[i]] / Ncost[JJ] - MatCons
              [II, Criorder[i]] / Ncost[II];
            MatB[1, i + 2] := MatCons[JJ, Criorder[i]] / Ncost[JJ] - MatCons
              [II, Criorder[i]] / Ncost[II];
            FO[i] := MatCons[JJ, Criorder[i]] / Ncost[JJ] - MatCons
              [II, Criorder[i]] / Ncost[II];
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
          if (Aux1 < ep * fmult) and (Aux2 < ep * fmult) then
          begin
            MatrizParaPar[II, JJ] := 2;
            MatrizParaPar[JJ, II] := 2;
          end
          else
          begin
            /// / Caso contrário, utiliza-se a seguinte regra para verificar a///////
            /// relação de dominância//////////////////////////////////////////////
            if (MaxDIJ > 0.000001 * fmult) and (MaxDJI <= 0.000001 * fmult) then
            begin
              MatrizParaPar[II, JJ] := 1;
            end;
            if (MaxDIJ <= 0.000001 * fmult) and (MaxDJI > 0.000001 * fmult) then
            begin
              MatrizParaPar[JJ, II] := 1;
            end;
          end;
        end; // For II

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
      NumRel := b + Round(c / 2);
      NumInd := Round(c / 2);
      NDRl := b; ;
    end;

    With TIWUserSession(WebApplication.Data) do
    begin
      for i := 0 to NumAlt - 1 do
        for j := 0 to NumAlt - 1 do
        begin
          TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo, i, j] := 0;
          TIWUserSession(WebApplication.Data).ArmazenaParaPar[Ciclo, i, j] :=
            MatrizParaPar[i, j];
        end;

      INC(Ciclo);
      ConstruirMatrizgrupo;
      if NumRel >= (NumAlt * (NumAlt - 1)) / 2 then
      begin
        // Possíveis soluções
        if NumInd = 0 then
          sol := 3;
        if NumInd > 0 then
          sol := 2;

        // Solução encontrada (<> -5) cria a unit Resultados
        BtnshowresultsClick(self);
      end;
    end;

    if (TIWUserSession(WebApplication.Data).sol = 10) then
    begin
      // BtnshowresultsClick(self);
      with TIWUserSession(WebApplication.Data) do
        // ** Se existirem critérios discretos, inicia o processo pela elicitação em níveis intermediários **//
        if TADC then
        begin
          Etapa := 4;
          TIWUserSession(WebApplication.Data).sol := -5;
        end;
      { else
        Etapa := 3;
        Prepara_cri_nadj; }
    end;

    // salvar banco de dados na tabela dominance_matrix
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 8;
    SalvarBDinter
  end;

  procedure Tfrmaintercriterio.IWBtnmudarparaholisticaClick(Sender: TObject);
  var
    i: integer;
    numcrit: integer;
  begin
    IWRgncomparacaopareada.Visible := false;
    IWRgnavaliacaoholistica.Visible := true;
    btngerargraficoavholClick(self);
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, numcrit);

    for i := 0 to numcrit - 1 do
    begin
      TIWUserSession(WebApplication.Data).vtrposicoes[i] := 0;
    end;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
    SalvarBDinter;
    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).BDstatus := '0';
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
    SalvarBDinter;

  end;

  procedure Tfrmaintercriterio.IWBtnmudarpareadaClick(Sender: TObject);

  var
    i, numcrit: integer;
    vtrcritinverso: array of string;
    indice1: integer; // relacionado a posição que vai sendo modificada dos critérios do primeiro gráfico da comparação pareda
    indice2: integer; // relacionado a posição que vai sendo modificada dos critérios do segundo gráfico da comparação pareada
    respanterior: integer; // a reposta anterior da pergunta de comparação pareada o se for A e 1 se for B
    numalocado: integer; // indica o número de critérios que já foram alocados pela avaliação pareada no vtrposições, já inicia com 2
    vtrnomecrit: array of string; // vai receber C1,C2...
    posicrit: integer; // armazena a posição dos critérios no vetor de preferencia
    auxvtrnomecrit: array of string; // vai receber o nome dos criterios
  begin
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(vtrnomecrit, numcrit);
    Setlength(auxvtrnomecrit, numcrit);
    Setlength(vtrcritinverso, numcrit);
    IWRgncomparacaopareada.Visible := true;
    IWRgnavaliacaoholistica.Visible := false;
    IWBtnstep22.Enabled := false;
    btnrestartPC.Enabled := false;
    respanterior := 0; // resposta
    indice1 := 0; // inicializa com o valor da posição do critério 1
    indice2 := 1; // inicializa com o valor da posição do critério 2
    numalocado := 2; // inicializa com dois critérios já sendo alocados no primeiro clique do  OK na avaliação pareada
    posicrit := 0;

    IWButton2.Enabled := true;

    // preenchendo o vetor com o nome do critério de C1 até Cn
    for i := 0 to numcrit - 1 do
    begin
      vtrnomecrit[i] := 'C' + intTostr(i + 1);
      auxvtrnomecrit[i] := TIWUserSession(WebApplication.Data).NomeCrit[i];
    end;

    // inverter a ordem do vetor com os nomes dos criterios
    for i := 0 to numcrit - 1 do
    begin
      vtrcritinverso[i] := vtrnomecrit[numcrit - 1 - i];
    end;

    // inserir os nomes dos critérios no listbox da legenda
    for i := 0 to numcrit - 1 do
    begin
      IWListbox4.Items.Insert(i, vtrnomecrit[i] + '-' + auxvtrnomecrit[i]);
    end;

    // preenchimento do chart 1

    IWImage5.Visible := true; // torna o componente IWImage visivel
    Chart1.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart1.BottomAxis.Visible := true; // torna o eixo x visível
    Chart1.leftAxis.Visible := false; // torna o eixo y visível
    Chart1.RightAxis.Items.clear; // limpando os valores dos eixos para não se sobrepor
    Chart1.BottomAxis.Items.Add(4, 'Worst'); // adicionando o nome worst no eixo y do pior critério
    Chart1.BottomAxis.Items.Add(100, 'Best'); // adicionando o nome best no eixo y do melhor cirtério
    // Chart1.Title.Text.Add('Consequence A'); // coloca o titulo do gráfico

    /// // Condição para fonte dos "marks" mudar de tamanho a partir de 26 criterios///////
    for i := 0 to numcrit - 1 do
    begin
      if ((numcrit <= 25)) then
      begin
        Chart1.Series[1].Marks.Font.Size := 8;
        Chart1.Series[0].Marks.Font.Size := 8;
      end;
    end;
    /// /////////////////////////////////////////////

    for i := 0 to numcrit - 1 do
    begin
      Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
      // adicionando os nomes das contantes no eixo x
      if i = numcrit - 1 then
      begin
        Chart1.Series[0].AddXY(100, i, 'B' + intTostr(numcrit - i)
            + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
      end
      else
      begin
        Chart1.Series[0].AddXY(100, i, 'B' + intTostr(numcrit - i)
            + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
        Chart1.Series[1].AddXY(4, i, 'W' + intTostr(numcrit - i)
            + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Wconseqord[numcrit - 1 - i]), clwebRED);
      end;
    end;
    IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage5.Width,
          IWImage5.Height)));


    // preenchendo tchart 2

    IWImage4.Visible := true; // torna o componente IWImage visivel
    Chart2.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart2.BottomAxis.Visible := true; // torna o eixo x visível
    Chart2.leftAxis.Visible := true; // torna o eixo y visível
    Chart2.RightAxis.Items.clear; // limpando os valores dos eixos para não se sobrepor
    Chart2.BottomAxis.Items.Add(4, 'Worst'); // adicionando o nome worst no eixo y do pior critério
    Chart2.BottomAxis.Items.Add(100, 'Best'); // adicionando o nome best no eixo y do melhor cirtério
    // Chart2.Title.Text.Add('Consequence B'); // coloca o titulo do gráfico

    /// // Condição para fonte dos "marks" mudar de tamanho a partir de 26 criterios///////
    for i := 0 to numcrit - 1 do
    begin
      if ((numcrit <= 25)) then
      begin
        Chart2.Series[1].Marks.Font.Size := 8;
        Chart2.Series[0].Marks.Font.Size := 8;
      end;
    end;
    /// /////////////////////////////////////////////

    for i := 0 to numcrit - 1 do
    begin
      Chart2.leftAxis.Items.Add(i, vtrcritinverso[i]);
      // adicionando os nomes das contantes no eixo x
      if i = numcrit - 2 then
      begin
        Chart2.Series[0].AddXY(100, i, 'B' + intTostr(numcrit - i)
            + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
      end
      else
      begin
        Chart2.Series[0].AddXY(100, i, 'B' + intTostr(numcrit - i)
            + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
        Chart2.Series[1].AddXY(4, i, 'W' + intTostr(numcrit - i)
            + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Wconseqord[numcrit - 1 - i]), clwebRED);
      end;
    end;
    IWImage4.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (Chart2.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage4.Width,
          IWImage4.Height)));

    TIWUserSession(WebApplication.Data).indice1 := indice1;
    TIWUserSession(WebApplication.Data).indice2 := indice2;
    TIWUserSession(WebApplication.Data).respanterior := respanterior;
    TIWUserSession(WebApplication.Data).numalocado := numalocado;
    TIWUserSession(WebApplication.Data).posicrit := posicrit;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
    SalvarBDinter;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).BDstatus := '0';
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
    SalvarBDinter;

  end;

  Procedure Tfrmaintercriterio.PlotaGraphic(IndiceA, IndiceB: integer;
    DesenpenhoReal: Double);
  var
    i, NumCri, regcenter, regcenter1, regcenter2, regcenter3, j, y, l: integer;
    vordem1: array of integer; //
    teste: integer;
    CMin, Cmax: array of real; //
    barraazul, Fat: real;
    Aux1, Aux2, wt, wt1, bt1, bt: string;
    Bconseq, Wconseq: array of real; // vetores atribuídos para fazer diferenciação entre critérios de maximização e minimização
  begin
    //lstbxtco.clear;
    rdgrppreference.Items.Clear;

    with TIWUserSession(WebApplication.Data) do
    begin
      NumCri := numcrit;
    StrDInd:= vtrordem[IndiceA];
    StrDIndA:= Rounding(ConsReal);
    StrDIndA2:= Rounding(Bconseqord[vtrordem[IndiceA]]);
    StrDIndA1:= Rounding(Wconseqord[vtrordem[IndiceA]]);
    StrDInd:= vtrordem[IndiceB];
    StrDIndB:= Rounding(Wconseqord[vtrordem[IndiceB]]);
    StrDIndB1:= Rounding(Bconseqord[vtrordem[IndiceB]]);
      rdgrppreference.Items.Add('Consequence A: Value ' + StrDIndA + ' for ' +  NomeCrit[vtrordem[IndiceA]] + ' with value ' + StrDIndB + ' for ' + NomeCrit[vtrordem[IndiceB]]);
      rdgrppreference.Items.Add('Consequence B: Value ' + StrDIndA1 + ' for ' +  NomeCrit[vtrordem[IndiceA]] + ' with value ' + StrDIndB1 + ' for ' + NomeCrit[vtrordem[IndiceB]]);
      rdgrppreference.Items.Add('Indifferent between Consequence A and Consequence B');
      rdgrppreference.Items.Add('No answer for this question');
    if (Copy(StrDIndA, Length(StrDIndA), 1) = 'K') or (Copy(StrDIndA, Length(StrDIndA), 1) = 'M') or
    (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'K') or (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'M') or
    (Copy(StrDIndB, Length(StrDIndB), 1) = 'K') or (Copy(StrDIndB, Length(StrDIndB), 1) = 'M') or
    (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'K') or (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'M') then
    begin
    IWLabel7.visible := true;
    end
    else
    IWLabel7.visible := false;


      edtconsA.Caption := StrDIndA;
      edtconsB.Caption := StrDIndA1;
      IWedit3.Caption := StrDIndA;  //Inconsistência
      IWedit7.Caption := StrDIndA1; //Inconsistência
      IWEdit1.Text := NomeCrit[vtrordem[IndiceA]];
      IWEdit5.Text := NomeCrit[vtrordem[IndiceA]]; //Inconsistência
      edtcrit1.Caption := Critsiglas[vtrordem[IndiceA]] + ' (⬆)';
      IWEdit9.Caption := Critsiglas[vtrordem[IndiceA]]; //Inconsistência
      //IWEdit3.Caption := Critsiglas[vtrordem[IndiceA]];
      IWEdit1.Width := ((Length(NomeCrit[vtrordem[IndiceA]])*10) + 30);
      IWEdit5.Width := ((Length(NomeCrit[vtrordem[IndiceA]])*10) + 30); //Inconsistência
      regcenter := rgnviewtab.Left + (rgnviewtab.Width div 2);
      regcenter2 := rgnincostab.Left + (rgnincostab.Width div 2); //Inconsistência
      IWEdit1.Left := regcenter - (IWEdit1.Width div 2);
      IWEdit5.Left := regcenter2 - (IWEdit5.Width div 2);
      edtconsA.Left := IWEdit1.Left - edtconsA.Width - 5;
      edtconsB.Left := IWEdit1.Left + IWEdit1.Width + 5;
      IWedit3.Left := IWEdit5.Left - IWedit3.Width - 5; //Inconsistência
      IWedit7.Left := IWEdit5.Left + IWEdit5.Width + 5; //Inconsistência
      edtconsA1.Caption := StrDIndB;
      edtconsB1.Caption := StrDIndB1;
      IWedit4.Caption := StrDIndB; //Inconsistência
      IWedit8.Caption := StrDIndB1; //Inconsistência
      IWEdit2.Text := (NomeCrit[vtrordem[IndiceB]]);
      IWEdit6.Text := (NomeCrit[vtrordem[IndiceB]]); //Inconsistência
      edtcrit2.Caption := Critsiglas[vtrordem[IndiceB]] + ' (⬆)';
      IWedit10.Caption := Critsiglas[vtrordem[IndiceB]];
      //IWEdit4.Caption := Critsiglas[vtrordem[IndiceB]];
      IWEdit2.Width := ((Length(NomeCrit[vtrordem[IndiceB]])*10) + 30);
      IWEdit6.Width := ((Length(NomeCrit[vtrordem[IndiceB]])*10) + 30); //Inconsistência
      regcenter1 := rgnviewtab.Left + (rgnviewtab.Width div 2);
      regcenter2 := rgnincostab.Left + (rgnincostab.Width div 2); //Inconsistência
      IWEdit2.Left := regcenter1 - (IWEdit2.Width div 2);
      IWEdit6.Left := regcenter2 - (IWEdit6.Width div 2); //Inconsistência
      edtconsA1.Left := IWEdit2.Left - edtconsA1.Width - 5;
      edtconsB1.Left := IWEdit2.Left + IWEdit2.Width + 5;//(edtconsB1.Width div 2);
      IWedit4.Left := IWEdit6.Left - IWedit4.Width - 5; //Inconsistência
      IWedit8.Left := IWEdit6.Left + IWEdit6.Width + 5; //Inconsistência

        for i := 0 to numcrit - 1 do
        begin
        if i = IndiceA then
        begin
        if (Typeofcrit[vtrordem[i]] = 0) or
        (Typeofcrit[vtrordem[i]] = 2) then
        begin
        edtconsA.Caption := StrDIndA;
        edtconsB.Caption := StrDIndA1;
        IWedit3.Caption := StrDIndA;
        IWedit7.Caption := StrDIndA1;
        edtcrit1.Caption := Critsiglas[vtrordem[IndiceA]] + ' (⬇)';
        end;
        end;
        end;

          for i := 0 to numcrit - 1 do
        begin
        if i = IndiceB then
        begin
        if (Typeofcrit[vtrordem[i]] = 0) or
        (Typeofcrit[vtrordem[i]] = 2) then
        begin
        edtconsA1.Caption := StrDIndB;
        edtconsB1.Caption := StrDIndB1;
        IWedit4.Caption := StrDIndB;
        IWedit8.Caption := StrDIndB1;
        edtcrit2.Caption := Critsiglas[vtrordem[IndiceB]] + ' (⬇)';
        end;
        end;
        end;
    end;



    if TIWUserSession(WebApplication.Data).Idioma = 1 then
    begin
      wt := 'Pior';
      bt := 'Melhor';
      wt1 := 'P';
      bt1 := 'M';
    end
    else
    begin
      wt := 'Worst';
      bt := 'Best';
      wt1 := 'W';
      bt1 := 'B';
    end;

    Setlength(vordem1, NumCri);
    Setlength(CMin, NumCri);
    Setlength(Cmax, NumCri);
    Setlength(Bconseq, NumCri);
    Setlength(Wconseq, NumCri);

    with TIWUserSession(WebApplication.Data) do
    begin
      for i := 0 to NumCri - 1 do
      begin
        Cmax[i] := Maxcons[i];
        CMin[i] := Mincons[i];
        vordem1[i] := TIWUserSession(WebApplication.Data).vtrordem[i];
        if (Typeofcrit[i] = 1) or (Typeofcrit[i] = 3) then

        begin
          Bconseq[i] := Cmax[i];
          Wconseq[i] := CMin[i];
        end;
        if (Typeofcrit[i] = 0) or (Typeofcrit[i] = 2) then

        begin
          Bconseq[i] := CMin[i];
          Wconseq[i] := Cmax[i];
        end;
      end;


    if TIWUserSession(WebApplication.Data).Etapa <> 4 then
    begin

   ChartA.leftAxis.Visible := false;
   ChartA.RightAxis.Items.clear;
   ChartA.leftAxis.Items.clear;
   ChartA.SeriesList.ClearValues;
   ChartA.Title.clear;

   ChartC.BottomAxis.Visible := false;
   ChartC.RightAxis.Items.clear;
   ChartC.leftAxis.Items.clear;
   ChartC.BottomAxis.Items.clear;
   ChartC.SeriesList.ClearValues;
   ChartC.Title.clear;
  intra_razao;
  /// // Condição para fonte dos "marks" mudar de tamanho a partir de 26 criterios///////
  for i := 0 to NumCri - 1 do
  begin
    if ((NumCri <= 25)) then
    begin
      ChartA.Series[1].Marks.Font.Size := 8;
      ChartA.Series[0].Marks.Font.Size := 8;
      ChartC.Series[1].Marks.Font.Size := 8;
      ChartC.Series[0].Marks.Font.Size := 8;
    end;
  end;
  /// /////////////////////////////////////////////

  for i := 0 to NumCri - 1 do
  begin
    if i = TIWUserSession(WebApplication.Data).IndiceA then // constroi as barras da ultimo até a primeira
    begin
      //ChartA.Series[1].AddXY(i, 50, ' ', clwebWHITE);
      //ChartA.Series[1].Marks.Item[i].visible := false;

        barraazul := TIWUserSession(WebApplication.Data).WDP1;
        //(DesenpenhoReal/((Cmin[vordem1[IndiceA]]) + (Cmax[vordem1[IndiceA]])) + 0.2);

        if barraazul = 0 then
          barraazul := 0.03;

            if TIWUserSession(WebApplication.Data).valor_razao[vtrordem[IndiceA]] = 0 then
            valor_razao[vtrordem[IndiceA]] := 0.03
            else
            TIWUserSession(WebApplication.Data).valor_razao[vtrordem[IndiceA]] := valor_razao[vtrordem[IndiceA]];

        ChartA.Series[0].AddXY(0, barraazul, '(' + 'X' + intTostr(IndiceA + 1)
            + '):' + StrDIndA, clWebdarkBLUE);
        ChartA.LeftAxis.Maximum:= 1; //testando
        ChartA.LeftAxis.AutomaticMaximum:=false;
        ChartA.LeftAxis.Minimum:= 0;

         if (Typeofcrit[vtrordem[IndiceA]] = 0) or
        (Typeofcrit[vtrordem[IndiceA]] = 2) then
        ChartA.Series[0].Legend.Text := NomeCrit[vtrordem[IndiceA]] + ' (⬇)';

        if (Typeofcrit[vtrordem[IndiceA]] = 1) or
        (Typeofcrit[vtrordem[IndiceA]] = 3) then
        ChartA.Series[0].Legend.Text := NomeCrit[vtrordem[IndiceA]] + ' (⬆)';

        ChartA.Series[0].Color := clwebdarkblue;


        ChartC.Series[0].AddXY((barraazul + 0.2), 0, '(' + 'X' + intTostr(IndiceA + 1)
            + '):' + StrDIndA, clWebdarkBLUE);
        ChartC.LeftAxis.Maximum:= 1.5;
        ChartC.LeftAxis.AutomaticMaximum:=false;
        ChartC.LeftAxis.Minimum:= 0;
      end;
    end;

      for l := 0 to NumCri - 1 do
      begin
        if l = TIWUserSession(WebApplication.Data).IndiceB  then
        begin
            if valor_razao[vtrordem[IndiceB]] = 0 then
            valor_razao[vtrordem[IndiceB]] := 0.03
            else
            valor_razao[vtrordem[IndiceB]] := valor_razao[vtrordem[IndiceB]];
        if (Typeofcrit[vtrordem[IndiceB]] = 0) or
        (Typeofcrit[vtrordem[IndiceB]] = 2) then
        begin
           ChartA.Series[1].AddXY(0, 1, '(' + wt1 + intTostr(IndiceB + 1)
              + '):' + StrDIndB, clwebred);
           ChartA.Series[1].Marks.Item[l].Visible := false;
           edvis3.visible := true;
            edvis3.Text := '(' + wt1 + intTostr(IndiceB + 1)
              + '):' + StrDIndB;
           IWEdit13.visible := true;
           IWEdit13.Text := '(' + wt1 + intTostr(IndiceB + 1)
              + '):' + StrDIndB;
           ChartA.Series[1].Legend.Text := NomeCrit[vtrordem[IndiceB]] + ' (⬇)';
        end;

        if (Typeofcrit[vtrordem[IndiceB]] = 1) or
        (Typeofcrit[vtrordem[IndiceB]] = 3) then
        begin
           ChartA.Series[1].AddXY(0, valor_razao[vtrordem[IndiceB]], '(' + wt1 + intTostr(IndiceB + 1)
              + '):' + StrDIndB, clwebred);
           ChartA.Series[1].Marks.Item[l].Visible := true;
           edvis3.visible := false;
           IWEdit13.visible := false;
           ChartA.Series[1].Legend.Text := NomeCrit[vtrordem[IndiceB]] + ' (⬆)';
        end;


           ChartA.Series[1].Color := clRed;

        if (Typeofcrit[vtrordem[IndiceB]] = 0) or
        (Typeofcrit[vtrordem[IndiceB]] = 2) then
       begin
       ChartC.Series[1].AddXY(1.5, 0, '(' + wt1 + intTostr(IndiceB + 1)
        + '):' + StrDIndB, clwebred);
       ChartC.Series[1].Marks.Item[IndiceB].Visible := false;
       edvis2.visible := true;
         edvis2.Text := '(' + wt1 + intTostr(IndiceB + 1)
              + '):' + StrDIndB;
       IWedit11.visible := true;
         IWedit11.Text := '(' + wt1 + intTostr(IndiceB + 1)
              + '):' + StrDIndB;
        end;

        if (Typeofcrit[vtrordem[IndiceB]] = 1) or
        (Typeofcrit[vtrordem[IndiceB]] = 3) then
        begin
          ChartC.Series[1].AddXY(valor_razao[vtrordem[IndiceB]], 0, '(' + wt1 + intTostr(IndiceB + 1)
              + '):' + StrDIndB, clwebred);
          ChartC.Series[1].Marks.Item[l].Visible := true;
        edvis2.visible := false;
        IWedit11.visible := false;
        end;

    end;
  end;


  IWImage30.Picture.Bitmap.Assign
    (ChartA.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage30.Width,
        IWImage30.Height)));
  IWImage20.Picture.Bitmap.Assign
    (ChartC.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage20.Width,
        IWImage20.Height)));
  // print do gráfico (para web)

 ChartB.leftAxis.Visible := false;
 ChartB.RightAxis.Items.clear;
 ChartB.leftAxis.Items.clear;
 ChartB.SeriesList.ClearValues;
 ChartB.Title.clear;

 ChartD.leftAxis.Visible := false;
 ChartD.RightAxis.Items.clear;
 ChartD.leftAxis.Items.clear;
 ChartD.SeriesList.ClearValues;
 ChartD.Title.clear;
 intra_razao;
  /// // Condição para fonte dos "marks" mudar de tamanho a partir de 26 criterios///////
  for i := 0 to NumCri - 1 do
  begin
    if ((NumCri <= 25)) then
    begin
      ChartB.Series[1].Marks.Font.Size := 8;
      ChartB.Series[0].Marks.Font.Size := 8;
      ChartD.Series[1].Marks.Font.Size := 8;
      ChartD.Series[0].Marks.Font.Size := 8;
    end;
  end;
  /// /////////////////////////////////////////////

  for i := 0 to NumCri - 1 do
  begin
    if i = TIWUserSession(WebApplication.Data).IndiceB then
    begin
    if valor_razao[vtrordem[IndiceB]] = 0 then
            valor_razao[vtrordem[IndiceB]] := 0.03
            else
            valor_razao[vtrordem[IndiceB]] := valor_razao[vtrordem[IndiceB]];

         if (Typeofcrit[vtrordem[IndiceB]] = 1) or
        (Typeofcrit[vtrordem[IndiceB]] = 3) then
        begin
          ChartB.Series[1].AddXY(0, 1, '(' + bt1 + intTostr(IndiceB +1)
              + '):' + StrDIndB1, clwebdarkblue);
          ChartB.Series[1].Legend.Text := NomeCrit[vtrordem[IndiceB]] + ' (⬆)';
        end;

          if (Typeofcrit[vtrordem[IndiceB]] = 0) or
        (Typeofcrit[vtrordem[IndiceB]] = 2) then
        begin
        ChartB.Series[1].AddXY(0, valor_razao[vtrordem[IndiceB]], '(' + bt1 + intTostr(IndiceB +1)
              + '):' + StrDIndB1, clwebdarkblue);
        ChartB.Series[1].Legend.Text := NomeCrit[vtrordem[IndiceB]] + ' (⬇)';
        end;

          ChartB.Series[1].Marks.Item[i].Visible := false;
          ChartB.Series[1].Color := clwebdarkblue;

          ChartB.LeftAxis.Maximum:= 1;
          ChartB.LeftAxis.AutomaticMaximum:=false;
          ChartB.LeftAxis.Minimum:= 0;

          ChartD.rightAxis.Maximum:= 1;
          ChartD.rightAxis.AutomaticMaximum:=false;
          ChartD.rightAxis.Minimum:= 0;

           if (Typeofcrit[vtrordem[IndiceB]] = 1) or
        (Typeofcrit[vtrordem[IndiceB]] = 3) then
          ChartD.Series[1].AddXY(1, 0, '(' + bt1 + intTostr(IndiceB +1)
              + '):' + StrDIndB1, clwebdarkblue);
          ChartD.Series[1].Marks.Item[i].Visible := false;

         if (Typeofcrit[vtrordem[IndiceB]] = 0) or
        (Typeofcrit[vtrordem[IndiceB]] = 2) then
        ChartD.Series[1].AddXY(valor_razao[vtrordem[IndiceB]], 0, '(' + bt1 + intTostr(IndiceB +1)
              + '):' + StrDIndB1, clwebdarkblue);

      end;
    end;

    for i := 0 to NumCri - 1 do
      begin
      if i = IndiceA then
        begin
     if valor_razao[vtrordem[IndiceA]] = 0 then
            valor_razao[vtrordem[IndiceA]] := 0.03
            else
            valor_razao[vtrordem[IndiceA]] := valor_razao[vtrordem[IndiceA]];

     if (Typeofcrit[vtrordem[IndiceA]] = 0) or
        (Typeofcrit[vtrordem[IndiceA]] = 2) then
     begin
     ChartB.Series[0].AddXY(0, 1, '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + StrDIndA1, clwebRED);
     ChartB.Series[0].Marks.Item[i].Visible := false;
     edtvis1.Visible := true;
     edtvis1.Text := '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + StrDIndA1;
     IWEdit14.Visible := true;
     IWEdit14.Text := '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + StrDIndA1;
     ChartB.Series[0].Legend.Text := NomeCrit[vtrordem[IndiceA]] + ' (⬇)';
     end;

     if (Typeofcrit[vtrordem[IndiceA]] = 1) or
        (Typeofcrit[vtrordem[IndiceA]] = 3) then
        begin
     ChartB.Series[0].AddXY(0, TIWUserSession(WebApplication.Data)
          .valor_razao[vtrordem[IndiceA]], '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + StrDIndA1, clwebRED);
      ChartB.Series[0].Marks.Item[i].Visible := true;
     edtvis1.Visible := false;
     IWEdit14.Visible := false;
     ChartB.Series[0].Legend.Text := NomeCrit[vtrordem[IndiceA]] + ' (⬆)';
        end;

         ChartB.Series[0].Color := clRed;

        ChartD.Series[0].Marks.Item[i].Visible := true;

        if (Typeofcrit[vtrordem[IndiceA]] = 0) or
        (Typeofcrit[vtrordem[IndiceA]] = 2) then
        begin
        ChartD.Series[0].AddXY(1, 0, '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + StrDIndA1, clwebRED);
        ChartD.Series[0].Marks.Item[i].Visible := false;
        edtvis.Visible := true;
        edtvis.Text := '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + StrDIndA1;
        IWEdit12.Visible := true;
        IWEdit12.Text := '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + StrDIndA1;
        end;


        if (Typeofcrit[vtrordem[IndiceA]] = 1) or
        (Typeofcrit[vtrordem[IndiceA]] = 3) then
        begin
        ChartD.Series[0].AddXY(valor_razao[vtrordem[IndiceA]], 0, '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + StrDIndA1, clwebRED);
        edtvis.Visible := false;
        IWEdit12.Visible := false;
        end;
    end;
  end;



      {lstbxtco.Items.Add(trescasas(DesenpenhoReal) + ' of ' + TIWUserSession
          (WebApplication.Data).CritSiglas[vordem1[TIWUserSession
          (WebApplication.Data).IndiceA]] + ' - ' + TIWUserSession
          (WebApplication.Data).NomeCrit[vordem1[TIWUserSession
          (WebApplication.Data).IndiceA]]);
      lstbxtco.Items.Add
        (trescasas(Bconseq[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]
          ) + ' of ' + TIWUserSession(WebApplication.Data)
          .CritSiglas[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]
          + ' - ' + TIWUserSession(WebApplication.Data)
          .NomeCrit[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]);
      lstbxtco.Font.FontName := 'Verdana';
      lstbxtco.Font.Size := 10;
      lstbxtco.Font.Style := [fsBold];}

      IWImage29.Picture.Bitmap.Assign
        (ChartB.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage29.Width,
            IWImage29.Height)));
      IWImage18.Picture.Bitmap.Assign
    (ChartD.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage18.Width,
        IWImage18.Height)));
      // print do gráfico (para web)
      IWRgnstep2.Refresh;
    end
    else
    begin
      //lstbxtco.clear;
      rdgrppreference.Items.Clear;
      Prepara_Disc_Int;
      /// ////////////////** Inicializando os Charts **///////////////////////////
      chrtCDA.BottomAxis.Items.clear;
      chrtCDA.leftAxis.Items.clear;
      chrtCDA.SeriesList.ClearValues;
      chrtCDA.BottomAxis.Items.Automatic := false;

      chrtCDB.BottomAxis.Items.clear;
      chrtCDB.leftAxis.Items.clear;
      chrtCDB.SeriesList.ClearValues;
      chrtCDB.BottomAxis.Items.Automatic := false;
      with TIWUserSession(WebApplication.Data) do
      begin
        teste := (TIWUserSession(WebApplication.Data).Niveis[TIWUserSession
            (WebApplication.Data).vtrordem[IndiceA]] - 1);
        if teste <= 0 then
          teste := 1;
        chrtCDA.leftAxis.Increment := 1 / teste; // (Niveis[TIWUserSession(WebApplication.Data).vtrordem[IndiceA]] - 1);
        chrtCDB.leftAxis.Increment := 1 / teste; // (TIWUserSession(WebApplication.Data).Niveis[vtrordem[IndiceA]] - 1);
        Fat := 1 / (Niveis[vtrordem[IndiceA]] - 1);
        for i := 0 to (Niveis[vtrordem[TIWUserSession(WebApplication.Data)
            .IndiceA]] - 1) do
        begin
          if i = 0 then
            barraazul := 0.03
          else
            barraazul := i / (Niveis[vtrordem[IndiceA]] - 1);
          if (Typeofcrit[vtrordem[IndiceA]] = 3) then
          begin
            chrtCDA.leftAxis.Items.Add(barraazul, intTostr(i + 1));
            chrtCDB.leftAxis.Items.Add(barraazul, intTostr(i + 1));
          end
          else
          begin
            chrtCDA.leftAxis.Items.Add
              (barraazul, intTostr(Niveis[vtrordem[IndiceA]] - i));
            chrtCDB.leftAxis.Items.Add
              (barraazul, intTostr(Niveis[vtrordem[IndiceA]] - i));
          end;
        end;

      end;

      chrtCDA.BottomAxis.Items.Add(0, TIWUserSession(WebApplication.Data)
          .CritSiglas[vordem1[IndiceA]]);
      chrtCDB.BottomAxis.Items.Add(0, TIWUserSession(WebApplication.Data)
          .CritSiglas[vordem1[IndiceA]]);
      chrtCDA.BottomAxis.Items.Add(1, TIWUserSession(WebApplication.Data)
          .CritSiglas[vordem1[IndiceB]]);
      chrtCDB.BottomAxis.Items.Add(1, TIWUserSession(WebApplication.Data)
          .CritSiglas[vordem1[IndiceB]]);
      /// ////////////////////////////////////////////////////////////////////////
      /// /////////////// ** Séries Brancas **////////////////////////////////////
      chrtCDA.Series[0].AddXY(0, 1, '(' + bt1 + intTostr(IndiceA + 1)
          + '):' + trescasas(Bconseq[vordem1[IndiceA]]), clwebWHITE);
      TIWUserSession(WebApplication.Data).StrDInd := TIWUserSession
        (WebApplication.Data).vtrordem[IndiceB];
      chrtCDA.Series[0].AddXY(1, 1, '(' + bt1 + intTostr(IndiceB + 1)
          + '):' + trescasas(Bconseq[vordem1[IndiceB]]), clwebWHITE);
      chrtCDB.Series[0].AddXY(0, 1, '(' + bt1 + intTostr(IndiceA + 1)
          + '):' + trescasas(Bconseq[vordem1[IndiceA]]), clwebWHITE);
      TIWUserSession(WebApplication.Data).StrDInd := TIWUserSession
        (WebApplication.Data).vtrordem[IndiceB];
      chrtCDB.Series[0].AddXY(1, 1, '(' + bt1 + intTostr(IndiceB + 1)
          + '):' + trescasas(Bconseq[vordem1[IndiceB]]), clwebWHITE);
      /// ////////////////////////////////////////////////////////////////////////
      /// ////////////////////** Barras Vermelhas **///////////////////////////////
      TIWUserSession(WebApplication.Data).StrDInd := TIWUserSession
        (WebApplication.Data).vtrordem[IndiceB];
      chrtCDA.Series[1].AddXY(1, 0.03, '(' + wt1 + intTostr(IndiceB + 1)
          + '):' + trescasas(Wconseq[vordem1[IndiceB]]), clwebRED);
      chrtCDB.Series[1].AddXY(0, 0.03, '(' + wt1 + intTostr(IndiceA + 1)
          + '):' + trescasas(Wconseq[vordem1[IndiceA]]), clwebRED);
      /// ////////////////////////////////////////////////////////////////////////
      /// //////////////////////** Barra Verde **/////////////////////////////////
      TIWUserSession(WebApplication.Data).StrDInd := TIWUserSession
        (WebApplication.Data).vtrordem[IndiceB];
      chrtCDB.Series[1].AddXY(1, 1, '(' + bt1 + intTostr(IndiceB + 1)
          + '):' + trescasas(Bconseq[vordem1[IndiceB]]), clwebdarkGREEN);
      /// ////////////////////////////////////////////////////////////////////////
      /// //////////////////////** Barra Azul **//////////////////////////////////
      With TIWUserSession(WebApplication.Data) do
        if (Typeofcrit[vtrordem[IndiceA]] = 3) then
          barraazul := Fat * (TIWUserSession(WebApplication.Data).VMinG - 1)
        else
          barraazul := Fat * (Niveis[vtrordem[IndiceA]] - TIWUserSession
              (WebApplication.Data).VMinG);
      if barraazul = 0 then
        barraazul := 0.03;

      chrtCDA.Series[3].AddXY(0, barraazul, '', clWebdarkBLUE);

      With TIWUserSession(WebApplication.Data) do
        if (Typeofcrit[vtrordem[IndiceA]] = 3) then
          barraazul := Fat * (DesenpenhoReal - 1)
        else
          barraazul := Fat * (Niveis[vtrordem[IndiceA]] - DesenpenhoReal);
      chrtCDA.Series[2].AddXY(0, barraazul, '(X' + intTostr(IndiceA + 1)
          + '):' + trescasas(DesenpenhoReal));
      /// ////////////////////////////////////////////////////////////////////////
      /// //////////////////** Tirando print do gráfico **/////////////////////////

      {lstbxtco.Items.Add(trescasas(DesenpenhoReal) + ' of ' + TIWUserSession
          (WebApplication.Data).CritSiglas[vordem1[TIWUserSession
          (WebApplication.Data).IndiceA]] + ' - ' + TIWUserSession
          (WebApplication.Data).NomeCrit[vordem1[TIWUserSession
          (WebApplication.Data).IndiceA]]);
      lstbxtco.Items.Add
        (trescasas(Bconseq[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]
          ) + ' of ' + TIWUserSession(WebApplication.Data)
          .CritSiglas[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]
          + ' - ' + TIWUserSession(WebApplication.Data)
          .NomeCrit[vordem1[TIWUserSession(WebApplication.Data).IndiceB]]);
      lstbxtco.Font.FontName := 'Verdana';
      lstbxtco.Font.Size := 10;
      lstbxtco.Font.Style := [fsBold];}

      ImgCADP.Picture.Bitmap.Assign
        (chrtCDA.TeeCreateBitmap(clWebAQUA, rect(0, 0, ImgCADP.Width,
            ImgCADP.Height)));
      ImgCBDP.Picture.Bitmap.Assign
        (chrtCDB.TeeCreateBitmap(clWebAQUA, rect(0, 0, ImgCBDP.Width,
            ImgCBDP.Height)));
      // ** Mando o Print também para o gráfico das inconsistências para **//
      // ** não ter de recriá-lo, deixa mais eficiente o processo**//
      imgincADisc.Picture.Bitmap.Assign
        (chrtCDA.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgincADisc.Width,
            imgincADisc.Height)));
      imgincBDisc.Picture.Bitmap.Assign
        (chrtCDB.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgincBDisc.Width,
            imgincBDisc.Height)));

    with TIWUserSession(WebApplication.Data) do
    begin
    NumCri := numcrit;
    StrDInd:= vtrordem[IndiceA];
    StrDIndA:= Rounding(ConsReal);
    StrDIndA1:= Rounding(Wconseqord[vtrordem[IndiceA]]);
    StrDInd:= vtrordem[IndiceB];
    StrDIndB:= Rounding(Wconseqord[vtrordem[IndiceB]]);
    StrDIndB1:= Rounding(Bconseqord[vtrordem[IndiceB]]);
      rdgrppreference.Items.Add('Consequence A: Value ' + StrDIndA + ' for ' +  NomeCrit[vtrordem[IndiceA]] + ' with value ' + StrDIndB + ' for ' + NomeCrit[vtrordem[IndiceB]]);
      rdgrppreference.Items.Add('Consequence B: Value ' + StrDIndA1 + ' for ' +  NomeCrit[vtrordem[IndiceA]] + ' with value ' + StrDIndB1 + ' for ' + NomeCrit[vtrordem[IndiceB]]);
      rdgrppreference.Items.Add('Indifferent between Consequence A and Consequence B');
      rdgrppreference.Items.Add('No answer for this question');
    if (Copy(StrDIndA, Length(StrDIndA), 1) = 'K') or (Copy(StrDIndA, Length(StrDIndA), 1) = 'M') or
    (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'K') or (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'M') or
    (Copy(StrDIndB, Length(StrDIndB), 1) = 'K') or (Copy(StrDIndB, Length(StrDIndB), 1) = 'M') or
    (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'K') or (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'M') then
    begin
    IWLabel7.visible := true;
    end
    else
    IWLabel7.visible := false;
    end;
      /// ////////////////////////////////////////////////////////////////////////

      with TIWUserSession(WebApplication.Data) do
      begin
        if Idioma = 1 then
        begin
          lblCDP.Caption :=
            'Em análises anteriores você disse que para um desempenho X = ' +
            intTostr(VMinG) + ' no critério ' + CritSiglas[vtrordem[IndiceA]] +
            ', você prefere consequencia B. Considerando o seguinte cenário,';
          lblCDPW.Caption := 'Qual consequência você prefere?';
          lnkchangeE3.Caption :=
            'Mudar para elicitação de critérios não adjacentes';
        end
        else
        begin
          lblCDP.Caption :=
            'In previous evaluations you have said that for a performance X = '
            + intTostr(VMinG) + ' in the criterion ' + CritSiglas
            [vtrordem[IndiceA]] +
            ', you prefere consequence B. Considering the following scenário,';
          lblCDPW.Caption := 'Which consequence do you prefer?';
          lnkchangeE3.Caption :=
            'Change to elicitation of non-adjacent criteria';
        end;
      end;
    end;
  end;
  end;


  procedure Tfrmaintercriterio.Portuguese1Click(Sender: TObject);
  begin
    WebApplication.SendFile(
      'C:\inetpub\fitradeoff\Images\Guia Rápido Fitradeoff - PT-BR' + '.pdf', true);
  end;

  procedure Tfrmaintercriterio.IWBtnstep2Click(Sender: TObject);
  var
    i, numcrit, a, k, j, b, c: integer;
    aux: array of integer;
  begin
    numcrit := TIWUserSession(WebApplication.Data).numcrit;

    for a := 0 to Length(TIWUserSession(WebApplication.Data).auxnomeblin) - 1 do
    begin
      for i := 0 to IWListboxcriteriosordenados.Items.Count - 1 do
      begin
        if TIWUserSession(WebApplication.Data).auxnomeblin[a] =
          IWListboxcriteriosordenados.Items[i] then
        begin
          TIWUserSession(WebApplication.Data).vtrblin[i] := true;
        end;

      end;
    end;

    a := -10000;
    // Limpa o vetor de relações blindadas //
    for i := 0 to numcrit - 1 - 1 do
      TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] := false;
    // identifica quantas posições existem no ranking
    for i := 0 to Length(TIWUserSession(WebApplication.Data).vtrposicoes) - 1 do
      if TIWUserSession(WebApplication.Data).vtrposicoes[i] > a then
        a := TIWUserSession(WebApplication.Data).vtrposicoes[i];
    Setlength(TIWUserSession(WebApplication.Data).Representantes, a);
    if a = numcrit then
    begin
      for i := 0 to a - 1 do
        TIWUserSession(WebApplication.Data).Representantes[i] := i;
    end // if
    else
    begin
      j := 0;
      for k := 0 to a - 1 do
      begin

        b := 0;
        // verifica quantos critérios ocupam a posição k
        for i := 0 to Length(TIWUserSession(WebApplication.Data).vtrposicoes)
          - 1 do
          if TIWUserSession(WebApplication.Data).vtrposicoes[i] = (k + 1) then
            INC(b);
        c := 0;

        while c < b do
        begin
          // Verifica se o critério j é o representante
          if TIWUserSession(WebApplication.Data).vtrblin[j] = false then
            TIWUserSession(WebApplication.Data).Representantes[k] := j;
          // Blinda a relação dos critérios indiferentes e seta os limites
          if (b > 1) and (c < b - 1) then
          begin
            TIWUserSession(WebApplication.Data).vtrrelacoesblin[j] := true;
            TIWUserSession(WebApplication.Data).LimMin[j] := 1;
            TIWUserSession(WebApplication.Data).LimMax[j] := 1;
            TIWUserSession(WebApplication.Data).LimMinA[j] := 1;
            TIWUserSession(WebApplication.Data).LimMaxA[j] := 1;
          end;
          INC(c);
          INC(j);
        end; // While
      end; // k
    end; // else

    Setlength(aux, numcrit);
    { for i := 0 to numcrit - 1 do
      begin
      a := TIWUserSession(WebApplication.Data).vtrordem[i];
      lstbxtco.Items.Add(TIWUserSession(WebApplication.Data).CritSiglas[i] + ' - ' + TIWUserSession(WebApplication.Data).NomeCrit[a]);
      end; }
    MatrizFaixaDisc;
    // Normaliza;

    // Verifia se o DM irá realizar a elicitação de perfis p/ classificação
    if (TIWUserSession(WebApplication.Data).elicitarperfis) and
      (TIWUserSession(WebApplication.Data).Problematica = 3) then
    begin
      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 14;
      SalvarBDinter;
      TfrmPerfis.Create(WebApplication).show;
      IWRgnavaliacaoholistica.Visible := false;
    end
    else

    begin

      EFp;
      With TIWUserSession(WebApplication.Data) do
        if (Problematica = 0) or (Problematica = 4) then
        begin
          lblnda.Text := intTostr(NDA);
          lblnbra.Text :=
            'The number of potentially optimal alternatives at this point is '
            + intTostr(TIWUserSession(WebApplication.Data).NDA);
          lblnbra.Visible := true;
        end;
      // prob = 0
      if (TIWUserSession(WebApplication.Data).Problematica = 1) or
        (TIWUserSession(WebApplication.Data).Problematica = 2) then
      begin
        lblnpoa.Text := 'Number of levels:';
        lblnmbl.Text :=
          'The number of ranking positions at this point is ' + intTostr
          (TIWUserSession(WebApplication.Data).Rlevels);
        lblnpoa.Left := 143;
        lblnmbl.Visible := true;
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).Rlevels);
        lbleqtest.Visible := false;
        lblmaxdif.Visible := false;
        GrdInd.Visible := false;
        // Yara IWRegion12.Visible := false;
      end;
      if TIWUserSession(WebApplication.Data).Problematica = 3 then
      begin
        // PLClassificacao;
        lblnpoa.Text := 'Number of unsorted alternatives:';
        lblnpoa.Left := 37;
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data)
            .Alt_nao_classificadas);
        lbleqtest.Visible := false;
        lblmaxdif.Visible := false;
        GrdInd.Visible := false;
        // Yara IWRegion12.Visible := false;
      end;
      IWRgnavaliacaoholistica.Visible := false;

      // ** Se a Prob for Choice ou Ranking o DM escolhe entre HExDCM na tela **//
      { With TIWUserSession(WebApplication.Data) do
        if (TIWUserSession(WebApplication.Data).Problematica = 1) or
        ((Problematica = 0) or (Problematica = 4)) then
        begin
        IWRgnstep2.Visible := false;
        rgnHExED.Visible := true;
        end
        else
        IWRgnstep2.Visible := true;
        end; }
      BtnshowresultsClick(self);
      if TIWUserSession(WebApplication.Data).mudadata = -3254 then
      begin
        // salvar banco de dados na tabela problem
        TIWUserSession(WebApplication.Data).AuxsalvarBD := 30;
        SalvarBDinter;
        TIWUserSession(WebApplication.Data).mudadata := 0;
      end;
      TIWUserSession(WebApplication.Data).estagio := 3;
      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 7;
      SalvarBDinter;
      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
      SalvarBDinter;
      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
      SalvarBDinter;

      // salvar banco de dados na tabela current_stage
      TIWUserSession(WebApplication.Data).BDstatus := '0';
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
      SalvarBDinter;

      // salvar banco de dados na tabela current_stage
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 12;
      SalvarBDinter;

      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 22;
      SalvarBDinter;

      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 24;
      SalvarBDinter;

      // salvar banco de dados na tabela current_stage
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
      SalvarBDinter;

      // Salvando no BD o tipo_ord na planilha problem
      TIWUserSession(WebApplication.Data).auxtipoord := 0;
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 28;
      SalvarBDinter;

    end;
  end;
  // end;   //do with usersession de paolla

  procedure Tfrmaintercriterio.btnResetNovoProblemaClick(Sender: TObject);
  begin
    TIWUserSession(WebApplication.Data).passouaqui := false;  // Yara - Usado na PL de ordenação para garantir que rodou duas vezes
    TIWUserSession(WebApplication.Data).heuristica := false;
    Setlength(TIWUserSession(WebApplication.Data).vetorgrafico, 0);
    Setlength(TIWUserSession(WebApplication.Data).vordem, 0);
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, 0);

    /// preenchendo label da rgn Opçao input, que mostra qual modulo está rodando
    if TIWUserSession(WebApplication.Data).Problematica = 2 then
      TFrmEntrada.Create(WebApplication).lblproblematic1.Caption :=
        'Portfolio BC';

    if TIWUserSession(WebApplication.Data).Problematica = 0 then
      TFrmEntrada.Create(WebApplication).lblproblematic1.Caption := 'Choice';

    if TIWUserSession(WebApplication.Data).Problematica = 1 then
      TFrmEntrada.Create(WebApplication).lblproblematic1.Caption := 'Ranking';

    if TIWUserSession(WebApplication.Data).Problematica = 3 then
      TFrmEntrada.Create(WebApplication).lblproblematic1.Caption := 'Sorting';

    if TIWUserSession(WebApplication.Data).Problematica = 4 then
      TFrmEntrada.Create(WebApplication).lblproblematic1.Caption :=
        'Portfolio Combinatory';

    TIWUserSession(WebApplication.Data).auxparacasonsaieretone := -1002525;
    TIWUserSession(WebApplication.Data).VerificaUnit := -55;
    TFrmEntrada.Create(WebApplication).show;
    IWRgnReset.Visible := false;

  end;

  procedure Tfrmaintercriterio.btnResetRecomcProblemaClick(Sender: TObject);
  begin

    Setlength(TIWUserSession(WebApplication.Data).vetorgrafico, 0);
    Setlength(TIWUserSession(WebApplication.Data).vordem, 0);
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, 0);

    with TIWUserSession(WebApplication.Data) do
      if Problematica = 3 then
      begin
        ClassRestart := true;
        elicitarperfis := true;
        Setlength(class_min, 0);
        Setlength(class_max, 0);
        Setlength(class_min, NumAlt);
        Setlength(class_max, NumAlt);
      end;
    // ** Indica que o problema foi reiniciado antes de ser retomado **//
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 35;
    SalvarBDinter;


    // alterado em 19.01.22, devido acrescimo do submenu Inter e Intra//
    { TIWUserSession(WebApplication.Data).VerificaUnit := -50;
      TFrmEntrada.Create(WebApplication).show;
      IWRgnReset.Visible := false;

      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 6;
      SalvarBDinter;

      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).estagio := 0;
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 7;
      SalvarBDinter;

      // case referente à registro criado na planilha intracrit
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 36;
      SalvarBDinter;

      // auxiliar que permite que seja salvo no bd o caso da
      TIWUserSession(WebApplication.Data).Auxinconsistency := 0;

      // auxiliar que armazena a sequencia de respostas
      TIWUserSession(WebApplication.Data).Ans_seq := ' '; }

  end;

  procedure Tfrmaintercriterio.btnResetVoltarClick(Sender: TObject);
  var
    i: integer;
  begin
    IWRgnReset.Visible := false;
    if TIWUserSession(WebApplication.Data).RgnReset = 0 then
      IWRgnavaliacaoholistica.Visible := true;
    if TIWUserSession(WebApplication.Data).RgnReset = 1 then
      IWRgnstep2.Visible := true;
    if TIWUserSession(WebApplication.Data).RgnReset = 2 then
      IWRgncomparacaopareada.Visible := true;

    Setlength(TIWUserSession(WebApplication.Data).vordem, TIWUserSession
        (WebApplication.Data).numcrit);
    { for i := 0 to TIWUserSession(WebApplication.Data).numcrit - 1 do
      begin
      TIWUserSession(WebApplication.Data).vtrordem[i] := 0;
      TIWUserSession(WebApplication.Data).vordem[i] := 0;
      end; }
  end;

  procedure Tfrmaintercriterio.IWButton12Click(Sender: TObject);
  begin
    IWRgnavaliacaoholistica.Visible := false;
    IWRgnReset.Visible := true;
    TIWUserSession(WebApplication.Data).RgnReset := 0;
  end;

  procedure Tfrmaintercriterio.IWButton13Click(Sender: TObject);
  begin
    IWRgnstep2.Visible := false;
    IWRgnReset.Visible := true;
    TIWUserSession(WebApplication.Data).RgnReset := 1;
  end;

  procedure Tfrmaintercriterio.IWButton14Click(Sender: TObject);
  begin
    IWRgncomparacaopareada.Visible := false;
    IWRgnReset.Visible := true;
    TIWUserSession(WebApplication.Data).RgnReset := 2;
  end;

  procedure Tfrmaintercriterio.IWButton15Click(Sender: TObject);
  begin
    WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
    WebApplication.Terminate();
  end;

  procedure Tfrmaintercriterio.IWButton18Click(Sender: TObject);
begin
TIWUserSession(WebApplication.Data).PAns := 2;
btnOKPairWiseCOClick(self);
end;

procedure Tfrmaintercriterio.btnindifClick(Sender: TObject);
begin
TIWUserSession(WebApplication.Data).PAns := 2;
btnOKPairWiseCOClick(self);
end;

procedure Tfrmaintercriterio.btnGBOSDEClick(Sender: TObject);
  var
    i, j: integer;
  begin

    // auxiliar BD
    TIWUserSession(WebApplication.Data).Auxinconsistency := -1997;
    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).auxinconsi := 2;
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 32;
    SalvarBDinter;
    /// / Este procedimento é acionado para voltar uma pergunta da elicitação //////
    with TIWUserSession(WebApplication.Data) do
    begin
      // Devolve os limites anteriores para que seja possível fazer a volta da pergunta //
      if (Etapa <> 3) or (Length(PergNAdj) <= 1) then
      begin

        for i := 0 to numcrit - 2 do
        begin
          TIWUserSession(WebApplication.Data).LimMax[i] := TIWUserSession
            (WebApplication.Data).LimMaxA[i];
          TIWUserSession(WebApplication.Data).LimMin[i] := TIWUserSession
            (WebApplication.Data).LimMinA[i];
          if (Cri_Cong[i] = 1) and (LimMax[i] <> LimMin[i]) and
            ((Niveis[vtrordem[Representantes[vtrposicoes[i] - 1]]] <> 2)) then
          begin
            vtrrelacoesblin[i] := false;
            Cri_Cong[i] := 0;
          end;
        end;
        // ** Se for a primeira pergunta da Etapa 3, teremos de voltar à etapa 2 **//
        if Etapa = 3 then
          Etapa := 2;

        // **Evita a blindagem desnecessária do critério **//
        Vetorpergunta[IndiceA] := -55.287954;
        Vetorpergunta[IA] := -55.287954;
      end
      else
      begin
        for i := 0 to numcrit - 1 do
          for j := 0 to numcrit - 1 do
          begin
            TIWUserSession(WebApplication.Data).MLimMax[i, j] := TIWUserSession
              (WebApplication.Data).MLimMaxA[i, j];
            MLimMin[i, j] := TIWUserSession(WebApplication.Data).MLimMinA[i, j];

            if (MLimMax[i, j] <> MLimMin[i, j]) then
            begin
              Mblindados[i, j] := false;
            end;

            BIndex := IB;
          end;
      end;

      // ** Evita que o sistema entenda que uma resposta foi dada **//
      PAns := -1;
      /// / Caso ele só tenha respondido uma pergunta, estaremos retornando para a
      /// pergunta da Heuristíca ///////////////////////////////////////////////
      if NumQuest = 1 then
      begin
        HeurQuest := -1;
        rdgrppreference.Items.Delete(4);
      end;
      /// / Caso a perg da heurística já tenha sido respondida, é necessário restaurar
      /// os índices dos critérios da pergunta anterior anteriore////////////////
      IndiceA := IA;
      Indice := IR;
      IndiceB := IB;
      if (Etapa = 1) and (NumQP = 2) then
        /// / NumQP é um auxiliar para a realização de duas perguntas para cada par de
        /// critérios quando se responde B à pergunta da Heurística ///////////////
        NumQP := 0
      else
      // ** Se for voltar para a etapa 1
        if (EtapaAnt = 1) and (Etapa <> 1) then
        NumQP := 1;

      if Etapa = 4 then
      begin
        NiveisIntermediarios[0] := true;
        NiveisIntermediarios[1] := true;
        NiveisIntermediarios[2] := true;
        NextRelDisc := true;
        // ** Descongela todos os critérios, os póprios limites das relações se encarregarão de blindá-los novamente **//
        for i := 0 to numcrit - 1 do
          TIWUserSession(WebApplication.Data).DiscIntBlind[i] := false;
      end;
      // ** Volta para a Etapa da pergunta anterior **//
      Etapa := EtapaAnt;

      NumQuest := NumQuest - 1;

      // ** Uma vez voltada uma etapa, o sistema não consegue voltar mais um, então desabilita a opção **/
      btnGBOSDE.Visible := false;
      /// / Para facilitar, setamos todas as alternativas do problema como POAS ou
      /// desconsideramos as relações anteriormente estabelecidas e recalculamos,
      /// assim evitamos realizar o armazenamento de muitas informações e ainda
      /// a necessidade de buscar tais informações no Banco de Dados, pois poderia
      /// dificultar mais o processo ///////////////////////////////////////////
      if (Problematica = 0) or (Problematica = 4) then
      begin
        NDA := NumAlt;
        Setlength(VetPOA, NDA);
        for i := 0 to NumAlt - 1 do
          VetPOA[i] := i;
      end;
      if (Problematica = 1) or (Problematica = 2) then
      begin
        NumRel := 0;
        // Ciclo := Ciclo + 1;
        // * Reavaliar relações de dominância *//
        TIWUserSession(WebApplication.Data).zeramatriz := true;
      end;
      TIWUserSession(WebApplication.Data).auxgoback := -56231;
      EFp;
      lblnqa.Text := intTostr(NumQuest);
      if (Problematica = 1) or (Problematica = 2) then
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).Rlevels);
      if (Problematica = 0) or (Problematica = 4) then
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).NDA);
      if Problematica = 3 then
        lblnda.Text := intTostr(Alt_nao_classificadas);
    end;

    rgnIncAsk.Hide;
    IWRgnstep2.show;

    BrnOK.Enabled := true;
    Btnshowresults.Enabled := true;
    btnstopelicitation.Enabled := true;
    rdgrppreference.Enabled := true;

  end;

  procedure Tfrmaintercriterio.btnrestartPCClick(Sender: TObject);
  var
    i, numcrit: integer;
    vtrcritinverso: array of string;
    indice1: integer; // relacionado a posição que vai sendo modificada dos critérios do primeiro gráfico da comparação pareda
    indice2: integer; // relacionado a posição que vai sendo modificada dos critérios do segundo gráfico da comparação pareada
    respanterior: integer; // a reposta anterior da pergunta de comparação pareada o se for A e 1 se for B
    numalocado: integer; // indica o número de critérios que já foram alocados pela avaliação pareada no vtrposições, já inicia com 2
    vtrnomecrit: array of string; // vai receber C1,C2...
    posicrit: integer; // armazena a posição dos critérios no vetor de preferencia
    auxvtrnomecrit: array of string; // vai receber o nome dos criterios
    bt, bt1, wt, wt1: string;
  begin

    lnkoverallevaluation.Enabled := true;
    IWListbox5.Items.clear; // limpando listbox
    TIWUserSession(WebApplication.Data).contord := 0; // BD
    btnconseqA1OC.Enabled := true;
    btnconseqB1OC.Enabled := true;
    btnconseqAOC.Enabled := true;
    btnconseqBOC.Enabled := true;
    with TIWUserSession(WebApplication.Data) do
    begin
      Setlength(MatPositions, 0, 0);
      Setlength(PositionA, 0);
      PAns := -1;
      Crepresentante := 0;
    end;
    rdgrpCPC.Enabled := true;
    btnOKPairWiseCO.Enabled := true;
    btnrestartPC.Enabled := true;
    IWRegion1.Visible := false;
    pairwise_comparison;
    rdgrpCPC.Items.Clear;
    with TIWUserSession(WebApplication.Data) do
    begin
    StrDInd:= IndiceA;
    StrDIndA:= Rounding(Bconseqord[IndiceA]);
    StrDIndA1:= Rounding(Wconseqord[IndiceA]);
    StrDInd:= IndiceB;
    StrDIndB:= Rounding(Wconseqord[IndiceB]);
    StrDIndB1:= Rounding(Bconseqord[IndiceB]);
    btngoback.Visible := false;
    btngoback1.Visible := false;
    rdgrpCPC.Items.Add('Consequence A: Value ' + StrDIndA + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Consequence B: Value ' + StrDIndA1 + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB1 + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Indifferent between Consequence A and Consequence B');
    if (Copy(StrDIndA, Length(StrDIndA), 1) = 'K') or (Copy(StrDIndA, Length(StrDIndA), 1) = 'M') or
    (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'K') or (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'M') or
    (Copy(StrDIndB, Length(StrDIndB), 1) = 'K') or (Copy(StrDIndB, Length(StrDIndB), 1) = 'M') or
    (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'K') or (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'M') then
    begin
    IWLabel5.visible := true;
    end
    else
    IWLabel5.visible := false;
    end;
    exit;
    /// ///////////////////////////////////////////////////////////////////////////

    // ** Antigo procedimento **//
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(vtrnomecrit, numcrit);
    Setlength(vtrcritinverso, numcrit);
    IWRgncomparacaopareada.Visible := true;
    IWRgnavaliacaoholistica.Visible := false;
    IWBtnstep22.Enabled := false;
    btnrestartPC.Enabled := false;
    respanterior := 0; // resposta
    indice1 := 0; // inicializa com o valor da posição do critério 1
    indice2 := 1; // inicializa com o valor da posição do critério 2
    numalocado := 2; // inicializa com dois critérios já sendo alocados no primeiro clique do  OK na avaliação pareada
    posicrit := 0;

    // preenchendo o vetor com o nome do critério de C1 até Cn
    for i := 0 to numcrit - 1 do
    begin
      vtrnomecrit[i] := TIWUserSession(WebApplication.Data).CritSiglas[i];
    end;

    // inverter a ordem do vetor com os nomes dos criterios
    for i := 0 to numcrit - 1 do
    begin
      vtrcritinverso[i] := vtrnomecrit[numcrit - 1 - i];
    end;
    IWListbox4.Items.clear;

    // preenchendo o vetor com o nome do critério de C1 até Cn
    Setlength(auxvtrnomecrit, numcrit);
    for i := 0 to numcrit - 1 do
    begin
      // vtrnomecrit[i] := 'C' + intTostr(i + 1);
      auxvtrnomecrit[i] := TIWUserSession(WebApplication.Data).NomeCrit[i];
    end;

    // inserir os nomes dos critérios no listbox da legenda
    for i := 0 to numcrit - 1 do
    begin
      IWListbox4.Items.Insert(i, vtrnomecrit[i] + '-' + auxvtrnomecrit[i]);
    end;
    { for i := 0 to numcrit - 1 do
      begin
      IWListbox4.Items.Insert(i, vtrnomecrit[i]);
      end; }

    // preenchimento do chart 1

    IWImage5.Visible := true; // torna o componente IWImage visivel
    Chart1.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart1.BottomAxis.Visible := true; // torna o eixo x visível
    Chart1.leftAxis.Visible := true; // torna o eixo y visível
    Chart1.RightAxis.Items.clear; // limpando os valores dos eixos para não se sobrepor
    Chart1.BottomAxis.Items.clear;
    Chart1.BottomAxis.Items.Add(4, wt); // adicionando o nome worst no eixo y do pior critério
    Chart1.BottomAxis.Items.Add(100, bt); // adicionando o nome best no eixo y do melhor cirtério
    Chart1.Title.Text.Add('Consequence A'); // coloca o titulo do gráfico

    for i := 0 to numcrit - 1 do
    begin
      Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
      // adicionando os nomes das contantes no eixo x
      if i = numcrit - 1 then
      begin
      TIWUserSession(WebApplication.Data).StrDInd := i;
        Chart1.Series[0].AddXY(i, 100, '(' + bt1 + intTostr(numcrit - i)
            + ')' + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Bconseqord[numcrit - 1]), clwebGREEN);
      end;
    end;

      for i := 0 to numcrit - 1 do
      begin
      if i = numcrit - 2 then
      begin
      TIWUserSession(WebApplication.Data).StrDInd := i;
        Chart1.Series[0].AddXY(i, 100, '(' + bt1 + intTostr(numcrit - i)
            + ')' + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
        Chart1.Series[1].AddXY(i, 4, '(' + wt1 + intTostr(numcrit - i)
            + ')' + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Wconseqord[numcrit - 1]), clwebRED);
      end;
    end;
    IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage5.Width,
          IWImage5.Height)));


    // preenchendo tchart 2

    IWImage4.Visible := true; // torna o componente IWImage visivel
    Chart2.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart2.BottomAxis.Visible := true; // torna o eixo x visível
    Chart2.leftAxis.Visible := true; // torna o eixo y visível
    Chart2.RightAxis.Items.clear; // limpando os valores dos eixos para não se sobrepor
    Chart2.BottomAxis.Items.clear;
    Chart2.BottomAxis.Items.Add(4, wt); // adicionando o nome worst no eixo y do pior critério
    Chart2.BottomAxis.Items.Add(100, bt); // adicionando o nome best no eixo y do melhor cirtério
    Chart2.Title.Text.Add('Consequence B'); // coloca o titulo do gráfico

    for i := 0 to numcrit - 1 do
    begin
      Chart2.leftAxis.Items.Add(i, vtrcritinverso[i]);
      TIWUserSession(WebApplication.Data).StrDInd := numcrit - i - 1;
      // adicionando os nomes das contantes no eixo x
      if i = numcrit - 2 then
      begin
        Chart2.Series[0].AddXY(100, i, '(' + bt1 + intTostr(numcrit - i)
            + ') :' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
      end
      else
      begin
        Chart2.Series[0].AddXY(100, i, '(' + bt1 + intTostr(numcrit - i)
            + ')' + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
        TIWUserSession(WebApplication.Data).StrDInd := numcrit - i - 1;
        Chart2.Series[1].AddXY(4, i, '(' + wt1 + intTostr(numcrit - i)
            + ')' + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
              .Wconseqord[numcrit - 1 - i]), clwebRED);
      end;
    end;
    IWImage4.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (Chart2.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage4.Width,
          IWImage4.Height)));

    TIWUserSession(WebApplication.Data).indice1 := indice1;
    TIWUserSession(WebApplication.Data).indice2 := indice2;
    TIWUserSession(WebApplication.Data).respanterior := respanterior;
    TIWUserSession(WebApplication.Data).numalocado := numalocado;
    TIWUserSession(WebApplication.Data).posicrit := posicrit;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
    SalvarBDinter;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).BDstatus := '0';
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
    SalvarBDinter;

  end;

  procedure Tfrmaintercriterio.btnResumeEDClick(Sender: TObject);
  begin
    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).auxinconsi := 1;

    rgnIncAsk.Hide;
    // IWRgnstep2.show;

    BrnOK.Enabled := true;
    Btnshowresults.Enabled := true;
    btnstopelicitation.Enabled := true;
    rdgrppreference.Enabled := true;
  end;

  procedure Tfrmaintercriterio.IWButton2Click(Sender: TObject);
  var
    i, j, h: integer; // o interior respanterior salva qual foi a resposta que foi foenecida anteriormente A ou B, se for A é 0 se for B é 1
    auxvtr: array of integer; // auxiliar para preenchimendo do vetor com o numero de posições
    vtrcritinverso: array of string;
    numalocado: integer; // indica o número de critérios que já foram alocados pela avaliação pareada no vtrposições, já inicia com 2
    numrespA: integer; // indica se a resposta A dada anteriormente foi a primeira ou não, se foi a primeira 0 se não foi 1
    posicrit: integer; // armazena a posição dos critérios no vetor de preferencia
    indice1: integer; // relacionado a posição que vai sendo modificada dos critérios do primeiro gráfico da comparação pareda
    indice2: integer; // relacionado a posição que vai sendo modificada dos critérios do segundo gráfico da comparação pareada
    respanterior: integer; // a reposta anterior da pergunta de comparação pareada o se for A e 1 se for B
    auxcrit: array of string; // vai receber o nome dos criterios
    vtrnomecrit: array of string; // armazena C1,C2,C3...
    numcrit: integer;
    vtrposicoes: array of integer; // vetor que vai colocar as posições do criterio no ranqueamento
  begin
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    numalocado := TIWUserSession(WebApplication.Data).numalocado;
    numrespA := TIWUserSession(WebApplication.Data).numrespA;
    posicrit := TIWUserSession(WebApplication.Data).posicrit;
    indice1 := TIWUserSession(WebApplication.Data).indice1;
    indice2 := TIWUserSession(WebApplication.Data).indice2;
    respanterior := TIWUserSession(WebApplication.Data).respanterior;

    btnrestartPC.Enabled := true; // Habilitado depois do primeiro ok
    lnkoverallevaluation.Enabled := false;
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, numcrit);
    Setlength(TIWUserSession(WebApplication.Data).vtrordem, numcrit);
    Setlength(vtrposicoes, numcrit);
    Setlength(vtrcritinverso, numcrit);
    Setlength(auxcrit, numcrit);
    Setlength(auxvtr, numcrit);
    Setlength(vtrnomecrit, numcrit);

    INC(TIWUserSession(WebApplication.Data).contord); // BD

    for i := 0 to numcrit - 1 do
    begin
      vtrposicoes[i] := TIWUserSession(WebApplication.Data).vtrposicoes[i];
    end;
    // aparecer regiao com aviso para confirmar a ordem escolhida
    if IWListbox5.Items.Count = numcrit then
    begin
      IWRegion1.Visible := true;
      btnrestartPC.Enabled := false;
      IWButton2.Enabled := false;
    end;

    // Inicio do codigo do grafico
    // preenchendo o vetor com o nome do critério de C1 até Cn
    for i := 0 to numcrit - 1 do
    begin
      vtrnomecrit[i] := 'C' + intTostr(i + 1);
      auxcrit[i] := TIWUserSession(WebApplication.Data).NomeCrit[i];
    end;

    // inverter a ordem do vetor com os nomes dos criterios
    for i := 0 to numcrit - 1 do
    begin
      vtrcritinverso[i] := vtrnomecrit[numcrit - 1 - i];
    end;

    // preenchimento do chart 1

    IWImage5.Visible := true; // torna o componente IWImage visivel
    Chart1.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart1.BottomAxis.Visible := true; // torna o eixo x visível
    Chart1.leftAxis.Visible := true; // torna o eixo y visível
    Chart1.RightAxis.Items.clear; // limpando os valores dos eixos para não se sobrepor
    Chart1.BottomAxis.Items.Add(4, 'Worst'); // adicionando o nome worst no eixo y do pior critério
    Chart1.BottomAxis.Items.Add(100, 'Best'); // adicionando o nome best no eixo y do melhor cirtério
    Chart1.Title.Text.clear;
    Chart1.Title.Text.Add('Consequence A'); // coloca o titulo do gráfico

    // preenchendo tchart 2

    IWImage4.Visible := true; // torna o componente IWImage visivel
    Chart2.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart2.BottomAxis.Visible := true; // torna o eixo x visível
    Chart2.leftAxis.Visible := true; // torna o eixo y visível
    Chart2.RightAxis.Items.clear; // limpando os valores dos eixos para não se sobrepor
    Chart2.BottomAxis.Items.Add(4, 'Worst'); // adicionando o nome worst no eixo y do pior critério
    Chart2.BottomAxis.Items.Add(100, 'Best'); // adicionando o nome best no eixo y do melhor cirtério
    Chart2.Title.Text.clear;
    Chart2.Title.Text.Add('Consequence B'); // coloca o titulo do gráfico

    // codigo da ordenação
    // nesse caso sempre a primeira comparação é realizada com o primeiro e o segundo critério
    case rdgrpCPC.ItemIndex of
      0: // caso em que o decisor escolhe A no radiogroup
        begin
          if numalocado = 2 then // primeiro clique no botão, ou seja, primeira resposta respondida foi A
          begin
            vtrposicoes[0] := indice1;
            vtrposicoes[1] := indice2;
            respanterior := 0; // indica que a resposta anterior foi A
            numrespA := 0; // primeira resposta do tipo A
            numalocado := numalocado + 1; // pois a partir daqui já vai ter sido respondida uma pergunta
            INC(indice2); // ocorre um incremento no indice dois pois o gráfico do lado direito já muda para o critério seguinte (nesse caso o 3)
            posicrit := indice1; // a posição inicia com 0 pois sempre a primeira compração é com o critério que está na posição 0

            // como nesse caso sempre o que muda é o valor do indice 2 enquanto o indice 1 permanece o mesmo o grafico 2 que sera alterado
            for i := 0 to numcrit - 1 do
            begin
              Chart2.leftAxis.Items.Add(i, vtrcritinverso[i]);
              // adicionando os nomes das contantes no eixo x
              if i = numcrit - (indice2 + 1) then
              begin
                Chart2.Series[0].AddXY
                  (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                    Rounding(TIWUserSession(WebApplication.Data)
                      .Bconseqord[numcrit - 1 - i]), clwebGREEN);
              end
              else
              begin
                Chart2.Series[0].AddXY
                  (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                    Rounding(TIWUserSession(WebApplication.Data)
                      .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                Chart2.Series[1].AddXY(4, i, 'W' + intTostr(numcrit - i)
                    + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                      .Wconseqord[numcrit - 1 - i]), clwebRED);
              end;
            end;
            IWImage4.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
              (Chart2.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage4.Width,
                  IWImage4.Height)));

            // limpar listbox
            IWListbox5.clear;
            // passar para o listbox a ordem estabelecida
            for i := 0 to numalocado - 2 do
            begin
              IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
            end;

          end // referente a  numalocado=2
          else // se  numalocado>2
          begin
            if numrespA = 0 then // primeira resposta do tipo A
            begin
              // nesse caso não vai saber ainda onde se localiza o critério seguinte na ordenação, sabe apenas que ele esta abaixo do melhor critério
              numrespA := 1; // pois essa já seria a segunda resposta do tipo A
              respanterior := 0; // pois respondeu A nesse caso
              INC(posicrit); // a partir da próxima pergunta que séra respondida a compração vai ser com o critério da posição 1 e assim por diante, logo incrementa 1 unidade
              indice1 := vtrposicoes[posicrit]; // modificação do indice 1 pois agora o grafico esquedo irá modificar
              // como nesse caso altera o indice 1 enquanto o indice 2 permanece o mesmo então o grafico 1 que se altera
              for i := 0 to numcrit - 1 do
              begin
                Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
                // adicionando os nomes das contantes no eixo x
                if i = numcrit - 1 - indice1 then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
                begin
                  Chart1.Series[0].AddXY
                    (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                      Rounding(TIWUserSession(WebApplication.Data)
                        .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                end
                else
                begin
                  Chart1.Series[0].AddXY
                    (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                      Rounding(TIWUserSession(WebApplication.Data)
                        .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                  Chart1.Series[1].AddXY
                    (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                      Rounding(TIWUserSession(WebApplication.Data)
                        .Wconseqord[numcrit - 1 - i]), clwebRED);
                end;
              end;
              IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage5.Width,
                    IWImage5.Height)));
            end // referente a  numrespA = 0
            else // se numrespA <> 0  se já tiver sido respondido A mais de uma vez
            begin
              if posicrit <> numalocado - 2 then // Se a quantidade de numeros alocados é diferente da posição que se esta comparando
              begin
                if respanterior = 1 then // Se a resposta anterior for igual a B então esta será a última comparação
                begin
                  if numalocado <> numcrit then // nesse caso nem todos os critérios foram comparados ainda
                  begin
                    for i := 0 to numcrit - 1 do // limpando o vetor auxiliar
                    begin
                      auxvtr[i] := 0;
                    end;
                    for i := 0 to numcrit - 1 do // passar todas as informações do vetor de posição para o auxiliar
                    begin
                      auxvtr[i] := vtrposicoes[i];
                    end;
                    vtrposicoes[posicrit + 1] := numalocado - 1; // colocar no vetor de posição o indice do grafico 2 (referente ao criterio analisado) na posição que se está analisando

                    for j := posicrit + 2 to numalocado do
                    // alocar ao vetor de posições os valores do vetor
                    begin
                      vtrposicoes[j] := auxvtr[j - 1];
                    end;
                    numrespA := 0; // pois ja vai começar a comparar novos criterios
                    respanterior := 0; // pois respondeu A nesse caso
                    numalocado := numalocado + 1;
                    // pois alocou mais um critério
                    posicrit := trunc(numalocado / 2) - 1; // é necessario truncar para sempre fornecer um numero inteiro, independente de o numero de elementos alocados ser par ou impar
                    indice1 := vtrposicoes[posicrit]; // o indice 1 que está relacionado com o gráfico do lado esquerdo fica com o vetor maximo no ultimo criterio avaliado
                    indice2 := indice2 + 1; // o indice 2 associado ao grafico do lado direito desec uma posição

                    // como muda o valor do indice 1 e do indice 2 é necessáario atualizar o grafico 1 e 2
                    // grafico 1
                    for i := 0 to numcrit - 1 do
                    begin
                      Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
                      // adicionando os nomes das contantes no eixo x
                      if i = numcrit - (indice1 + 1) then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
                      begin
                        Chart1.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                      end
                      else
                      begin
                        Chart1.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                        Chart1.Series[1].AddXY
                          (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Wconseqord[numcrit - 1 - i]), clwebRED);
                      end;
                    end;
                    IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                      (Chart1.TeeCreateBitmap
                        (clWebAQUA, rect(0, 0, IWImage5.Width, IWImage5.Height))
                      );
                    // grafico 2
                    for i := 0 to numcrit - 1 do
                    begin
                      Chart2.leftAxis.Items.Add(i, vtrcritinverso[i]);
                      // adicionando os nomes das contantes no eixo x
                      if i = numcrit - 1 - indice2 then
                      begin
                        Chart2.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                      end
                      else
                      begin
                        Chart2.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                        Chart2.Series[1].AddXY
                          (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Wconseqord[numcrit - 1 - i]), clwebRED);
                      end;
                    end;
                    IWImage4.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                      (Chart2.TeeCreateBitmap
                        (clWebAQUA, rect(0, 0, IWImage4.Width, IWImage4.Height))
                      );

                    // limpar listbox
                    IWListbox5.clear;

                    // passar para o listbox a ordem estabelecida
                    for i := 0 to numalocado - 2 do
                    begin
                      IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
                    end;

                  end // referente a numalocado <> numcrit
                  else // if numalocado = numcrit then //quando já esta no ultimo criterio sendo comparado
                  begin
                    for i := 0 to numcrit - 1 do // limpando o vetor auxiliar
                    begin
                      auxvtr[i] := 0;
                    end;
                    for i := 0 to numcrit - 1 do // passar todas as informações do vetor de posição para o auxiliar
                    begin
                      auxvtr[i] := vtrposicoes[i];
                    end;
                    vtrposicoes[posicrit + 1] := numalocado - 1; // colocar no vetor de posição o indice do grafico 2 (referente ao criterio analisado) na posição que se está analisando

                    for j := posicrit + 2 to numalocado - 1 do
                    // alocar ao vetor de posições os valores do vetor
                    begin
                      vtrposicoes[j] := auxvtr[j - 1];
                    end;
                    // limpar listbox
                    IWListbox5.clear;
                    // passar para o listbox a ordem estabelecida
                    for i := 0 to Length(vtrposicoes) - 1 do
                    begin
                      IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
                    end;

                    IWRegion1.Visible := true; // tornar a região que confirma a ordem visivel
                    btnrestartPC.Enabled := false;
                    IWButton2.Enabled := false;
                    { ADICIONAR O QUE FOR EXTRA DE QUANDO ACABA O PROCEDIMENTO DE ORDENAÇÃO DAS CONSTANTES }

                  end; // referente ao  numalocado = numcrit
                end // referente ao respanterior=1
                else // respanterior = 0, ou seja respondeu A
                begin
                  posicrit := posicrit + 1; // adiciona 1 na posição do critério
                  respanterior := 0; // pois respondeu A nesse caso
                  indice1 := vtrposicoes[posicrit];
                  // desce uma posição no grafico da esquerda
                  // como apenas muda o valor do indice 1 apenas o grafico 1 modifica
                  for i := 0 to numcrit - 1 do
                  begin
                    Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
                    // adicionando os nomes das contantes no eixo x
                    if i = (numcrit - indice1 - 1) then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
                    begin
                      Chart1.Series[0].AddXY
                        (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                          Rounding(TIWUserSession(WebApplication.Data)
                            .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                    end
                    else
                    begin
                      Chart1.Series[0].AddXY
                        (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                          Rounding(TIWUserSession(WebApplication.Data)
                            .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                      Chart1.Series[1].AddXY
                        (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                          Rounding(TIWUserSession(WebApplication.Data)
                            .Wconseqord[numcrit - 1 - i]), clwebRED);
                    end;
                  end;
                  IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                    (Chart1.TeeCreateBitmap
                      (clWebAQUA, rect(0, 0, IWImage5.Width, IWImage5.Height)));
                end; // referente a  respanterior = 0
              end // referente a posicrit<>numalocado -2
              else // se posicrit=numalocado -2, se a posição for igual ao numero de elementos alocados -2
              begin
                if numcrit <> numalocado then // numero de criterios for diferente ao numero de elementos alocados
                begin
                  if respanterior = 0 then // resposta anterior foi A
                  begin
                    numrespA := 0;
                    vtrposicoes[numalocado - 1] := numalocado - 1; // na posição referente ao numero de elementos alocados menos 1 adicionar o valor do numero de elementos alocados menos 1
                    numalocado := numalocado + 1; // mais um criterio é alocado
                    respanterior := 0; // A resposta anterior se torna A
                    posicrit := trunc(numalocado / 2) - 1; // A nova posição vai ser truncada para ser referente a metade do intervalo
                    indice1 := vtrposicoes[posicrit]; // o indice1 permanece o mesmo (relacionado ao grafico da esquerda)
                    indice2 := indice2 + 1; // o indice2 aumenta em 1 (relacionado ao grafico da direita)
                    // como apenas o indice 2 é modificado apenas o grafico 2 muda
                    for i := 0 to numcrit - 1 do
                    begin
                      Chart2.leftAxis.Items.Add(i, vtrcritinverso[i]);
                      // adicionando os nomes das contantes no eixo x
                      if i = numcrit - 1 - indice2 then
                      begin
                        Chart2.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                      end
                      else
                      begin
                        Chart2.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                        Chart2.Series[1].AddXY
                          (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Wconseqord[numcrit - 1 - i]), clwebRED);
                      end;
                    end;
                    IWImage4.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                      (Chart2.TeeCreateBitmap
                        (clWebAQUA, rect(0, 0, IWImage4.Width, IWImage4.Height))
                      );

                    // como apenas muda o valor do indice 1 apenas o grafico 1 modifica (adicionei agora)
                    for i := 0 to numcrit - 1 do
                    begin
                      Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
                      // adicionando os nomes das contantes no eixo x
                      if i = (numcrit - indice1 - 1) then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
                      begin
                        Chart1.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                      end
                      else
                      begin
                        Chart1.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                        Chart1.Series[1].AddXY
                          (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Wconseqord[numcrit - 1 - i]), clwebRED);
                      end;
                    end;
                    IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                      (Chart1.TeeCreateBitmap
                        (clWebAQUA, rect(0, 0, IWImage5.Width, IWImage5.Height))
                      );

                    // limpar listbox
                    IWListbox5.clear;

                    // passar para o listbox a ordem estabelecida
                    for i := 0 to numalocado - 2 do
                    begin
                      IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
                    end;

                  end; // referente ao  respanterior=0
                  { Não achei nenhum caso no qual numrespA <> 0,  posicrit=numalocado -2,numcrit<>numalocado e  respanterior=1, se eu achar posteriomente adicionar aqui }
                end // referente ao numcrit<>numalocado

                else // se numcrit=numalocado, numero de critérios igual ao número de elementos alocados
                begin
                  if respanterior = 0 then // resposta anterior foi A
                  begin
                    vtrposicoes[numalocado - 1] := numalocado - 1; // na posição referente ao numero de elementos alocados menos 1 adicionar o valor do numero de elementos alocados menos 1

                    // limpar listbox
                    IWListbox5.clear;

                    // passar para o listbox a ordem estabelecida
                    for i := 0 to numalocado - 1 do
                    begin
                      IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
                    end;

                    IWRegion1.Visible := true; // tornar a região que confirma a ordem visivel
                    btnrestartPC.Enabled := false;
                    IWButton2.Enabled := false;
                    { ADICIONAR O QUE FOR EXTRA DE QUANDO ACABA O PROCEDIMENTO DE ORDENAÇÃO DAS CONSTANTES }
                  end; // Referente a  respanterior=0
                  { Não achei nenhum caso no numrespA <> 0, posicrit=numalocado -2,numcrit=numalocado e respanterior=1, se achar adicionar aqui }
                end; // Referente a numcrit=numalocado

              end; // referente a posicrit=numalocado -2

            end; // referente a numrespA <> 0
          end; // referente a numalocado>2

        end; // referente a resposta A (caso 0)

      1: // caso em que o decisor escolhe B no radiogroup
        begin
          if numalocado = 2 then // primeiro clique no botão, ou seja, primeira resposta respondida foi B
          begin
            vtrposicoes[0] := 1;
            vtrposicoes[1] := 0;
            posicrit := indice1; // pois inicia na posição zero
            indice1 := indice2; // pois desce o grafico do lado esquerdo para a posição que antes estava no grafico direito
            indice2 := indice2 + 1; // pois desce um no gráfico do lado direito
            numrespA := 0; // pois quando responde B já termina a ordenação e dessa forma não tem mais nenhuma resposta A antiga
            numalocado := numalocado + 1; // pois a partir daqui já vai ter respondido mais uma pergunta
            respanterior := 1; // porque a resposta foi B
            // como o indice 1 e o indice 2 são modificados então o ambos os graficos serão modificados
            // grafico 1
            for i := 0 to numcrit - 1 do
            begin
              Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
              // adicionando os nomes das contantes no eixo x
              if i = numcrit - 1 - indice1 then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
              begin
                Chart1.Series[0].AddXY
                  (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                    Rounding(TIWUserSession(WebApplication.Data)
                      .Bconseqord[numcrit - 1 - i]), clwebGREEN);
              end
              else
              begin
                Chart1.Series[0].AddXY
                  (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                    Rounding(TIWUserSession(WebApplication.Data)
                      .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                Chart1.Series[1].AddXY(4, i, 'W' + intTostr(numcrit - i)
                    + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                      .Wconseqord[numcrit - 1 - i]), clwebRED);
              end;
            end;
            IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
              (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage5.Width,
                  IWImage5.Height)));

            // grafico 2
            for i := 0 to numcrit - 1 do
            begin
              Chart2.leftAxis.Items.Add(i, vtrcritinverso[i]);
              // adicionando os nomes das contantes no eixo x
              if i = numcrit - 1 - indice2 then
              begin
                Chart2.Series[0].AddXY
                  (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}Rounding
                    (TIWUserSession(WebApplication.Data)
                      .Bconseqord[numcrit - 1 - i]), clwebGREEN);
              end
              else
              begin
                Chart2.Series[0].AddXY
                  (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}Rounding
                    (TIWUserSession(WebApplication.Data)
                      .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                Chart2.Series[1].AddXY(4, i, 'W' + intTostr(numcrit - i)
                    + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                      .Wconseqord[numcrit - 1 - i]), clwebRED);
              end;
            end;
            IWImage4.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
              (Chart2.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage4.Width,
                  IWImage4.Height)));

            // limpar listbox
            IWListbox5.clear;

            // passar para o listbox a ordem estabelecida
            for i := 0 to numalocado - 2 do
            begin
              IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
            end;

          end // Referente a  numalocado=2

          else // se numalocado>2, se ja tiver sido alocado os dois primeiros critérios
          begin
            if numrespA = 0 then // se antes apenas uma resposta A foi fornecida para esses criterios que estãos endo comparados
            begin
              if posicrit = 0 then
              begin

                for i := 0 to numcrit - 1 do // limpando o vetor auxiliar
                begin
                  auxvtr[i] := 0;
                end;
                for i := 0 to numcrit - 1 do // passar todas as informações do vetor de posição para o auxiliar
                begin
                  auxvtr[i] := vtrposicoes[i];
                end;
                vtrposicoes[posicrit] := numalocado - 1; // o vetor posições recebe na parte da posição o valor de numeros alocados -1

                for j := posicrit + 1 to numalocado + 1 do
                begin
                  vtrposicoes[j] := auxvtr[j - 1]; // unindo o vetor posições com o vetor auxiliar
                end;

                if numcrit = numalocado then // se o numero de criterios for igual ao lumero de alocados
                begin
                  numrespA := 0;
                  IWRegion1.Visible := true; // tornar a região que confirma a ordem visivel
                  btnrestartPC.Enabled := false;
                  IWButton2.Enabled := false;
                  { ADICIONAR O QUE FOR EXTRA DE QUANDO ACABA O PROCEDIMENTO DE ORDENAÇÃO DAS CONSTANTES }
                end; // referente a  numcrit=numalocado

                if numcrit <> numalocado then
                begin
                  numrespA := 0;
                  { Não encontrei outro caso que o numrespA desse 1 }
                  numalocado := numalocado + 1; // sempre depois de um  numrespA=0  e   posicrit =0 um novo criterio é alocado
                  posicrit := trunc(numalocado / 2) - 1;
                  // trucar para encontrar a nova posição
                  indice1 := vtrposicoes[posicrit];
                  // o indice 1 permanece o mesmo
                  indice2 := indice2 + 1; // o indice 2 moddifica e acrecenta uma unidade (referente ao grafico da direita
                  // limpar listbox
                  IWListbox5.clear;
                  // passar para o listbox a ordem estabelecida
                  for i := 0 to numalocado - 2 do
                  begin
                    IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
                  end;
                  // como o indice 2 se modifica ocorrer uma mudança no grafico 2
                  for i := 0 to numcrit - 1 do
                  begin
                    Chart2.leftAxis.Items.Add(i, vtrcritinverso[i]);
                    // adicionando os nomes das contantes no eixo x
                    if i = numcrit - 1 - indice2 then
                    begin
                      Chart2.Series[0].AddXY
                        (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                          Rounding(TIWUserSession(WebApplication.Data)
                            .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                    end
                    else
                    begin
                      Chart2.Series[0].AddXY
                        (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                          Rounding(TIWUserSession(WebApplication.Data)
                            .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                      Chart2.Series[1].AddXY
                        (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                          Rounding(TIWUserSession(WebApplication.Data)
                            .Wconseqord[numcrit - 1 - i]), clwebRED);
                    end;
                  end;
                  IWImage4.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                    (Chart2.TeeCreateBitmap
                      (clWebAQUA, rect(0, 0, IWImage4.Width, IWImage4.Height)));
                end; // referente a numcrit<>numalocado

              end // referente a  posicrit =0

              else // se posicrit <>0, se a posição for diferente de zero
              begin
                respanterior := 1; // pois respondeu B
                numrespA := 1; // respondeu e não foi alocado nenhum criterio
                posicrit := posicrit - 1; // pois sempre volta para um ponto anterior de comparação em relação a posição que estava sendo comparada anteriormente
                // nesse caso o numero de criterios alocados permanece o mesmo
                indice1 := vtrposicoes[posicrit]; // aumenta um indice no grafico do lado esquerdo
                indice2 := indice2; // o indice 2 referente ao grafico da esquerda permanece o mesmo
                // como não vai alocar o criterio que esta sendo comparado então não existe o caso de numcrit=numalocado
                // como o indice 1 modifica irá ocorrer uma mudança no grafico 1
                for i := 0 to numcrit - 1 do
                begin
                  Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
                  // adicionando os nomes das contantes no eixo x
                  if i = (numcrit - indice1 - 1) then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
                  begin
                    Chart1.Series[0].AddXY
                      (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                        Rounding(TIWUserSession(WebApplication.Data)
                          .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                  end
                  else
                  begin
                    Chart1.Series[0].AddXY
                      (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                        Rounding(TIWUserSession(WebApplication.Data)
                          .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                    Chart1.Series[1].AddXY
                      (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                        Rounding(TIWUserSession(WebApplication.Data)
                          .Wconseqord[numcrit - 1 - i]), clwebRED);
                  end;
                end;
                IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                  (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage5.Width,
                      IWImage5.Height)));

              end; // referente a   posicrit <>0
            end // referente a numrespA=0

            else // se numrespA<>0, ou seja ja foi respondida mais de uma pergunta em relação aos criterios que estão sendo analisados
            begin
              if respanterior = 0 then // se a resposta anterior for igual a A
              begin
                if posicrit <> 0 then // se a posição do criterio aterior for diferente de zero
                begin

                  for i := 0 to numcrit - 1 do // limpando o vetor auxiliar
                  begin
                    auxvtr[i] := 0;
                  end;

                  for i := 0 to numcrit - 1 do // passar todas as informações do vetor de posição para o auxiliar
                  begin
                    auxvtr[i] := vtrposicoes[i];
                  end;

                  vtrposicoes[posicrit] := numalocado - 1; // o vetor posições recebe na parte da posição o valor de numeros alocados -1

                  for j := posicrit + 1 to numalocado - 1 do
                  begin
                    vtrposicoes[j] := auxvtr[j - 1];
                    // unindo o vetor posições com o vetor auxiliar
                  end;

                  if numcrit <> numalocado then // se o numero de criterios alocados for diferente do numero de criterios do problema
                  begin
                    numrespA := numrespA - 1; // sempre subtrai 1 pois se esta em 1 fica 0
                    numalocado := numalocado + 1;
                    // sempre é alocado um novo criterio
                    posicrit := trunc(numalocado / 2) - 1;
                    // sempre truncar para ve a nova posicao
                    respanterior := 1; // pois respondeu B
                    indice2 := indice2 + 1; // pois se descola uma posição no grafico da direita
                    indice1 := vtrposicoes[posicrit]; // pois se desloca para ocorrer a comparação com o ultimo criterio que foi alocado
                    // como ambos os indices se modificam vai ocorrer uma mudança tanto no grafico 1 como no gragico 2
                    // grafico 1
                    for i := 0 to numcrit - 1 do
                    begin
                      Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
                      // adicionando os nomes das contantes no eixo x
                      if i = numcrit - 1 - indice1 then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
                      begin
                        Chart1.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                      end
                      else
                      begin
                        Chart1.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                        Chart1.Series[1].AddXY
                          (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Wconseqord[numcrit - 1 - i]), clwebRED);
                      end;
                    end;
                    IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                      (Chart1.TeeCreateBitmap
                        (clWebAQUA, rect(0, 0, IWImage5.Width, IWImage5.Height))
                      );

                    // grafico 2
                    for i := 0 to numcrit - 1 do
                    begin
                      Chart2.leftAxis.Items.Add(i, vtrcritinverso[i]);
                      // adicionando os nomes das contantes no eixo x
                      if i = numcrit - 1 - indice2 then
                      begin
                        Chart2.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                      end
                      else
                      begin
                        Chart2.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                        Chart2.Series[1].AddXY
                          (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Wconseqord[numcrit - 1 - i]), clwebRED);
                      end;
                    end;
                    IWImage4.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                      (Chart2.TeeCreateBitmap
                        (clWebAQUA, rect(0, 0, IWImage4.Width, IWImage4.Height))
                      );

                    // limpar listbox
                    IWListbox5.clear;
                    // passar para o listbox a ordem estabelecida
                    for i := 0 to numalocado - 2 do
                    begin
                      IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
                    end;

                  end // referente a numcrit <> numalocado

                  else // se numcrit = numalocado
                  begin
                    numalocado := numalocado + 1;
                    // sempre é alocado um novo criterio
                    // limpar listbox
                    IWListbox5.clear;
                    // passar para o listbox a ordem estabelecida
                    for i := 0 to numalocado - 2 do
                    begin
                      IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
                    end;
                    IWRegion1.Visible := true; // tornar a região que confirma a ordem visivel
                    btnrestartPC.Enabled := false;
                    IWButton2.Enabled := false;
                    { ADICIONAR O QUE FOR EXTRA DE QUANDO ACABA O PROCEDIMENTO DE ORDENAÇÃO DAS CONSTANTES }
                  end; // referente a numcrit = numalocado
                end; // referente a posicrit <>0

                { Não encontrei nenhum caso no qual numrespA<>0, respanterior = 0 e posicrit =0, se achar adicionar aqui }
              end // referente a respanterior = 0

              else // se respanterior <> 0, se a resposta anterior for B
              begin
                if posicrit = 0 then
                begin
                  for i := 0 to numcrit - 1 do // limpando o vetor auxiliar
                  begin
                    auxvtr[i] := 0;
                  end;

                  for i := 0 to numcrit - 1 do // passar todas as informações do vetor de posição para o auxiliar
                  begin
                    auxvtr[i] := vtrposicoes[i];
                  end;

                  vtrposicoes[posicrit] := numalocado - 1; // o vetor posições recebe na parte da posição o valor de numeros alocados -1

                  for j := posicrit + 1 to numalocado - 1 do
                  begin
                    vtrposicoes[j] := auxvtr[j - 1];
                    // unindo o vetor posições com o vetor auxiliar
                  end;

                  if numcrit <> numalocado then // caso o numero de criterios seja diferente do numero de criterios alocados
                  begin
                    numrespA := 0; // pois ainda não for respondida nenhuma pergunta em relação ao novo criterio que sera comparado
                    numalocado := numalocado + 1;
                    // sempre é alocado um novo criterio
                    posicrit := trunc(numalocado / 2) - 1;
                    // pois sempre sera diminuido de uma unidade
                    respanterior := 1; // pois respondeu B
                    indice2 := indice2 + 1; // pois desce uma posição no grafico
                    indice1 := vtrposicoes[posicrit]; // conitnua a comparação com o memso criterio anterior
                    // como ambos os indices são modificados ocorrer uma mudança tanto no grafico 1 como no 2
                    // grafico 1
                    for i := 0 to numcrit - 1 do
                    begin
                      Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
                      // adicionando os nomes das contantes no eixo x
                      if i = numcrit - 1 - indice1 then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
                      begin
                        Chart1.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                      end
                      else
                      begin
                        Chart1.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                        Chart1.Series[1].AddXY
                          (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Wconseqord[numcrit - 1 - i]), clwebRED);
                      end;
                    end;
                    IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                      (Chart1.TeeCreateBitmap
                        (clWebAQUA, rect(0, 0, IWImage5.Width, IWImage5.Height))
                      );

                    // grafico 2
                    for i := 0 to numcrit - 1 do
                    begin
                      Chart2.leftAxis.Items.Add(i, vtrcritinverso[i]);
                      // adicionando os nomes das contantes no eixo x
                      if i = numcrit - 1 - indice2 then
                      begin
                        Chart2.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                      end
                      else
                      begin
                        Chart2.Series[0].AddXY
                          (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                        Chart2.Series[1].AddXY
                          (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                            Rounding(TIWUserSession(WebApplication.Data)
                              .Wconseqord[numcrit - 1 - i]), clwebRED);
                      end;
                    end;
                    IWImage4.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                      (Chart2.TeeCreateBitmap
                        (clWebAQUA, rect(0, 0, IWImage4.Width, IWImage4.Height))
                      );
                    // limpar listbox
                    IWListbox5.clear;
                    // passar para o listbox a ordem estabelecida
                    for i := 0 to numalocado - 2 do
                    begin
                      IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
                    end;
                  end // referente a  numcrit<>numalocado
                  else // numcrit=numalocado
                  begin
                    numalocado := numalocado + 1;
                    // sempre é alocado um novo criterio
                    // limpar listbox
                    IWListbox5.clear;
                    // passar para o listbox a ordem estabelecida
                    for i := 0 to numalocado - 2 do
                    begin
                      IWListbox5.Items.Insert(i, auxcrit[vtrposicoes[i]]);
                    end;

                    IWRegion1.Visible := true; // tornar a região que confirma a ordem visivel
                    btnrestartPC.Enabled := false;
                    IWButton2.Enabled := false;
                    { ADICIONAR O QUE FOR EXTRA DE QUANDO ACABA O PROCEDIMENTO DE ORDENAÇÃO DAS CONSTANTES }
                  end; // referente a numcrit = numalocado
                end // referente a posicrit=0

                else // se posicrit<>0
                begin
                  numrespA := 1;
                  posicrit := posicrit - 1;
                  respanterior := 1; // pois respondeu B
                  indice1 := vtrposicoes[posicrit];
                  // desce uma posição no grafico esquerdo
                  // como ocorreu mudança no indice 1 então é moificado o grafico 1
                  for i := 0 to numcrit - 1 do
                  begin
                    Chart1.leftAxis.Items.Add(i, vtrcritinverso[i]);
                    // adicionando os nomes das contantes no eixo x
                    if i = (numcrit - 1 - indice1) then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
                    begin
                      Chart1.Series[0].AddXY
                        (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                          Rounding(TIWUserSession(WebApplication.Data)
                            .Bconseqord[numcrit - 1 - i]), clwebGREEN);
                    end
                    else
                    begin
                      Chart1.Series[0].AddXY
                        (100, i, 'B' + intTostr(numcrit - i) + ':' + {trescasas}
                          Rounding(TIWUserSession(WebApplication.Data)
                            .Bconseqord[numcrit - 1 - i]), clwebWHITE);
                      Chart1.Series[1].AddXY
                        (4, i, 'W' + intTostr(numcrit - i) + ':' + {trescasas}
                          Rounding(TIWUserSession(WebApplication.Data)
                            .Wconseqord[numcrit - 1 - i]), clwebRED);
                    end;
                  end;
                  IWImage5.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
                    (Chart1.TeeCreateBitmap
                      (clWebAQUA, rect(0, 0, IWImage5.Width, IWImage5.Height)));

                end; // referente a posicrit<>0

              end; // referente a respanterior <> 0
            end; // referente a numrespA<>0
          end; // referente a  numalocado>2

        end; // referente a quando se escolhe B (caso 1)
      -1:
        begin
          WebApplication.ShowMessage('Select one option, please.');
        end;

    end;

    TIWUserSession(WebApplication.Data).numalocado := numalocado;
    TIWUserSession(WebApplication.Data).numrespA := numrespA;
    TIWUserSession(WebApplication.Data).posicrit := posicrit;
    TIWUserSession(WebApplication.Data).indice1 := indice1;
    TIWUserSession(WebApplication.Data).indice2 := indice2;
    TIWUserSession(WebApplication.Data).respanterior := respanterior;
    for i := 0 to numcrit - 1 do
    begin
      TIWUserSession(WebApplication.Data).vtrposicoes[i] := vtrposicoes[i];
      // TIWUserSession(WebApplication.Data).vtrordem[i] := vtrposicoes[i];
    end;


    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
    SalvarBDinter;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).BDstatus := '0';
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
    SalvarBDinter;
  end;

  procedure Tfrmaintercriterio.MatrizFaixaDisc;
  var
    i, j, k, y: integer;
  Begin
    /// Este procedimento preenche a Matriz Faixa com as possíveis consequências discretas.
    With TIWUserSession(WebApplication.Data) do
    Begin

      k := 0;
      Setlength(MatrizFaixa, 7, numcrit);
      for i := 0 to numcrit - 1 do
      begin
        if TIWUserSession(WebApplication.Data).Typeofcrit
          [TIWUserSession(WebApplication.Data).vtrordem[i]] = 2 then
        begin
          // Setlength(MatrizFaixa, 6, K);
          if TIWUserSession(WebApplication.Data).Niveis[vtrordem[i]] = 2 then
          Begin
            MatrizFaixa[0, i] := 0;
            TIWUserSession(WebApplication.Data).MatrizFaixa[1, i] := 1;

            //Yara - Quando o critério é binário, e não está na primeira ou última posição,
            //duas relações devem ser blindadas. Mas o sistema estava blindando apenas uma, por isso
            //foi inserido esse trecho de código.
            if (i = 0) or (i = numcrit -1) then
            begin
            TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] := true;
            end
            else begin
            TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] := true;
            TIWUserSession(WebApplication.Data).vtrrelacoesblin[i-1] := true;
            end;

            Cri_Cong[vtrordem[i]] := 1;
            INC(NumCriBlind);
          End
          else
            for j := 0 to Niveis[vtrordem[i]] - 1 do
            begin
              TIWUserSession(WebApplication.Data).MatrizFaixa[j, i] := Niveis
                [vtrordem[i]] - j;
            end;
          k := k + 1;
        end;

        if Typeofcrit[vtrordem[i]] = 3 then
        begin
          // Setlength(MatrizFaixa, 6, K);
          if Niveis[TIWUserSession(WebApplication.Data).vtrordem[i]] = 2 then
          Begin
            MatrizFaixa[0, i] := 1;
            MatrizFaixa[1, i] := 0;

            //Yara - Quando o critério é binário, e não está na primeira ou última posição,
            //duas relações devem ser blindadas. Mas o sistema estava blindando apenas uma, por isso
            //foi inserido esse trecho de código.
            if (i = 0) or (i = numcrit -1) then
            begin
            TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] := true;
            end
            else begin
            TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] := true;
            TIWUserSession(WebApplication.Data).vtrrelacoesblin[i-1] := true;
            end;

            Cri_Cong[vtrordem[i]] := 1;
            INC(TIWUserSession(WebApplication.Data).NumCriBlind);
          End
          else
            for j := 0 to Niveis[vtrordem[i]] - 1 do
            begin
              TIWUserSession(WebApplication.Data).MatrizFaixa[j, i] := 1 + j;
            end;
          k := k + 1;
        end;
      end;

    end;
    k := 1;
  End;

  procedure Tfrmaintercriterio.IWButton3Click(Sender: TObject);
  begin
    WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
    WebApplication.Terminate();

  end;

  procedure Tfrmaintercriterio.pairwise_comparison;
  var
    MatPL: array of array of integer;
    i, j, k, P1: integer;
    Pinit: real;

    Procedure Verifica_Pergunta;
    var
      z, i: integer;
      PAE: boolean;
    begin
      with TIWUserSession(WebApplication.Data) do
      begin
        // ** Se a pessoa respondeu indiferença, não existirá mais pergunta para o
        // ** Critério atual **//
        if (PAns = 2) and (Crepresentante = -1) then
          exit;
        // ** Gera a nova pergunta **//
        if Position = -1 then
        begin
          // ** Significa que é a primeira pergunta para o critério so IndiceB **//
          // ** No máximo o novo critério estará na última posição **//
          TIWUserSession(WebApplication.Data).Rmax := Length(MatPositions) - 1;
          // ** No mínimo o novo critério estará na primeira posição **//
          Rmin := 0;
          Setlength(PositionA, 0);
        end
        else
        begin
          z := 0;
          // ** Caso não seja a primeira pergunta para o CindiceB, precisaremos verificar qual foi a resposta
          // ** Da última pergunta para a tomada de Decisão **//
          if PAns = 0 then
          begin
            { if Position <> length(MatPositions) - 1 then
              z := 1; }
            // ** Respondeu A **//
            TIWUserSession(WebApplication.Data).Rmin := TIWUserSession
              (WebApplication.Data).Position + z;
          end;
          if PAns = 1 then
          begin
            { if (Position <> 0) then
              z := 1; }
            // ** Respondeu B **//
            TIWUserSession(WebApplication.Data).Rmax := Position;

          end;
        end;

        // ** Testaremos o meio da faixa **//
        Pinit := (Rmax + Rmin) / 2;
        if Pinit = Round(Pinit) then
          // ** Pinit inteiro **//
          Position := StrToInt(FormatFloat('0', Pinit))
        else
          // ** Se Pinit não inteiro, priorizamos a pergunta para critérios em níveis mais elevados **//
          TIWUserSession(WebApplication.Data).Position := StrToInt
            (FormatFloat('0', Pinit - 0.5));

        PAE := false;
        // ** Verifica se a nova posição já foi elicitada **//
        for i := 0 to Length(PositionA) - 1 do
          if Position = TIWUserSession(WebApplication.Data).PositionA[i] then
            PAE := true;

        // ** A finalização do ´processo só se dá quando os dois níveis, atual e subsequente,
        // ** Já foram elicitados **//
        if (PAE) and (Length(MatPositions) > Position + 1) and
          (Length(MatPositions) >= 2) then
          if not((PAns = 1) and (PositionA[Length(PositionA) - 1] = 0)) then
          begin
            { Obs.: PAE = Position Already Elicited
              se length(MatPositions) <= Position + 1 : Se a posição já for a última, não tem pq verificar a próxima
              se length(MatPositions) <= 2 : A verificação anterior já é robusta para identificação do momento de parar }
            // ** Verifica o nível subsequente **//
            P1 := Position + 1;

            PAE := false;
            // ** Verifica se a nova posição já foi elicitada **//
            for i := 0 to Length(PositionA) - 1 do
              if P1 = PositionA[i] then
                PAE := true;

            if PAE = false then
              Position := P1;
          end;
        // ** Se os limites tiverem sido estreitados completamente e se o critério relativo a esse
        // ** limite já tiver sido confrontado com o CindiceB, seguiremos para o próximo critério **//
        if
        { (TIWUserSession(WebApplication.Data).Rmax = TIWUserSession(WebApplication.Data).Rmin) and } (PAE) then
        begin
          TIWUserSession(WebApplication.Data).NextCri := true;
          Position := TIWUserSession(WebApplication.Data)
            .PositionA[Length(PositionA) - 1];
        end
        else
        begin
          // ** Armazena a nova posição **//
          Setlength(PositionA, Length(PositionA) + 1);
          PositionA[Length(PositionA) - 1] := Position;
        end;
      end; // with
    end;

    procedure plotar_graficos_pairwise;
    var
      bt1, wt1, wt, bt: string;
      i, j, regcenter, regcenter1, NumCri: integer;
    begin

    if (rdgrpCPC.Items.Count = 4) or (rdgrpCPC.Items.Count = 3) then
    begin
    rdgrpCPC.Items.Clear;
    with TIWUserSession(WebApplication.Data) do
    begin
    StrDInd:= IndiceA;
    StrDIndA:= Rounding(Bconseqord[IndiceA]);
    StrDIndA1:= Rounding(Wconseqord[IndiceA]);
    StrDInd:= IndiceB;
    StrDIndB:= Rounding(Wconseqord[IndiceB]);
    StrDIndB1:= Rounding(Bconseqord[IndiceB]);
    rdgrpCPC.Items.Add('Consequence A: Value ' + StrDIndA + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Consequence B: Value ' + StrDIndA1 + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB1 + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Indifferent between Consequence A and Consequence B');
    rdgrpCPC.Items.Add('Go back one step');
    btngoback.Visible := true;
    btngoback1.Visible := true;
    if (Copy(StrDIndA, Length(StrDIndA), 1) = 'K') or (Copy(StrDIndA, Length(StrDIndA), 1) = 'M') or
    (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'K') or (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'M') or
    (Copy(StrDIndB, Length(StrDIndB), 1) = 'K') or (Copy(StrDIndB, Length(StrDIndB), 1) = 'M') or
    (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'K') or (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'M') then
    begin
    IWLabel5.visible := true;
    end
    else
    IWLabel5.visible := false;
    end;
    end;


    if (rdgrpCPC.Items.Count = 0) then
    begin
    with TIWUserSession(WebApplication.Data) do
    begin
    StrDInd:= IndiceA;
    TIWUserSession(WebApplication.Data).StrDIndA:= Rounding(Bconseqord[IndiceA]);
    StrDIndA1:= Rounding(Wconseqord[IndiceA]);
    StrDInd:= IndiceB;
    TIWUserSession(WebApplication.Data).StrDIndB:= Rounding(Wconseqord[IndiceB]);
    StrDIndB1:= Rounding(Bconseqord[IndiceB]);
    rdgrpCPC.Items.Add('Consequence A: Value ' + StrDIndA + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Consequence B: Value ' + StrDIndA1 + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB1 + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Indifferent between Consequence A and Consequence B');
    btngoback.Visible := false;
    btngoback1.Visible := false;
    if (Copy(StrDIndA, Length(StrDIndA), 1) = 'K') or (Copy(StrDIndA, Length(StrDIndA), 1) = 'M') or
    (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'K') or (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'M') or
    (Copy(StrDIndB, Length(StrDIndB), 1) = 'K') or (Copy(StrDIndB, Length(StrDIndB), 1) = 'M') or
    (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'K') or (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'M') then
    begin
    IWLabel5.visible := true;
    end
    else
    IWLabel5.visible := false;
    end;
    end;

      with TIWUserSession(WebApplication.Data) do
      begin
      NumCri := numcrit;
      edtconsAOC.Caption := StrDIndA;
      edtconsBOC.Caption := StrDIndA1;
      IWEdit1OC.Text := NomeCrit[IndiceA];
      edtcrit1OC.Caption := Critsiglas[IndiceA] + ' (⬆)';
      IWEdit1OC.Width := ((Length(NomeCrit[IndiceA])*10) + 30);
      regcenter := rgnviewtabOC.Left + (rgnviewtabOC.Width div 2);
      IWEdit1OC.Left := regcenter - (IWEdit1OC.Width div 2);
      edtconsAOC.Left := IWEdit1OC.Left - edtconsAOC.Width - 5;
      edtconsBOC.Left := IWEdit1OC.Left + IWEdit1OC.Width + 5;

      edtconsA1OC.Caption := StrDIndB;
      edtconsB1OC.Caption := StrDIndB1;
      IWEdit2OC.Text := (NomeCrit[IndiceB]);
      edtcrit2OC.Caption := Critsiglas[IndiceB] + ' (⬆)';
      IWEdit2OC.Width := ((Length(NomeCrit[IndiceB])*10) + 30);
      regcenter1 := rgnviewtab.Left + (rgnviewtab.Width div 2);
      IWEdit2OC.Left := regcenter1 - (IWEdit2OC.Width div 2);
      edtconsA1OC.Left := IWEdit2OC.Left - edtconsA1OC.Width - 5;
      edtconsB1OC.Left := IWEdit2OC.Left + IWEdit2OC.Width + 5;//(edtconsB1.Width div 2);

        for i := 0 to numcrit - 1 do
        begin
        if i = IndiceA then
        begin
        if (Typeofcrit[i] = 0) or
        (Typeofcrit[i] = 2) then
        begin
        edtconsAOC.Caption := StrDIndA;
        edtconsBOC.Caption := StrDIndA1;
        edtcrit1OC.Caption := Critsiglas[IndiceA] + ' (⬇)';
        end;
        end;
        end;

          for i := 0 to numcrit - 1 do
        begin
        if i = IndiceB then
        begin
        if (Typeofcrit[i] = 0) or
        (Typeofcrit[i] = 2) then
        begin
        edtconsA1OC.Caption := StrDIndB;
        edtconsB1OC.Caption := StrDIndB1;
        edtcrit2OC.Caption := Critsiglas[IndiceB] + ' (⬇)';
        end;
        end;
        end;
      end;

      with TIWUserSession(WebApplication.Data) do
      begin
        if TIWUserSession(WebApplication.Data).Idioma = 1 then
        begin
          wt := 'Pior';
          bt := 'Melhor';
          wt1 := 'P';
          bt1 := 'M';
        end
        else
        begin
          wt := 'Worst';
          bt := 'Best';
          wt1 := 'W';
          bt1 := 'B';
        end;

        intra_razao;
        IWImage2OC.Visible := true; // torna o componente IWImage visivel
        Chart1.leftAxis.Visible := false;
        Chart1.RightAxis.Items.clear;
        Chart1.leftAxis.Items.clear;
        Chart1.SeriesList.ClearValues;
        Chart1.Title.clear;

        Chart1H.BottomAxis.Visible := false;
        Chart1H.RightAxis.Items.clear;
        Chart1H.leftAxis.Items.clear;
        Chart1H.BottomAxis.Items.clear;
        Chart1H.SeriesList.ClearValues;
        Chart1H.Title.clear;

        // preenchendo tchart 2

        IWImage3OC.Visible := true; // torna o componente IWImage visivel
         Chart2.leftAxis.Visible := false;
         Chart2.RightAxis.Items.clear;
         Chart2.leftAxis.Items.clear;
         Chart2.SeriesList.ClearValues;
         Chart2.Title.clear;

          Chart2H.leftAxis.Visible := false;
          Chart2H.RightAxis.Items.clear;
          Chart2H.leftAxis.Items.clear;
          Chart2H.SeriesList.ClearValues;
          Chart2H.Title.clear;

           Chart1.Series[1].Marks.Font.Size := 8;
           Chart1.Series[0].Marks.Font.Size := 8;
           Chart1H.Series[1].Marks.Font.Size := 8;
           Chart1H.Series[0].Marks.Font.Size := 8;
           Chart2.Series[1].Marks.Font.Size := 8;
           Chart2.Series[0].Marks.Font.Size := 8;
           Chart2H.Series[1].Marks.Font.Size := 8;
           Chart2H.Series[0].Marks.Font.Size := 8;

     // ** da consequência Gráfico A **//
        for i := 0 to numcrit - 1 do
        begin
          // adicionando os nomes das contantes no eixo x
          if i = IndiceA then // é necessário fazer dessa forma pois os indices do grafico são invertidos começando do maior ate o menor
          begin
          TIWUserSession(WebApplication.Data).StrDInd := i;
            if (Typeofcrit[i] = 0) or
             (Typeofcrit[i] = 2) then
            begin

            if valor_razao[i] = 0 then
            valor_razao[i] := 0.03
            else
            valor_razao[i] := valor_razao[i];

            Chart1.Series[0].AddXY(0, TIWUserSession(WebApplication.Data).valor_razao[i] * 100, '(' + bt1 + intTostr(IndiceA + 1)
                + ')' + ':' + Rounding(TIWUserSession(WebApplication.Data)
                  .Bconseqord[IndiceA]), clWebdarkBLUE);
            Chart1H.Series[0].AddXY(TIWUserSession(WebApplication.Data).valor_razao[i], 0, '(' + bt1 + intTostr(i + 1)
            + '):' + Rounding(TIWUserSession(WebApplication.Data)
                  .Bconseqord[IndiceA]), clWebdarkBLUE);
            Chart1H.Series[0].Marks.Item[i].Visible := true;
            edtvisOC2.Visible := false;
            Chart1.Series[0].Legend.Text := (TIWUserSession(WebApplication.Data).NomeCrit[IndiceA] + ' (⬇)');
            end;

            if (Typeofcrit[i] = 1) or
             (Typeofcrit[i] = 3) then
            begin
            Chart1.Series[0].AddXY(0, 100, '(' + bt1 + intTostr(IndiceA + 1)
                + ')' + ':' + Rounding(TIWUserSession(WebApplication.Data)
                  .Bconseqord[IndiceA]), clWebdarkBLUE);
            Chart1H.Series[0].AddXY(1.5, 0, '(' + bt1 + intTostr(i + 1)
            + '):' + Rounding(TIWUserSession(WebApplication.Data)
                  .Bconseqord[IndiceA]), clWebdarkBLUE);
            Chart1H.Series[0].Marks.Item[i].Visible := false;
            edtvisOC2.Visible := true;
            edtvisOC2.Caption := '(' + bt1 + intTostr(i + 1)
            + '):' + Rounding(TIWUserSession(WebApplication.Data)
                  .Bconseqord[IndiceA]);
            Chart1.Series[0].Legend.Text := (TIWUserSession(WebApplication.Data).NomeCrit[IndiceA] + ' (⬆)');
            end;

            Chart1.LeftAxis.Maximum:= 100;
            Chart1.LeftAxis.AutomaticMaximum:=false;
            Chart1.LeftAxis.Minimum:= 0;

            Chart1.Series[0].Color := clwebdarkblue;

            Chart1H.LeftAxis.Maximum:= 1.5;
            Chart1H.LeftAxis.AutomaticMaximum:=false;
            Chart1H.LeftAxis.Minimum:= 0;

            Chart1H.Series[0].Color := clwebdarkblue;

          end;
          end;

          for i := 0 to numcrit - 1 do
          begin
          if i = TIWUserSession(WebApplication.Data).IndiceB then
          begin
          if (Typeofcrit[i] = 0) or
             (Typeofcrit[i] = 2) then
             begin
            TIWUserSession(WebApplication.Data).StrDInd := i;
            Chart1.Series[1].AddXY(0, 100, '(' + wt1 + intTostr(IndiceB + 1)
                + ')' + ':' + Rounding(TIWUserSession(WebApplication.Data)
                  .Wconseqord[IndiceB]), clwebRED);
             Chart1.Series[1].Marks.Item[i].Visible := false;
             Chart1H.Series[1].AddXY(1.5, 0, '(' + wt1 + intTostr(IndiceB + 1)
        + '):' + Rounding(Wconseqord[IndiceB]), clwebred);
              Chart1H.Series[1].Marks.Item[i].Visible := false;
              edvis2OC.Visible := true;
            edvis2OC.Caption := '(' + wt1 + intTostr(IndiceB + 1)
            + '):' + Rounding(TIWUserSession(WebApplication.Data).Wconseqord[IndiceB]);
            Chart1.Series[1].Legend.Text := (TIWUserSession(WebApplication.Data).NomeCrit[IndiceB] + ' (⬇)');
          end;



        if (Typeofcrit[i] = 1) or
        (Typeofcrit[i] = 3) then
        begin
        if valor_razao[i] = 0 then
            valor_razao[i] := 0.03
            else
            valor_razao[i] := valor_razao[i];

           Chart1.Series[1].AddXY(0, valor_razao[i] *100, '(' + wt1 + intTostr(i + 1)
              + '):' + Rounding(Wconseqord[i]), clwebred);
           Chart1.Series[1].Marks.Item[i].Visible := true;
           Chart1H.Series[1].Marks.Item[i].Visible := true;
           Chart1H.Series[1].AddXY(valor_razao[i], 0, '(' + wt1 + intTostr(i + 1)
              + '):' + Rounding(Wconseqord[i]), clwebred);
           edvis2OC.Visible := false;
           Chart1.Series[1].Legend.Text := (TIWUserSession(WebApplication.Data).NomeCrit[IndiceB] + ' (⬆)');
        end;

           Chart1.Series[1].Color := clRed;
        end;
      end;


        IWImage2OC.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
          (Chart1.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage2OC.Width,
              IWImage2OC.Height)));
         IWImage20OC.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
          (Chart1H.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage20OC.Width,
              IWImage20OC.Height)));

        intra_razao;
        // ** da consequência Gráfico B **//
        for i := 0 to numcrit - 1 do
        begin
          // adicionando os nomes das contantes no eixo x
          if i = IndiceB then
          begin
          TIWUserSession(WebApplication.Data).StrDInd := i;
          if (Typeofcrit[i] = 0) or
          (Typeofcrit[i] = 2) then
          begin

          if valor_razao[i] = 0 then
            valor_razao[i] := 0.03
            else
            valor_razao[i] := valor_razao[i];

            Chart2.Series[1].AddXY(0, TIWUserSession(WebApplication.Data).valor_razao[i] * 100, '(' + bt1 + intTostr(IndiceB + 1)
                + ')' + ':' + Rounding(TIWUserSession(WebApplication.Data).Bconseqord[IndiceB]), clwebdarkblue);
            Chart2.Series[1].Legend.Text := (TIWUserSession(WebApplication.Data).NomeCrit[IndiceB] + ' (⬇)');
          end;


         if (Typeofcrit[i] = 1) or
          (Typeofcrit[i] = 3) then
          Chart2.Series[1].AddXY(0, 100, '(' + bt1 + intTostr(IndiceB +1) + '):' + Rounding(Bconseqord[IndiceB]), clwebdarkblue);

          Chart2.Series[1].Color := clwebdarkblue;
          Chart2.Series[1].Legend.Text := (TIWUserSession(WebApplication.Data).NomeCrit[IndiceB] + ' (⬆)');
          Chart2.LeftAxis.Maximum:= 100;
          Chart2.LeftAxis.AutomaticMaximum:= false;
          Chart2.LeftAxis.Minimum:= 0;

          Chart2H.rightAxis.Maximum:= 1;
          Chart2H.rightAxis.AutomaticMaximum:=false;
          Chart2H.rightAxis.Minimum:= 0;
          Chart2H.Series[1].Marks.Item[i].Visible := true;


          if (Typeofcrit[i] = 1) or
          (Typeofcrit[i] = 3) then
          Chart2H.Series[1].AddXY(1, 0, '(' + bt1 + intTostr(IndiceB +1)
              + '):' + Rounding(Bconseqord[IndiceB]), clwebdarkblue);

          if (Typeofcrit[i] = 0) or
          (Typeofcrit[i] = 2) then
          begin
          if valor_razao[i] = 0 then
            valor_razao[i] := 0.03
            else
            valor_razao[i] := valor_razao[i];

          Chart2H.Series[1].AddXY(TIWUserSession(WebApplication.Data).valor_razao[i], 0, '(' + bt1 + intTostr(IndiceB +1)
              + '):' + Rounding(Bconseqord[IndiceB]), clwebdarkblue);
          end;
          end;
        end;

        for i := 0 to numcrit - 1 do
        begin
        if i = IndiceA then
          begin
            TIWUserSession(WebApplication.Data).StrDInd := i;
         if (Typeofcrit[i] = 0) or
        (Typeofcrit[i] = 2) then
        begin
            Chart2.Series[0].AddXY(0, 100, '(' + wt1 + intTostr(IndiceA + 1)
                + ')' + ':' + Rounding(TIWUserSession(WebApplication.Data)
                  .Wconseqord[IndiceA]), clwebRED);
            Chart2.Series[0].Legend.Text := (TIWUserSession(WebApplication.Data).NomeCrit[IndiceA] + ' (⬇)');
        end;

          if (Typeofcrit[i] = 1) or
        (Typeofcrit[i] = 3) then
        begin
            if valor_razao[i] = 0 then
            valor_razao[i] := 0.03
            else
            valor_razao[i] := valor_razao[i];
            Chart2.Series[0].Legend.Text := (TIWUserSession(WebApplication.Data).NomeCrit[IndiceA] + ' (⬆)');
            Chart2.Series[0].AddXY(0, TIWUserSession(WebApplication.Data)
          .valor_razao[i] * 100, '(' + wt1 + intTostr(IndiceA + 1)
                + ')' + ':' + Rounding(TIWUserSession(WebApplication.Data)
                  .Wconseqord[IndiceA]), clwebRED);
        end;

          Chart2.Series[0].Color := clRed;



        if (Typeofcrit[i] = 0) or
        (Typeofcrit[i] = 2) then
        begin
        Chart2H.Series[0].AddXY(1, 0, '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + Rounding(Wconseqord[IndiceA]), clwebRED);
        Chart2H.Series[0].Marks.Item[i].Visible := false;
        edtvisOC.Visible := true;
        edtvisOC.Caption := '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + Rounding(Wconseqord[IndiceA]);
        end;


        if (Typeofcrit[i] = 1) or
        (Typeofcrit[i] = 3) then
        begin
        if valor_razao[i] = 0 then
            valor_razao[i] := 0.03
            else
            valor_razao[i] := valor_razao[i];
        Chart2H.Series[0].AddXY(TIWUserSession(WebApplication.Data)
          .valor_razao[i], 0, '(' + wt1 + intTostr(IndiceA + 1)
              + '):' + Rounding(Wconseqord[IndiceA]), clwebRED);
        Chart2H.Series[0].Marks.Item[i].Visible := true;
        edtvisOC.Visible := false;
        end;
          end;
        end;
        IWImage3OC.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
          (Chart2.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage3OC.Width,
              IWImage3OC.Height)));
        IWImage26OC.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
          (Chart2H.TeeCreateBitmap(clWebAQUA, rect(0, 0, IWImage26OC.Width,
              IWImage26OC.Height)));
      end; // with
    end;

  begin
    with TIWUserSession(WebApplication.Data) do
    begin
      if Length(MatPositions) = 0 then
      begin
        // ** Primeira pergunta da ordenação **//
        // ** Supõem-se que C1 é o primeiro na ordem **//
        Setlength(MatPositions, 1, 1);
        MatPositions[0, 0] := 0;
        // ** Pergunta-se C1 e C2 **//
        IndiceA := 0;
        IndiceB := 1;
        // ** Estão pleiteando a primeira posição **//
        Position := 0;
        // ** Inicializa as variáveis de controle **//
        // ** Com essa pergunta já será possível definir a posição do critério do IndiceB **//
        NextCri := true;
        PAns := -1;
        // ** Procedimento para geração dos gráficos **//
        plotar_graficos_pairwise;
        // ** Inicializa os limites **//
        Rmin := 0;
        Rmax := 0;
        exit;
      end;
      if PAns = 3 then
      begin
        {// ** Recupera as informações do ciclo **//
        TIWUserSession(WebApplication.Data).Rmin := RminA;
        TIWUserSession(WebApplication.Data).Rmax := RmaxA;
        // ** Redefinindo a posição anterior **//
        Pinit := (Rmax + Rmin) / 2;
        if Pinit = Round(Pinit) then
          // ** Pinit inteiro **//
          Position := StrToInt(FormatFloat('0', Pinit))
        else
          // ** Se Pinit não inteiro, priorizamos a pergunta para critérios em níveis mais elevados **//
          TIWUserSession(WebApplication.Data).Position := StrToInt
            (FormatFloat('0', Pinit - 0.5));   }
        Position := PositionA1;
        Setlength(PositionA, Length(PositionAA));
        for i := 0 to Length(PositionA) - 1 do
          TIWUserSession(WebApplication.Data).PositionA[i] := PositionAA[i];
        IndiceA := IA;
        IndiceB := IB;
        NextCri := NextCriA;
        Setlength(MatPositions, Length(MatPositionsA));
        for i := 0 to Length(MatPositions) - 1 do
        begin
          Setlength(MatPositions[i], Length(MatPositionsA[i]));
          for j := 0 to Length(MatPositions[i]) - 1 do
            TIWUserSession(WebApplication.Data).MatPositions[i, j] := MatPositionsA[i, j];
        end;
        rdgrpCPC.Items.Delete(3);
        btngoback.Visible := false;
        btngoback1.Visible := false;
        plotar_graficos_pairwise;
        rdgrpCPC.Items.Clear;
    with TIWUserSession(WebApplication.Data) do
    begin
    StrDInd:= IndiceA;
    StrDIndA:= Rounding(Bconseqord[IndiceA]);
    StrDIndA1:= Rounding(Wconseqord[IndiceA]);
    StrDInd:= IndiceB;
    StrDIndB:= Rounding(Wconseqord[IndiceB]);
    StrDIndB1:= Rounding(Bconseqord[IndiceB]);
    rdgrpCPC.Items.Add('Consequence A: Value ' + StrDIndA + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Consequence B: Value ' + StrDIndA1 + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB1 + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Indifferent between Consequence A and Consequence B');
    if (Copy(StrDIndA, Length(StrDIndA), 1) = 'K') or (Copy(StrDIndA, Length(StrDIndA), 1) = 'M') or
    (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'K') or (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'M') or
    (Copy(StrDIndB, Length(StrDIndB), 1) = 'K') or (Copy(StrDIndB, Length(StrDIndB), 1) = 'M') or
    (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'K') or (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'M') then
    begin
    IWLabel5.visible := true;
    end
    else
    IWLabel5.visible := false;
    end;
        IWListbox5.Items.clear;
        for i := 0 to Length(MatPositions) - 1 do
          for j := 0 to Length(MatPositions[i]) - 1 do
            IWListbox5.Items.Add
              (intTostr(i + 1) + '.' + NomeCrit[MatPositions[i, j]]);

        INC(TIWUserSession(WebApplication.Data).contord); // BD

        // salvar banco de dados na tabela problem
        TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
        SalvarBDinter;

        // salvar banco de dados na tabela current_stage
        TIWUserSession(WebApplication.Data).BDstatus := '0';
        TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
        SalvarBDinter;

        exit;

      end
      else if (Crepresentante <> -1) then
      begin
        // ** Salva as informações do ciclo **//
        RminA := TIWUserSession(WebApplication.Data).Rmin;
        RmaxA := TIWUserSession(WebApplication.Data).Rmax;
        TIWUserSession(WebApplication.Data).IA := IndiceA;
        TIWUserSession(WebApplication.Data).IB := IndiceB;
        PositionA1 := Position;
        Setlength(PositionAA, Length(PositionA));
        for i := 0 to Length(PositionA) - 1 do
          PositionAA[i] := TIWUserSession(WebApplication.Data).PositionA[i];
        NextCriA := TIWUserSession(WebApplication.Data).NextCri;

        // ** Salva a ordem atual **//
        Setlength(MatPositionsA, Length(MatPositions));
        for i := 0 to Length(MatPositions) - 1 do
        begin
          Setlength(MatPositionsA[i], Length(MatPositions[i]));
          for j := 0 to Length(MatPositions[i]) - 1 do
            TIWUserSession(WebApplication.Data).MatPositionsA[i, j] := MatPositions[i, j];
        end;
        if rdgrpCPC.Items.Count < 4 then
          if Idioma = 0 then
          begin
            rdgrpCPC.Items.Add('Go back one step');
            btngoback.Visible := true;
            btngoback1.Visible := true;
          end
          else
            rdgrpCPC.Items.Add('Voltar um passo');
      end;
      // ** Verifica se para o critério atual serão necessárias mais perguntas **//
      if PAns <> 2 then
        Verifica_Pergunta;
      // ** Se a última pergunta realizada foi suficiente para definir a posição do critério **//
      // ** Isso só vai acontecer se a possível posição do critério estiver limitada entre duas adjacentes
      // ** ou se o mesmo responder indiferença **//
      if (NextCri) or (PAns = 2) then
      begin
        // ** Responde A **//
        if PAns = 0 then
        begin
          // ** Significa que o KcindiceB < KcindiceA **//
          // ** Introduz CindiceB logo abaixo de  CindiceA **//
          Setlength(MatPL, Length(MatPositions) + 1);
          k := 0;
          for i := 0 to Length(MatPositions) - 1 do
          begin
            if Length(MatPositions) = Position + 1 then
            begin
              // ** Significa que o critério entrará na última posição do ranking **//
              // ** Neste caso não é preciso fazer a verificação abaixo, pois ela serve para casos em que o critério
              // ** é incluíndo no meio do ranking **//
              Setlength(MatPL[Position + 1], 1);
              MatPL[Position + 1, 0] := IndiceB;
            end
            else if TIWUserSession(WebApplication.Data).Position + 1 = i then
            begin
              Setlength(MatPL[i], 1);
              MatPL[i, 0] := IndiceB;
              // ** K é uma variável auxiliar para que possamos prosseguir o preenchimento sem ter de criar outro laço **//
              // ** K força que o sistema salte uma linha, já que o CindiceB acabou de ser incluído nesta posição **//
              k := 1;
            end;

            Setlength(MatPL[i + k], Length(MatPositions[i]));
            for j := 0 to Length(MatPositions[i]) - 1 do
              MatPL[i + k, j] := MatPositions[i, j];
          end;
        end; // Pans = 0
        // ** Responde B **//
        if PAns = 1 then
        begin
          // ** Significa que o KcindiceB > KcindiceA **//
          // ** Introduz CindiceB logo acima de  CindiceA **//
          // ** Vale ressaltar que quando a resposta "final" for B, não existe a possibilidade do CIndiceB ir para última posição **//
          Setlength(MatPL, Length(MatPositions) + 1);
          k := 0;
          for i := 0 to Length(TIWUserSession(WebApplication.Data)
              .MatPositions) - 1 do
          begin
            // ** Quando I for igual a positição testada, incluíremos o CindiceB, e na sequência colocamos todos os demais critérios já ordenados **//
            if Position = i then
            begin
              Setlength(MatPL[i], 1);
              MatPL[i, 0] := IndiceB;
              // ** K é uma variável auxiliar para que possamos prosseguir o preenchimento sem ter de criar outro laço **//
              // ** K força que o sistema salte uma linha, já que o CindiceB acabou de ser incluído nesta posição **//
              k := 1;
            end;
            Setlength(MatPL[i + k], Length(MatPositions[i]));

            for j := 0 to Length(MatPositions[i]) - 1 do
              MatPL[i + k, j] := MatPositions[i, j];
          end;
        end; // Pans = 1

        if PAns = 2 then
        begin
          if Crepresentante = -1 then
          begin
            IWescolhadorepresentante.Items.clear;
            // ** Se o critério A for binário, não pode ser representante **//
            if Niveis[IndiceA] = 2 then
            begin
              Crepresentante := IndiceB;
              pairwise_comparison;
              exit;
            end
            else
              IWescolhadorepresentante.Items.Add
                (CritSiglas[TIWUserSession(WebApplication.Data).IndiceA]);
            // ** Se o critério B for binário, não pode ser representante **//
            if Niveis[IndiceB] = 2 then
            begin
              Crepresentante := IndiceA;
              pairwise_comparison;
              exit;
            end
            else
              IWescolhadorepresentante.Items.Add
                (CritSiglas[TIWUserSession(WebApplication.Data).IndiceB]);
            IWescolhadorepresentante.ItemIndex := 0;
            IWRegionescolherentrecriteriosindiferentes.show;
            // ** desabilita os componentes **//
            rdgrpCPC.Enabled := false;
            btnOKPairWiseCO.Enabled := false;
            exit;
          end;
          // ** Significa que o KcindiceB = KcindiceA **//
          // ** Introduz CindiceB junto a CindiceA **//
          k := 0;
          Setlength(MatPL, Length(TIWUserSession(WebApplication.Data).MatPositions));
          for i := 0 to Length(MatPositions) - 1 do
          begin
            Setlength(MatPL[i], Length(MatPositions[i]));
            for j := 0 to Length(MatPositions[i]) - 1 do
              MatPL[i, j] := MatPositions[i, j];
            // ** Quando I for igual a positição testada, incluíremos o CindiceB, e na sequência colocamos todos os demais critérios já ordenados **//
            if TIWUserSession(WebApplication.Data).Position = i then
            begin
              Setlength(MatPL[i], Length(MatPositions[i]) + 1);
              // ** O critério escolhido como representante é alocado na primeira posiçõa
              // ** da matriz para o nível especificado **//
              if TIWUserSession(WebApplication.Data).Crepresentante = TIWUserSession(WebApplication.Data).IndiceA then
              begin
                MatPL[i, 0] := IndiceA;
                MatPL[i, Length(MatPL[i]) - 1] := TIWUserSession(WebApplication.Data).IndiceB;
              end
              else
              begin
                MatPL[i, 0] := IndiceB;
                MatPL[i, Length(MatPL[i]) - 1] := IndiceA;
              end; // else
            end; // position = i
          end; // for i
        end; // Pans = 2


        // Código antes da mudança - 06/12
        // ** Após a tomada de decisão, reescreve a matriz de posições **//
        Setlength(MatPositions, Length(MatPL));
        for i := 0 to Length(MatPositions) - 1 do
        begin
          Setlength(MatPositions[i], Length(MatPL[i]));
          for j := 0 to Length(MatPositions[i]) - 1 do
            TIWUserSession(WebApplication.Data).MatPositions[i, j] := MatPL
              [i, j];
        end; // for i

         {Setlength(MatPositions, Length(MatPL));
        for i := 0 to Length(MatPositions) - 1 do
        for j := 0 to Length(MatPositions[i]) - 1 do
        begin
          if TIWUserSession(WebApplication.Data).MatPositions[i, j] = MatPL[i,0] then
          begin
          Setlength(MatPositions[i], Length(MatPL[i]));
            TIWUserSession(WebApplication.Data).MatPositions[i, j] := MatPL
              [i, j];
          end;
        end; // for i }

        NextCri := false;
        // ** Passa para o próximo critério **//
        IndiceB := IndiceB + 1;
        Position := -1;
        // ** Gera a pergunta para o novo critério **//
        Verifica_Pergunta;
        IWListbox5.Items.clear;
        for i := 0 to Length(MatPositions) - 1 do
          for j := 0 to Length(MatPositions[i]) - 1 do
            IWListbox5.Items.Add
              (intTostr(i + 1) + '.' + NomeCrit[MatPositions[i, j]]);
        if IndiceB = numcrit then
        begin
          // ** Finaliza-se o processo **//
          IndiceA := 0;
          IndiceB := 0;
          PAns := -1;
          // ** desabilita os componentes **//
          rdgrpCPC.Enabled := false;
          btnOKPairWiseCO.Enabled := false;
          IWRegion1.Visible := true;
          exit;
        end;
      end;

      // ** O representante da relação sempre se encontra na primeira coluna **//
      IndiceA := TIWUserSession(WebApplication.Data).MatPositions[TIWUserSession(WebApplication.Data).Position, 0];
      // ** Procedimento para geração dos gráficos **//
      plotar_graficos_pairwise;
      // ** Habilita os componentes **//
      rdgrpCPC.Enabled := true;
      btnOKPairWiseCO.Enabled := true;
      btnrestartPC.Enabled := true; // Habilitado depois do primeiro ok
      lnkoverallevaluation.Enabled := false;
      INC(TIWUserSession(WebApplication.Data).contord); // BD

      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
      SalvarBDinter;

      // salvar banco de dados na tabela current_stage
      TIWUserSession(WebApplication.Data).BDstatus := '0';
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
      SalvarBDinter;
    end; // With
  end;

  procedure Tfrmaintercriterio.intra_razao;
  var
    i: integer;
  begin
    with TIWUserSession(WebApplication.Data) do
    begin
      Setlength(valor_razao, numcrit);
      for i := 0 to numcrit - 1 do
      begin

        if TIWUserSession(WebApplication.Data).Wconseqord[i] > TIWUserSession(WebApplication.Data).Bconseqord[i] then
        /// condição de minimização ///
        begin
          if (Wconseqord[i] < 0) and (Bconseqord[i] < 0) then
          // fórmula para caso negativo
          begin
            valor_razao[i] := (Wconseqord[i] / Bconseqord[i]);
          end;
          if (Wconseqord[i] >= 0) and (Bconseqord[i] >= 0) then
          // fórmula para caso positivo
          begin
            valor_razao[i] := (Bconseqord[i] / Wconseqord[i]);
          end;
          if (Wconseqord[i] < 0) and (Bconseqord[i] > 0) then
          // fórmula para caso misto
          begin
            valor_razao[i] :=
              ((Wconseqord[i] / (Bconseqord[i] - Wconseqord[i])) + 1 -
                (Bconseqord[i] / (Bconseqord[i] - Wconseqord[i])));
          end;
          if (Bconseqord[i] < 0) and (Wconseqord[i] > 0) then
          // fórmula para caso misto
          begin
            valor_razao[i] :=
              ((Wconseqord[i] / (Bconseqord[i] - Wconseqord[i])) + 1 -
                (Bconseqord[i] / (Bconseqord[i] - Wconseqord[i])));
          end;
        end; // do meu primeiro if

        if Wconseqord[i] < Bconseqord[i] then
        /// condição de maximização///
        begin
          if (Wconseqord[i] < 0) and (Bconseqord[i] < 0) then
          // fórmula para caso negativo
          begin
            valor_razao[i] := Bconseqord[i] / Wconseqord[i];
          end;
          if (Wconseqord[i] >= 0) and (Bconseqord[i] >= 0) then
          // fórmula para caso positivo
          begin
            TIWUserSession(WebApplication.Data).valor_razao[i] := Wconseqord[i] / Bconseqord[i];
          end;
          if (Wconseqord[i] < 0) and (Bconseqord[i] > 0) then
          // fórmula para caso misto
          begin
            valor_razao[i] := (Wconseqord[i] / (Bconseqord[i] - Wconseqord[i]))
              + 1 - (Bconseqord[i] / (Bconseqord[i] - Wconseqord[i]));
          end;
          if (Bconseqord[i] < 0) and (Wconseqord[i] > 0) then
          begin
            valor_razao[i] := (Wconseqord[i] / (Bconseqord[i] - Wconseqord[i]))
              + 1 - (Bconseqord[i] / (Bconseqord[i] - Wconseqord[i]));
          end;
        end; // do 2º if
      end; // do for
    end; // do with
    // Chart11.leftAxis.Items.Add(intra_razao, 'Worst');

  end;

  procedure Tfrmaintercriterio.IWButton4Click(Sender: TObject);
  begin
    WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
    WebApplication.Terminate();
  end;

  procedure Tfrmaintercriterio.IWButton6Click(Sender: TObject);
  var
    i, j, numcrit: integer;
    vtrblin: array of boolean;
    auxcrit, auxnome, vtrnomecrit: array of string;
  begin
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(vtrblin, numcrit);
    Setlength(TIWUserSession(WebApplication.Data).vtrblin, numcrit);
    Setlength(TIWUserSession(WebApplication.Data).NomeCrit, numcrit);
    Setlength(vtrnomecrit, numcrit);
    Setlength(auxcrit, numcrit);
    Setlength(auxnome, numcrit);
    IWRegionescolherentrecriteriosindiferentes.Visible := false;
    IWRgnavaliacaoholistica.Visible := true;

    // INC(TIWUserSession(WebApplication.Data).contblin);

    for i := 0 to numcrit - 1 do
    begin
      vtrblin[i] := TIWUserSession(WebApplication.Data).vtrblin[i];

    end;

    // substituir no vetor de critérios blindados o false por um true
    // caso o item seja selecionado ele continua aparesenco como false no vetor de critérios blindados
    // caso contrario, ou seja, não for selecionado, ele vai aparecer com true no vetor

    // varrendo o vetor de nomes e pegando o indice do nome que é semelhante ao do listbox que foi selecionado

    // quarta tentativa de codigo

    for i := 0 to IWescolhadorepresentante.Items.Count - 1 do
    begin

      if IWescolhadorepresentante.Selected[i] then
      begin

      end
      else
      begin
        INC(TIWUserSession(WebApplication.Data).contblin);
        Setlength(TIWUserSession(WebApplication.Data).auxnomeblin,
          TIWUserSession(WebApplication.Data).contblin);
        TIWUserSession(WebApplication.Data).auxnomeblin
          [TIWUserSession(WebApplication.Data).contblin - 1] := intTostr
          (TIWUserSession(WebApplication.Data).m) + '.' +
          IWescolhadorepresentante.Items[i];
      end;
    end;

    { //terceira tentativa de codigo
      if IWListboxcriteriosordenados.Items.Count = IWescolhadorepresentante.Items.Count then
      begin
      for i := 0 to IWescolhadorepresentante.Items.Count - 1 do
      begin
      if IWescolhadorepresentante.Selected[i] then
      TIWUserSession(WebApplication.Data).vtrblin[i] := false
      else
      begin
      TIWUserSession(WebApplication.Data).vtrblin[i] := true;
      end;// else
      end; // for
      end //se IWListboxcriteriosordenados.Items.Count = IWescolhadorepresentante.Items.Count
      else //se IWListboxcriteriosordenados.Items.Count <> IWescolhadorepresentante.Items.Count
      begin

      for i := 0 to IWescolhadorepresentante.Items.Count - 1 do
      begin
      if IWescolhadorepresentante.Selected[i] then
      begin
      for j := 0 to IWListboxcriteriosordenados.Items.Count - 1 do
      begin
      if (inttostr (TIWUserSession(WebApplication.Data).m)+'.'+IWescolhadorepresentante.Items[i])= IWListboxcriteriosordenados.Items[j] then
      begin
      TIWUserSession(WebApplication.Data).vtrblin[j]:= false;
      end;
      end;
      // TIWUserSession(WebApplication.Data).vtrblin[IWListboxcriteriosordenados.Items.Count- IWescolhadorepresentante.Items.Count-TIWUserSession(WebApplication.Data).m + TIWUserSession(WebApplication.Data).contblin+1] := false
      end //do if
      else
      begin
      TIWUserSession(WebApplication.Data).vtrblin[j]:= true;
      //TIWUserSession(WebApplication.Data).vtrblin[IWListboxcriteriosordenados.Items.Count- IWescolhadorepresentante.Items.Count-TIWUserSession(WebApplication.Data).m + TIWUserSession(WebApplication.Data).contblin+1 ] := true;
      end;//do else


      end;  // for
      end;//do else }

  end;

  procedure Tfrmaintercriterio.IWButton8Click(Sender: TObject);
  begin
    WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
    WebApplication.Terminate();
  end;

  procedure Tfrmaintercriterio.btnYOEClick(Sender: TObject);
  var
    i: integer;
  begin

    IWRgnconfirmarordenacao.Visible := false;
    IWRgnavaliacaoholistica.Visible := true;
    lnkpairwisecomparison.Enabled := false;
    Btnrestart.Enabled := true;
    Btnchoose.Enabled := false;
    IWListboxcriteriosordenados.Enabled := false;
    IWBtnstep2.Enabled := true;

    // passando para as variáveis da elicitação
  end;

  procedure Tfrmaintercriterio.btnYPCClick(Sender: TObject);
  var
    i, j, k, numcrit: integer;

  begin
    IWRegion1.Visible := false;
    btnrestartPC.Enabled := false; // Vai ser reabilitado no botão Mudar para pareada
    lnkoverallevaluation.Enabled := false;
    IWBtnstep22.Enabled := true;
    btnconseqA1OC.Enabled := false;
    btnconseqB1OC.Enabled := false;
    btnconseqAOC.Enabled := false;
    btnconseqBOC.Enabled := false;
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, numcrit);
    Setlength(TIWUserSession(WebApplication.Data).vtrordem, numcrit);
    Setlength(TIWUserSession(WebApplication.Data).vtrrelacoesblin, numcrit - 1);
    Setlength(TIWUserSession(WebApplication.Data).vtrblin, numcrit);
    Setlength(TIWUserSession(WebApplication.Data).Representantes, Length
        (TIWUserSession(WebApplication.Data).MatPositions));
    // nesse caso o vetor posições funciona como a ordem dos criterios que foi estabelecida, assim quando se aloca o ultimo critério é preciso passar essa ordem para a variavel que vai carregar essa informação para a elicitação
    // como nesse caso não existe criterios blindados nem se precisa so vetor de posições como no caso da avaliação holistica deve-se zerar esses vetores

    with TIWUserSession(WebApplication.Data) do
    begin
      k := 0;
      // ** Passando a informação para o vetor ordem **//
      for i := 0 to Length(MatPositions) - 1 do
        for j := 0 to Length(TIWUserSession(WebApplication.Data)
            .MatPositions[i]) - 1 do
        begin
          TIWUserSession(WebApplication.Data).vtrordem[k] := TIWUserSession
            (WebApplication.Data).MatPositions[i, j];
          TIWUserSession(WebApplication.Data).vtrposicoes[k] := i + 1;
          if k <= numcrit - 1 then
          begin
            TIWUserSession(WebApplication.Data).vtrrelacoesblin[k] := false;
            if j > 0 then
            begin
              TIWUserSession(WebApplication.Data).vtrrelacoesblin[k - 1] :=
                true;
              TIWUserSession(WebApplication.Data).LimMin[k - 1] := 1;
              TIWUserSession(WebApplication.Data).LimMax[k - 1] := 1;
              TIWUserSession(WebApplication.Data).LimMinA[k - 1] := 1;
              TIWUserSession(WebApplication.Data).LimMaxA[k - 1] := 1;
            end;
          end;
          if j = 0 then
          begin
            TIWUserSession(WebApplication.Data).vtrblin[k] := false;
            TIWUserSession(WebApplication.Data).Representantes[i] := k;
          end
          else
            TIWUserSession(WebApplication.Data).vtrblin[k] := true;
          INC(k);
        end;
    end;

    // desativando o botão ok
    IWButton2.Enabled := false; // Vai ser reabilitado no botão Mudar para pareada
    btnOKPairWiseCO.Enabled := false;
    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 10;
    SalvarBDinter;
    // salvar banco de dados na tabela current stage
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 12;
    SalvarBDinter;

  end;

  procedure Tfrmaintercriterio.btnnenhumaopcao1Click(Sender: TObject);
var
seq_cam : string;
begin
if lnkvis1.Visible = false then
begin
TIWUserSession(WebApplication.Data).vis := 'GV';
TIWUserSession(WebApplication.Data).resp := '-NGV';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

if lnkvis1.Visible = true then
begin
TIWUserSession(WebApplication.Data).vis := 'GH';
TIWUserSession(WebApplication.Data).resp := '-NGH';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;
rdgrppreference.ItemIndex := 3;
BrnOKClick(self);
TIWUserSession(WebApplication.Data).seq_cam := '';

end;

procedure Tfrmaintercriterio.btnnenhumaopcaoClick(Sender: TObject);
var
seq_cam : string;
begin
TIWUserSession(WebApplication.Data).vis := 'TB';
TIWUserSession(WebApplication.Data).resp := '-NT-';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;
rdgrppreference.ItemIndex := 3;
BrnOKClick(self);
TIWUserSession(WebApplication.Data).seq_cam := '';

end;

procedure Tfrmaintercriterio.btnNOEClick(Sender: TObject);
  var
    i, numcrit: integer;
    auxcrit: array of string;
    bt, bt1, wt, wt1: string;
  begin
    IWRgnconfirmarordenacao.Visible := false;
    IWRgnavaliacaoholistica.Visible := true;
    Btnrestart.Enabled := false;
    lnkpairwisecomparison.Enabled := true;
    IWListboxordenarcrit.clear;
    IWListboxcriteriosordenados.clear;
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(auxcrit, numcrit);
    if TIWUserSession(WebApplication.Data).Idioma = 1 then
    begin
      wt := 'Pior';
      bt := 'Melhor';
      wt1 := 'P';
      bt1 := 'M';
    end
    else
    begin
      wt := 'Worst';
      bt := ' ';
      wt1 := 'W';
      bt1 := 'B';
    end;
    TIWUserSession(WebApplication.Data).contord := 0; // BD
    for i := 0 to numcrit - 1 do
    Begin
      auxcrit[i] := TIWUserSession(WebApplication.Data).CritSiglas[i];
      TIWUserSession(WebApplication.Data).vetorgrafico[i] := 0;
    end;

    for i := 0 to numcrit - 1 do
    // Colocar novamente os vetores no listbox inicial
    begin

      IWListboxordenarcrit.Items.Add(auxcrit[i] + '-' + TIWUserSession
          (WebApplication.Data).NomeCrit[i]);
      // IWListboxordenarcrit.Items.Add(TIWUserSession(WebApplication.Data).vtrnomecrit[i]);
    end;
    TIWUserSession(WebApplication.Data).m := 0;
    TIWUserSession(WebApplication.Data).n := 0;
    TIWUserSession(WebApplication.Data).auxiAPAGAR := 0;
    Setlength(TIWUserSession(WebApplication.Data).vtrrelacoesblin, 0);
    Setlength(TIWUserSession(WebApplication.Data).vtrblin, 0);
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, 0);
    Setlength(TIWUserSession(WebApplication.Data).vordem, 0);

    // código para o gráfico retornar ao inicio
    IWImggraficoordholistica.Visible := true;
    // torna o componente IWImage visivel
    Chart11.BottomAxis.Visible := true; // torna o eixo x visível
    Chart11.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart11.leftAxis.Items.clear; // limpando os valores dos eixos para não se sobrepor

    for i := 0 to numcrit - 1 do
    begin
     if ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 1)) or
             ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 3)) or ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 5)) then
      begin
      TIWUserSession(WebApplication.Data).StrDInd := i;
      Chart11.Series[0].AddXY(i, 1, bt1 + intTostr(i + 1) + ':' + {trescasas}
          Rounding(TIWUserSession(WebApplication.Data).Bconseqord[i]));
      Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
          .valor_razao[i], wt1 + intTostr(i + 1) + ':' + {trescasas}
          Rounding(TIWUserSession(WebApplication.Data).Wconseqord[i]));
      end;

      if ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 0)) or
             ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 2)) or ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 4)) then
      begin
      TIWUserSession(WebApplication.Data).StrDInd := i;
      Chart11.Series[0].AddXY(i, 1, wt1 + intTostr(i + 1) + ':' + {trescasas}
          Rounding(TIWUserSession(WebApplication.Data).wconseqord[i]));
      Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
          .valor_razao[i], bt1 + intTostr(i + 1) + ':' + {trescasas}
          Rounding(TIWUserSession(WebApplication.Data).bconseqord[i]));
      end;
      Chart11.BottomAxis.Items.Add(i, auxcrit[i]);
      // adicionando os nomes das contantes no eixo x
      // Chart11.leftAxis.Items.Add(0.02, wt); // adicionando o nome worst no eixo y do pior critério
      Chart11.leftAxis.Items.Add(1, bt); // adicionando o nome best no eixo y do melhor cirtério

    end;

    IWImggraficoordholistica.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (Chart11.TeeCreateBitmap(clWebAQUA, rect(0, 0,
          IWImggraficoordholistica.Width, IWImggraficoordholistica.Height)));

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
    SalvarBDinter;
    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).BDstatus := '0';
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
    SalvarBDinter;

  end;

  procedure Tfrmaintercriterio.btnNPCClick(Sender: TObject);
  var
    i, numcrit: integer;
  begin

    lnkoverallevaluation.Enabled := true;
    IWListbox5.Items.clear; // limpando listbox
    TIWUserSession(WebApplication.Data).contord := 0; // BD
    with TIWUserSession(WebApplication.Data) do
    begin
      Setlength(MatPositions, 0, 0);
      Setlength(PositionA, 0);
      PAns := -1;
      Crepresentante := 0;
    end;
    rdgrpCPC.Enabled := true;
    btnOKPairWiseCO.Enabled := true;
    btnrestartPC.Enabled := true;
    IWRegion1.Visible := false;
    rdgrpCPC.Items.Delete(3);
    btngoback.Visible := false;
    btngoback1.Visible := false;
    btnrestartPC.Enabled := false;
    pairwise_comparison;
    rdgrpCPC.Items.Clear;
    with TIWUserSession(WebApplication.Data) do
    begin
    StrDInd:= IndiceA;
    StrDIndA:= Rounding(Bconseqord[IndiceA]);
    StrDIndA1:= Rounding(Wconseqord[IndiceA]);
    StrDInd:= IndiceB;
    StrDIndB:= Rounding(Wconseqord[IndiceB]);
    StrDIndB1:= Rounding(Bconseqord[IndiceB]);
    rdgrpCPC.Items.Add('Consequence A: Value ' + StrDIndA + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Consequence B: Value ' + StrDIndA1 + ' for ' + NomeCrit[IndiceA] + ' with value ' + StrDIndB1 + ' for ' + NomeCrit[IndiceB]);
    rdgrpCPC.Items.Add('Indifferent between Consequence A and Consequence B');
    if (Copy(StrDIndA, Length(StrDIndA), 1) = 'K') or (Copy(StrDIndA, Length(StrDIndA), 1) = 'M') or
    (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'K') or (Copy(StrDIndA1, Length(StrDIndA1), 1) = 'M') or
    (Copy(StrDIndB, Length(StrDIndB), 1) = 'K') or (Copy(StrDIndB, Length(StrDIndB), 1) = 'M') or
    (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'K') or (Copy(StrDIndB1, Length(StrDIndB1), 1) = 'M') then
    begin
    IWLabel5.visible := true;
    end
    else
    IWLabel5.visible := false;
    end;

    { // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
      SalvarBDinter;

      // salvar banco de dados na tabela current_stage
      TIWUserSession(WebApplication.Data).BDstatus := '0';
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
      SalvarBDinter; }
    exit;
    /// ///////////////////////////////////////////////////////////////////////////

    // ** Antigo procedimento **//

    IWListbox4.clear;
    IWListbox5.clear;
    lnkoverallevaluation.Enabled := true;
    IWRgnavaliacaoholistica.Visible := true;
    IWRegion1.Visible := false;
    IWRgncomparacaopareada.Visible := false;
    Chart11.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart11.Title.clear;
    Chart1.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart1.Title.clear;
    Chart2.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart2.Title.clear;
    btngerargraficoavholClick(self);
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, numcrit);
    TIWUserSession(WebApplication.Data).numalocado := 2;
    TIWUserSession(WebApplication.Data).numrespA := 0;
    TIWUserSession(WebApplication.Data).posicrit := 0;
    TIWUserSession(WebApplication.Data).indice1 := 0;
    TIWUserSession(WebApplication.Data).indice2 := 1;
    TIWUserSession(WebApplication.Data).respanterior := 0;
    TIWUserSession(WebApplication.Data).contord := 0; // BD
    for i := 0 to numcrit - 1 do
    begin
      TIWUserSession(WebApplication.Data).vtrposicoes[i] := 0;
      TIWUserSession(WebApplication.Data).vtrordem[i] := 0;
    end;

    btnrestartPC.Enabled := true;
    IWButton2.Enabled := true;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
    SalvarBDinter;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).BDstatus := '0';
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
    SalvarBDinter;

  end;

  procedure Tfrmaintercriterio.btnconseqA1Click(Sender: TObject);
var
seq_cam : string;
begin
if lnkvis1.Visible = false then
begin
TIWUserSession(WebApplication.Data).vis := 'GV';
TIWUserSession(WebApplication.Data).resp := '-AGV';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

if lnkvis1.Visible = true then
begin
TIWUserSession(WebApplication.Data).vis := 'GH';
TIWUserSession(WebApplication.Data).resp := '-AGH';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;
rdgrppreference.ItemIndex := 0;
BrnOKClick(self);
TIWUserSession(WebApplication.Data).seq_cam := '';

end;

procedure Tfrmaintercriterio.btnconseqA1OCClick(Sender: TObject);
begin
TIWUserSession(WebApplication.Data).PAns := 0;
btnOKPairWiseCOClick(self);
end;

procedure Tfrmaintercriterio.btnconseqAClick(Sender: TObject);
var
seq_cam : string;
begin
TIWUserSession(WebApplication.Data).vis := 'TB';
TIWUserSession(WebApplication.Data).resp := '-AT';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;
rdgrppreference.ItemIndex := 0;
BrnOKClick(self);
TIWUserSession(WebApplication.Data).seq_cam := '';

end;

procedure Tfrmaintercriterio.btnconseqAOCClick(Sender: TObject);
begin
TIWUserSession(WebApplication.Data).PAns := 0;
btnOKPairWiseCOClick(self);
end;

procedure Tfrmaintercriterio.btnconseqB1Click(Sender: TObject);
var
seq_cam : string;
begin
if lnkvis1.Visible = false then
begin
TIWUserSession(WebApplication.Data).vis := 'GV';
TIWUserSession(WebApplication.Data).resp := '-BGV';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

if lnkvis1.Visible = true then
begin
TIWUserSession(WebApplication.Data).vis := 'GH';
TIWUserSession(WebApplication.Data).resp := '-BGH';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;
rdgrppreference.ItemIndex := 1;
BrnOKClick(self);
TIWUserSession(WebApplication.Data).seq_cam := '';

end;

procedure Tfrmaintercriterio.btnconseqB1OCClick(Sender: TObject);
begin
TIWUserSession(WebApplication.Data).PAns := 1;
btnOKPairWiseCOClick(self);
end;

procedure Tfrmaintercriterio.btnconseqBClick(Sender: TObject);
var
seq_cam : string;
begin
TIWUserSession(WebApplication.Data).vis := 'TB';
TIWUserSession(WebApplication.Data).resp := '-BT';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;
rdgrppreference.ItemIndex := 1;
BrnOKClick(self);
TIWUserSession(WebApplication.Data).seq_cam := '';

end;

procedure Tfrmaintercriterio.btnconseqBOCClick(Sender: TObject);
begin
TIWUserSession(WebApplication.Data).PAns := 1;
btnOKPairWiseCOClick(self);
end;

procedure Tfrmaintercriterio.btncontinueHEDClick(Sender: TObject);
  begin
    if rdbtnHE.Checked then
    begin
      BtnshowresultsClick(self);
      exit;
    end;
    if rdbtndecomp.Checked then
    begin
      rgnHExED.Visible := false;
      IWRgnstep2.Visible := true;
      exit;
    end;
    WebApplication.ShowMessage(
      'Please inform whether you wish to go to Elicitation by Decomposition or peforming an Holistic Evaluation.');
  end;

  procedure Tfrmaintercriterio.btngerargraficoavholClick(Sender: TObject);

  var
    i, j, numcrit: integer;
    auxcrit: array of string;
    vtrnomecrit: array of string;
    bt, bt1, wt, wt1: string;
  begin
    /// / Esse Procedimento é responsável pela geração do gráfico  da ordenação /////
    /// dos pesos por avaliação holística na primeira vez que é exibido////////////
    if Length(TIWUserSession(WebApplication.Data).Bconseqord) < 1 then
      exit;
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(vtrnomecrit, numcrit);
    Setlength(auxcrit, numcrit);
    IWListboxordenarcrit.clear;
    IWListboxcriteriosordenados.clear;
    for i := 0 to numcrit - 1 do // Colocar novamente os vetores no listbox inicial
    begin
      vtrnomecrit[i] := TIWUserSession(WebApplication.Data).NomeCrit[i];
      auxcrit[i] := TIWUserSession(WebApplication.Data).CritSiglas[i];
      IWListboxordenarcrit.Items.Add(auxcrit[i] + '-' + vtrnomecrit[i]);
    end;
    if TIWUserSession(WebApplication.Data).Idioma = 1 then
    begin
      wt := 'Pior';
      bt := 'Melhor';
      wt1 := 'P';
      bt1 := 'M';
    end
    else
    begin
      wt := 'Worst';
      bt := ' ';
      wt1 := 'W';
      bt1 := 'B';
    end;
    TIWUserSession(WebApplication.Data).auxiAPAGAR := 0;
    TIWUserSession(WebApplication.Data).m := 0;
    TIWUserSession(WebApplication.Data).n := 0;
    Btnrestart.Enabled := false;
    IWBtnstep2.Enabled := false;
    // parte que cria o gráfico com os critérios DEVE FICAR NO BOTÃO DE PAOLLA
    IWImggraficoordholistica.Visible := true;
    Chart11.BottomAxis.Visible := true; // torna o eixo x visível
    Chart11.SeriesList.ClearValues; // limpar as séries se ja houver algum dado
    Chart11.Title.clear;
    // Chart11.Title.Text.Add('Consequence of Hypothetical Alternative');
    // coloca o titulo do gráfico

    intra_razao;
    // quando tiver os vetores de critério vai ser necerraio verificar como adionar nos marcadores os valores dos melhores e piores de acordo com o criterio de maximização e minimização

    for i := 0 to numcrit - 1 do
    begin
     if ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 1)) or
             ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 3)) or ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 5)) then
      begin
      TIWUserSession(WebApplication.Data).StrDInd := i;
      if TIWUserSession(WebApplication.Data).valor_razao[i] = 0 then
      TIWUserSession(WebApplication.Data).valor_razao[i] := 0.03;
      Chart11.Series[1].Marks.Visible := true;
      Chart11.Series[0].AddXY(i, 1, bt1 + intTostr(i + 1) + ':' + {trescasas}
          Rounding(TIWUserSession(WebApplication.Data).Bconseqord[i]));
      Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
          .valor_razao[i], wt1 + intTostr(i + 1) + ':' + {trescasas}
          Rounding(TIWUserSession(WebApplication.Data).Wconseqord[i]));
      Chart11.Series[1].Marks.Visible := true;
      end;

      if ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 0)) or
             ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 2)) or ((TIWUserSession(WebApplication.Data).Typeofcrit[i] = 4)) then
      begin
      TIWUserSession(WebApplication.Data).StrDInd := i;
      if TIWUserSession(WebApplication.Data).valor_razao[i] = 0 then
      TIWUserSession(WebApplication.Data).valor_razao[i] := 0.03;

      Chart11.Series[0].AddXY(i, 1, wt1 + intTostr(i + 1) + ':' + {trescasas}
          Rounding(TIWUserSession(WebApplication.Data).wconseqord[i]), clwebRED);
      //Chart11.Series[1].AddXY(i, 1, ''); //bt1 + intTostr(i + 1) + ':' + {trescasas}
          //Rounding(TIWUserSession(WebApplication.Data).bconseqord[i]));
      //Chart11.Series[1].Marks.Visible := false;
      end;
      Chart11.BottomAxis.Items.Add(i, auxcrit[i]);
      // adicionando os nomes das contantes no eixo x
      // Chart11.leftAxis.Items.Add(0.02, wt); // adicionando o nome worst no eixo y do pior critério
      Chart11.leftAxis.Items.Add(1, bt); // adicionando o nome best no eixo y do melhor cirtério

    end;

    IWImggraficoordholistica.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (Chart11.TeeCreateBitmap(clWebAQUA, rect(0, 0,
          IWImggraficoordholistica.Width, IWImggraficoordholistica.Height)));

  end;

  procedure Tfrmaintercriterio.btngoback1Click(Sender: TObject);
begin
TIWUserSession(WebApplication.Data).PAns := 3;
btnOKPairWiseCOClick(self);
btngoback.Visible := false;
btngoback1.Visible := false;
end;

procedure Tfrmaintercriterio.btngobackClick(Sender: TObject);
begin
TIWUserSession(WebApplication.Data).PAns := 3;
btnOKPairWiseCOClick(self);
btngoback.Visible := false;
btngoback1.Visible := false;
end;

procedure Tfrmaintercriterio.btninconsistencyokClick(Sender: TObject);
  Var
    VetAH: Array of Array of integer;
    i, j, k, a, P: integer;
    o: Double;
    b: integer;
  begin
    With TIWUserSession(WebApplication.Data) do
    begin
      case rdgrpincnsistency.ItemIndex of
        0:
          /// / A resposta correta está na Elicitação por decomposição ////
          begin
            /// / Obtendo as informações das Avaliações Holísticas /////
            Setlength(VetAH, NumAH);
            for i := 0 to Length(VetAH) - 1 do
            begin
              Setlength(VetAH[i], Length(MATAH[i]));
              for j := 0 to Length(MATAH[i]) - 1 do
                VetAH[i, j] := TIWUserSession(WebApplication.Data).MATAH[i, j];
            end;

            /// / Deleta toda a informação das Avaliações Holísticas ////
            Setlength(MATAH, 0, 0);
            a := 1;

            // ** Verifica da mais recente para a HE menos recente **//
            for i := Length(VetAH) - 1 Downto 0 do
            begin
              b := 0; // inicia o contador
              for j := 0 to Length(TINFS) - 1 do
              begin
                /// / Verificando se a restrição I da AH deve ser eliminada ////
                if i <> TINFS[j] then
                  INC(b);
                // ** Se for combinação e uma HE já tiver sido eliminada, as demais podem continuar **//
                if (TIWUserSession(WebApplication.Data).CBT = true) and
                  (i < Length(VetAH) - 1) then
                  b := Length(TINFS);
              end; // for j

              // ** Indica na matriz HEINDEX que a HE i foi eliminada **//
              Setlength(auxbd_id_ah_incos, Length(TINFS));
              if b < Length(TINFS) then
                for P := 0 to Length(HEINDEX[1]) - 1 do
                begin
                  if (TIWUserSession(WebApplication.Data)
                      .HEINDEX[1, P] = i + 1) then
                  begin
                    // auxbd_id_ah_incos é uma variavel auxiliar que pega o id_ah real da alternativa antes dela ser desativada ápos responder a inconsistencia
                    auxbd_id_ah_incos[b] := intTostr(HEINDEX[0, P]);
                    HEINDEX[1, P] := -1;
                  end;
                end;

              /// / Caso a restrção i da AH não esteja contida em TINFS, então, ela
              /// é mantida, cas contrário a mesma é descartada. /////////////////
              if b = Length(TINFS) then
              begin
                Setlength(MATAH, a);
                Setlength(MATAH[a - 1], Length(VetAH[i]));
                /// / Devolve apenas as restrições que não apresentam inconsistência
                /// para a matriz de restrições da Avaliação Holística. ///////////
                for k := 0 to Length(VetAH[i]) - 1 do
                  TIWUserSession(WebApplication.Data).MATAH[a - 1, k] := VetAH
                    [i, k];
                INC(a);
              end;
            end; // for i
            NumAH := Length(MATAH); // Número de AH recebe o número de restrções restantes

            i := 0;
            /// / Atualiza o índice atual das restrições de acordo ao número de
            /// avaliações holísticas remanecentes /////////////////////////////
            for P := 0 to Length(HEINDEX[1]) - 1 do
            begin
              if HEINDEX[1, P] <> -1 then
              begin
                INC(i);
                HEINDEX[1, P] := i;
              end;
            end;
            // ** Se tiver sido indiferença, blinda-se o critério **//
            if AnswerInc = 2 then
            begin
              vtrrelacoesblin[Indice] := true;
              Cri_Cong[Indice] := 1;
              NumQP := 2;
            end;

            /// / Escolha ////
            if Problematica = 0 then
            begin
              NDA := NumAlt;
              /// / Por simplificação e segurança, se devolve todas as alternativas ao problema,
              /// pois a PL se encarregará de verificar quais já estavam fora antes da AH //////
              for k := 0 to NumAlt - 1 do
                VetPOA[k] := k;
              TIFS := true;
              EFp;
            end;
            /// / Ordenação ///
            if Problematica = 1 then
            begin
              /// / Por simplificação e segurança, se desfaz todas as relações entre alternativas
              /// do problema, de forma que a PL se encarregará de reestabelecer quais já estavam antes da AH //////
              NumRel := 0;
              NumRel := 0;
              NumInd := 0;
              // * Reavaliar relações de dominância *//
              zeramatriz := true;
              TIFS := true;
              EFp;
            end;
            if Problematica = 3 then
            begin
              TIFS := true;
              EFp;
            end;
          end; // 0
        1:
          /// / A informação correta está na Avaliação Holística /////
          begin
            /// / Se O DM respondeu apenas uma pergunta, o erro está na pergunta da Heurística,
            /// /então eliminamos essa informação da PL ////
            if NumQuest = 1 then
            begin
              HeurQuest := -1;
              /// / A pergunta da heurística pode alterar ambos os limites da razão dos pesos
              /// / por isso devemos reiniciá-los ///////////////////////////////////////////

              for i := 0 to numcrit - 2 do
              begin
                LimMax[i] := LimMaxA[i];
                LimMin[i] := LimMinA[i];
              end;

              /// / Havia respondido A /////
              if AnswerInc = 0 then
              begin
                TIFS := true;
                PAns := 1;

                // salvar banco de dados na tabela currente_stage
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 14;
                SalvarBDinter;
                // salvar banco de dados na tabela elicitation
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 20;
                SalvarBDinter;
                // salvar banco de dados na tabela incons
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 19;
                SalvarBDinter;
                NumQuest := 0;
                rdgrppreference.ItemIndex := 1;
                RgnInconsistency.Hide;
                if Etapa <> 4 then
                  IWRgnstep2.show
                else
                  rgnECDI.show;
                BrnOKClick(self);
                exit;
              end;
              /// / Havia respondido B /////
              if AnswerInc = 1 then
              begin
                TIFS := true;
                PAns := 0;

                // salvar banco de dados na tabela currente_stage
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 14;
                SalvarBDinter;
                // salvar banco de dados na tabela elicitation
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 20;
                SalvarBDinter;
                // salvar banco de dados na tabela incons
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 19;
                SalvarBDinter;

                NumQuest := 0;
                rdgrppreference.ItemIndex := 0;
                RgnInconsistency.Hide;
                if Etapa <> 4 then
                  IWRgnstep2.show
                else
                  rgnECDI.show;
                // * Reavaliar relações de dominância *//
                zeramatriz := true;
                BrnOKClick(self);
                exit;
              end;
            end
            else
            begin
              if AnswerInc = 0 then
              begin
                /// / O DM respondeu A, então devolvemos o valor anterior do limite
                /// superior, atualizamos o limite inferior do vetor lim antes com
                /// a informação corrente e invertemos a preferência alterando
                /// o limite inferior da relação
                if Etapa = 3 then
                  for i := 0 to numcrit - 1 do
                    for j := 0 to numcrit - 1 do
                      MLimMax[i, j] := MLimMaxA[i, j]
                    else
                      for i := 0 to numcrit - 2 do
                        LimMax[i] := LimMaxA[i];
                { LimMinA[Indice] := LimMin[Indice];
                  LimMin[Indice] := WDP1; }
                PAns := 1;
                TIFS := true;

                // salvar banco de dados na tabela currente_stage
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 14;
                SalvarBDinter;
                // salvar banco de dados na tabela elicitation
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 20;
                SalvarBDinter;
                // salvar banco de dados na tabela incons
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 19;
                SalvarBDinter;
                RgnInconsistency.Hide;
                if Etapa <> 4 then
                  IWRgnstep2.show
                else
                  rgnECDI.show;
                // * Reavaliar relações de dominância *//
                zeramatriz := true;
                // NumQuest := NumQuest - 1;
                EFp;
                exit;
              end; // Pans = 0
              if AnswerInc = 1 then
              begin
                /// / O DM respondeu B, então devolvemos o valor anterior do limite
                /// infeirior, atualizamos o limite superior do vetor lim antes com
                /// a informação corrente e invertemos a preferência alterando
                /// o limite superior da relação

                if Etapa = 3 then
                  for i := 0 to numcrit - 1 do
                    for j := 0 to numcrit - 1 do
                      MLimMin[i, j] := MLimMinA[i, j]
                    else
                      for i := 0 to numcrit - 2 do
                        LimMin[i] := LimMinA[i];
                PAns := 0;
                TIFS := true;

                // salvar banco de dados na tabela currente_stage
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 14;
                SalvarBDinter;
                // salvar banco de dados na tabela elicitation
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 20;
                SalvarBDinter;
                // salvar banco de dados na tabela incons
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 19;
                SalvarBDinter;
                RgnInconsistency.Hide;
                if Etapa <> 4 then
                  IWRgnstep2.show
                else
                  rgnECDI.show;
                EFp;
                exit;
              end; // Pans = 1

              if AnswerInc = 2 then
              begin
                /// / O DM respondeu Indiferente, então devolvemos o valor anterior dos limites
                /// infeirior e limite superior da relação e blindamos a relação

                if Etapa = 3 then
                  for i := 0 to numcrit - 1 do
                    for j := 0 to numcrit - 1 do
                    begin
                      MLimMin[i, j] := MLimMinA[i, j];
                      MLimMax[i, j] := MLimMaxA[i, j];
                    end
                    else
                      for i := 0 to numcrit - 2 do
                      begin
                        LimMin[i] := LimMinA[i];
                        LimMax[i] := LimMaxA[i];
                      end;
                PAns := 3;

                // salvar banco de dados na tabela currente_stage
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 14;
                SalvarBDinter;
                // salvar banco de dados na tabela elicitation
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 20;
                SalvarBDinter;
                // salvar banco de dados na tabela incons
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 19;
                SalvarBDinter;
                RgnInconsistency.Hide;
                if Etapa <> 4 then
                  IWRgnstep2.show
                else
                  rgnECDI.show;
                TIFS := true;
                EFp;
                exit;
              end;
              // Pans = 2
            end; // else
          end; // 1
      end; // Case
      if Etapa <> 4 then
        IWRgnstep2.show
      else
        rgnECDI.show;
    end; // With
    RgnInconsistency.Hide;

    if rdgrpincnsistency.ItemIndex = 0 then
    begin
      // salvar banco de dados na tabela incons
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 19;
      SalvarBDinter;
      // salvar banco de dados na tabela AH
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 21;
      SalvarBDinter;
    end;

  end;

  procedure Tfrmaintercriterio.btnindeferente1Click(Sender: TObject);
var
seq_cam : string;
begin
if lnkvis1.Visible = false then
begin
TIWUserSession(WebApplication.Data).vis := 'GV';
TIWUserSession(WebApplication.Data).resp := '-IGV';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

if lnkvis1.Visible = true then
begin
TIWUserSession(WebApplication.Data).vis := 'GH';
TIWUserSession(WebApplication.Data).resp := '-IGH';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;
rdgrppreference.ItemIndex := 2;
BrnOKClick(self);
TIWUserSession(WebApplication.Data).seq_cam := '';

end;

procedure Tfrmaintercriterio.btnindeferenteClick(Sender: TObject);
var
seq_cam : string;
begin
TIWUserSession(WebApplication.Data).vis := 'TB';
TIWUserSession(WebApplication.Data).resp := '-IT';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';

seq_cam := TIWUserSession(WebApplication.Data).seq_cam;
rdgrppreference.ItemIndex := 2;
BrnOKClick(self);
TIWUserSession(WebApplication.Data).seq_cam := '';
end;

procedure Tfrmaintercriterio.btnlgoutClick(Sender: TObject);
  begin
    Setlength(TIWUserSession(WebApplication.Data).vetorgrafico, 0);
    Setlength(TIWUserSession(WebApplication.Data).vordem, 0);
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, 0);
    TIWUserSession(WebApplication.Data).AUXLOGOUT := -363636;
    TFrmEntrada.Create(WebApplication).show;
    IWRgnReset.Visible := true;
  end;

  procedure Tfrmaintercriterio.btnncancelClick(Sender: TObject);
  begin
    if TIWUserSession(WebApplication.Data).Etapa = 4 then
    begin
      rgnECDI.show;
      RgnNaosabe.Hide;
      IWRgnstep2.Hide;
      rgnComCPD.show;
      IWRadioGroup2.show;
    end

    else
    begin
      RgnNaosabe.Hide;
      IWRgnstep2.show;

      BrnOK.Enabled := true;
      Btnshowresults.Enabled := true;
      btnstopelicitation.Enabled := true;
      rdgrppreference.Enabled := true;

    end;
  end;

  procedure Tfrmaintercriterio.BtnnconfirmClick(Sender: TObject);
  begin
    /// /Quando o decisor responde no answer, é necessário confirmar com a razão////
    TIWUserSession(WebApplication.Data).AuxAns := true;
    TIWUserSession(WebApplication.Data).auxnoans := IWRadioGroup1.ItemIndex;

    RgnNaosabe.Hide;
    IWRgnstep2.show;
    BrnOKClick(self);

    BrnOK.Enabled := true;
    Btnshowresults.Enabled := true;
    btnstopelicitation.Enabled := true;
    rdgrppreference.Enabled := true;
  end;

  procedure Tfrmaintercriterio.btnnumincClick(Sender: TObject);
  begin
    btnnuminc.Enabled := false;
    btnradinc.Enabled := true;
    btnbubinc.Enabled := true;
    btnbarinc.Enabled := true;
    grdinconsistency.Visible := true;
    imginconsistency.Visible := false;
    rgngraphcomp.Refresh;
  end;

  procedure Tfrmaintercriterio.btnOkPairWiseClick(Sender: TObject);
  var
    a: integer;
  begin
    a := IWescolhadorepresentante.ItemIndex;
    With TIWUserSession(WebApplication.Data) do
    begin
      if IWescolhadorepresentante.Items[a] = CritSiglas[IndiceA] then
        Crepresentante := TIWUserSession(WebApplication.Data).IndiceA
      else if IWescolhadorepresentante.Items[a] = CritSiglas[IndiceB] then
        Crepresentante := IndiceB;

      IWescolhadorepresentante.Items.clear;
      IWRegionescolherentrecriteriosindiferentes.Hide;
      pairwise_comparison;
    end;
  end;

  procedure Tfrmaintercriterio.btnOKPairWiseCOClick(Sender: TObject);
  begin
    if IWRegion1.Visible = true then
      exit;
    // ** Recebe a resposta **//
    // TIWUserSession(WebApplication.Data).PAns := rdgrpCPC.ItemIndex;
    // ** Caso seja indiferente, indica que será necessário perguntar pelo representante **//
    if TIWUserSession(WebApplication.Data).PAns = 2 then
      TIWUserSession(WebApplication.Data).Crepresentante := -1;
    pairwise_comparison;
  end;

  procedure Tfrmaintercriterio.btnprofileelicitClick(Sender: TObject);
  begin
    IWRgnavaliacaoholistica.Visible := false;
    IWRgnstep2.Visible := false;
    TfrmPerfis.Create(WebApplication).show;
  end;

  procedure Tfrmaintercriterio.btnradincClick(Sender: TObject);
  var
    rad: array of TRadarSeries;
    a, c, y, i, g: integer;
    qntA: integer;
    auxSeries: integer;
    indiceprofile: string;
    coresalt, coresalt1: array of Tcolor;
    primeiracor: boolean;
  begin
  With TIWUserSession(WebApplication.Data) do
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
  end;

    btnnuminc.Enabled := true;
    btnbarinc.Enabled := true;
    btnbubinc.Enabled := true;
    btnradinc.Enabled := false;
    grdinconsistency.Visible := false;
    imginconsistency.Visible := true;
    With TIWUserSession(WebApplication.Data) do
    begin

      crtinconsistencyg.Title.clear;
      crtinconsistencyg.RemoveAllSeries;
      crtinconsistencyg.BottomAxis.Items.clear;

      crtinconsistencyg.View3D := false;
      crtinconsistencyg.BottomAxis.Visible := true;
      crtinconsistencyg.SeriesList.ClearValues;
      crtinconsistencyg.Title.Text.Add('Radar Graph');
      crtinconsistencyg.Legend.Visible := true;
      Setlength(rad, NumAlt);

      qntA := Length(MATAH[TINFS[0]]) - 1;

      auxSeries := 0;

      for a := 0 to qntA - 1 do
      begin

        rad[a - auxSeries] := TRadarSeries.Create(self);
        rad[a - auxSeries].Color := coresalt1[a];
        crtinconsistencyg.AddSeries(rad[a - auxSeries]);
        crtinconsistencyg.Series[a - auxSeries].Marks.Visible := false;
        crtinconsistencyg.Series[a - auxSeries].ColorEachPoint := false;
        crtinconsistencyg.Series[a - auxSeries].Brush.Style := BsClear;
        rad[a - auxSeries].Pointer.Visible := false;
        rad[a - auxSeries].Pen.Width := 3;
        rad[a - auxSeries].Pen.Color := rad[a].Color;
        if MATAH[TINFS[0], a + 1] >= 0 then
        begin
          crtinconsistencyg.Series[a - auxSeries].Legend.Text := AltSiglas
            [MATAH[TINFS[0], a + 1]];
      for c := 0 to numcrit - 1 do
      begin
      if (Typeofcrit[vtrordem[c]] = 0) or (Typeofcrit[vtrordem[c]] = 2) then
      begin
        rad[a - auxSeries].AddXY
          (c, Consrazao[MATAH[TINFS[0], a + 1], VtrOrdem[c]],
          CritSiglas[VtrOrdem[c]] + ' (⬇)');
      end;

      if (Typeofcrit[vtrordem[c]] = 1) or (Typeofcrit[vtrordem[c]] = 3) then
      begin
        rad[a - auxSeries].AddXY
          (c, Consrazao[MATAH[TINFS[0], a + 1], VtrOrdem[c]],
          CritSiglas[VtrOrdem[c]] + ' (⬆)');
      end;
      end;
        end
        else
        begin

          indiceprofile := intTostr(MATAH[TINFS[0], 2] * (-1));
          crtinconsistencyg.Series[a - auxSeries].Legend.Text :=
            'P' + indiceprofile;
          // crtinconsistencyg.series[b - auxSeries].Legend.Text := 'P' + indiceprofile;
          // crtinconsistencyg.series[b - auxSeries].Legend.Text:= 'P' + indiceprofile;

          for c := 0 to numcrit - 1 do
          begin
            // crtinconsistencyg.series[b - auxSeries].AddXY (C, Consrazaop[b, vtrordem[C]], ''); //BAR
            rad[a - auxSeries].AddXY(c, Consrazao[0, vtrordem[c]],
              CritSiglas[vtrordem[c]]); // RADAR
            // bubble[b - auxSeries].AddBubble (C, Consrazaop[b, vtrordem[C]], 0.05, ''); //BUBBLE
          end; // for C
        end;

      end;

      if auxSeries = qntA then
        crtinconsistencyg.Legend.Visible := false;

      crtinconsistencyg.leftAxis.Increment := 0.2; // teste ?

      imginconsistency.Picture.Bitmap.Assign(crtinconsistencyg.TeeCreateBitmap
          (clWebPURPLE, rect(0, 0, imginconsistency.Width,
            imginconsistency.Height)));
    end;
    rgngraphcomp.Refresh;

    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '3';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;

  end;

  procedure Tfrmaintercriterio.IWLink13Click(Sender: TObject);
begin
IWImage2OC.Visible := false;
IWImage3OC.Visible := false;
IWImage20OC.Visible := true;
IWImage26OC.Visible := true;
Iwregion51OC.Visible := false;
Iwregion57OC.Visible := true;
Iwregion60OC.Visible := false;
edtcrit2OC.Visible := true;
edtcrit1OC.Visible := true;
lnktabular.Visible := true;
IWLink13.Visible := false;
lnktabularOC.top := 453;
lnkvis1OC.Visible := true;

TIWUserSession(WebApplication.Data).visPC := 'GH';
TIWUserSession(WebApplication.Data).respPC := '';
TIWUserSession(WebApplication.Data).seq_camPC :=
TIWUserSession(WebApplication.Data).seq_camPC + '(' +
TIWUserSession(WebApplication.Data).visPC +
TIWUserSession(WebApplication.Data). respPC + ')';
end;

procedure Tfrmaintercriterio.IWLink14Click(Sender: TObject);
begin
IWImage30.Visible := false;
IWImage29.Visible := false;
IWImage20.Visible := true;
IWImage18.Visible := true;
Iwregion55.Visible := false;
Iwregion57.Visible := true;
Iwregion60.Visible := false;
edtcrit2.Visible := true;
edtcrit1.Visible := true;
lnktabular.Visible := true;
IWLink14.Visible := false;
lnktabular.top := 461;
lnkvis1.Visible := true;

TIWUserSession(WebApplication.Data).vis := 'GH';
TIWUserSession(WebApplication.Data).resp := '';
TIWUserSession(WebApplication.Data).seq_cam :=
TIWUserSession(WebApplication.Data).seq_cam + '(' +
TIWUserSession(WebApplication.Data).vis +
TIWUserSession(WebApplication.Data). resp + ')';
end;

procedure Tfrmaintercriterio.IWLink7Click(Sender: TObject);
begin
rgnviewgraphOC.Visible := true;
rgnviewtabOC.Visible := false;
IWImage2OC.Visible := false;
IWImage3OC.Visible := false;
IWImage20OC.Visible := true;
IWImage26OC.Visible := true;
Iwregion51OC.Visible := false;
Iwregion57OC.Visible := true;
Iwregion60OC.Visible := false;
edtcrit1OC.Visible := true;
edtcrit2OC.Visible := true;
lnktabularOC.Visible := true;
IWLink13.Visible := false;
lnkvis1OC.visible := true;
lnkvis1OC.top := 432;
lnktabularOC.top := 453;

TIWUserSession(WebApplication.Data).visPC := 'GH';
TIWUserSession(WebApplication.Data).respPC := '';
TIWUserSession(WebApplication.Data).seq_camPC :=
TIWUserSession(WebApplication.Data).seq_camPC + '(' +
TIWUserSession(WebApplication.Data).visPC +
TIWUserSession(WebApplication.Data). respPC + ')';
end;

procedure Tfrmaintercriterio.IWListboxordenarcritChange(Sender: TObject);
  var
    i, j, h, qtitensselected, numcrit: integer;
    auxcrit: array of string;
    vetorgrafico: array of integer;
    vtrnomecrit: array of string;
    vordem: array of integer;
    bt, wt, bt1, wt1: string;
  begin
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(vetorgrafico, numcrit);
    Setlength(TIWUserSession(WebApplication.Data).vetorgrafico, numcrit);
    Setlength(vtrnomecrit, numcrit);
    Setlength(vordem, Length(TIWUserSession(WebApplication.Data).vordem));
    // setlength(TIWUserSession(WebApplication.Data).vordem, numcrit);
    Setlength(auxcrit, numcrit);
    qtitensselected := TIWUserSession(WebApplication.Data).qtitensselected;

    if TIWUserSession(WebApplication.Data).Idioma = 1 then
    begin
      wt := 'Pior';
      bt := 'Melhor';
      wt1 := 'P';
      bt1 := 'M';
    end
    else
    begin
      wt := 'Worst';
      bt := ' ';
      wt1 := 'W';
      bt1 := 'B';
    end;

    for i := 0 to numcrit - 1 do
    Begin
      vtrnomecrit[i] := TIWUserSession(WebApplication.Data).NomeCrit[i];
      auxcrit[i] := TIWUserSession(WebApplication.Data).CritSiglas[i];
      vetorgrafico[i] := TIWUserSession(WebApplication.Data).vetorgrafico[i];
      // vordem[i]:= TIWUserSession(WebApplication.Data). vordem[i];
    end;

    for i := 0 to Length(TIWUserSession(WebApplication.Data).vordem) - 1 do
    begin
      vordem[i] := TIWUserSession(WebApplication.Data).vordem[i];
    end;

    // preenchimento vetor grafico para auxiliar a plotar os graficos, nesse vetor os criterios que já foram mudaram de lixtbox recebem 2, os que permadecem no listbox original mas foram selecionados recebem 1 e os outros 0.
    for i := 0 to numcrit - 1 do
    // limpar o vetor, para não acumular 1
    begin
      vetorgrafico[i] := 0;
    end;

    if qtitensselected > 0 then
    begin
      for j := 0 to Length(vordem) - 1 do
      begin
        for i := 0 to numcrit - 1 do
        begin
          if i = vordem[j] then
          // caso em que os criterios ja mudaram de listbox
          begin
            vetorgrafico[i] := 2;
          end;
        end;
      end;
      for h := 0 to IWListboxordenarcrit.Items.Count - 1 do
      begin
        if IWListboxordenarcrit.Selected[h] then
        begin
          for i := 0 to numcrit - 1 do
          begin
            if IWListboxordenarcrit.Items[h] =
              (auxcrit[i] + '-' + vtrnomecrit[i]) then // compara o nome do criterio selecionado no listbox com o nome do criterio no vetor nome
            begin
              vetorgrafico[i] := 1;
            end;
          end;
        end;
      end;
    end;

    // Inicio da montagem dos gráficos

    IWImggraficoordholistica.Visible := true;
    // torna o componente IWImage visivel
    Chart11.BottomAxis.Visible := true; // torna o eixo x visível
    Chart11.SeriesList.ClearValues;
    // limpar as séries se ja houver algum dado
    Chart11.leftAxis.Items.clear; // limpando os valores dos eixos para não se sobrepor

    intra_razao;

    // Criando os gráficos apenas com duas séries sendo utilizadas, uma série fixa que seria a branca e variando apenas a serie da frente, que pode ser vermelha, verde ou amarelo.
    // quando ainda nenhum item do listbox original foi apagado
     if qtitensselected = 0 then
    begin
      // Chart11.leftAxis.Items.Add(2, wt); // adicionando o nome worst no eixo y do pior critério
      Chart11.leftAxis.Items.Add(100, bt); // adicionando o nome best no eixo y do melhor cirtério
      for i := 0 to numcrit - 1 do
      begin
      if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 1) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 3)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 5) then
       begin
        TIWUserSession(WebApplication.Data).StrDInd := i;
        Chart11.Series[0].AddXY(i, 100, bt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).Bconseqord[i]));
       end;

        Chart11.BottomAxis.Items.Add(i, auxcrit[i]);
        // adicionando os nomes das contantes no eixo x
        if IWListboxordenarcrit.Selected[i] then
        begin
       if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 1) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 3)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 5) then
       begin
          TIWUserSession(WebApplication.Data).StrDInd := i;
          Chart11.Series[1].AddXY(i, 100, bt1 + intTostr(i + 1)
              + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                .Bconseqord[i]), clwebYELLOW);
       end;
       if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 0) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 2)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 4) then
       begin
          TIWUserSession(WebApplication.Data).StrDInd := i;
          Chart11.Series[0].AddXY(i, 100, wt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).wconseqord[i]));

          Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
              .valor_razao[i] * 100, bt1 + intTostr(i + 1)
              + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                .Bconseqord[i]), clwebYELLOW);
       end;
        end
        else
        begin
       if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 1) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 3)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 5) then
       begin
          TIWUserSession(WebApplication.Data).StrDInd := i;

          Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
              .valor_razao[i] * 100, wt1 + intTostr(i + 1) + ':' + {trescasas}
              Rounding(TIWUserSession(WebApplication.Data).Wconseqord[i]), clwebRED);
       end;
       if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 0) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 2)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 4) then
       begin
          TIWUserSession(WebApplication.Data).StrDInd := i;

          Chart11.Series[0].AddXY(i, 100, wt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).wconseqord[i]));

          Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
              .valor_razao[i] * 100, bt1 + intTostr(i + 1) + ':' + {trescasas}
              Rounding(TIWUserSession(WebApplication.Data).bconseqord[i]), clwebRED);
       end;
        end;
      end;
      IWImggraficoordholistica.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
        (Chart11.TeeCreateBitmap(clWebAQUA, rect(0, 0,
            IWImggraficoordholistica.Width, IWImggraficoordholistica.Height)));
      exit;
    end;

    // criando gráfico quando um item já foi selecionado no choose

    if qtitensselected > 0 then
    begin
      // Chart11.leftAxis.Items.Add(2, wt); // adicionando o nome worst no eixo y do pior critério
      Chart11.leftAxis.Items.Add(100, bt); // adicionando o nome best no eixo y do melhor cirtério
      for i := 0 to numcrit - 1 do
      begin
        TIWUserSession(WebApplication.Data).StrDInd := i;
        if vetorgrafico[i] = 1 then
        // item selecionado no listbox
        begin
      if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 1) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 3)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 5) then
       begin
          Chart11.Series[1].AddXY(i, 100, bt1 + intTostr(i + 1)
              + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                .Bconseqord[i]), clwebYELLOW);
       end;

       if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 0) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 2)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 4) then
       begin
          Chart11.Series[0].AddXY(i, 100, wt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).Bconseqord[i]));

          Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
              .valor_razao[i] * 100, bt1 + intTostr(i + 1)
              + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                .Bconseqord[i]), clwebYELLOW);
       end;
       end;

        if vetorgrafico[i] = 2 then
        // item já passou para o outro listbox
        begin
       if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 1) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 3)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 5) then
       begin
          Chart11.Series[1].AddXY(i, 100, bt1 + intTostr(i + 1)
              + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                .Bconseqord[i]), clwebGREEN);
       end;

       if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 0) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 2)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 4) then
       begin
          Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
              .valor_razao[i] * 100, bt1 + intTostr(i + 1)
              + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                .Bconseqord[i]), clwebGREEN);
       end;
        end;


        if vetorgrafico[i] = 0 then // nenhum dos dois casos acima
        begin
       if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 1) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 3)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 5) then
       begin

          Chart11.Series[0].AddXY(i, 100, bt1 + intTostr(i + 1)
              + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                .Bconseqord[i]));
          TIWUserSession(WebApplication.Data).StrDInd := i;
          Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
              .valor_razao[i] * 100, wt1 + intTostr(i + 1) + ':' + {trescasas}
              Rounding(TIWUserSession(WebApplication.Data).Wconseqord[i]), clwebRED);
       end;

       if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 0) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 2)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 4) then
       begin

          Chart11.Series[0].AddXY(i, 100, wt1 + intTostr(i + 1)
              + ':' + {trescasas}Rounding(TIWUserSession(WebApplication.Data)
                .wconseqord[i]));
          TIWUserSession(WebApplication.Data).StrDInd := i;
          Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
              .valor_razao[i] * 100, bt1 + intTostr(i + 1) + ':' + {trescasas}
              Rounding(TIWUserSession(WebApplication.Data).bconseqord[i]), clwebRED);
       end;

        end;
      end;

    end;
    IWImggraficoordholistica.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (Chart11.TeeCreateBitmap(clWebAQUA, rect(0, 0,
          IWImggraficoordholistica.Width, IWImggraficoordholistica.Height)));
  end;

  procedure Tfrmaintercriterio.IWRgnavaliacaoholisticaCreate(Sender: TObject);
  var
    i, numcrit: integer;
    aux: array of integer;
  begin
    alinhamento;
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    Setlength(TIWUserSession(WebApplication.Data).vetorgrafico, TIWUserSession
        (WebApplication.Data).numcrit);
    for i := 0 to numcrit - 1 do
    Begin
      TIWUserSession(WebApplication.Data).vetorgrafico[i] := 0;
    end;
    IWListbox4.clear;
    IWListbox5.clear;
    TIWUserSession(WebApplication.Data).qtitensselected := 0;
    Chart11.SeriesList.ClearValues;
    // limpar as séries se ja houver algum dado
    Chart11.Title.clear;
    Chart1.SeriesList.ClearValues;
    // limpar as séries se ja houver algum dado
    Chart1.Title.clear;
    Chart2.SeriesList.ClearValues;
    // limpar as séries se ja houver algum dado
    Chart2.Title.clear;

    if TIWUserSession(WebApplication.Data).Problematica = 3 then
    begin
      IWBtnstep2.Caption := 'Elicitation of Profiles';
      IWBtnstep22.Caption := 'Elicitation of Profiles';
    end
    else
    begin
      IWBtnstep2.Caption := 'Continue';
      IWBtnstep22.Caption := 'Continue';
    end;

    /// / Esse procedimento identifica o Step escolhido pelo decisor, caso ///////
    /// tenha preferido ir direto para a elicitação flexivel, se inicializa //////
    /// algumas variáveis ////////////////////////////////////////////////////////
    if TIWUserSession(WebApplication.Data).stage = 2 then
    begin
      with TIWUserSession(WebApplication.Data) do
      begin
        /// / Inicializando var referentes a ordenação das constantes ///////////////
        Setlength(vtrordem, numcrit);
        Setlength(vtrblin, numcrit);
        Setlength(vtrrelacoesblin, numcrit - 1);
        Setlength(vtrposicoes, numcrit);
        Setlength(Representantes, numcrit);
        for i := 0 to numcrit - 1 do
        begin
          Representantes[i] := i;
          vtrordem[i] := i;
          vtrposicoes[i] := i + 1;
          vtrblin[i] := false;
          { lstbxtco.Items.Add(TIWUserSession(WebApplication.Data)
            .CritSiglas[vtrordem[i]] + ': ' + NomeCrit[vtrordem[i]]); }
          // Round:=0;
        end;
        for i := 0 to numcrit - 2 do
          vtrrelacoesblin[i] := false;
      end; // with
      MatrizFaixaDisc;
      // Normaliza;

      if TIWUserSession(WebApplication.Data).elicitarperfis then
      begin
        btnprofileelicitClick(self);
        IWRgnstep2.Visible := false;
        exit;
      end;

      EFp;
      With TIWUserSession(WebApplication.Data) do
        if (Problematica = 0) or (Problematica = 4) then
        begin
          lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).NDA);
          lblnbra.Text :=
            'The number of potentially optimal alternatives at this point is '
            + intTostr(TIWUserSession(WebApplication.Data).NDA);
          lblnbra.Visible := true;
        end;
      // prob = 0
      if (TIWUserSession(WebApplication.Data).Problematica = 1) or
        (TIWUserSession(WebApplication.Data).Problematica = 2) then
      begin
        lblnmbl.Text :=
          'The number of ranking positions at this point is ' + intTostr
          (TIWUserSession(WebApplication.Data).Rlevels);
        lblnpoa.Text := 'Number of levels:';
        lblnpoa.Left := 143;
        lblnmbl.Visible := true;
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).Rlevels);
        lbleqtest.Visible := false;
        lblmaxdif.Visible := false;
        GrdInd.Visible := false;
        // Yara IWRegion12.Visible := false;
      end;
      if TIWUserSession(WebApplication.Data).Problematica = 3 then
      begin
        lblnpoa.Text := 'Number of unsorted alternatives:';
        lblnpoa.Left := 37;
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data)
            .Alt_nao_classificadas);
        lbleqtest.Visible := false;
        lblmaxdif.Visible := false;
        GrdInd.Visible := false;
        // Yara IWRegion12.Visible := false;
      end;

      IWRgnavaliacaoholistica.Visible := false;
      IWRgnstep2.Visible := false;
      BtnshowresultsClick(self);

    end // stage = 2
    else if TIWUserSession(WebApplication.Data).stage = 3 then
    begin
      // aparece o botão inconsistencia
      if TIWUserSession(WebApplication.Data).HeurQuest <> -1 then
        { if TIWUserSession(WebApplication.Data).Idioma = 1 then
          rdgrppreference.Items.Add('Inconsistência')
          else
          rdgrppreference.Items.Add('Inconsistency'); }

        IWRgnstep2.Visible := true;
      IWRgncomparacaopareada.Visible := false;
      with TIWUserSession(WebApplication.Data) do
      begin
        // NumQP := NumQP - 1;
        Setlength(aux, numcrit);
        for i := 0 to numcrit - 1 do
        begin
          aux[i] := vtrordem[i];
          { lstbxtco.Items.Add(TIWUserSession(WebApplication.Data)
            .CritSiglas[aux[i]] + ' - ' + NomeCrit[aux[i]]); }
        end;

      end; // with

      PlotaGraphic(TIWUserSession(WebApplication.Data).IndiceA, TIWUserSession
          (WebApplication.Data).IndiceB, TIWUserSession(WebApplication.Data)
          .ConsReal);
      lblnqa.Text := intTostr(TIWUserSession(WebApplication.Data).NumQuest);
      With TIWUserSession(WebApplication.Data) do
        if (Problematica = 0) or (Problematica = 4) then
          lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).NDA);
      // prob = 0
      if (TIWUserSession(WebApplication.Data).Problematica = 1) or
        (TIWUserSession(WebApplication.Data).Problematica = 2) then
      begin
        lblnpoa.Text := 'Number of levels:';
        lblnpoa.Left := 143;
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).Rlevels);
        lbleqtest.Visible := false;
        lblmaxdif.Visible := false;
        GrdInd.Visible := false;
        // Yara IWRegion12.Visible := false;
        if TIWUserSession(WebApplication.Data).Etapa = 4 then
          lblnpoa.Left := 10;
      end;
      if TIWUserSession(WebApplication.Data).Problematica = 3 then
      begin
        lblnpoa.Text := 'Number of unsorted alternatives:';
        lblnpoa.Left := 37;
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data)
            .Alt_nao_classificadas);
        lbleqtest.Visible := false;
        lblmaxdif.Visible := false;
        GrdInd.Visible := false;
        // Yara IWRegion12.Visible := false;
        if rgnECDI.Visible = true then
          lblnpoa.Left := 10;

      end;
      TIWUserSession(WebApplication.Data).stage := 0;
    end
    else if TIWUserSession(WebApplication.Data).stage <> 4 then
    begin
      // Retomada de um problema posteriormente
      if TIWUserSession(WebApplication.Data).RETPROBDEPOIS = -4555 then
      begin

        // aparece o botão inconsistencia
        { if TIWUserSession(WebApplication.Data).HeurQuest <> -1 then
          begin
          rdgrppreference.Items.Add('Inconsistency');
          end; }

        lblnqa.Text := intTostr(TIWUserSession(WebApplication.Data).NumQuest);
        TIWUserSession(WebApplication.Data).tempinicio := TimeToStr(Now);
        MatrizFaixaDisc;
        // Normaliza;
        With TIWUserSession(WebApplication.Data) do
          if (Problematica = 0) or (Problematica = 4) then
          begin
            PLEscolha;
            lblnda.Text := intTostr
              (Length((TIWUserSession(WebApplication.Data).VetPOA)));
            TIWUserSession(WebApplication.Data).NDA := Length
              ((TIWUserSession(WebApplication.Data).VetPOA));
          end;
        // prob = 0
        if (TIWUserSession(WebApplication.Data).Problematica = 1) or
          (TIWUserSession(WebApplication.Data).Problematica = 2) then
        begin
          if (TIWUserSession(WebApplication.Data).Problematica = 1) then
          begin
          TIWUserSession(WebApplication.Data).verfpl := false; // Booleana responsável por verificar se a PLordenacao foi rodada duas vezes considerando o parâmetro - YARA
          PLOrdenacao(0);
          end;

          if (TIWUserSession(WebApplication.Data).Problematica = 2) then

            PLCBPortfolio;

          lblnpoa.Text := 'Number of levels:';
          lblnpoa.Left := 143;
          lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).Rlevels);
          lbleqtest.Visible := false;
          lblmaxdif.Visible := false;
          GrdInd.Visible := false;
          // Yara IWRegion12.Visible := false;

        end;

        if TIWUserSession(WebApplication.Data).Problematica = 3 then
        begin
          // ** Se o problema foi reiniciado, o sist irá sugerir reavaliar os perfis **//
          if TIWUserSession(WebApplication.Data).elicitarperfis then
          begin
            { Uma vez que se observou que o problema foi reiniciado, deve-se limpar
              os vetores dos limites de pesos - este comando foi adicionado exclusivamente
              para a problemática de classificação por incluir um step a mais de elicitação
              dos perfis, por não ter sido criada um step no BD para a elicitação de
              perfis é necessário fazer esse procedimento }
            for i := 0 to numcrit - 2 do
            begin
              TIWUserSession(WebApplication.Data).LimMax[i] := 1;
              TIWUserSession(WebApplication.Data).LimMin[i] := 0;
            end;
            // btnprofileelicitClick(self);
            IWRgnstep2.Visible := false;
            TIWUserSession(WebApplication.Data).PAns := -1;
            TIWUserSession(WebApplication.Data).RETPROBDEPOIS := 10;
            exit;
          end;

          with TIWUserSession(WebApplication.Data) do
            num_cat := Length(perfis) + 1;
          PLClassificacao;

          // ** Altera o nome dos botões de Flexible Elicitation p/ elicitation of profiles **//
          IWBtnstep2.Caption := 'Elicitation of profiles';
          IWBtnstep22.Caption := 'Elicitation of profiles';
          /// ////////////////////////////////////////////////////////////////////////////////
          lblnpoa.Text := 'Number of unsorted alternatives:';
          lblnpoa.Left := 37;
          lblnda.Text := intTostr(TIWUserSession(WebApplication.Data)
              .Alt_nao_classificadas);
          lbleqtest.Visible := false;
          lblmaxdif.Visible := false;
          GrdInd.Visible := false;
          // Yara IWRegion12.Visible := false;

        end;

        // else
        TIWUserSession(WebApplication.Data).PAns := -1;
        TIWUserSession(WebApplication.Data).RETPROBDEPOIS := 10;
        with TIWUserSession(WebApplication.Data) do
        begin
          Inversa;
          PlotaGraphic(TIWUserSession(WebApplication.Data).IndiceA,
            TIWUserSession(WebApplication.Data).IndiceB, TIWUserSession
              (WebApplication.Data).ConsReal);
          { for i := 0 to (TIWUserSession(WebApplication.Data).numcrit - 1) do
            begin
            lstbxtco.Items.Add(TIWUserSession(WebApplication.Data)
            .CritSiglas[TIWUserSession(WebApplication.Data).vtrordem[i]]
            + ': ' + TIWUserSession(WebApplication.Data)
            .NomeCrit[TIWUserSession(WebApplication.Data).vtrordem[i]]);
            // Round:=0;
            end; // end do for }
          IWRgncomparacaopareada.Visible := false;
          // ** Passa direto para os resultados parciais **//
          BtnshowresultsClick(self);
        end; // with
        exit;
      end;
      IWRgnstep2.Visible := false;
      lnkpairwisecomparisonClick(self);
      btngerargraficoavholClick(self);
    end;

    /// / Stage = 4 significa que se trata de um problema de classificação em que
    /// o decisor optou por realizar a elicitação dos perfis///////////////////
    if TIWUserSession(WebApplication.Data).stage = 4 then
    begin
      EFp;
      lblnpoa.Text := 'Number of unsorted alternatives:';
      lblnpoa.Left := 37;
      lblnda.Text := intTostr(TIWUserSession(WebApplication.Data)
          .Alt_nao_classificadas);
      lbleqtest.Visible := false;
      lblmaxdif.Visible := false;
      GrdInd.Visible := false;
      // Yara IWRegion12.Visible := false;

      IWRgncomparacaopareada.Visible := false;
      IWRgnstep2.Visible := true;

      { for i := 0 to numcrit - 1 do
        begin
        With TIWUserSession(WebApplication.Data) do
        lstbxtco.Items.Add(TIWUserSession(WebApplication.Data)
        .CritSiglas[TIWUserSession(WebApplication.Data).vtrordem[i]]
        + ': ' + TIWUserSession(WebApplication.Data)
        .NomeCrit[TIWUserSession(WebApplication.Data).vtrordem[i]]);
        end; }

      // ** salvar informações da elicitação na tabela current_stage **//
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
      SalvarBDinter;
      // ** Salvando os perfis elicitados **//
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 33;
      SalvarBDinter;
      // ** Salvando os perfis em que as alt foram classificadas **//
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 34;
      SalvarBDinter;
    end;

  end;

  procedure Tfrmaintercriterio.IWRgnstep2Create(Sender: TObject);
begin
{lbllegendDE.Visible := false;
lstbxtco.Visible := false;}
end;

procedure Tfrmaintercriterio.IWBtnstep22Click(Sender: TObject);
  var
    i, numcrit: integer;
    aux: array of integer;

  begin
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    IWRgnstep2.Visible := true;
    IWRgncomparacaopareada.Visible := false;
    // setlength(TIWUserSession(WebApplication.Data).vtrordem, NumCrit);

    with TIWUserSession(WebApplication.Data) do
    begin
      Setlength(aux, numcrit);

      { for i := 0 to numcrit - 1 do
        begin
        aux[i] := vtrordem[i];
        lstbxtco.Items.Add(TIWUserSession(WebApplication.Data).CritSiglas[aux[i]]
        + ' - ' + NomeCrit[aux[i]]);
        end; }

    end;

    MatrizFaixaDisc;
    // Normaliza;

    // Verifia se o DM irá realizar a elicitação de perfis p/ classificação
    if (TIWUserSession(WebApplication.Data).elicitarperfis) and
      (TIWUserSession(WebApplication.Data).Problematica = 3) then
    begin
      TfrmPerfis.Create(WebApplication).show;
      IWRgnavaliacaoholistica.Visible := false;
    end
    else
    begin

      EFp;
      With TIWUserSession(WebApplication.Data) do
        if (Problematica = 0) or (Problematica = 4) then
        begin
          lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).NDA);
          if TIWUserSession(WebApplication.Data).Idioma = 1 then
          begin
            lblnbra.Text :=
              'O número de alternativas potencialmente ótimas até o momento é  '
              + intTostr(TIWUserSession(WebApplication.Data).NDA);

            lblQADE.Left := 91;
            lblnpoa.Left := 8;
          end
          else
          begin
            lblnbra.Text :=
              'The number of potentially optimal alternatives at this point is '
              + intTostr(TIWUserSession(WebApplication.Data).NDA);
            lblQADE.Left := 109;
            lblnpoa.Left := 34;
          end;
          lblnbra.Visible := true;
        end;
      // prob = 0
      if (TIWUserSession(WebApplication.Data).Problematica = 1) or
        (TIWUserSession(WebApplication.Data).Problematica = 2) then
      begin
        if TIWUserSession(WebApplication.Data).Idioma = 1 then
        begin
          lblnpoa.Text := 'Número de níveis:';
          lblnmbl.Text :=
            'O número de níveis no ranking até o momento é ' + intTostr
            (TIWUserSession(WebApplication.Data).Rlevels);
          lblQADE.Left := 91;
          lblnpoa.Left := 128;
        end
        else
        begin
          lblnpoa.Text := 'Number of levels:';
          lblnmbl.Text :=
            'The number of ranking positions at this point is ' + intTostr
            (TIWUserSession(WebApplication.Data).Rlevels);
          lblQADE.Left := 109;
          lblnpoa.Left := 143;
        end;
        lblnpoa.Left := 106;
        lblnmbl.Visible := true;
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).Rlevels);
        lbleqtest.Visible := false;
        lblmaxdif.Visible := false;
        GrdInd.Visible := false;
        // Yara IWRegion12.Visible := false;
      end;
      if TIWUserSession(WebApplication.Data).Problematica = 3 then
      begin
        // PLClassificacao;
        if TIWUserSession(WebApplication.Data).Idioma = 1 then
        begin
          lblnpoa.Text := 'Alternativas não classificadas:';
          { lblnmbl.Text :=
            'O número de níveis no ranking até o momento é ' + intTostr
            (TIWUserSession(WebApplication.Data).Rlevels); }
          lblQADE.Left := 30;
          lblnpoa.Left := 128;
        end
        else
        begin
          lblnpoa.Text := 'Number of unsorted alternatives:';
          { lblnmbl.Text :=
            'The number of ranking positions at this point is ' + intTostr
            (TIWUserSession(WebApplication.Data).Rlevels); }
          lblQADE.Left := 109;
          lblnpoa.Left := 37;
        end;

        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data)
            .Alt_nao_classificadas);
        lbleqtest.Visible := false;
        lblmaxdif.Visible := false;
        GrdInd.Visible := false;
        // Yara IWRegion12.Visible := false;
      end;
    end;
    IWRgnavaliacaoholistica.Visible := false;

    if TIWUserSession(WebApplication.Data).Problematica <> 3 then
      BtnshowresultsClick(self);

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).estagio := 3;
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 7;
    SalvarBDinter;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
    SalvarBDinter;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).BDstatus := '0';
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
    SalvarBDinter;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 22;
    SalvarBDinter;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 24;
    SalvarBDinter;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
    SalvarBDinter;

    // Salvando no BD o tipo_ord na planilha problem
    TIWUserSession(WebApplication.Data).auxtipoord := 1;
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 28;
    SalvarBDinter;

    // ** Atualiza o epsilon **//
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 39;
    SalvarBDinter;

    if TIWUserSession(WebApplication.Data).mudadata = -3254 then
    begin
      // salvar banco de dados na tabela problem
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 30;
      SalvarBDinter;
      TIWUserSession(WebApplication.Data).mudadata := 0;
    end;

  end;
  // end;   //do with usersession de paolla

  procedure Tfrmaintercriterio.BrnOKClick(Sender: TObject);
  var
    vetorresp: array of string;
    i: integer;
  begin
    TIWUserSession(WebApplication.Data).passouaqui:= false;
    if rdgrppreference.ItemIndex = -1 then
    begin
      WebApplication.ShowMessage('Please, select one option.');
      exit;
    end;

    With TIWUserSession(WebApplication.Data) do
    begin

      if rdgrppreference.ItemIndex = 3 then
      begin
        if not AuxAns then
        begin
          RgnNaosabe.show;
          RgnNaosabe.BringToFront;
          BrnOK.Enabled := false;
          Btnshowresults.Enabled := false;
          btnstopelicitation.Enabled := false;
          rdgrppreference.Enabled := false;
          exit;
        end;
      end;
      { if rdgrppreference.ItemIndex = 4 then
        begin
        if not AuxAns then
        begin
        rgnIncAsk.show;
        rgnIncAsk.BringToFront;
        BrnOK.Enabled := false;
        Btnshowresults.Enabled := false;
        btnstopelicitation.Enabled := false;
        rdgrppreference.Enabled := false;
        exit;
        end;
        end; }
      /// //////////////////////////////////////////////////////////////////////////////////
      /// Verificando a resposta da primeira pergunta ///
      if HeurQuest = -1 then
      Begin
        HeurQuest := rdgrppreference.ItemIndex;
        heuristica := true;
        { if rdgrppreference.Items.Count = 4 then
          rdgrppreference.Items.Add('Inconsistency'); }
        case HeurQuest of
          0:
            Etapa := 2;
          1:
            begin
              Etapa := 1;
              Fase := 1;
            end;
          2:
            Etapa := 2;

          3:
            Etapa := 2;
        end;
      End;
      /// //////////////////////////////////////////////////////////////////////////////////
      /// Salvando a resposta da pergunta ///
      PAns := rdgrppreference.ItemIndex;
      // criando um vetor para armazenar a sequencia de respostas que é dada pelo decisor
      Setlength(vetorresp, 4);
      vetorresp[0] := 'A';
      vetorresp[1] := 'B';
      vetorresp[2] := 'I';
      vetorresp[3] := 'NA';
      TIWUserSession(WebApplication.Data).Ans_seq := TIWUserSession
        (WebApplication.Data).Ans_seq + vetorresp[PAns];

      // Atualizado para coincidir com o DeskTop
      /// ///////////////////////////////////////////////////////////////////////////////////
      /// Caso a resposta da 1ª perg tenha sido B e já se tenham feitas num de relações ///
      /// de critérios válidas sobre 2, então deve-se passar para a fase 2 da etapa 1 ///
      if (TIWUserSession(WebApplication.Data).HeurQuest = 1) and
        (TIWUserSession(WebApplication.Data).NumQuest > 2 * trunc
          ((TIWUserSession(WebApplication.Data).numcrit - TIWUserSession
              (WebApplication.Data).NumCriBlind + TIWUserSession
              (WebApplication.Data).NumCriCong - 1) / 2)) then
        Fase := 2;
      /// //////////////////////////////////////////////////////////////////////
      /// Como são feitas duas perguntas para cada relação de critérios, fazer numcri
      /// perguntas significa comparar numcri/2 relações validas//////////////////
      /// /////////////////////////////////////////////////////////////////////////

      /// Caso já se tenha feito perguntas para cada relação válida o SAD passa ///
      /// Para a etapa 2 da Elicitação. /////////////////////////////////////////
      if (TIWUserSession(WebApplication.Data).NumQuest >=
          (TIWUserSession(WebApplication.Data).numcrit -
          TIWUserSession(WebApplication.Data).NumCriBlind +
          TIWUserSession(WebApplication.Data).NumCriCong + trunc((TIWUserSession(WebApplication.Data).numcrit - TIWUserSession(WebApplication.Data).NumCriBlind + NumCriCong - 1) / 2))) and
        (Etapa = 1) then
        Etapa := 2;
      // ** Armazena a resposta para ser usada na região de inconsistência **//
      AnswerInc := PAns;
      AuxAns := false;
      /// Incrementando o número de perguntas respondidas ///
      INC(NumQuest);

      /// / Verifica a existência de pesos com um valor máximo muito pequeno
      /// e impede a realização de perguntas para estes ////
      if (TIWUserSession(WebApplication.Data).HeurQuest <> 1) and
        (TIWUserSession(WebApplication.Data).NumQuest >= 15) then
        limiar_criterio;
    end;
    TIWUserSession(WebApplication.Data).auxgoback := 0;
    EFp;

    if TIWUserSession(WebApplication.Data).NumQuest <> 1 then
    begin
      // salvar banco de dados na tabela elicitation
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 4;
      SalvarBDinter;
    end;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 25;
    SalvarBDinter;

    // ** Atualiza a lable que exibe a info dos resultados parciais **//
    lblnqa.Text := intTostr(TIWUserSession(WebApplication.Data).NumQuest);
    With TIWUserSession(WebApplication.Data) do
      if (Problematica = 0) or (Problematica = 4) then
        lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).NDA);
    if (TIWUserSession(WebApplication.Data).Problematica = 1) or
      (TIWUserSession(WebApplication.Data).Problematica = 2) then
      lblnda.Text := intTostr(TIWUserSession(WebApplication.Data).Rlevels);
    if TIWUserSession(WebApplication.Data).Problematica = 3 then
      lblnda.Text := intTostr(TIWUserSession(WebApplication.Data)
          .Alt_nao_classificadas);

    TIWUserSession(WebApplication.Data).PAns := -5;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 3;
    SalvarBDinter;
    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
    SalvarBDinter;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).BDstatus := '0';
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
    SalvarBDinter;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 16;
    SalvarBDinter;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 1;
    SalvarBDinter;

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 14;
    SalvarBDinter;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 23;
    SalvarBDinter;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 2;
    SalvarBDinter;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 15;
    SalvarBDinter;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 24;
    SalvarBDinter;

    if TIWUserSession(WebApplication.Data).Problematica = 3 then
    begin
      // ** Salvando os perfis em que as alt foram classificadas **//
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 34;
      SalvarBDinter;
    end;

  end;

  procedure Tfrmaintercriterio.btnbarincClick(Sender: TObject);
  var
    bar: array of TBarSeries;
    a, c, indCB, auxSeries, j, y, i: integer;
    qntAlt, G: integer;
    // auxnumcrit: integer;
    xx: integer;
    indiceprofile: string;
    Krange: Array [0 .. 1] of TLineSeries;
    coresalt, coresalt1: array of Tcolor;
    primeiracor: boolean;
  begin
  With TIWUserSession(WebApplication.Data) do
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
  end;

    // auxnumcrit := TIWUserSession(WebApplication.Data).numcrit;
    btnnuminc.Enabled := true;
    btnradinc.Enabled := true;
    btnbubinc.Enabled := true;
    btnbarinc.Enabled := false;
    grdinconsistency.Visible := false;
    imginconsistency.Visible := true;

    With TIWUserSession(WebApplication.Data) do
    begin

      qntAlt := Length(MATAH[TINFS[0]]) - 1;
      G := Length(MATAH[TINFS[0]]) - 1;
      crtinconsistencyg.Title.clear;
      crtinconsistencyg.RemoveAllSeries; // limpa todas as séries
      crtinconsistencyg.BottomAxis.Items.clear; // legenda de baixo
      crtinconsistencyg.Title.Text.Add('Bar Graph');
      crtinconsistencyg.Legend.Visible := true;
      crtinconsistencyg.View3D := false;
      Setlength(bar, qntAlt);
      auxSeries := 0;

      // deu um erro a função mas o procedimento funcione direitinho sem ela
      // Chart2.Series[a].Clear; //limpa antes de construir
      for a := 0 to qntAlt - 1 do
      begin

        bar[a - auxSeries] := TBarSeries.Create(self);
        bar[a - auxSeries].Color := coresalt1[a];
        crtinconsistencyg.AddSeries(bar[a - auxSeries]);
        crtinconsistencyg.Series[a - auxSeries].Marks.Visible := false;
        if MATAH[TINFS[0], a + 1] >= 0 then
          crtinconsistencyg.Series[a - auxSeries].Legend.Text := AltSiglas
            [MATAH[TINFS[0], a + 1]]
        else
          crtinconsistencyg.Series[a - auxSeries].Legend.Text := 'P' + intTostr
            (-MATAH[TINFS[0], a + 1]);

        if MATAH[TINFS[0], a + 1] >= 0 then
        begin
          for xx := 0 to TIWUserSession(WebApplication.Data).numcrit - 1 do
          begin
            crtinconsistencyg.Series[a - auxSeries].AddXY
              (xx, Consrazao[MATAH[TINFS[0], a + 1], vtrordem[xx]], '')
          end; // for xx

        end
        else
        begin

          indiceprofile := intTostr(MATAH[TINFS[0], 2] * (-1));
          crtinconsistencyg.Series[a - auxSeries].Legend.Text :=
            'P' + indiceprofile;

          for c := 0 to numcrit - 1 do
          begin
            crtinconsistencyg.Series[a - auxSeries].AddXY
              (c, TIWUserSession(WebApplication.Data).Consrazao[0, vtrordem[c]]
                , ''); // BAR
            // rad[a].AddXY(C, Consrazaop[a, vtrordem[C]], 'P' +indiceprofile); //RADAR
            // bubble[a].AddBubble (C, Consrazaop[a, vtrordem[C]], 0.05, ''); //BUBBLE
          end; // for C
        end;
      end; // a

      // ** Adicionando séries dos pesos máxmimos e mínimos ao gráfico **//
      { Krange[0] := TLineSeries.Create(self);
        Krange[1] := TLineSeries.Create(self);
        Krange[1].SeriesColor := clred;
        Krange[0].SeriesColor := clBlue;
        Krange[1].LineHeight := 2;
        Krange[0].LineHeight := 2;
        Krange[1].Legend.Text := 'Min Value';
        Krange[0].Legend.Text := 'Max Value';
        crtinconsistencyg.AddSeries(Krange[0]);
        crtinconsistencyg.AddSeries(Krange[1]);
        indCB := -1;
        for c := 0 to NumCrit - 1 do
        begin
        INC(indCB);

        Krange[0].AddXY(indCB, MaxPeso[c]);
        Krange[1].AddXY(indCB, MinPeso[c]);
        end; }

      if auxSeries = qntAlt - 1 then
        crtinconsistencyg.Legend.Visible := false;

      crtinconsistencyg.BottomAxis.LabelsAlternate;
      crtinconsistencyg.BottomAxis.Items.Automatic := false;
      // crtinconsistencyg.BottomAxis.IAxisSize := 6;

     for j := 0 to numcrit - 1 do
    begin
    if (Typeofcrit[vtrordem[J]] = 0) or (Typeofcrit[vtrordem[J]] = 2) then
    begin
      crtinconsistencyg.BottomAxis.Items.Add(j, CritSiglas[VtrOrdem[j]] + ' (⬇)');
    end;
    if (Typeofcrit[vtrordem[J]] = 1) or (Typeofcrit[vtrordem[J]] = 3) then
    begin
      crtinconsistencyg.BottomAxis.Items.Add(j, CritSiglas[VtrOrdem[j]] + ' (⬆)');
    end;

    end;

      crtinconsistencyg.leftAxis.Increment := 0.2; // ?

      imginconsistency.Picture.Bitmap.Assign(crtinconsistencyg.TeeCreateBitmap
          (clWebPURPLE, rect(0, 0, imginconsistency.Width,
            imginconsistency.Height)));

    end; // with
    rgngraphcomp.Refresh;

    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '1';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;

  end;


  procedure Tfrmaintercriterio.btnbubincClick(Sender: TObject);
  var
    a, c, j, indCB, auxSeries, y, i, g: integer;
    bubble: array of TBubbleSeries;
    Krange: Array [0 .. 1] of TLineSeries;
    qntA: integer;
    indiceprofile: string;
    coresalt, coresalt1: array of Tcolor;
    primeiracor: boolean;
  begin
  With TIWUserSession(WebApplication.Data) do
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
  end;

    btnnuminc.Enabled := true;
    btnradinc.Enabled := true;
    btnbubinc.Enabled := false;
    btnbarinc.Enabled := true;
    grdinconsistency.Visible := false;
    imginconsistency.Visible := true;
    With TIWUserSession(WebApplication.Data) do
    begin

      crtinconsistencyg.Title.clear;
      crtinconsistencyg.RemoveAllSeries;
      crtinconsistencyg.BottomAxis.Items.clear;
      crtinconsistencyg.Legend.Visible := true;

      crtinconsistencyg.View3D := false;
      crtinconsistencyg.BottomAxis.Visible := true;
      crtinconsistencyg.SeriesList.ClearValues;
      crtinconsistencyg.Title.Text.Add('Bubble Graph');
      Setlength(bubble, NumAlt);

      qntA := Length(MATAH[TINFS[0]]) - 1;
      auxSeries := 0;
      for a := 0 to qntA - 1 do
      begin

        bubble[a - auxSeries] := TBubbleSeries.Create(self);
        bubble[a - auxSeries].Color := coresalt1[a];
        crtinconsistencyg.AddSeries(bubble[a - auxSeries]);
        crtinconsistencyg.Series[a - auxSeries].Marks.Visible := false;
        crtinconsistencyg.Series[a - auxSeries].ColorEachPoint := false;

        if MATAH[TINFS[0], a + 1] >= 0 then
        begin
          crtinconsistencyg.Series[a - auxSeries].Legend.Text := AltSiglas
            [MATAH[TINFS[0], a + 1]];
          for c := 0 to numcrit - 1 do
          begin
            bubble[a - auxSeries].AddBubble
              (c, Consrazao[MATAH[TINFS[0], a + 1], vtrordem[c]], 0.05, '')
          end;
        end
        else
        begin

          indiceprofile := intTostr(MATAH[TINFS[0], 2] * (-1));
          crtinconsistencyg.Series[a - auxSeries].Legend.Text :=
            'P' + indiceprofile;

          for c := 0 to numcrit - 1 do
          begin
            // crtinconsistencyg.series[a].AddXY (C, Consrazaop[a, vtrordem[C]], ''); //BAR
            // rad[a].AddXY(C, Consrazaop[a, vtrordem[C]], 'P' +indiceprofile); //RADAR
            bubble[a - auxSeries].AddBubble
              (c, Consrazao[0, vtrordem[c]], 0.05, ''); // BUBBLE
          end; // for C
        end;
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
        crtinconsistencyg.AddSeries(Krange[0]);
        crtinconsistencyg.AddSeries(Krange[1]);

        indCB := -1;
        for c := 0 to NumCrit - 1 do
        begin
        INC(indCB);
        Krange[0].AddXY(indCB, MaxPeso[c]);
        Krange[1].AddXY(indCB, MinPeso[c]);
        end; }

      if auxSeries = qntA then
        crtinconsistencyg.Legend.Visible := false;

      crtinconsistencyg.leftAxis.Increment := 0.2;
      crtinconsistencyg.BottomAxis.LabelsAlternate;
      crtinconsistencyg.BottomAxis.Items.Automatic := false;

         for j := 0 to numcrit - 1 do
    begin
    if (Typeofcrit[vtrordem[J]] = 0) or (Typeofcrit[vtrordem[J]] = 2) then
    begin
      crtinconsistencyg.BottomAxis.Items.Add(j, CritSiglas[VtrOrdem[j]] + ' (⬇)');
    end;
    if (Typeofcrit[vtrordem[J]] = 1) or (Typeofcrit[vtrordem[J]] = 3) then
    begin
      crtinconsistencyg.BottomAxis.Items.Add(j, CritSiglas[VtrOrdem[j]] + ' (⬆)');
    end;

    end;

      imginconsistency.Picture.Bitmap.Assign(crtinconsistencyg.TeeCreateBitmap
          (clWebPURPLE, rect(0, 0, imginconsistency.Width,
            imginconsistency.Height)));

    end;
    rgngraphcomp.Refresh;

    // salvar banco de dados na tabela elicitation salvando na variavel auxiliar o tipo de grafico
    TIWUserSession(WebApplication.Data).BDgraph := '2';
    TIWUserSession(WebApplication.Data).auxbdgraph := TIWUserSession
      (WebApplication.Data).auxbdgraph + TIWUserSession(WebApplication.Data)
      .BDgraph;

  end;

  procedure Tfrmaintercriterio.BtnchooseClick(Sender: TObject);
  var
    i, j, numcrit, m, qtitensselected, auxiAPAGAR, n, Ind: integer;
    numitensselected: integer;
    Chart1: TChart;
    auxcrit: array of string;
    vtrrelacoesblin: array of boolean;
    vtrnomecrit: array of string;
    vtrblin: array of boolean;
    vtrposicoes: array of integer;
    vordem: array of integer;
    vetorgrafico: array of integer;
    wt, wt1, bt, bt1: string;
  begin

  // aviso ao decisor caso não selecione nenhum item
    if IWListboxordenarcrit.ItemIndex = -1 then // mensagem que deve aparecer caso não seja selecionado nenhum elemento e seja clicado no choose
    begin
      if TIWUserSession(WebApplication.Data).Idioma = 1 then
        WebApplication.ShowMessage('Por favor, selecione ao menos um critério.')
      else
      begin
        WebApplication.ShowMessage('Please select at least one criterion.');
        Exit;
      end;
    end;


    if TIWUserSession(WebApplication.Data).Idioma = 1 then
    begin
      wt := 'Pior';
      bt := 'Melhor';
      wt1 := 'P';
      bt1 := 'M';
    end
    else
    begin
      wt := 'Worst';
      bt := ' ';
      wt1 := 'W';
      bt1 := 'B';
    end;
    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    // IWListboxcriteriosordenados.Items.Clear;
    // só para teste supondo 5 critérios  APAGAR DEPOIS
    Setlength(vtrrelacoesblin, numcrit - 1);
    Setlength(TIWUserSession(WebApplication.Data).vtrrelacoesblin, numcrit - 1);
    Setlength(vtrblin, numcrit);
    Setlength(TIWUserSession(WebApplication.Data).vtrblin, numcrit);
    Setlength(vtrnomecrit, numcrit);
    Setlength(auxcrit, numcrit);
    Setlength(vtrposicoes, numcrit);
    Setlength(TIWUserSession(WebApplication.Data).vtrposicoes, numcrit);
    // setlength(vordem, numcrit);
    Setlength(vetorgrafico, numcrit);
    numitensselected := 0;
    m := TIWUserSession(WebApplication.Data).m;
    n := TIWUserSession(WebApplication.Data).n;
    // qtitensselected:=TIWUserSession(WebApplication.Data).qtitensselected;
    auxiAPAGAR := TIWUserSession(WebApplication.Data).auxiAPAGAR;
    INC(TIWUserSession(WebApplication.Data).contord); // BD
    INC(m); // contador para o número de cliques
    qtitensselected := 0;

    // inicializando vtrrelacoesblin
    for i := 0 to numcrit - 2 do
    begin
      vtrrelacoesblin[i] := TIWUserSession(WebApplication.Data)
        .vtrrelacoesblin[i];
    end;
    // inicializando vtrblin
    for i := 0 to numcrit - 1 do
    begin
      vtrblin[i] := TIWUserSession(WebApplication.Data).vtrblin[i];
      vtrposicoes[i] := TIWUserSession(WebApplication.Data).vtrposicoes[i];
      // vordem[i]:= TIWUserSession(WebApplication.Data).vordem[i];
      // vetorgrafico[i]:= TIWUserSession(WebApplication.Data).vetorgrafico[i];
    end;

    // teste
    Setlength(TIWUserSession(WebApplication.Data).vordem, auxiAPAGAR);
    Setlength(vordem, auxiAPAGAR);
    for i := 0 to auxiAPAGAR - 1 do
    begin
      vordem[i] := TIWUserSession(WebApplication.Data).vordem[i];
    end;


    // inicializando as variaveis globais

    for i := 0 to numcrit - 1 do
    Begin
      vtrnomecrit[i] := TIWUserSession(WebApplication.Data).NomeCrit[i];
      auxcrit[i] := TIWUserSession(WebApplication.Data).CritSiglas[i];
    end;

    // contador para incrementar o número de itens selecionados no listbox original
    for i := 0 to IWListboxordenarcrit.Items.Count - 1 do
    begin
      if IWListboxordenarcrit.Selected[i] then
      begin
        INC(qtitensselected);
      end;
    end;

    // quando der o primeiro clique no botão, habilita o botão restart e desabilita o de comparação pareda
    if m = 1 then
    begin
      lnkpairwisecomparison.Enabled := false;
      Btnrestart.Enabled := true;
    end;

    // para mudar os itens selecionados de um listbox para outro e preencher o vator de ordem dos critérios
    { if qtitensselected = 1 then
      begin }
    for j := 0 to IWListboxordenarcrit.Items.Count - 1 do
    begin
      if IWListboxordenarcrit.Selected[j] then
      begin
        IWListboxcriteriosordenados.Items.Add
          (intTostr(m) + '.' + IWListboxordenarcrit.Items[j]);
        INC(numitensselected);
        for i := 0 to numcrit - 1 do
        begin
          if IWListboxordenarcrit.Items[j] =
            (auxcrit[i] + '-' + vtrnomecrit[i]) then // compara o nome do criterio selecionado no listbox com o nome do criterio no vetor nome
          begin
            INC(auxiAPAGAR); // incrementa a variavel auxiliar que será posteriormente colocada no botão da ultima aba antes de vim para essa e assim será apagada do OnCreate
            Setlength(vordem, auxiAPAGAR);
            vordem[auxiAPAGAR - 1] := i;
          end;
        end;
      end;
    end;
    // end;

    // abertura de pagina para escolher o representante dos critérios blindados
    IWescolhadorepresentante.clear;
    if numitensselected >= 2 then
    // Entrar no if se dois ou mais critérios forem selecionados ao mesmo tempo
    begin
      IWRegionescolherentrecriteriosindiferentes.show;
      // abrir a pagina para escolher o que será o representante
      for i := 0 to IWListboxordenarcrit.Items.Count - 1 do // para mudar os itens selecionados do listbox original para o listbox do desempate
      begin
        if IWListboxordenarcrit.Selected[i] then
        begin
          for j := 0 to numcrit - 1 do
            if IWListboxordenarcrit.Items[i] =
              (auxcrit[j] + '-' + vtrnomecrit[j]) then
            begin
              Ind := j;
            end;
          if TIWUserSession(WebApplication.Data).Niveis[Ind] <> 2 then
            IWescolhadorepresentante.Items.Add(IWListboxordenarcrit.Items[i]) // adicionando os valores de listbox original no listbox para selecionar o critério blindado
          else
          begin
            // ** Blinda o critério automaticamente **//
            INC(TIWUserSession(WebApplication.Data).contblin);
            Setlength(TIWUserSession(WebApplication.Data).auxnomeblin,
              TIWUserSession(WebApplication.Data).contblin);
            TIWUserSession(WebApplication.Data).auxnomeblin
              [TIWUserSession(WebApplication.Data).contblin - 1] := intTostr
              (TIWUserSession(WebApplication.Data).m)
              + '.' + IWListboxordenarcrit.Items[i];
          end;
        end;
      end;
      IWescolhadorepresentante.ItemIndex := 0;
      // para forçar o itemIndex a começar do zero e não do -1
    end;

    // Apagar criterios do listbox original apos ele ter sido selecionado
    for i := IWListboxordenarcrit.Items.Count - 1 downto 0 do
    // deletar os itens selecionados no listbox original
    begin
      if IWListboxordenarcrit.Selected[i] then
        IWListboxordenarcrit.Items.Delete(i);
      IWListboxcriteriosordenados.ItemIndex := 0;
      // para forçar o itemIndex a começar do zero e não do -1
    end;

    // preenchimento do vetor de relações blindadas

    for i := 0 to IWListboxordenarcrit.Items.Count - 2 do // inicialmente completar o vetor de relações binarias com todos os seus indices com false
    begin
      vtrrelacoesblin[i] := false;
    end;
    i := 0;
    { while i < numitensselected - 1 do // enquanto o valor de i for menor do que o numero de itens selecionados -1 (ou seja maior que 2) preencher o indice do vetor de relações binarias com true.
      begin
      vtrrelacoesblin[m - 1 + i] := true;
      INC(i);
      end; }
    // lebrando que se 3 itens forem selecionados ou seja 3 itens forem indiferentes entre si,
    // então 3-1 indices do vetor de relações blindadas devem ser preenchidos com true e as posições
    // no vetor devem ser o valor do contador-1 e o proprio valor do contador.

    // preenchimento do vetor das posições
    j := 0;
    while j < numitensselected do // realizar enquanto o valor de i for menor do que o número de itens selecionados
    begin
      vtrposicoes[n + j] := m; // preencher a posição do vetor com o valor do contador m, que é o número de veze que clicou no botão
      INC(j);
    end;
    n := n + numitensselected; // armazenar a posição do vetor até a qual já foi preenchida com os valores corretos

    // Aviso para perguntar se o decisor concorda com a ordem final obtida
    if IWListboxordenarcrit.Items.Count = 0 then
    begin
      IWRgnconfirmarordenacao.show;
    end;
    // codigo para quando sobrar apenas 1 criterio e ja perguntar ao decisor se concorda com a ordem obtida
    if IWListboxordenarcrit.Items.Count = 1 then
    begin
      INC(auxiAPAGAR); // incrementa a variavel auxiliar que será posteriormente colocada no botão da ultima aba antes de vim para essa e assim será apagada do OnCreate
      Setlength(vordem, auxiAPAGAR);
      for j := 0 to IWListboxordenarcrit.Items.Count - 1 do
      begin
        // adicionei agora
        IWListboxcriteriosordenados.Items.Add
          (intTostr(m + 1) + '.' + IWListboxordenarcrit.Items[j]);

        for i := 0 to numcrit - 1 do
        begin
          if IWListboxordenarcrit.Items[j] =
            (auxcrit[i] + '-' + vtrnomecrit[i]) then
          begin
            vordem[auxiAPAGAR - 1] := i;
          end;
        end;
        vtrposicoes[numcrit - 1] := vtrposicoes[numcrit - 2] + 1;
        // adicionei agora
        IWListboxordenarcrit.Items.Delete(j);
      end;
      IWRgnconfirmarordenacao.show;
    end;

    { // preenchimento do vetor de critérios blindados, a parte de preencher com true está no botão de ok
      for i := 0 to numcrit - 1 do // preenchendo todo o vetor de critérios blindados com false;
      begin
      vtrblin[i] := false;
      end; }

    // aviso ao decisor caso não selecione nenhum item
    {if IWListboxordenarcrit.ItemIndex = -1 then // mensagem que deve aparecer caso não seja selecionado nenhum elemento e seja clicado no choose
    begin
      if TIWUserSession(WebApplication.Data).Idioma = 1 then
        WebApplication.ShowMessage('Por favor, selecione ao menos um critério.')
      else
        WebApplication.ShowMessage('Please select at least one criterion.');
    end;}


    // criando gráfico

    // inicialmente preencher o vetor gráfico

    for i := 0 to numcrit - 1 do // limpar o vetor
    begin
      vetorgrafico[i] := 0;
    end;
    for j := 0 to Length(vordem) - 1 do
    begin
      for i := 0 to numcrit - 1 do
      begin
        if i = vordem[j] then
        // caso em que os criterios ja mudaram de listbox
        begin
          vetorgrafico[i] := 2;
        end;
      end;
    end;

    // com o vetor preenchido criar o gráfico
    IWImggraficoordholistica.Visible := true;
    // torna o componente IWImage visivel
    Chart11.BottomAxis.Visible := true; // torna o eixo x visível
    Chart11.SeriesList.ClearValues;
    // limpar as séries se ja houver algum dado
    Chart11.leftAxis.Items.clear; // limpando os valores dos eixos para não se sobrepor
    // Chart11.leftAxis.Items.Add(2, wt); // adicionando o nome worst no eixo y do pior critério
    Chart11.leftAxis.Items.Add(100, bt); // adicionando o nome best no eixo y do melhor cirtério
    for i := 0 to numcrit - 1 do
    begin
      TIWUserSession(WebApplication.Data).StrDInd := i;
      if vetorgrafico[i] = 2 then
      // item já passou para o outro listbox
      begin
      if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 1) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 3)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 5) then
       begin
        Chart11.Series[1].AddXY(i, 100, bt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).Bconseqord[i]), clwebGREEN);
       end;

        if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 0) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 2)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 4) then
       begin
        Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
            .valor_razao[i] * 100, bt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).Bconseqord[i]), clwebGREEN);
       end;
      end;


      if vetorgrafico[i] = 0 then // nenhum dos dois casos acima
      begin
      if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 1) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 3)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 5) then
       begin

        Chart11.Series[0].AddXY(i, 100, bt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).Bconseqord[i]));
        TIWUserSession(WebApplication.Data).StrDInd := i;
        Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
            .valor_razao[i] * 100, wt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).Wconseqord[i]), clwebRED);
       end;

         if (TIWUserSession(WebApplication.Data).typeofcrit[i] = 0) or (TIWUserSession(WebApplication.Data).typeofcrit[i] = 2)  or
      (TIWUserSession(WebApplication.Data).typeofcrit[i] = 4) then
       begin

        Chart11.Series[0].AddXY(i, 100, wt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).wconseqord[i]));
        TIWUserSession(WebApplication.Data).StrDInd := i;
        Chart11.Series[1].AddXY(i, TIWUserSession(WebApplication.Data)
            .valor_razao[i] * 100, bt1 + intTostr(i + 1) + ':' + {trescasas}
            Rounding(TIWUserSession(WebApplication.Data).bconseqord[i]), clwebRED);
       end;
      end;
    end;
    IWImggraficoordholistica.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (Chart11.TeeCreateBitmap(clWebAQUA, rect(0, 0,
          IWImggraficoordholistica.Width, IWImggraficoordholistica.Height)));

    // passando para as variaveis globais
    // vtrrelacoesblin
    for i := 0 to numcrit - 2 do
    begin
      TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] := vtrrelacoesblin
        [i];
    end;
    // inicializando vtrblin
    for i := 0 to numcrit - 1 do
    begin
      // TIWUserSession(WebApplication.Data).vtrblin[i]:= vtrblin[i];
      TIWUserSession(WebApplication.Data).vtrposicoes[i] := vtrposicoes[i];
      // TIWUserSession(WebApplication.Data).vordem[i]:=vordem[i];
      TIWUserSession(WebApplication.Data).vetorgrafico[i] := vetorgrafico[i];
    end;

    // teste
    Setlength(TIWUserSession(WebApplication.Data).vordem, Length(vordem));
    Setlength(TIWUserSession(WebApplication.Data).vtrordem, Length(vordem));
    for i := 0 to Length(vordem) - 1 do
    begin
      TIWUserSession(WebApplication.Data).vordem[i] := vordem[i];
      TIWUserSession(WebApplication.Data).vtrordem[i] := vordem[i];
    end;

    TIWUserSession(WebApplication.Data).n := n;
    TIWUserSession(WebApplication.Data).m := m;
    TIWUserSession(WebApplication.Data).qtitensselected := qtitensselected;
    // colocando como teste
    TIWUserSession(WebApplication.Data).auxiAPAGAR := auxiAPAGAR;

    // salvar banco de dados na tabela problem
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 5;
    SalvarBDinter;

    { // salvar banco de dados na tabela current_stage
      TIWUserSession(WebApplication.Data).AuxsalvarBD := 12;
      SalvarBDinter; }

    // salvar banco de dados na tabela current_stage
    TIWUserSession(WebApplication.Data).BDstatus := '0';
    TIWUserSession(WebApplication.Data).AuxsalvarBD := 18;
    SalvarBDinter;

  end;

  procedure Tfrmaintercriterio.SalvarBDinter;
  var
    AuxsalvarBD, i, numcrit, j, decis, id_round, P: integer;
    // variavel auxiliar para salvar no BD
    Axuordem: string; // pega o vetor ordem e salva como uma string para passar para o banco de dados
    AuxLimMin, AuxLimMax, auxAH: string; // auxiliares para passa LimMin e LimMax que são Array of Double para string
    AuxCriBlind1, AuxVtrRelacoesBlin1: string;
    AuxCriBlind2, AuxVtrRelacoesBlin2: array of string;
    AuxNumQuest, auxrepre: string;
    AuxMaxPeso, AuxMinPeso: string;
    Auxpoa, aux_ret_ans: string;
    Auxcri_cong, auxnoresp, axinconsi: string;
    NumAlt: integer;
    auxMatrizParaPar: array of string;
    // nround: integer;
    ic, fn, tt: ttime;
    auxidb, auxnumquestbegin: integer;
    datainicio: string;
    auxdatafinal, axid_ah, Auxcriposi, id_ahbd: string;
    contholisticlocal, auxnumpoa: integer;
    AuxLimMaxA, AuxLimMinA, auxcbt, auxcontAH, id_status, id_pro: string;
    aux_recomenda_atual: string; // armazena a recomendação atual na problematica de portfolio
    Str, StrAux, Str1, StrAux1: string;
    Stop: boolean;
    auxCostcumu, Custo, CustoA: Double; // auxiliar para preencher informações nas colunas de custo unit e custo acumulado

    /// auxiliares utilizadas nos casos referentes à etapa intracriterio- 19.01.22///
    AuxBoundMx, AuxBoundMn, AuxFtipoOrig, AuxverificaIntra, AuxLinearIntra,
      AuxChangeLinear, AuxCritElicit, Auxpercentcrit, AuxMatInterpol,
      AuxPointsBisec: string;

  begin

    numcrit := TIWUserSession(WebApplication.Data).numcrit;
    NumAlt := TIWUserSession(WebApplication.Data).NumAlt;
    // inicializando o tamanho de todos os vetores que serão utilizados
    Setlength(auxMatrizParaPar, NumAlt);
    Setlength(TIWUserSession(WebApplication.Data).BDMatrizParaPar, NumAlt,
      NumAlt);
    Setlength(AuxCriBlind2, numcrit);
    Setlength(AuxVtrRelacoesBlin2, numcrit);

    with UserSession.ZQuery1 do
    begin

      case TIWUserSession(WebApplication.Data).AuxsalvarBD of
        0:
          // caso em que se vai salvar a ordenação dos criterios
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnstep2 (Step 2 (Flexible Elicitation)) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
            // como o banco de dados so salva string dessa forma o vtrordem, o vetor de relações blindadas e o de representantes devem ser transformados em sting
            for i := 0 to numcrit - 1 do
            begin
              Axuordem := Axuordem + intTostr
                (TIWUserSession(WebApplication.Data).vtrordem[i]);
              if i < numcrit - 1 then
                Axuordem := Axuordem + '/';

            end; // referente a for i := 0 to numcrit - 1

            // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
            sql.Text := 'UPDATE problem SET cri_order ="' + (Axuordem)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end;
        // referente ao begin do caso 0

        1: // caso em que salva os limites maximos e os limites minimos, relações blindadas e representantes
          begin
            // ATENÇÃO CASO CRI_CONG OU  ID_POA  FOREM INSERIDOS NO INICIO DO PROBLEMA NA INTRO DEVE MUDAR DE INSERT PARA UPDATE
            // ATENÇÃO esse procediemtno só deve ser chmado depois que o ID_PROBLEMa tiver sido preenchido a primeira vez
            // salvando no BD  //ATENÇÃO CASO CRI_CONG OU  ID_POA  FOREM INSERIDOS NO INICIO DO PROBLEMA NA INTRO DEVE MUDAR DE INSERT PARA UPDATE
            // atenção o status do processo pode receber 0 se estiver em andamento o processo e 1 se o processo estiver finalizado
            // ESSE CASO FOI CHAMADO NO BOTÃO  BrnOK(OK) DA REGIÃO IWRgnstep2
            sql.Text :=

              'UPDATE current_stage  SET num_rpos ="' + intTostr
              (TIWUserSession(WebApplication.Data).Rlevels)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end;
        // referente ao begin do caso 1

        2: // caso em que salva o cri_cong
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO  BrnOK(OK) DA REGIÃO IWRgnstep2
            // o cri_cong é array of integer assim deve-se transgormar em uma unica string
            for i := 0 to Length(TIWUserSession(WebApplication.Data).Cri_Cong)
              - 1 do
              Auxcri_cong := Auxcri_cong + intTostr
                (TIWUserSession(WebApplication.Data).Cri_Cong[i]);

            sql.Text := 'UPDATE problem SET cri_cong ="' + (Auxcri_cong)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end;
        // referente ao begin do caso 2

        3: // caso em que salva a sequencia de respostas da elicitação
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO BrnOK (OK) DA REGIÃO IWRgnstep2 (QUANDO O USUARIO REALIZA O STEP 2)
            // como a planilha problema já terá sido preenchida no inicio do problema então deve-se apenas atualizar o campo ans_seq

            // se o problema tiver sido retornado
            if TIWUserSession(WebApplication.Data)
              .auxiliar_ans_seq_bd = true then
            begin
              sql.Text := 'SELECT ans_seq FROM problem WHERE id_problem = "' +
                (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
              ExecSQL;
              open;
              aux_ret_ans := FieldByName('ans_seq').AsString;
              close;
              TIWUserSession(WebApplication.Data).Ans_seq :=
                aux_ret_ans + TIWUserSession(WebApplication.Data).Ans_seq;
            end;
            TIWUserSession(WebApplication.Data).auxiliar_ans_seq_bd := false;

            sql.Text := 'UPDATE problem SET ans_seq ="' +
              (TIWUserSession(WebApplication.Data).Ans_seq)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao begin do caso 3

        4: // salvando o indice do criterio da consequencia A e o indice do criterio da consequencia B, e o numero de perguntas respondidas ate o momento
          begin
            // ESSE CASO FOI CHAMADO NO PROCEDIMENTO EFP
            // ESSE CASO FOI CHAMADO NO BOTÃO  BrnOK(OK) DA REGIÃO IWRgnstep2
            // ATENÇÃO esse procediemnto so deve ser chamado depois que o id_problem tiver sido preenchido a primeira vez
            // como os indices são inteiros será necessário que os mesmo sejam transformados em string
            // como pelo que identifiquei nenhum dos campos da planilha de elicitação haviam sido preenchidos ainda então o mesmo sera insert
            // graph se for -1(não visualizaou nenhum grafico),0 (visualizou a tabular),1(barras);2(bolhas) e 3(radar), falta criar procediemnto que concatena todos eles

            /// / O salvamento dos dados de classificação foram incluídos com o de
            /// escolha para não repetir muitas coisas, de forma que os nuances dos
            /// tipos de solução de cada um são processados antes de entrar no caso
            /// ecolha + classificação //////////////////////////////////////////

            StrAux := '';
            // ** Obtendo os perfis das alternativas **//
            with TIWUserSession(WebApplication.Data) do
              if Problematica = 3 then
              begin
                for i := 0 to NumAlt - 1 do
                begin
                  if i > 0 then
                    StrAux := StrAux + '/';
                  if class_min[i] = class_max[i] then
                    StrAux := StrAux + intTostr(class_min[i])
                  else
                    StrAux := StrAux + '[' + intTostr(class_min[i])
                      + ';' + intTostr(class_max[i]) + ']';
                end;
              end;

            Auxpoa := '';
            auxnumpoa := 0;
            With TIWUserSession(WebApplication.Data) do
              if (Problematica = 0) or (Problematica = 4) then
              begin
                for i := 0 to Length(TIWUserSession(WebApplication.Data)
                    .VetPOA) - 1 do
                begin
                  Auxpoa := Auxpoa + ',' + intTostr
                    (TIWUserSession(WebApplication.Data).VetPOA[i]);
                end; // referente a for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)

                auxnumpoa := Length(TIWUserSession(WebApplication.Data).VetPOA);
              end;

            With TIWUserSession(WebApplication.Data) do
              if (Problematica = 0) or (Problematica = 4) or
                (TIWUserSession(WebApplication.Data).Problematica = 3) then
              begin

                if ((TIWUserSession(WebApplication.Data).NumAH)
                    <> TIWUserSession(WebApplication.Data).contholisticglobal)
                  then
                begin
                  for i := 0 to (TIWUserSession(WebApplication.Data)
                      .NumAH - TIWUserSession(WebApplication.Data)
                      .contholisticglobal) - 1 do
                  begin
                    auxAH := auxAH + '.' + intTostr
                      (TIWUserSession(WebApplication.Data)
                        .contholisticglobal + i + 1);
                  end; // referente ao for
                end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

                if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                  (TIWUserSession(WebApplication.Data)
                    .contholisticglobal = TIWUserSession(WebApplication.Data)
                    .NumAH) then
                  auxAH := '0';

                TIWUserSession(WebApplication.Data).contholisticglobal :=
                  TIWUserSession(WebApplication.Data).NumAH;

                if TIWUserSession(WebApplication.Data).auxinconsi <> 1 then
                begin
                  if TIWUserSession(WebApplication.Data).PAns <> 3 then
                  begin

                    auxidb := TIWUserSession(WebApplication.Data)
                      .Representantes[TIWUserSession(WebApplication.Data)
                      .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                    sql.Text :=
                      'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,num_poa,real_cons_a,round, alt_profiles, alt_nao_class) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + intTostr(auxnumpoa) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (StrAux) + '","' + intTostr(TIWUserSession(WebApplication.Data).Alt_nao_classificadas) + '")';
                    ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                  end;
                  // referente a TIWUserSession(WebApplication.Data).PAns <> 3

                  if TIWUserSession(WebApplication.Data).PAns = 3 then
                  begin

                    if TIWUserSession(WebApplication.Data).auxnoans = 0 then
                    begin
                      auxnoresp := 'Not willing to say';
                    end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 0
                    if TIWUserSession(WebApplication.Data).auxnoans = 1 then
                    begin
                      auxnoresp := 'A and B seem too close';
                    end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 1

                    if TIWUserSession(WebApplication.Data).auxnoans = 2 then
                    begin
                      auxnoresp := 'Not willing to spend time';
                    end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 2

                    if TIWUserSession(WebApplication.Data).auxnoans = 3 then
                    begin
                      auxnoresp := 'Doubt';
                    end;
                    // referente a TIWUserSession(WebApplication.Data).auxnoans = 3
                    auxidb := TIWUserSession(WebApplication.Data)
                      .Representantes[TIWUserSession(WebApplication.Data)
                      .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                    sql.Text :=
                      'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,num_poa,real_cons_a,round, alt_profiles, alt_nao_class) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (auxnoresp) + '","' + intTostr(auxnumpoa) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (StrAux) + '","' + intTostr(TIWUserSession(WebApplication.Data).Alt_nao_classificadas) + '")';
                    ExecSQL;

                    sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                  end;
                  // referente a TIWUserSession(WebApplication.Data).PAns = 3
                end; // referente a if TIWUserSession(WebApplication.Data).auxinconsi <> 1

                if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
                begin
                  axinconsi := 'Resume Elicitation';
                  auxidb := TIWUserSession(WebApplication.Data)
                    .Representantes[TIWUserSession(WebApplication.Data)
                    .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,num_poa,real_cons_a,round, alt_profiles, alt_nao_class) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (axinconsi) + '","' + intTostr(auxnumpoa) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (StrAux) + '","' + intTostr(TIWUserSession(WebApplication.Data).Alt_nao_classificadas) + '")';
                  ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                  TIWUserSession(WebApplication.Data).auxinconsi := 0;
                end;
                // referente a if TIWUserSession(WebApplication.Data).auxinconsi = 1

                TIWUserSession(WebApplication.Data).auxbdgraph := '-1';
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
                auxAH := '';
                auxnumpoa := 0;
              end;
            // refrente a problematica de escolha

            if (TIWUserSession(WebApplication.Data).Problematica = 1) then
            begin

              // adicionar os níveis atuais no compotente text para passar para o BD

              IWTxtbdord.Lines.clear;
              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                IWTxtbdord.Lines.Add(TIWUserSession(WebApplication.Data)
                    .MatResultOrd[i, 0] + ':' + TIWUserSession
                    (WebApplication.Data).MatResultOrd[i, 1]);
              end;

              if ((TIWUserSession(WebApplication.Data).NumAH) <> TIWUserSession
                  (WebApplication.Data).contholisticglobal) then
              begin
                for i := 0 to (TIWUserSession(WebApplication.Data)
                    .NumAH - TIWUserSession(WebApplication.Data)
                    .contholisticglobal) - 1 do
                begin
                  auxAH := auxAH + '.' + intTostr
                    (TIWUserSession(WebApplication.Data)
                      .contholisticglobal + i + 1);
                end; // referente ao for
              end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

              if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                (TIWUserSession(WebApplication.Data)
                  .contholisticglobal = TIWUserSession(WebApplication.Data)
                  .NumAH) then
                auxAH := '0';

              TIWUserSession(WebApplication.Data).contholisticglobal :=
                TIWUserSession(WebApplication.Data).NumAH;

              if TIWUserSession(WebApplication.Data).auxinconsi <> 1 then
              begin
                if TIWUserSession(WebApplication.Data).PAns <> 3 then
                begin
                  auxidb := TIWUserSession(WebApplication.Data)
                    .Representantes[TIWUserSession(WebApplication.Data)
                    .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,real_cons_a,ranking_atual,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
                  ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                end;
                // referente a TIWUserSession(WebApplication.Data).PAns <> 3

                if TIWUserSession(WebApplication.Data).PAns = 3 then
                begin

                  if TIWUserSession(WebApplication.Data).auxnoans = 0 then
                  begin
                    auxnoresp := 'Not willing to say';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 0
                  if TIWUserSession(WebApplication.Data).auxnoans = 1 then
                  begin
                    auxnoresp := 'A and B seem too close';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 1

                  if TIWUserSession(WebApplication.Data).auxnoans = 2 then
                  begin
                    auxnoresp := 'Not willing to spend time';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 2

                  if TIWUserSession(WebApplication.Data).auxnoans = 3 then
                  begin
                    auxnoresp := 'Doubt';
                  end;
                  // referente a TIWUserSession(WebApplication.Data).auxnoans = 3
                  auxidb := TIWUserSession(WebApplication.Data)
                    .Representantes[TIWUserSession(WebApplication.Data)
                    .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,obs,real_cons_a,ranking_atual,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (auxnoresp) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
                  ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                end;
                // referente a TIWUserSession(WebApplication.Data).PAns = 3
              end; // referente a if TIWUserSession(WebApplication.Data).auxinconsi <> 1

              if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
              begin
                axinconsi := 'Resume Elicitation';
                auxidb := TIWUserSession(WebApplication.Data)
                  .Representantes[TIWUserSession(WebApplication.Data)
                  .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                sql.Text :=
                  'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,real_cons_a,ranking_atual,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (axinconsi) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
                ExecSQL;

                sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                TIWUserSession(WebApplication.Data).auxinconsi := 0;
              end;
              // referente a if TIWUserSession(WebApplication.Data).auxinconsi = 1

              TIWUserSession(WebApplication.Data).auxbdgraph := '-1';
              TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
              auxAH := '';
            end; // refrente a problematica de ordenação

            if (TIWUserSession(WebApplication.Data).Problematica = 2) then
            begin
              // se diferencia da problematica de ordenação pena necessidade de ser armazenada a recomendação
              /// /////////////// **Criando a recomendação **////////////////////////////////
              Stop := false;
              CustoA := 0;
              P := 0;
              Str := '[';
              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                for j := 1 to Length(TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i]) - 1 do
                begin
                  CustoA := CustoA + TIWUserSession(WebApplication.Data)
                    .Cost[TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i, j]];
                  if CustoA <= TIWUserSession(WebApplication.Data).budget then
                  begin
                    INC(P);
                    if Str = '[' then
                      Str := Str + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]]
                    else
                      Str := Str + ', ' + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]];
                  end
                  else
                  begin
                    CustoA := CustoA - TIWUserSession(WebApplication.Data)
                      .Cost[TIWUserSession(WebApplication.Data)
                      .MatrizGrupo[i, j]];
                    Stop := true;
                    break;
                  end;
                end;
                if Stop then
                  break;
              end;
              Str := Str + ']';
              // adicionar os níveis atuais no compotente text para passar para o BD

              IWTxtbdord.Lines.clear;
              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                IWTxtbdord.Lines.Add(TIWUserSession(WebApplication.Data)
                    .MatResultOrd[i, 0] + ':' + TIWUserSession
                    (WebApplication.Data).MatResultOrd[i, 1]);
              end;

              if ((TIWUserSession(WebApplication.Data).NumAH) <> TIWUserSession
                  (WebApplication.Data).contholisticglobal) then
              begin
                for i := 0 to (TIWUserSession(WebApplication.Data)
                    .NumAH - TIWUserSession(WebApplication.Data)
                    .contholisticglobal) - 1 do
                begin
                  auxAH := auxAH + '.' + intTostr
                    (TIWUserSession(WebApplication.Data)
                      .contholisticglobal + i + 1);
                end; // referente ao for
              end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

              if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                (TIWUserSession(WebApplication.Data)
                  .contholisticglobal = TIWUserSession(WebApplication.Data)
                  .NumAH) then
                auxAH := '0';

              TIWUserSession(WebApplication.Data).contholisticglobal :=
                TIWUserSession(WebApplication.Data).NumAH;

              if TIWUserSession(WebApplication.Data).auxinconsi <> 1 then
              begin
                if TIWUserSession(WebApplication.Data).PAns <> 3 then
                begin
                  auxidb := TIWUserSession(WebApplication.Data)
                    .Representantes[TIWUserSession(WebApplication.Data)
                    .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,real_cons_a,ranking_atual,round,recomendacao_atual) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (Str) + '")';
                  ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                end;
                // referente a TIWUserSession(WebApplication.Data).PAns <> 3

                if TIWUserSession(WebApplication.Data).PAns = 3 then
                begin

                  if TIWUserSession(WebApplication.Data).auxnoans = 0 then
                  begin
                    auxnoresp := 'Not willing to say';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 0
                  if TIWUserSession(WebApplication.Data).auxnoans = 1 then
                  begin
                    auxnoresp := 'A and B seem too close';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 1

                  if TIWUserSession(WebApplication.Data).auxnoans = 2 then
                  begin
                    auxnoresp := 'Not willing to spend time';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 2

                  if TIWUserSession(WebApplication.Data).auxnoans = 3 then
                  begin
                    auxnoresp := 'Doubt';
                  end;
                  // referente a TIWUserSession(WebApplication.Data).auxnoans = 3
                  auxidb := TIWUserSession(WebApplication.Data)
                    .Representantes[TIWUserSession(WebApplication.Data)
                    .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,obs,real_cons_a,ranking_atual,round,recomendacao_atual) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (auxnoresp) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (Str) + '")';
                  ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                end;
                // referente a TIWUserSession(WebApplication.Data).PAns = 3
              end; // referente a if TIWUserSession(WebApplication.Data).auxinconsi <> 1

              if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
              begin
                axinconsi := 'Resume Elicitation';
                auxidb := TIWUserSession(WebApplication.Data)
                  .Representantes[TIWUserSession(WebApplication.Data)
                  .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                sql.Text :=
                  'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,real_cons_a,ranking_atual,round,recomendacao_atual) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (axinconsi) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (Str) + '")';
                ExecSQL;

                sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                TIWUserSession(WebApplication.Data).auxinconsi := 0;
              end;
              // referente a if TIWUserSession(WebApplication.Data).auxinconsi = 1

              TIWUserSession(WebApplication.Data).auxbdgraph := '-1';
              TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
              auxAH := '';
              aux_recomenda_atual := '';
            end; // refrente a problematica de portfolio

          end; // referente ao caso 4

        5: // salvando o tempo de execusão
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnstep2 (Step 2 (Flexible Elicitation)) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO  IWButton4(NO) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO Btnchoose (Choose) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnmudarpareada (Change to Pairwise Comparison) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO Btnrestart (Restart) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton2(OK) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton1(Restart) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO Btnstep2(Step 2 (Flexible Elicitation)) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnmudarparaholistica(Change to Holistic Evaluation) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton8(NO) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
            // ESSE CASO FOI CHAMADO NO BOTÃO BrnOK(OK) DA REGIÃO IWRgnstep2 (QUANDO O USUARIO REALIZA A ELICITAÇÃO)
            // ESSE CASO FOI CHAMADO NO BOTÃO Btnshowresults(Show Current  Results) DA REGIÃO IWRgnstep2 (QUANDO O USUARIO REALIZA A ELICITAÇÃO)
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton5(Stop Elicitation) DA REGIÃO IWRgnstep2 (QUANDO O USUARIO REALIZA A ELICITAÇÃO)

            TIWUserSession(WebApplication.Data).tempofinal := TimeToStr(Now);
            ic := strtotime(TIWUserSession(WebApplication.Data).tempinicio);
            fn := strtotime(TIWUserSession(WebApplication.Data).tempofinal);
            if TIWUserSession(WebApplication.Data).tempexecant <> '' then
              tt := fn - ic + strtotime(TIWUserSession(WebApplication.Data)
                  .tempexecant)
            else
              tt := fn - ic;
            TIWUserSession(WebApplication.Data).tempexec := TimeToStr(tt);
            sql.Text := 'UPDATE problem SET exec_time  ="' +
              (TIWUserSession(WebApplication.Data).tempexec)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).tempexecant := TIWUserSession
              (WebApplication.Data).tempexec;
            TIWUserSession(WebApplication.Data).tempinicio := TIWUserSession
              (WebApplication.Data).tempofinal;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end;
        // referenet ao caso 5

        6: // (Inicializei o valor do roud no oncreate do intercriterio) sempre que iniciar o problema chamar ess eprocedimento para incrementar o número de rounds e já salvar no banco de dados
          begin

            // ESSE CASO FOI CHAMADO NO BOTÃO btnResetRecomcProblema (Reset and restart problem) DA REGIÃO  btnResetRecomcProblemaClick

            // pegar o ultimo valor do banco de dados e incrementar
            if TIWUserSession(WebApplication.Data).nround <> 0 then
            begin
              sql.Text := 'SELECT round FROM problem WHERE id_problem="' +
                (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
              ExecSQL;
              open;
              TIWUserSession(WebApplication.Data).nround := FieldByName('round')
                .AsInteger;
              close;
            end; // referente a if TIWUserSession(WebApplication.Data).nround <> 0

            INC(TIWUserSession(WebApplication.Data).nround);

            // para preencher a planilha problema
            sql.Text := 'UPDATE problem SET round ="' +
              (intTostr(TIWUserSession(WebApplication.Data).nround))
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            // para preencher a planilha current_stage

            sql.Text := 'UPDATE current_stage SET round ="' +
              (intTostr(TIWUserSession(WebApplication.Data).nround))
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            // para preencher a planilha alternatives

            for i := 0 to NumAlt - 1 do
            begin
              TIWUserSession(WebApplication.Data).ID_Alternative[i] := i;
            end;
            // referente a for i := 0 to NumAlt - 1
            With TIWUserSession(WebApplication.Data) do
              if (Problematica = 0) or (TIWUserSession(WebApplication.Data)
                  .Problematica = 1) then
              begin
                for i := 0 to NumAlt - 1 do
                begin
                  sql.Text :=
                    'INSERT INTO alternatives (name,id_problem,id_alternative,round) VALUES ("' + (TIWUserSession(WebApplication.Data).NomeAlt[i]) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + intTostr(TIWUserSession(WebApplication.Data).ID_Alternative[i]) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
                  ExecSQL;
                end;
              end; // referente a if (TIWUserSession(WebApplication.Data).Problematica=0) or (TIWUserSession(WebApplication.Data).Problematica=1) then
            With TIWUserSession(WebApplication.Data) do
              if (TIWUserSession(WebApplication.Data).Problematica = 2) { or
                (problematica = 4) } then
              begin
                for i := 0 to NumAlt - 1 do
                begin
                  sql.Text :=
                    'INSERT INTO alternatives (name,id_problem,id_alternative,round,cost) VALUES ("' + (TIWUserSession(WebApplication.Data).NomeAlt[i]) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + intTostr(TIWUserSession(WebApplication.Data).ID_Alternative[i]) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).Cost[i]) + '")';
                  ExecSQL;
                end;
              end; // referente a if (TIWUserSession(WebApplication.Data).Problematica=2) then




            // referente a for i := 0 to NumAlt - 1

            { sql.Text := 'UPDATE alternatives SET round ="' + (IntToStr(TIWUserSession(WebApplication.Data).nround))
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .ID_Problema) + '";';
              ExecSQL; }

            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end;
        // referente ao final do caso 6

        7:
          begin
            // O estagio será 0 (antes de ordenar os criterios), 1(Começou a ordenar), 2(começou elicitação sem ordenar), 3(começou elicitação apos ordenar), 4(finalizou processo), 5(problema acabou)
            // estagio=3, ESSE CASO FOI CHAMADO NO BOTÃO IWBtnstep2 (Step 2 (Flexible Elicitation)) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
            // estagio =3, ESSE CASO FOI CHAMADO NO BOTÃO IWBtnstep22(Step 2 (Flexible Elicitation)) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAREADA DOS CRITERIOS)
            // ESTAGIO =4, ESSE CASO FOI CHAMADO NO BOTÃO IWButton5(Stop Elicitation) DA REGIÃO IWRgnstep2 (QUANDO O USUARIO REALIZA O STEP 2)
            // estagio =0, ESSE CASO FOI CHAMADO NO BOTÃO  btnResetRecomcProblema (Reset and restart problem) DA REGIÃO IWRgnReset

            sql.Text := 'UPDATE problem SET stage ="' + intTostr
              (TIWUserSession(WebApplication.Data).estagio)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao final do caso 7

        8: // atualizando a matriz de dominancia
          begin
            // ESSE CASO FOI CHAMADO NO PROCEDIMENTO PLOrdenacao
            // o id_alternative vai de 0 até o número de alternativas do problema
            Setlength(TIWUserSession(WebApplication.Data).ID_Alternative,
              NumAlt);
            for i := 0 to NumAlt - 1 do
            begin
              TIWUserSession(WebApplication.Data).ID_Alternative[i] := i;
            end;
            // referente a  for i := 0 to NumAlt - 1

            // salvando cada linha da matriz para a par como um string

            for i := 0 to NumAlt - 1 do
            begin
              for j := 0 to NumAlt - 1 do
              begin
                TIWUserSession(WebApplication.Data).BDMatrizParaPar[i, j] :=
                  TIWUserSession(WebApplication.Data).ArmazenaParaPar
                  [(TIWUserSession(WebApplication.Data).Ciclo) - 1, i, j];

                auxMatrizParaPar[i] := auxMatrizParaPar[i] + intTostr
                  (TIWUserSession(WebApplication.Data).BDMatrizParaPar[i, j]);
              end; // referente a for j := 0 to NumAlt - 1
            end; // referente a for i := 0 to NumAlt - 1

            for i := 0 to NumAlt - 1 do
            begin
              sql.Text :=

                'INSERT INTO dominance_matrix (id_problem,id_alternative,question,relations) VALUES ("' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + intTostr(TIWUserSession(WebApplication.Data).ID_Alternative[i]) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (auxMatrizParaPar[i]) + '")';
              ExecSQL;

            end; // referente a  for i := 0 to NumAlt - 1
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end;
        // referente ao caso 8

        9: // salvando a parte da consNorm na matriz de consequencia
          begin
            // ESSE CASO FOI CHAMADO NO PROCEDIMENTO NORMALIZA;
            for i := 0 to NumAlt - 1 do
            begin
              for j := 0 to numcrit - 1 do
              begin
                sql.Text :=
                  'UPDATE consequences SET nconsequence  ="' + FloatToStr
                  (TIWUserSession(WebApplication.Data).ConsNorm[i, j])
                  + '" WHERE id_problem="' +
                  (TIWUserSession(WebApplication.Data).ID_Problema)
                  + '"AND id_criterion="' + intTostr(j)
                  + '"AND id_alternative="' + intTostr(i) + '";';
                ExecSQL;
              end; // referente a for j := 0 to numcrit - 1
            end; // referente a for i := 0 to NumAlt - 1
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end;
        // referente ao begin do caso 9

        10:
          // caso em que se vai salvar a ordenação dos criterios
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton7 (YES) DA REGIÃO  IWRgncomparacaopareada

            // como o banco de dados so salva string dessa forma o vtrordem, o vetor de relações blindadas e o de representantes devem ser transformados em sting
            for i := 0 to numcrit - 1 do
            begin
              Axuordem := Axuordem + intTostr
                (TIWUserSession(WebApplication.Data).vtrordem[i]);
              if i < numcrit - 1 then
                Axuordem := Axuordem + '/';
            end; // referente a for i := 0 to numcrit - 1
            // salvando no BD, como a planilha problema já será atualizada no inicio deve-se apenas atualizar o campo Cri_Order
            sql.Text := 'UPDATE problem SET cri_order ="' + (Axuordem)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao begin do 10

        11:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO Btnshowresults(Show Current  Results) da região IWRgnstep2
            // como o vetor com pesos maximos e minimos é double, é preciso transformar em string

            for i := 0 to numcrit - 1 do
            begin

              sql.Text :=

                'UPDATE criteria  SET k_max ="' + FloatToStr
                (TIWUserSession(WebApplication.Data).MaxPeso[i])
                + '",k_min="' + FloatToStr(TIWUserSession(WebApplication.Data)
                  .MinPeso[i]) + '" WHERE id_problem="' +
                (TIWUserSession(WebApplication.Data).ID_Problema)
                + '"AND name="' + (TIWUserSession(WebApplication.Data)
                  .NomeCrit[i]) + '";';
              ExecSQL;

              { AuxMaxPeso := AuxMaxPeso + FloatToStr
                (TIWUserSession(WebApplication.Data).MaxPeso[i]);
                AuxMinPeso := AuxMinPeso + FloatToStr
                (TIWUserSession(WebApplication.Data).MinPeso[i]); }
            end;
            // referente a for i := 0 to numcrit - 1

            // salvando no BD, como no inicio do problema a planilha critério já irá salvar alguns dados, nessa etapa ocorrerá apenas a atualização do campo dos pesos máximos e minimos
            { sql.Text :=

              'UPDATE criteria  SET k_max ="' + (AuxMaxPeso) + '",k_min="' +
              (AuxMinPeso) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
              ExecSQL; }
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao begin do caso 11

        12: // procedimento que atualiza os criterios blindados e as relações blindadas
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnstep2(Step 2 (Flexible Elicitation)) DA REGIÃO IWRgnavaliacaoholistica
            // Como no caso do vetor de relações blindadas e do representante se trata de um boolean é necessário antes transformar o que for false em 1 e o que for true em 0
            for i := 0 to numcrit - 1 do
            begin
              if TIWUserSession(WebApplication.Data).vtrblin[i] = false then
              begin
                AuxCriBlind2[i] := intTostr(1);
              end // referente ao if TIWUserSession(WebApplication.Data).vtrblin[i] = false
              else
              begin
                AuxCriBlind2[i] := intTostr(0);
              end;
              // referente ao else
              AuxCriBlind1 := AuxCriBlind1 + (AuxCriBlind2[i]);
            end;
            // referente a for i := 0 to numcrit - 1

            for i := 0 to numcrit - 2 do
            begin
              if TIWUserSession(WebApplication.Data).vtrrelacoesblin[i]
                = false then
              begin
                AuxVtrRelacoesBlin2[i] := intTostr(1);
              end // referente a if TIWUserSession(WebApplication.Data).vtrrelacoesblin[i] = false
              else
              begin
                AuxVtrRelacoesBlin2[i] := intTostr(0);
              end;
              // referente ao else
              AuxVtrRelacoesBlin1 := AuxVtrRelacoesBlin1 +
                (AuxVtrRelacoesBlin2[i]);
            end;
            // referente a for i := 0 to numcrit - 2
            sql.Text := 'UPDATE  current_stage SET cri_blin ="' +
              (AuxCriBlind1) + '",relblin="' + (AuxVtrRelacoesBlin1)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao caso 12
        13:
          begin
            // ESSE CASO FOI CHAMADO NO PROCEDIMENTO PLEscolha
            // como o vetpoa está em integer deve passar para string
            for i := 0 to Length(TIWUserSession(WebApplication.Data).VetPOA)
              - 1 do
            begin
              Auxpoa := Auxpoa + intTostr(TIWUserSession(WebApplication.Data)
                  .VetPOA[i]);
              if i < Length(TIWUserSession(WebApplication.Data).VetPOA) - 1 then
              begin
                Auxpoa := Auxpoa + '/';
              end; // referente a  if i < length(TIWUserSession(WebApplication.Data).VetPOA) - 1

            end; // referente a   for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)
            sql.Text := 'UPDATE  current_stage SET poa ="' + (Auxpoa)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao final do caso 13

        14:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO btninconsistencyok (OK) DA REGIÃO RgnInconsistency
            // ESSE CASO FOI CHAMADO NO BOTÃO BrnOK (OK) DA REGIÃO IWRgnstep2

            // como os limites estão em um array of double será necessário passar os mesmo para um string
            // como o tamanho do vetor de double é numcrit-1 para ambos os casos do LimMax e do LimMin, então o for só irá ate numcrit-2
            for i := 0 to numcrit - 2 do
            begin
              AuxLimMin := AuxLimMin + FloatToStr
                (TIWUserSession(WebApplication.Data).LimMin[i]);
              AuxLimMax := AuxLimMax + FloatToStr
                (TIWUserSession(WebApplication.Data).LimMax[i]);

              if i < numcrit - 2 then
              begin
                AuxLimMin := AuxLimMin + '/';
                AuxLimMax := AuxLimMax + '/'
              end;
              // referente a  if i < numcrit - 2

            end; // referente a for i := 0 to numcrit - 2
            sql.Text := 'UPDATE  current_stage SET lim_rel_max ="' +
              (AuxLimMax) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE  current_stage SET lim_rel_min ="' +
              (AuxLimMin) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;

            // Testando salvar o limite maximo e minimo da relação anterior

            for i := 0 to numcrit - 2 do
            begin
              AuxLimMinA := AuxLimMinA + FloatToStr
                (TIWUserSession(WebApplication.Data).LimMinA[i]);
              AuxLimMaxA := AuxLimMaxA + FloatToStr
                (TIWUserSession(WebApplication.Data).LimMaxA[i]);

              if i < numcrit - 2 then
              begin
                AuxLimMinA := AuxLimMinA + '/';
                AuxLimMaxA := AuxLimMaxA + '/'
              end;
              // referente a  if i < numcrit - 2

            end; // referente a for i := 0 to numcrit - 2

            sql.Text := 'UPDATE  current_stage SET lim_rel_max_ant ="' +
              (AuxLimMaxA) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE  current_stage SET lim_rel_min_ant ="' +
              (AuxLimMinA) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;

            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end;
        // referente ao caso 14

        15:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO  BrnOK(OK) DA REGIÃO IWRgnstep2
            // o cri_cong é array of integer assim deve-se transgormar em uma unica string
            for i := 0 to Length(TIWUserSession(WebApplication.Data).Cri_Cong)
              - 1 do
            begin
              Auxcri_cong := Auxcri_cong + intTostr
                (TIWUserSession(WebApplication.Data).Cri_Cong[i]);
            end; // referente a  for i := 0 to length(TIWUserSession(WebApplication.Data).Cri_Cong)
            sql.Text := 'UPDATE  current_stage SET cri_cong ="' + (Auxcri_cong)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao caso 15

        16:
          // ESSE CASO FOI CHAMADO NO BOTÃO  BrnOK(OK) DA REGIÃO IWRgnstep2
          begin
            sql.Text := 'UPDATE current_stage  SET heuransw ="' +
              (intTostr(TIWUserSession(WebApplication.Data).HeurQuest))
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE current_stage  SET ncons_heur ="' +
              (FloatToStr(TIWUserSession(WebApplication.Data).WDPHEUR))
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao caso 16

        17:
          // ESSE CASO FOI CHAMADO NO BOTÃO IWButton5(Stop Elicitation) DA REGIÃO IWRgnstep2 (QUANDO O USUARIO REALIZA A ELICITAÇÃO)
          begin
            auxdatafinal := Datetostr(date);
            sql.Text := 'UPDATE problem SET conclusion_date ="' +
              (auxdatafinal) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao caso 17
        18:
          begin
            // status 0 (em amdamento), status 1 (finalizado)
            { casos em que o status é 0:


              // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnstep2 (Step 2 (Flexible Elicitation)) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO  IWButton4(NO) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO Btnchoose (Choose) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnmudarpareada (Change to Pairwise Comparison) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO Btnrestart (Restart) DA REGIÃO IWRgnavaliacaoholistica (QUANDO O USUARIO REALIZA A COMPARAÇÃO DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO IWButton2(OK) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO IWButton1(Restart) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO Btnstep2(Step 2 (Flexible Elicitation)) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnmudarparaholistica(Change to Holistic Evaluation) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO IWButton8(NO) DA REGIÃO IWRgncomparacaopareada (QUANDO O USUARIO REALIZA A COMPARAÇÃO PAR A PAR DOS CRITERIOS)
              // ESSE CASO FOI CHAMADO NO BOTÃO BrnOK(OK) DA REGIÃO IWRgnstep2 (QUANDO O USUARIO REALIZA A ELICITAÇÃO)
              // ESSE CASO FOI CHAMADO NO BOTÃO Btnshowresults(Show Current  Results) DA REGIÃO IWRgnstep2 (QUANDO O USUARIO REALIZA A ELICITAÇÃO) }

            { caso em que o status é 1:
              // ESSE CASO FOI CHAMADO NO BOTÃO IWButton5(Stop Elicitation) DA REGIÃO IWRgnstep2 (QUANDO O USUARIO REALIZA A ELICITAÇÃO) }

            sql.Text := 'UPDATE current_stage SET status ="' +
              (TIWUserSession(WebApplication.Data).BDstatus)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao caso 18

        19:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO btninconsistencyok (OK) DA REGIÃO RgnInconsistency
            // caso que vai salvar na planilha de inconsistencia do BD
            // inicialmente pegando a decisão que foi tomada
            decis := rdgrpincnsistency.ItemIndex;

            // salvando as informações do ID_AH que estão no vetor TINFS
            { for i := 0 to length(TIWUserSession(WebApplication.Data).TINFS) - 1 do
              begin
              axid_ah := axid_ah + IntToStr
              (TIWUserSession(WebApplication.Data).TINFS[i] + 1);
              if i < (length(TIWUserSession(WebApplication.Data).TINFS) - 1) then
              begin
              axid_ah := axid_ah + '/';
              end; // referente a  if i < (length(TIWUserSession(WebApplication.Data).TINFS) - 1)

              end; // referente a  for i := 0 to length(TIWUserSession(WebApplication.Data).TINFS) - 1
              }

            // segundo caso anterior
            if rdgrpincnsistency.ItemIndex = 0 then
            begin
              for i := 0 to Length(TIWUserSession(WebApplication.Data)
                  .auxbd_id_ah_incos) - 1 do
              begin
                axid_ah := axid_ah + TIWUserSession(WebApplication.Data)
                  .auxbd_id_ah_incos[i];
                if i < (Length(TIWUserSession(WebApplication.Data)
                      .auxbd_id_ah_incos) - 1) then
                  axid_ah := axid_ah + '/';
              end;
            end; // referente a if rdgrpincnsistency.ItemIndex=0 then

            if rdgrpincnsistency.ItemIndex = 1 then
            begin
              for i := 0 to Length(TIWUserSession(WebApplication.Data).TINFS)
                - 1 do
              begin
                for j := 0 to Length(TIWUserSession(WebApplication.Data)
                    .HEINDEX[1]) - 1 do
                begin
                  if (TIWUserSession(WebApplication.Data).TINFS[i] + 1)
                    = TIWUserSession(WebApplication.Data).HEINDEX[1, j] then
                  begin
                    axid_ah := axid_ah + '/' + intTostr
                      (TIWUserSession(WebApplication.Data).HEINDEX[0, j]);
                  end; // referente a  if TIWUserSession(WebApplication.Data).TINFS[i]=TIWUserSession(WebApplication.Data).HEINDEX[1,j] then
                end; // referente a for j := 0 to length(TIWUserSession(WebApplication.Data).HEINDEX[1]) - 1 do
              end; // referente a for i := 0 to length(TIWUserSession(WebApplication.Data).TINFS) - 1 do
            end; // referente a if rdgrpincnsistency.ItemIndex=1 then

            if TIWUserSession(WebApplication.Data).CBT = true then
            begin
              auxcbt := '1';
            end
            else
              auxcbt := '0';

            sql.Text :=

              'INSERT INTO inconsistency_ (id_problem,round,id_ah,decision,perg_decomp,combination) VALUES ("' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (axid_ah) + '","' + intTostr(decis) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (auxcbt) + '")';
            ExecSQL;
          end;
        // referente ao caso 19

        20:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO btninconsistencyok (OK) DA REGIÃO RgnInconsistency
            // caso no qual ao ocorrer inconsistencia o usuario opta por permanecer com a AH
            // inicialmente pegar a resposta da pergunta e salvar como resposta anterior,para isso o PAns deve ser pego o seu oposto

            if TIWUserSession(WebApplication.Data).PAns = 0 then
            begin
              sql.Text := 'UPDATE elicitation SET pergant ="' + intTostr(1)
                + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND perg="' + intTostr
                (TIWUserSession(WebApplication.Data).NumQuest) + '";';
              ExecSQL;
            end; // referente a if TIWUserSession(WebApplication.Data).PAns = 0
            if TIWUserSession(WebApplication.Data).PAns = 1 then
            begin
              sql.Text := 'UPDATE elicitation SET pergant ="' + intTostr(0)
                + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND perg="' + intTostr
                (TIWUserSession(WebApplication.Data).NumQuest) + '";';
              ExecSQL;
            end; // refrente a if TIWUserSession(WebApplication.Data).PAns = 1

            if TIWUserSession(WebApplication.Data).PAns = 3 then
            begin
              sql.Text := 'UPDATE elicitation SET pergant ="' + intTostr(2)
                + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND perg="' + intTostr
                (TIWUserSession(WebApplication.Data).NumQuest) + '";';
              ExecSQL;
            end; // referente a if TIWUserSession(WebApplication.Data).PAns = 3

            // em seguida deve-se  atualizar no BD a preferencia, uma vez que se o usuario preferiu manter a AH e não a sua resposta da pergunta, a resposta sera invertida

            sql.Text := 'UPDATE elicitation SET preference ="' + intTostr
              (TIWUserSession(WebApplication.Data).PAns)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '"AND perg="' + intTostr
              (TIWUserSession(WebApplication.Data).NumQuest) + '";';
            ExecSQL;
          end; // refrente ao caso 20

        21:
          // ESSE CASO FOI CHAMADO NO BOTÃO btninconsistencyok (OK) DA REGIÃO RgnInconsistency
          begin
            // caso em que o usuario ao ocorrer inconsistencia opta por permanecer com a resposta da pergunta e invalidar a AH
            // o status vai ser 0 se estiver inativo a AH e 1 se estiver ativa

            for i := 0 to Length(TIWUserSession(WebApplication.Data)
                .auxbd_id_ah_incos) - 1 do
            begin
              sql.Text := 'UPDATE holistic_evaluation SET status ="' + intTostr
                (0) + '" WHERE id_problem="' +
                (TIWUserSession(WebApplication.Data).ID_Problema)
                + '"AND round="' + intTostr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND id_ah="' + TIWUserSession(WebApplication.Data)
                .auxbd_id_ah_incos[i] + '";';
              ExecSQL;
            end;


            // TESTE CODIGO 2
            { I := 0;
              SQL.text := 'SELECT * FROM holistic_evaluation';
              ExecSQL;
              open;
              while I < TIWUserSession(WebApplication.Data).totalAH do
              begin
              id_pro := FieldByName('id_problem').Asstring;
              id_round := FieldByName('round').AsInteger;
              id_ahbd:=  FieldByName('id_ah').AsString;
              if (id_pro=TIWUserSession(WebApplication.Data).ID_Problema)and (id_round=TIWUserSession(WebApplication.Data).nround) then
              begin
              for j := 0 to length(TIWUserSession(WebApplication.Data).auxbd_id_ah_incos) - 1 do
              begin
              if (id_ahbd= TIWUserSession(WebApplication.Data).auxbd_id_ah_incos[j])then
              begin
              sql.Text :=
              'UPDATE holistic_evaluation SET status ="' + IntToStr(0)
              + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema)
              + '"AND round="' + IntToStr
              (TIWUserSession(WebApplication.Data).nround)
              + '"AND id_ah="' + id_ahbd + '";';
              ExecSQL;
              end; //referenete a if (id_ahbd= TIWUserSession(WebApplication.Data).auxbd_id_ah_incos[j])then
              end; //referente a  for j := 0 to length(TIWUserSession(WebApplication.Data).auxbd_id_ah_incos) - 1 do

              INC(I);

              end;//referente a if (id_pro=TIWUserSession(WebApplication.Data).ID_Problema)and (id_round=TIWUserSession(WebApplication.Data).nround) then
              next;
              end; //referente a while I < TIWUserSession(WebApplication.Data).totalAH do
              close; }

            // TESTE CODIGO 1
            { for i := 0 to TIWUserSession(WebApplication.Data).NumAH - 1 do
              begin
              for j := 0 to length(TIWUserSession(WebApplication.Data).TINFS) - 1
              do
              begin
              if i = TIWUserSession(WebApplication.Data).TINFS[j] then
              begin
              sql.Text :=
              'UPDATE holistic_evaluation SET status ="' + IntToStr(0)
              + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema)
              + '"AND round="' + IntToStr
              (TIWUserSession(WebApplication.Data).nround)
              + '"AND id_ah="' + IntToStr(i + 1) + '";';
              ExecSQL;
              end; // referente a   if i = TIWUserSession(WebApplication.Data).TINFS[j]
              end; // refrente a for j := 0 to length(TIWUserSession(WebApplication.Data).TINFS)

              if TIWUserSession(WebApplication.Data).CBT = true then
              begin
              Break;
              end; // if TIWUserSession(WebApplication.Data).cbt=true then

              end; // referente a  for i := 0 to TIWUserSession(WebApplication.Data).auxNumAH - 1
              }
          end; // referente ao caso 21
        22:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnstep2(Step 2 (Flexible Elicitation)) DA REGIÃO IWRgnavaliacaoholistica
            // ESSE CASO FOI CHAMADO NO BOTÃO IWBtnstep22(Step 2 (Flexible Elicitation)) DA REGIÃO IWRgncomparacaopareada

            // procedimento para salvar representantes na planilha problema
            for i := 0 to Length(TIWUserSession(WebApplication.Data)
                .Representantes) - 1 do
            begin
              auxrepre := auxrepre + intTostr
                (TIWUserSession(WebApplication.Data).Representantes[i]);

              if i < Length(TIWUserSession(WebApplication.Data).Representantes)
                - 1 then
                auxrepre := auxrepre + '/';

            end; // refrente ao for

            sql.Text := 'UPDATE problem SET representantes ="' + (auxrepre)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

          end; // refernte ao final do 22
        23:
          begin
            // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO BrnOK (ok) DA REGIÃO IWRgnstep2
            // salva o numero de perguntas respondidas no current_stage e na tabela problema
            // como o numero de questões é um ínteiro é necessário trasforma-lo em um string

            AuxNumQuest := intTostr(TIWUserSession(WebApplication.Data)
                .NumQuest);

            sql.Text := 'UPDATE problem SET num_quest_ef ="' + (AuxNumQuest)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE current_stage SET num_quest_decomp ="' +
              (AuxNumQuest) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
          end; // referente ao caso 23

        24:
          begin
            // pega o vetor posições para o  BD
            // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO BrnOK (OK) da região IWRgnstep2
            // ESSE PROCEDIMENTO FOI CHAMADO NOS BOTÕES IWBtnstep2 (Step 2 (Flexible Elicitation)) e IWBtnstep22 (Step 2 (Flexible Elicitation))
            for i := 0 to Length(TIWUserSession(WebApplication.Data)
                .vtrposicoes) - 1 do
            begin
              Auxcriposi := Auxcriposi + intTostr
                (TIWUserSession(WebApplication.Data).vtrposicoes[i]);
              if i < Length(TIWUserSession(WebApplication.Data).vtrposicoes)
                - 1 then
                Auxcriposi := Auxcriposi + '/';

            end; // referente ao for

            sql.Text := 'UPDATE current_stage SET cri_posi ="' + (Auxcriposi)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

          end; // referente ao caso 24
        25:
          begin
            // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO BrnOK (OK) da região IWRgnstep2
            // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO  IWBtnstep2 (Step 2 (Flexible Elicitation)) DA REGIÃO IWRgnavaliacaoholistica
            // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO  IWBtnstep22 (Step 2 (Flexible Elicitation)) DA REGIÃO IWRgncomparacaopareada
            // procedimento para pegar o Indice A, Indice B, WDP1 e NumQP

            sql.Text := 'UPDATE current_stage SET indiceA ="' + intTostr
              (TIWUserSession(WebApplication.Data).IndiceA)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE current_stage SET indiceB ="' + intTostr
              (TIWUserSession(WebApplication.Data).IndiceB)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE current_stage SET wdp1 ="' + FloatToStr
              (TIWUserSession(WebApplication.Data).WDP1)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE current_stage SET num_qp ="' + intTostr
              (TIWUserSession(WebApplication.Data).NumQP)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE current_stage SET indice ="' + intTostr
              (TIWUserSession(WebApplication.Data).Indice)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE current_stage SET etapa ="' + intTostr
              (TIWUserSession(WebApplication.Data).Etapa)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

          end; // referente a 25

        26:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO IWButton16(Go Back One Step) DA REGIÃO rgnIncAsk
            // ESSE CASO FOI CHAMADO NO BOTÃO btnx(Back to the Beginning) DA REGIÃO rgnIncAsk
            // caso de incosnistencia
            With TIWUserSession(WebApplication.Data) do
              if (Problematica = 0) or (Problematica = 4) then
              begin
                auxnumquestbegin := TIWUserSession(WebApplication.Data)
                  .NumQuest + 2;
                if ((TIWUserSession(WebApplication.Data).NumAH)
                    <> TIWUserSession(WebApplication.Data).contholisticglobal)
                  then
                begin
                  for i := 0 to (TIWUserSession(WebApplication.Data)
                      .NumAH - TIWUserSession(WebApplication.Data)
                      .contholisticglobal) - 1 do
                  begin
                    auxAH := auxAH + '.' + intTostr
                      (TIWUserSession(WebApplication.Data)
                        .contholisticglobal + i + 1);
                  end; // referente ao for
                end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

                if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                  (TIWUserSession(WebApplication.Data)
                    .contholisticglobal = TIWUserSession(WebApplication.Data)
                    .NumAH) then
                  auxAH := '0';

                TIWUserSession(WebApplication.Data).contholisticglobal :=
                  TIWUserSession(WebApplication.Data).NumAH;

                if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
                begin
                  axinconsi := 'Resume Elicitation';
                end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 1

                if TIWUserSession(WebApplication.Data).auxinconsi = 2 then
                begin
                  axinconsi := 'Go back one step';
                end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 2

                if TIWUserSession(WebApplication.Data).auxinconsi = 3 then
                begin
                  axinconsi := 'Back to the beginning';
                end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 3

                for i := 0 to Length(TIWUserSession(WebApplication.Data)
                    .VetPOA) - 1 do
                begin
                  Auxpoa := Auxpoa + ',' + intTostr
                    (TIWUserSession(WebApplication.Data).VetPOA[i]);
                end; // referente a for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA) - 1

                auxnumpoa := Length(TIWUserSession(WebApplication.Data).VetPOA);

                auxidb := TIWUserSession(WebApplication.Data)
                  .Representantes[TIWUserSession(WebApplication.Data)
                  .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

                sql.Text :=
                  'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,num_poa,real_cons_a,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(auxnumquestbegin) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(4) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (axinconsi) + '","' + intTostr(auxnumpoa) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
                ExecSQL;

                sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;

                auxnumpoa := 0;
                auxAH := '';
              end;
            // referente a problematica de escolha

            if (TIWUserSession(WebApplication.Data).Problematica = 1) then
            begin
              auxnumquestbegin := TIWUserSession(WebApplication.Data)
                .NumQuest + 2;
              // adicionar os níveis atuais no compotente text para passar para o BD

              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                IWTxtbdord.Lines[i] := TIWUserSession(WebApplication.Data)
                  .MatResultOrd[i, 0] + ':' + TIWUserSession
                  (WebApplication.Data).MatResultOrd[i, 1]
              end;

              if ((TIWUserSession(WebApplication.Data).NumAH) <> TIWUserSession
                  (WebApplication.Data).contholisticglobal) then
              begin
                for i := 0 to (TIWUserSession(WebApplication.Data)
                    .NumAH - TIWUserSession(WebApplication.Data)
                    .contholisticglobal) - 1 do
                begin
                  auxAH := auxAH + '.' + intTostr
                    (TIWUserSession(WebApplication.Data)
                      .contholisticglobal + i + 1);
                end; // referente ao for
              end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

              if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                (TIWUserSession(WebApplication.Data)
                  .contholisticglobal = TIWUserSession(WebApplication.Data)
                  .NumAH) then
                auxAH := '0';

              TIWUserSession(WebApplication.Data).contholisticglobal :=
                TIWUserSession(WebApplication.Data).NumAH;

              if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
              begin
                axinconsi := 'Resume Elicitation';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 1

              if TIWUserSession(WebApplication.Data).auxinconsi = 2 then
              begin
                axinconsi := 'Go back one step';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 2

              if TIWUserSession(WebApplication.Data).auxinconsi = 3 then
              begin
                axinconsi := 'Back to the beginning';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 3
              auxidb := TIWUserSession(WebApplication.Data)
                .Representantes[TIWUserSession(WebApplication.Data)
                .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

              sql.Text :=
                'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,obs,real_cons_a,ranking_atual,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(auxnumquestbegin) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(4) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (axinconsi) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
              ExecSQL;

              sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;

              auxAH := '';
            end; // referente a problematica de ordenação

            if (TIWUserSession(WebApplication.Data).Problematica = 2) then
            begin
              // se diferencia da problematica de ordenação pena necessidade de ser armazenada a recomendação
              /// /////////////// **Criando a recomendação **////////////////////////////////
              Stop := false;
              CustoA := 0;
              P := 0;
              Str := '[';
              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                for j := 1 to Length(TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i]) - 1 do
                begin
                  CustoA := CustoA + TIWUserSession(WebApplication.Data)
                    .Cost[TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i, j]];
                  if CustoA <= TIWUserSession(WebApplication.Data).budget then
                  begin
                    INC(P);
                    if Str = '[' then
                      Str := Str + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]]
                    else
                      Str := Str + ', ' + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]];
                  end
                  else
                  begin
                    CustoA := CustoA - TIWUserSession(WebApplication.Data)
                      .Cost[TIWUserSession(WebApplication.Data)
                      .MatrizGrupo[i, j]];
                    Stop := true;
                    break;
                  end;
                end;
                if Stop then
                  break;
              end;
              Str := Str + ']';

              auxnumquestbegin := TIWUserSession(WebApplication.Data)
                .NumQuest + 2;
              // adicionar os níveis atuais no compotente text para passar para o BD

              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                IWTxtbdord.Lines[i] := TIWUserSession(WebApplication.Data)
                  .MatResultOrd[i, 0] + ':' + TIWUserSession
                  (WebApplication.Data).MatResultOrd[i, 1]
              end;

              if ((TIWUserSession(WebApplication.Data).NumAH) <> TIWUserSession
                  (WebApplication.Data).contholisticglobal) then
              begin
                for i := 0 to (TIWUserSession(WebApplication.Data)
                    .NumAH - TIWUserSession(WebApplication.Data)
                    .contholisticglobal) - 1 do
                begin
                  auxAH := auxAH + '.' + intTostr
                    (TIWUserSession(WebApplication.Data)
                      .contholisticglobal + i + 1);
                end; // referente ao for
              end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

              if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                (TIWUserSession(WebApplication.Data)
                  .contholisticglobal = TIWUserSession(WebApplication.Data)
                  .NumAH) then
                auxAH := '0';

              TIWUserSession(WebApplication.Data).contholisticglobal :=
                TIWUserSession(WebApplication.Data).NumAH;

              if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
              begin
                axinconsi := 'Resume Elicitation';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 1

              if TIWUserSession(WebApplication.Data).auxinconsi = 2 then
              begin
                axinconsi := 'Go back one step';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 2

              if TIWUserSession(WebApplication.Data).auxinconsi = 3 then
              begin
                axinconsi := 'Back to the beginning';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 3
              auxidb := TIWUserSession(WebApplication.Data)
                .Representantes[TIWUserSession(WebApplication.Data)
                .vtrposicoes[TIWUserSession(WebApplication.Data).IR]];

              sql.Text :=
                'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,obs,real_cons_a,ranking_atual,round,recomendacao_atual) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IA) + '","' + intTostr(auxidb) + '","' + intTostr(auxnumquestbegin) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1ant) + '","' + intTostr(4) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (axinconsi) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).consrealAnt) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + FloatToStr(CustoA) + '")';
              ExecSQL;

              sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;

              auxAH := '';
            end; // referente a problematica de portfolio

          end; // referente a 26

        27:
          begin
            // esse caso deve ser chamado quando ainda nenhuma pergunta foi respondida e apenas rodou a primeira vez a PL
            // ESSE PROCEDIMENTO FOI CHAMADO NO EFP, onde o heurquest=-1
            With TIWUserSession(WebApplication.Data) do
              if (Problematica = 0) or (Problematica = 4) then
              begin

                for i := 0 to Length(TIWUserSession(WebApplication.Data)
                    .VetPOA) - 1 do
                begin
                  Auxpoa := Auxpoa + ',' + intTostr
                    (TIWUserSession(WebApplication.Data).VetPOA[i]);
                end; // referente a   for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA) - 1
                sql.Text :=
                  'INSERT INTO elicitation (id_problem,perg,poa,round) VALUES ("' +
                  (TIWUserSession(WebApplication.Data).ID_Problema)
                  + '","' + intTostr(0) + '","' + (Auxpoa) + '","' + intTostr
                  (TIWUserSession(WebApplication.Data).nround) + '")';
                ExecSQL;

                sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
              end; // referente a if TIWUserSession(WebApplication.Data).problematica=0

            if (TIWUserSession(WebApplication.Data).Problematica = 1) then
            begin
              sql.Text :=
                'INSERT INTO elicitation (id_problem,perg,num_rpos,round) VALUES ("' +
                (TIWUserSession(WebApplication.Data).ID_Problema)
                + '","' + intTostr(0) + '","' + intTostr
                (TIWUserSession(WebApplication.Data).Rlevels) + '","' + intTostr
                (TIWUserSession(WebApplication.Data).nround) + '")';
              ExecSQL;

              sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
            end; // referente a if TIWUserSession(WebApplication.Data).problematica=1

            if (TIWUserSession(WebApplication.Data).Problematica = 2) then
            begin
              // se diferencia da problematica de ordenação pena necessidade de ser armazenada a recomendação
              /// /////////////// **Criando a recomendação **////////////////////////////////
              Stop := false;
              CustoA := 0;
              P := 0;
              Str := '[';
              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                for j := 1 to Length(TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i]) - 1 do
                begin
                  CustoA := CustoA + TIWUserSession(WebApplication.Data)
                    .Cost[TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i, j]];
                  if CustoA <= TIWUserSession(WebApplication.Data).budget then
                  begin
                    INC(P);
                    if Str = '[' then
                      Str := Str + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]]
                    else
                      Str := Str + ', ' + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]];
                  end
                  else
                  begin
                    CustoA := CustoA - TIWUserSession(WebApplication.Data)
                      .Cost[TIWUserSession(WebApplication.Data)
                      .MatrizGrupo[i, j]];
                    Stop := true;
                    break;
                  end;
                end;
                if Stop then
                  break;
              end;
              Str := Str + ']';
              sql.Text :=
                'INSERT INTO elicitation (id_problem,perg,num_rpos,round,recomendacao_atual) VALUES ("' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + intTostr(0) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (Str) + '")';
              ExecSQL;

              sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
            end; // referente a if TIWUserSession(WebApplication.Data).problematica=2

            if TIWUserSession(WebApplication.Data).Problematica = 3 then
            begin
              StrAux := '';
              // ** Obtendo os perfis das alternativas **//
              with TIWUserSession(WebApplication.Data) do
              begin
                for i := 0 to NumAlt - 1 do
                begin
                  if i > 0 then
                    StrAux := StrAux + '/';
                  if class_min[i] = class_max[i] then
                    StrAux := StrAux + intTostr(class_min[i])
                  else
                    StrAux := StrAux + '[' + intTostr(class_min[i])
                      + ';' + intTostr(class_max[i]) + ']';
                end;
              end;

              sql.Text :=
                'INSERT INTO elicitation (id_problem,perg,alt_nao_class, alt_profiles,round) VALUES ("' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + intTostr(0) + '","' + intTostr(TIWUserSession(WebApplication.Data).Alt_nao_classificadas) + '","' + (StrAux) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
              ExecSQL;

              sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
            end; // referente a if TIWUserSession(WebApplication.Data).problematica=0

          end; // referente ao caso 27

        28:
          begin
            // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO IWBtnstep2(Step 2 (Flexible Elicitation)) DA REGIÃO IWRgnavaliacaoholistica
            // ESSE PROCEDIMENTO FOI CHAMADO NO BOTÃO IWBtnstep22(Step 2 (Flexible Elicitation)) DA REGIÃO IWRgncomparacaopareada
            // procedimento para atualizar tipo_ord, sendo -1 ordenação da planilha, 0 se for ordenação por holistico e 1 se for por par a par

            sql.Text := 'UPDATE  problem SET tipo_ord ="' + intTostr
              (TIWUserSession(WebApplication.Data).auxtipoord)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            // procedimento para salvar a quantidade de perguntas respondidas na ordenação dos criterios

            sql.Text := 'UPDATE  problem SET num_quest_ord ="' + intTostr
              (TIWUserSession(WebApplication.Data).contord)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
            TIWUserSession(WebApplication.Data).contord := 0;

          end; // referente ao caso 28

        29:
          begin
            // ESSE CASO FOI CHAMADO NO PROCEDIMENTO
            // caso utilizado na retomada do problema para verificar qual o tipo de ordenação foi realizado
            sql.Text := 'SELECT tipo_ord FROM problem WHERE id_problem ="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
            open;
            TIWUserSession(WebApplication.Data).tipoordretomada := FieldByName
              ('tipo_ord').AsInteger;
            close;
          end;

        30:
          begin

            // time:= timetostr(now);
            datainicio := Datetostr(date);

            // atualizando data de entrada
            sql.Text := 'UPDATE problem SET creation_date ="' + (datainicio)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

          end;
        31: // salvando o indice do criterio da consequencia A e o indice do criterio da consequencia B, e o numero de perguntas respondidas ate o momento
          begin
            // ESSE CASO FOI CHAMADO NO PROCEDIMENTO EFP
            // ATENÇÃO esse procediemnto so deve ser chamado depois que o id_problem tiver sido preenchido a primeira vez
            // como os indices são inteiros será necessário que os mesmo sejam transformados em string
            // como pelo que identifiquei nenhum dos campos da planilha de elicitação haviam sido preenchidos ainda então o mesmo sera insert
            // graph se for -1(não visualizaou nenhum grafico),0 (visualizou a tabular),1(barras);2(bolhas) e 3(radar), falta criar procediemnto que concatena todos eles

            StrAux := '';
            // ** Obtendo os perfis das alternativas **//
            with TIWUserSession(WebApplication.Data) do
              if Problematica = 3 then
              begin
                for i := 0 to NumAlt - 1 do
                begin
                  if i > 0 then
                    StrAux := StrAux + '/';
                  if class_min[i] = class_max[i] then
                    StrAux := StrAux + intTostr(class_min[i])
                  else
                    StrAux := StrAux + '[' + intTostr(class_min[i])
                      + ';' + intTostr(class_max[i]) + ']';
                end;
              end;

            With TIWUserSession(WebApplication.Data) do
              if (Problematica = 0) or (Problematica = 4) then
              begin

                for i := 0 to Length(TIWUserSession(WebApplication.Data)
                    .VetPOA) - 1 do
                begin
                  Auxpoa := Auxpoa + ',' + intTostr
                    (TIWUserSession(WebApplication.Data).VetPOA[i]);
                end; // referente a for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA)

                auxnumpoa := Length(TIWUserSession(WebApplication.Data).VetPOA);
              end;

            With TIWUserSession(WebApplication.Data) do
              if (Problematica = 0) or (Problematica = 4) or
                (TIWUserSession(WebApplication.Data).Problematica = 3) then
              begin

                if ((TIWUserSession(WebApplication.Data).NumAH)
                    <> TIWUserSession(WebApplication.Data).contholisticglobal)
                  then
                begin
                  for i := 0 to (TIWUserSession(WebApplication.Data)
                      .NumAH - TIWUserSession(WebApplication.Data)
                      .contholisticglobal) - 1 do
                  begin
                    auxAH := auxAH + '.' + intTostr
                      (TIWUserSession(WebApplication.Data)
                        .contholisticglobal + i + 1);
                  end; // referente ao for
                end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

                if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                  (TIWUserSession(WebApplication.Data)
                    .contholisticglobal = TIWUserSession(WebApplication.Data)
                    .NumAH) then
                  auxAH := '0';

                TIWUserSession(WebApplication.Data).contholisticglobal :=
                  TIWUserSession(WebApplication.Data).NumAH;

                if TIWUserSession(WebApplication.Data).auxinconsi <> 1 then
                begin
                  if TIWUserSession(WebApplication.Data).PAns <> 3 then
                  begin

                    sql.Text :=
                      'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,num_poa,real_cons_a,round,alt_profiles,alt_nao_class) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + intTostr(auxnumpoa) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (StrAux) + '","' + intTostr(TIWUserSession(WebApplication.Data).Alt_nao_classificadas) + '")';
                    ExecSQL;

                    sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                  end;
                  // referente a TIWUserSession(WebApplication.Data).PAns <> 3

                  if TIWUserSession(WebApplication.Data).PAns = 3 then
                  begin

                    if TIWUserSession(WebApplication.Data).auxnoans = 0 then
                    begin
                      auxnoresp := 'Not willing to say';
                    end;
                    // referente a TIWUserSession(WebApplication.Data).auxnoans = 0
                    if TIWUserSession(WebApplication.Data).auxnoans = 1 then
                    begin
                      auxnoresp := 'A and B seem too close';
                    end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 1

                    if TIWUserSession(WebApplication.Data).auxnoans = 2 then
                    begin
                      auxnoresp := 'Not willing to spend time';
                    end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 2

                    if TIWUserSession(WebApplication.Data).auxnoans = 3 then
                    begin
                      auxnoresp := 'Doubt';
                    end;
                    // referente a TIWUserSession(WebApplication.Data).auxnoans = 3

                    sql.Text :=
                      'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,num_poa,real_cons_a,round,alt_profiles,alt_nao_class) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (auxnoresp) + '","' + intTostr(auxnumpoa) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (StrAux) + '","' + intTostr(TIWUserSession(WebApplication.Data).Alt_nao_classificadas) + '")';
                    ExecSQL;

                    sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                  end;
                  // referente a TIWUserSession(WebApplication.Data).PAns = 3
                end; // referente a if TIWUserSession(WebApplication.Data).auxinconsi <> 1

                if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
                begin
                  axinconsi := 'Resume Elicitation';

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,num_poa,real_cons_a,round, alt_profiles, alt_nao_class) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (axinconsi) + '","' + intTostr(auxnumpoa) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (StrAux) + '","' + intTostr(TIWUserSession(WebApplication.Data).Alt_nao_classificadas) + '")';
                  ExecSQL;
                  TIWUserSession(WebApplication.Data).auxinconsi := 0;
                end;
                // referente a if TIWUserSession(WebApplication.Data).auxinconsi = 1

                TIWUserSession(WebApplication.Data).auxbdgraph := '-1';
                TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
                auxAH := '';
                auxnumpoa := 0;
              end;
            // refrente a problematica de escolha

            if (TIWUserSession(WebApplication.Data).Problematica = 1) then
            begin

              // adicionar os níveis atuais no compotente text para passar para o BD

              IWTxtbdord.Lines.clear;
              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                IWTxtbdord.Lines.Add(TIWUserSession(WebApplication.Data)
                    .MatResultOrd[i, 0] + ':' + TIWUserSession
                    (WebApplication.Data).MatResultOrd[i, 1]);
              end;

              if ((TIWUserSession(WebApplication.Data).NumAH) <> TIWUserSession
                  (WebApplication.Data).contholisticglobal) then
              begin
                for i := 0 to (TIWUserSession(WebApplication.Data)
                    .NumAH - TIWUserSession(WebApplication.Data)
                    .contholisticglobal) - 1 do
                begin
                  auxAH := auxAH + '.' + intTostr
                    (TIWUserSession(WebApplication.Data)
                      .contholisticglobal + i + 1);
                end; // referente ao for
              end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

              if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                (TIWUserSession(WebApplication.Data)
                  .contholisticglobal = TIWUserSession(WebApplication.Data)
                  .NumAH) then
                auxAH := '0';

              TIWUserSession(WebApplication.Data).contholisticglobal :=
                TIWUserSession(WebApplication.Data).NumAH;

              if TIWUserSession(WebApplication.Data).auxinconsi <> 1 then
              begin
                if TIWUserSession(WebApplication.Data).PAns <> 3 then
                begin

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,real_cons_a,ranking_atual,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
                  ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                end;
                // referente a TIWUserSession(WebApplication.Data).PAns <> 3

                if TIWUserSession(WebApplication.Data).PAns = 3 then
                begin

                  if TIWUserSession(WebApplication.Data).auxnoans = 0 then
                  begin
                    auxnoresp := 'Not willing to say';
                  end;
                  // referente a TIWUserSession(WebApplication.Data).auxnoans = 0
                  if TIWUserSession(WebApplication.Data).auxnoans = 1 then
                  begin
                    auxnoresp := 'A and B seem too close';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 1

                  if TIWUserSession(WebApplication.Data).auxnoans = 2 then
                  begin
                    auxnoresp := 'Not willing to spend time';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 2

                  if TIWUserSession(WebApplication.Data).auxnoans = 3 then
                  begin
                    auxnoresp := 'Doubt';
                  end;
                  // referente a TIWUserSession(WebApplication.Data).auxnoans = 3

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,obs,real_cons_a,ranking_atual,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (auxnoresp) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
                  ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                end;
                // referente a TIWUserSession(WebApplication.Data).PAns = 3
              end; // referente a if TIWUserSession(WebApplication.Data).auxinconsi <> 1

              if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
              begin
                axinconsi := 'Resume Elicitation';

                sql.Text :=
                  'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,real_cons_a,ranking_atual,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (axinconsi) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
                ExecSQL;

                sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                TIWUserSession(WebApplication.Data).auxinconsi := 0;
              end;
              // referente a if TIWUserSession(WebApplication.Data).auxinconsi = 1

              TIWUserSession(WebApplication.Data).auxbdgraph := '-1';
              TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
              auxAH := '';
            end; // refrente a problematica de ordenação

            if (TIWUserSession(WebApplication.Data).Problematica = 2) then
            begin
              // se diferencia da problematica de ordenação por necessitar a cada resposta da elicitação salvar também a recomendação

              /// /////////////// **Criando a recomendação **////////////////////////////////
              Stop := false;
              CustoA := 0;
              P := 0;
              Str := '[';
              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                for j := 1 to Length(TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i]) - 1 do
                begin
                  CustoA := CustoA + TIWUserSession(WebApplication.Data)
                    .Cost[TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i, j]];
                  if CustoA <= TIWUserSession(WebApplication.Data).budget then
                  begin
                    INC(P);
                    if Str = '[' then
                      Str := Str + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]]
                    else
                      Str := Str + ', ' + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]];
                  end
                  else
                  begin
                    CustoA := CustoA - TIWUserSession(WebApplication.Data)
                      .Cost[TIWUserSession(WebApplication.Data)
                      .MatrizGrupo[i, j]];
                    Stop := true;
                    break;
                  end;
                end;
                if Stop then
                  break;
              end;
              Str := Str + ']';


              // adicionar os níveis atuais no compotente text para passar para o BD

              IWTxtbdord.Lines.clear;
              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                IWTxtbdord.Lines.Add(TIWUserSession(WebApplication.Data)
                    .MatResultOrd[i, 0] + ':' + TIWUserSession
                    (WebApplication.Data).MatResultOrd[i, 1]);
              end;

              if ((TIWUserSession(WebApplication.Data).NumAH) <> TIWUserSession
                  (WebApplication.Data).contholisticglobal) then
              begin
                for i := 0 to (TIWUserSession(WebApplication.Data)
                    .NumAH - TIWUserSession(WebApplication.Data)
                    .contholisticglobal) - 1 do
                begin
                  auxAH := auxAH + '.' + intTostr
                    (TIWUserSession(WebApplication.Data)
                      .contholisticglobal + i + 1);
                end; // referente ao for
              end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

              if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                (TIWUserSession(WebApplication.Data)
                  .contholisticglobal = TIWUserSession(WebApplication.Data)
                  .NumAH) then
                auxAH := '0';

              TIWUserSession(WebApplication.Data).contholisticglobal :=
                TIWUserSession(WebApplication.Data).NumAH;

              if TIWUserSession(WebApplication.Data).auxinconsi <> 1 then
              begin
                if TIWUserSession(WebApplication.Data).PAns <> 3 then
                begin

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,real_cons_a,ranking_atual,round,recomendacao_atual) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (Str) + '")';
                  ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                end;
                // referente a TIWUserSession(WebApplication.Data).PAns <> 3

                if TIWUserSession(WebApplication.Data).PAns = 3 then
                begin

                  if TIWUserSession(WebApplication.Data).auxnoans = 0 then
                  begin
                    auxnoresp := 'Not willing to say';
                  end;
                  // referente a TIWUserSession(WebApplication.Data).auxnoans = 0
                  if TIWUserSession(WebApplication.Data).auxnoans = 1 then
                  begin
                    auxnoresp := 'A and B seem too close';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 1

                  if TIWUserSession(WebApplication.Data).auxnoans = 2 then
                  begin
                    auxnoresp := 'Not willing to spend time';
                  end; // referente a TIWUserSession(WebApplication.Data).auxnoans = 2

                  if TIWUserSession(WebApplication.Data).auxnoans = 3 then
                  begin
                    auxnoresp := 'Doubt';
                  end;
                  // referente a TIWUserSession(WebApplication.Data).auxnoans = 3

                  sql.Text :=
                    'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,obs,real_cons_a,ranking_atual,round,recomendacao_atual) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (auxnoresp) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (Str) + '")';
                  ExecSQL;

                  sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                end;
                // referente a TIWUserSession(WebApplication.Data).PAns = 3
              end; // referente a if TIWUserSession(WebApplication.Data).auxinconsi <> 1

              if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
              begin
                axinconsi := 'Resume Elicitation';

                sql.Text :=
                  'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,real_cons_a,ranking_atual,round, recomendacao_atual) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(TIWUserSession(WebApplication.Data).PAns) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (axinconsi) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (Str) + '")';
                ExecSQL;

                sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
                TIWUserSession(WebApplication.Data).auxinconsi := 0;
              end;
              // referente a if TIWUserSession(WebApplication.Data).auxinconsi = 1

              TIWUserSession(WebApplication.Data).auxbdgraph := '-1';
              TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
              auxAH := '';
              aux_recomenda_atual := '';
            end; // refrente a problematica de portfolio

          end; // referente ao caso 31
        32:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO btnx(Back to the Beginning) DA REGIÃO rgnIncAsk
            With TIWUserSession(WebApplication.Data) do
              if (Problematica = 0) or (Problematica = 4) then
              begin
                auxnumquestbegin := TIWUserSession(WebApplication.Data)
                  .NumQuest + 1;

                if ((TIWUserSession(WebApplication.Data).NumAH)
                    <> TIWUserSession(WebApplication.Data).contholisticglobal)
                  then
                begin
                  for i := 0 to (TIWUserSession(WebApplication.Data)
                      .NumAH - TIWUserSession(WebApplication.Data)
                      .contholisticglobal) - 1 do
                  begin
                    auxAH := auxAH + '.' + intTostr
                      (TIWUserSession(WebApplication.Data)
                        .contholisticglobal + i + 1);
                  end; // referente ao for
                end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

                if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                  (TIWUserSession(WebApplication.Data)
                    .contholisticglobal = TIWUserSession(WebApplication.Data)
                    .NumAH) then
                  auxAH := '0';

                TIWUserSession(WebApplication.Data).contholisticglobal :=
                  TIWUserSession(WebApplication.Data).NumAH;

                if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
                begin
                  axinconsi := 'Resume Elicitation';
                end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 1

                if TIWUserSession(WebApplication.Data).auxinconsi = 2 then
                begin
                  axinconsi := 'Go back one step';
                end;
                // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 2

                if TIWUserSession(WebApplication.Data).auxinconsi = 3 then
                begin
                  axinconsi := 'Back to the beginning';
                end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 3

                for i := 0 to Length(TIWUserSession(WebApplication.Data)
                    .VetPOA) - 1 do
                begin
                  Auxpoa := Auxpoa + ',' + intTostr
                    (TIWUserSession(WebApplication.Data).VetPOA[i]);
                end; // referente a for i := 0 to length(TIWUserSession(WebApplication.Data).VetPOA) - 1

                auxnumpoa := Length(TIWUserSession(WebApplication.Data).VetPOA);

                sql.Text :=
                  'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,poa,obs,num_poa,real_cons_a,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(auxnumquestbegin) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(4) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + (auxAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (Auxpoa) + '","' + (axinconsi) + '","' + intTostr(auxnumpoa) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
                ExecSQL;

                sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;

                auxnumpoa := 0;
                auxAH := '';
              end;
            // referente a problematica de escolha

            if (TIWUserSession(WebApplication.Data).Problematica = 1) then
            begin

              auxnumquestbegin := TIWUserSession(WebApplication.Data)
                .NumQuest + 1;
              // adicionar os níveis atuais no compotente text para passar para o BD

              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                IWTxtbdord.Lines[i] := TIWUserSession(WebApplication.Data)
                  .MatResultOrd[i, 0] + ':' + TIWUserSession
                  (WebApplication.Data).MatResultOrd[i, 1]
              end;

              if ((TIWUserSession(WebApplication.Data).NumAH) <> TIWUserSession
                  (WebApplication.Data).contholisticglobal) then
              begin
                for i := 0 to (TIWUserSession(WebApplication.Data)
                    .NumAH - TIWUserSession(WebApplication.Data)
                    .contholisticglobal) - 1 do
                begin
                  auxAH := auxAH + '.' + intTostr
                    (TIWUserSession(WebApplication.Data)
                      .contholisticglobal + i + 1);
                end; // referente ao for
              end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

              if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                (TIWUserSession(WebApplication.Data)
                  .contholisticglobal = TIWUserSession(WebApplication.Data)
                  .NumAH) then
                auxAH := '0';

              TIWUserSession(WebApplication.Data).contholisticglobal :=
                TIWUserSession(WebApplication.Data).NumAH;

              if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
              begin
                axinconsi := 'Resume Elicitation';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 1

              if TIWUserSession(WebApplication.Data).auxinconsi = 2 then
              begin
                axinconsi := 'Go back one step';
              end;
              // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 2

              if TIWUserSession(WebApplication.Data).auxinconsi = 3 then
              begin
                axinconsi := 'Back to the beginning';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 3

              sql.Text :=
                'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,obs,real_cons_a,ranking_atual,round) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(auxnumquestbegin) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(4) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (axinconsi) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '")';
              ExecSQL;

              sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;

              auxAH := '';
            end; // referente a problematica de ordenação

            if (TIWUserSession(WebApplication.Data).Problematica = 2) then
            begin
              /// /////////////// **Criando a recomendação **////////////////////////////////
              Stop := false;
              CustoA := 0;
              P := 0;
              Str := '[';
              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                for j := 1 to Length(TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i]) - 1 do
                begin
                  CustoA := CustoA + TIWUserSession(WebApplication.Data)
                    .Cost[TIWUserSession(WebApplication.Data)
                    .MatrizGrupo[i, j]];
                  if CustoA <= TIWUserSession(WebApplication.Data).budget then
                  begin
                    INC(P);
                    if Str = '[' then
                      Str := Str + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]]
                    else
                      Str := Str + ', ' + TIWUserSession(WebApplication.Data)
                        .NomeAlt[TIWUserSession(WebApplication.Data)
                        .MatrizGrupo[i, j]];
                  end
                  else
                  begin
                    CustoA := CustoA - TIWUserSession(WebApplication.Data)
                      .Cost[TIWUserSession(WebApplication.Data)
                      .MatrizGrupo[i, j]];
                    Stop := true;
                    break;
                  end;
                end;
                if Stop then
                  break;
              end;
              Str := Str + ']';

              auxnumquestbegin := TIWUserSession(WebApplication.Data)
                .NumQuest + 1;
              // adicionar os níveis atuais no compotente text para passar para o BD

              for i := 0 to TIWUserSession(WebApplication.Data).Rlevels - 1 do
              begin
                IWTxtbdord.Lines[i] := TIWUserSession(WebApplication.Data)
                  .MatResultOrd[i, 0] + ':' + TIWUserSession
                  (WebApplication.Data).MatResultOrd[i, 1]
              end;

              if ((TIWUserSession(WebApplication.Data).NumAH) <> TIWUserSession
                  (WebApplication.Data).contholisticglobal) then
              begin
                for i := 0 to (TIWUserSession(WebApplication.Data)
                    .NumAH - TIWUserSession(WebApplication.Data)
                    .contholisticglobal) - 1 do
                begin
                  auxAH := auxAH + '.' + intTostr
                    (TIWUserSession(WebApplication.Data)
                      .contholisticglobal + i + 1);
                end; // referente ao for
              end; // referente a  TIWUserSession(WebApplication.Data).NumAH<>0

              if (TIWUserSession(WebApplication.Data).NumAH = 0) OR
                (TIWUserSession(WebApplication.Data)
                  .contholisticglobal = TIWUserSession(WebApplication.Data)
                  .NumAH) then
                auxAH := '0';

              TIWUserSession(WebApplication.Data).contholisticglobal :=
                TIWUserSession(WebApplication.Data).NumAH;

              if TIWUserSession(WebApplication.Data).auxinconsi = 1 then
              begin
                axinconsi := 'Resume Elicitation';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 1

              if TIWUserSession(WebApplication.Data).auxinconsi = 2 then
              begin
                axinconsi := 'Go back one step';
              end;
              // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 2

              if TIWUserSession(WebApplication.Data).auxinconsi = 3 then
              begin
                axinconsi := 'Back to the beginning';
              end; // referente a  if TIWUserSession(WebApplication.Data).auxinconsi = 3

              sql.Text :=
                'INSERT INTO elicitation (Id_CriA, Id_CriB,perg,id_problem,norm_cons_a,preference,num_rpos,holistic_e,graph,obs,real_cons_a,ranking_atual,round,recomendacao_atual) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(auxnumquestbegin) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).WDP1) + '","' + intTostr(4) + '","' + intTostr(TIWUserSession(WebApplication.Data).Rlevels) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumAH) + '","' + (TIWUserSession(WebApplication.Data).auxbdgraph) + '","' + (axinconsi) + '","' + FloatToStr(TIWUserSession(WebApplication.Data).ConsReal) + '","' + (IWTxtbdord.Lines.Text) + '","' + intTostr(TIWUserSession(WebApplication.Data).nround) + '","' + (Str) + '")';
              ExecSQL;

              sql.Text :=
                  'INSERT INTO visualization_elic (Id_CriA,Id_CriB,perg,id_problem, seqcam) VALUES ("' + intTostr(TIWUserSession(WebApplication.Data).IndiceA) + '","' + intTostr(TIWUserSession(WebApplication.Data).IndiceB) + '","' + intTostr(TIWUserSession(WebApplication.Data).NumQuest) + '","' + (TIWUserSession(WebApplication.Data).ID_Problema) + '","' + TIWUserSession(WebApplication.Data).seq_cam + '")';
                  ExecSQL;
              aux_recomenda_atual := '';
              auxAH := '';
            end;
            // referente a problematica de portfolio

          end;
        33: // ** Este caso salva todos os perfis indicados na problemática de classificacao**//
          begin
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;

            StrAux := '';
            Str := '';

            for i := 0 to Length(TIWUserSession(WebApplication.Data).perfis)
              - 1 do
              if i = 0 then
              begin
                StrAux := StrAux + FloatToStr
                  (TIWUserSession(WebApplication.Data).perfis[i]);
                StrAux1 := StrAux1 + FloatToStr
                  (TIWUserSession(WebApplication.Data).perfis_inseridos[i]);
              end
              else
              begin
                StrAux := StrAux + '/' + FloatToStr
                  (TIWUserSession(WebApplication.Data).perfis[i]);
                StrAux1 := StrAux1 + '/' + FloatToStr
                  (TIWUserSession(WebApplication.Data).perfis_inseridos[i]);
              end;

            sql.Text := 'SELECT profiles FROM problem WHERE id_problem ="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
            open;
            Str := FieldByName('profiles').AsString;
            close;

            if Str <> '' then
              Str := Str + ' - ' + StrAux
            else
              Str := StrAux;

            sql.Text :=
              'SELECT original_profiles FROM problem WHERE id_problem ="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
            open;
            Str1 := FieldByName('original_profiles').AsString;
            close;

            if Str1 <> '' then
              Str1 := Str1 + ' - ' + StrAux1
            else
              Str1 := StrAux1;

            // atualizando dados de entrada
            sql.Text := 'UPDATE problem SET profiles ="' + (Str)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            // atualizando dados de entrada
            sql.Text := 'UPDATE problem SET original_profiles ="' + (Str1)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            // atualizando dandos atuais
            sql.Text := 'UPDATE current_stage SET profiles ="' + (StrAux1)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            // atualizando dandos atuais
            sql.Text := 'UPDATE current_stage SET original_profiles ="' +
              (StrAux1) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;

            Str := '';
            /// // ** Salvando escala utilizada para a elicitação **////////
            sql.Text :=
              'SELECT escala_elicit FROM problem WHERE id_problem ="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
            open;
            Str := FieldByName('escala_elicit').AsString;
            close;

            Str := Str + intTostr(TIWUserSession(WebApplication.Data)
                .escala_AS) + '/';
            // atualizando dados de entrada
            sql.Text := 'UPDATE problem SET escala_elicit ="' + (Str)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            // atualizando dandos atuais
            sql.Text := 'UPDATE current_stage SET escala_elicit ="' + intTostr
              (TIWUserSession(WebApplication.Data).escala_AS)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            /// ///////////// Salvando o valor do nadir ///////////////////////////

            // atualizando dandos atuais
            sql.Text := 'UPDATE current_stage SET nadir ="' + FloatToStr
              (TIWUserSession(WebApplication.Data).valor_nadir_minimo)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
          end;
        34: // **Este caso salva os perfis das alternativas caso já tenham sido definidos **//
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
                  StrAux := StrAux + intTostr(class_min[i])
                else
                  StrAux := StrAux + '-';
              end;
              // atualizando dandos atuais
              sql.Text := 'UPDATE current_stage SET alt_profiles ="' + (StrAux)
                + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '";';
              ExecSQL;

            end;
          end; // 34

        35: // Este caso foi criado para infornar que o problema foi reiniciado ao retomar os dados na prob de classificaçõ
          begin
            // Escreve no BD que a pergunta da Heurística não foi respondida
            // atualizando dandos atuais
            sql.Text :=
              'UPDATE current_stage SET heuransw ="-1" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
          end; // 35

        /// caso criado para BD da planilha Intracritério///
        36: // cria cópia dos dados referentes a round inter, para situação em que decisor deseje reiniciar somente elic INTER
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
            sql.Text :=
              'INSERT INTO intracrit (Id_problem, round, RoundIntra, stage, BoundMx, BoundMn, OriginalFtipo, Verificaintra, LinearIntra, ChangeLinear, CritsElicitados, percent, NormalizaInterpol, PointsBisec, cycles) VALUES ("' + (TIWUserSession(WebApplication.Data).ID_Problema) + '", "' + intTostr(TIWUserSession(WebApplication.Data).nround) + '", "' + intTostr(TIWUserSession(WebApplication.Data).fvround) + '", "' + intTostr(TIWUserSession(WebApplication.Data).estagiointra) + '", "' + AuxBoundMx + '", "' + AuxBoundMn + '" , "' + AuxFtipoOrig + '", "' + AuxverificaIntra + '", "' + AuxLinearIntra + '", "' + AuxChangeLinear + '", "' + AuxCritElicit + '", "' + Auxpercentcrit + '", "' + AuxMatInterpol + '", "' + AuxPointsBisec + '", "' + (TIWUserSession(WebApplication.Data).infoCYCLE) {wagner - 07/08/24 - adicionando os ciclos ao banco de dados} + '" );';
            ExecSQL;
          end; // 36

        37:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO btninconsistencyok (OK) DA REGIÃO RgnInconsistency
            // ESSE CASO FOI CHAMADO NO BOTÃO BrnOK (OK) DA REGIÃO IWRgnstep2

            // como os limites estão em um array of double será necessário passar os mesmo para um string
            // como o tamanho do vetor de double é numcrit-1 para ambos os casos do LimMax e do LimMin, então o for só irá ate numcrit-2
            AuxLimMin := '';
            AuxLimMax := '';
            axinconsi := '';

            for i := 0 to numcrit - 1 do
              for j := 0 to numcrit - 1 do
              begin
                AuxLimMin := AuxLimMin + FloatToStr
                  (TIWUserSession(WebApplication.Data).MLimMin[i, j]) + '/';
                AuxLimMax := AuxLimMax + FloatToStr
                  (TIWUserSession(WebApplication.Data).MLimMax[i, j]) + '/';
              end; // referente a for i := 0 to numcrit - 1

            sql.Text := 'UPDATE  current_stage SET mlim_rel_max ="' +
              (AuxLimMax) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE  current_stage SET mlim_rel_min ="' +
              (AuxLimMin) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;

            for i := 0 to Length(TIWUserSession(WebApplication.Data).PergNAdj)
              - 1 do
              for j := 0 to 2 - 1 do
                axinconsi := axinconsi + intTostr
                  (TIWUserSession(WebApplication.Data).PergNAdj[i, j]) + '/';

            sql.Text := 'UPDATE  current_stage SET perg_nadj ="' + (axinconsi)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;

            // Testando salvar o limite maximo e minimo da relação anterior

            for i := 0 to numcrit - 1 do
              for j := 0 to numcrit - 1 do
              begin
                AuxLimMinA := AuxLimMin + FloatToStr
                  (TIWUserSession(WebApplication.Data).MLimMinA[i, j]) + '/';
                AuxLimMaxA := AuxLimMax + FloatToStr
                  (TIWUserSession(WebApplication.Data).MLimMaxA[i, j]) + '/';
              end; // referente a for i := 0 to numcrit - 1

            sql.Text := 'UPDATE  current_stage SET mlim_rel_max_ant ="' +
              (AuxLimMaxA) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;

            sql.Text := 'UPDATE  current_stage SET mlim_rel_min_ant ="' +
              (AuxLimMinA) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;

            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end;
        // referente ao caso 36

        38:
          begin
            // ESSE CASO FOI CHAMADO NO BOTÃO  BrnOK(OK) DA REGIÃO IWRgnstep2

            Auxcri_cong := '';
            for i := 0 to numcrit - 1 do
              for j := 0 to numcrit - 1 do
              begin
                // 1 --> Relação blindada
                // 0 --> Relação não-blindada
                if TIWUserSession(WebApplication.Data).Mblindados[i, j] then
                  Auxcri_cong := Auxcri_cong + '1'
                else
                  Auxcri_cong := Auxcri_cong + '0';

              end; // referente a  for i := 0 to length(TIWUserSession(WebApplication.Data).Cri_Cong)
            sql.Text := 'UPDATE  current_stage SET mcri_cong ="' +
              (Auxcri_cong) + '" WHERE id_problem="' +
              (TIWUserSession(WebApplication.Data).ID_Problema) + '";';
            ExecSQL;
            TIWUserSession(WebApplication.Data).AuxsalvarBD := 0;
          end; // referente ao caso 37

        39:
          begin
            begin // Salva o epsilon
              sql.Text := 'UPDATE current_stage SET epsilon="' + FloatToStr
                (TIWUserSession(WebApplication.Data).epsilon)
                + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '";';
              ExecSQL;
            end;
          end;
        40: // PEDRO - 13.11.2023 - CORREÇÃO DO EPSOL - PROB DE ORDENAÇÃO
          begin
            sql.Text := 'UPDATE current_stage SET epsol="' + FloatToStr
              (TIWUserSession(WebApplication.Data).epsol)
                + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '";';
            ExecSQL;
          end;
      end; // case

    end; // with UserSession.ZQuery1
  end; // procedimento dO BD

initialization

// TIWForm1.SetAsMainForm;

end.
