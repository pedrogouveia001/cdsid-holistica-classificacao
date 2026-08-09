unit untIntraCriterio;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, TeeGDIPlus,
  TeEngine, Series, Controls, ExtCtrls, TeeProcs, Chart, IWExtCtrls, IWCompText,
  IWCompButton, IWCompCheckbox, IWCompListbox, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompLabel, Forms, IWVCLBaseContainer,
  IWContainer, IWHTMLContainer, IWHTML40Container, IWRegion, jpeg, TeeURL,
  TeeSeriesTextEd, IWHTMLControls, Math, IWGrids, IWCompEdit, Graphics, Menus,
  IWTMSPopup, IWHelpTip, TeeEdit, InvokeRegistry, WSDLIntf, SOAPPasInv,
  SOAPHTTPPasInv, IWTMSCtrls, IWDBTMSCtrls, IWWebGrid, IWAdvWebGrid, GanttCh,
  StdCtrls, Grids, IWBaseHTML40Component, TeePolar, ToolWin, ComCtrls,
  pngimage, Variants, ShellApi, Buttons;

type
  TTFrmIntraCriterio = class(TIWAppForm)
    rgnElicIntra: TIWRegion;
    lblintraevaluation: TIWLabel;
    lblSelectCrit: TIWLabel;
    lblpercent: TIWLabel;
    cmbbxselectCrit: TIWComboBox;
    cmbbxpercent: TIWComboBox;
    btnOkElicIntra: TIWButton;
    rdgrpBisec: TIWRadioGroup;
    rgnGraphIntra: TIWRegion;
    IWLabel3: TIWLabel;
    imgseries: TIWImage;
    txtPoints: TIWText;
    rdgrpbehav: TIWRadioGroup;
    ChartIntra: TChart;
    Bottom: TLineSeries;
    Major: TLineSeries;
    Medium: TLineSeries;
    rgnMenuIntracrit: TIWRegion;
    txtmenuintra: TIWText;
    btnElicFunc: TIWButton;
    btnNextpoint: TIWButton;
    lnkGoToInter: TIWLink;
    btnInputNew: TIWButton;
    LnkInf1: TIWLink;
    IWLink2: TIWLink;
    IWLink3: TIWLink;
    btnusetab: TIWButton;
    txtFunction: TIWText;
    IWLink5: TIWLink;
    btnnextcrit: TIWButton;
    rgnConfirmStopElic: TIWRegion;
    IWLabel48: TIWLabel;
    btnGoInter: TIWButton;
    btnConfNao: TIWButton;
    txtInfostopelic: TIWText;
    IWImage4: TIWImage;
    lnkStopElicit: TIWLink;
    IWLink7: TIWLink;
    lnkDefinePoint: TIWLink;
    lnkIntDef: TIWLink;
    rgnObrigatorios: TIWRegion;
    txtMsgObrigatorios: TIWText;
    txtSemObrigatorios: TIWText;
    lblwhatprefer: TIWLabel;
    grdObrigatorios: TIWGrid;
    btnreturnbisec: TIWButton;
    IWImage32: TIWImage;
    IWImage31: TIWImage;
    IWRegion33: TIWRegion;
    pmpbtnHelpIntra: TTIWPopupMenuButton;
    pmnHelpIntracrit: TPopupMenu;
    btnAboutIntra: TMenuItem;
    UserGuide1: TMenuItem;
    English1: TMenuItem;
    Portuguese1: TMenuItem;
    pmpbtnResetIntra: TTIWPopupMenuButton;
    pmpResetIntra: TPopupMenu;
    Restartproblem1: TMenuItem;
    NewProblem1: TMenuItem;
    TIWHelpelicvf: TTIWHelpTip;
    TIWHelpTip1: TTIWHelpTip;
    TIWHelpIntDef: TTIWHelpTip;
    TIWHelpLink5: TTIWHelpTip;
    TIWHelpLink7: TTIWHelpTip;
    txtRemarkindif: TIWText;
    lblwhatprefer2: TIWLabel;
    imgrangesintra: TIWImage;
    chrtRangeintra: TChart;
    Series1: THorizBarSeries;
    Series2: THorizBarSeries;
    btnlinegraph: TIWButton;
    btnbargraph: TIWButton;
    chrtbar: TChart;
    Series3: THorizBarSeries;
    Series4: THorizBarSeries;
    IWImage38: TIWImage;
    IWImage37: TIWImage;
    IWImage39: TIWImage;
    IWLink9: TIWLink;
    IWLabel44: TIWLabel;
    IWRegion22: TIWRegion;
    rgntextoslinear: TIWRegion;
    lnkLinear: TIWLink;
    lblOr: TIWLabel;
    TIWHelpdeclareLin: TTIWHelpTip;
    lblDef2: TIWLabel;
    imgEN2: TIWImage;
    imgEN: TIWImage;
    imgPT: TIWImage;
    imgPT2: TIWImage;
    TesteMatVar: TIWButton;
    IWLink1: TIWLink;
    IWButton10: TIWButton;
    rgnlegendranges: TIWRegion;
    TIWHTMLLabel1: TTIWHTMLLabel;
    imglegend: TIWImage;
    IWImage1: TIWImage;
    lbllegendranges: TIWLabel;
    IWLink4: TIWLink;
    IWImage19: TIWImage;
    IWLabel21: TIWLabel;
    IWRegion1: TIWRegion;
    linkinfoeliciting: TIWLink;
    lblinfoeliciting: TIWLabel;
    lnkbackonestep: TIWLink;
    rgninfoelicited: TIWRegion;
    lblcritelicited: TIWLabel;
    awgcritelicited: TTIWAdvWebGrid;
    rgninfocritelicitados: TIWRegion;
    IWLabel1: TIWLabel;
    awgcritelicitados: TTIWAdvWebGrid;
    lnkviewcritelicitados: TIWLink;
    lnkcloseinfo: TIWLink;
    btninfoelicited: TIWButton;
    btncriterioselicitados: TIWButton;
    btnsavepoints: TIWButton;
    lnkauxintra: TIWLink;
    rgngrafintra: TIWRegion;
    imgformvf: TIWImage;
    lblformofthefv: TIWLabel;
    btnclosegrafintra: TIWButton;
    chtformvf: TChart;
    LineSeries4: TLineSeries;
    LineSeries5: TLineSeries;
    LineSeries6: TLineSeries;
    btnsaveimagefv: TIWButton;
    IWButton1: TIWButton;
    rgnInfosIntra: TIWRegion;
    txtinfo3: TIWText;
    txtinfo2: TIWText;
    lblinfo1: TIWLabel;
    txtinfo1: TIWText;
    lblinfo2: TIWLabel;
    lblinfo3: TIWLabel;
    btnokinfos: TIWButton;
    rgnresetcrit: TIWRegion;
    btnresetsim: TIWButton;
    btnresetnao: TIWButton;
    txtdadosseraoperdidos: TIWText;
    IWImage2: TIWImage;
    IWLabel2: TIWLabel;
    IWLabel4: TIWLabel;

    procedure btnElicFuncClick(Sender: TObject);
    procedure rgnMenuIntracritCreate(Sender: TObject);
    // procedure btnResetIntraClick(Sender: TObject);
    procedure cmbbxselectCritChange(Sender: TObject);
    // procedure cmbbxpercentChange(Sender: TObject);
    // procedure btnForControlCheckLinClick(Sender: TObject);
    procedure btnOkElicIntraClick(Sender: TObject);
    procedure Bisection;
    procedure Normaliza;
    procedure InterpolacaoPontos;
    procedure PlotaGraphsIntra2; // plote da visualização de barras para decisão dos pontos
    procedure PlotaRangeIntra; // plote do range visualizado durante a bisseção
    procedure PlotaGraphsIntra; // plote da visualização de séries para decisão dos pontos
    procedure PlotaValueFunction; // plote final da forma da função valor
    procedure SalvarBdIntra(evento: integer);
    Function trescasas(Num: Double): String;
    function Rounding(Value: Double): String;
    function TrocaPV(Num: String): Double;
    procedure btnNextpointClick(Sender: TObject);
    procedure lnkdeclareLinClick(Sender: TObject);
    procedure btnusetabClick(Sender: TObject);
    procedure lnkGoToInterClick(Sender: TObject);
    procedure btnokinfos1Click(Sender: TObject);
    procedure btnnextcritClick(Sender: TObject);
    procedure btnConfNaoClick(Sender: TObject);
    procedure btnGoInterClick(Sender: TObject);
    procedure lnkLinearClick(Sender: TObject);
    procedure lnkDefinePointClick(Sender: TObject);
    procedure btnreturnbisecClick(Sender: TObject);
    procedure btnAboutIntraClick(Sender: TObject);
    procedure English1Click(Sender: TObject);
    procedure Portuguese1Click(Sender: TObject);
    procedure Restartproblem1Click(Sender: TObject);
    procedure Logout1Click(Sender: TObject);
    procedure NewProblem1Click(Sender: TObject);
    procedure btnlinegraphClick(Sender: TObject);
    procedure btnbargraphClick(Sender: TObject);

    procedure Definir_Idioma;
    procedure imgENClick(Sender: TObject);
    procedure imgPTClick(Sender: TObject);

    procedure GerarPergDiscretos;
    procedure PararDiscretos;
    procedure TesteMatVarClick(Sender: TObject);
    procedure lnkStopElicitClick(Sender: TObject);
    procedure IWButton10Click(Sender: TObject);
    procedure linkinfoelicitingClick(Sender: TObject);
    procedure rgninfoelicitedCreate(Sender: TObject);
    procedure lnkcloseinfoClick(Sender: TObject);
    procedure lnkviewcritelicitadosClick(Sender: TObject);
    procedure btninfoelicitedClick(Sender: TObject);
    procedure btnsavepointsClick(Sender: TObject);
    procedure btncriterioselicitadosClick(Sender: TObject);
    procedure rgninfocritelicitadosCreate(Sender: TObject);
    procedure btnclosegrafintraClick(Sender: TObject);
    procedure awgcritelicitadosAsyncLinkClick(Sender: TObject;
      EventParams: TStringList; RowIndex, ColumnIndex: integer);
    procedure awgcritelicitadosLinkClick(Sender: TObject;
      RowIndex, ColumnIndex: integer);
    procedure btnsaveimagefvClick(Sender: TObject);
    procedure IWButton1Click(Sender: TObject);
    procedure lnkbackonestepClick(Sender: TObject);
    procedure rgntextoslinearCreate(Sender: TObject);
    procedure rgnElicIntraCreate(Sender: TObject);
    procedure btnokinfosClick(Sender: TObject);
    procedure IWAppFormCreate(Sender: TObject);
    procedure btnresetsimClick(Sender: TObject);
    procedure btnresetnaoClick(Sender: TObject);

  public
  end;

implementation

uses lpsolve51, ServerController, uAPI_SolveLP, uCode, uIntercritério,
  untIntro, { uPerfis, } uResultados, UserSessionUnit, untPortfolioresults,
  untSortingResults, uPerfis, uPortfolioResults;
{$R *.dfm}

procedure TTFrmIntraCriterio.Definir_Idioma;
Begin
  with TIWUserSession(WebApplication.Data) do

  begin
    case TIWUserSession(WebApplication.Data).Idioma of
      0: // **Inglês**//
        begin
          // menus tela principal//
          pmpbtnHelpIntra.caption := 'Help';
          pmpbtnResetIntra.caption := 'Reset';
          English1.caption := 'English';
          Portuguese1.caption := 'Portuguese';
          Restartproblem1.caption := 'Restart Problem';
          NewProblem1.caption := 'New Problem';
          // Logout1.caption := 'Logout';
          btnAboutIntra.caption := 'About';
          UserGuide1.caption := 'User Guide';

          // componentes tela principal elicitação//
          lblintraevaluation.caption := 'Intra-Criteria Evaluation';
          lblSelectCrit.caption :=
            'Please, select one criterion to start the elicitation:';
          // lbleither.caption := 'You can either:';
          lnkLinear.caption := 'Declare as a linear function';
          // IWTextlinear2.lines[0] :=
          // 'if you do not want to elicit the marginal value function';
          lblOr.caption := 'Or';
          // lblproceed.caption := 'Proceed to elicitation below.';
          TIWHelpdeclareLin.lineshelp[0] :=
            'By clicking on this option, the value function of the evaluated criterion will be consedered linear, finishing the elicitation for this criterion.';
          btnOkElicIntra.caption := 'Ok';
          txtRemarkindif.lines[0] :=
            'Remark: An indifference between the two ranges is equivalent to declaring as a linear function above.';
          lnkDefinePoint.caption := 'View';
          lblDef2.caption := 'value function graphic';
          TIWHelpIntDef.lineshelp[0] :=
            'By clicking on the link the questions generated for the elicitation will be stopped. The series graph will be displayed to set the elicited point value even if the stopping criterion has not been found.';
          lblpercent.caption :=
            'Percentual variation admissible for deviation:';
          TIWHelpLink5.lineshelp[0] :=
            'The percentage variation acts as a tolerance margin in calculating the variation between the best and worst consequence values for each evaluated criterion. When the range is attended, the variation acts as the stopping criterion.';
          lnkStopElicit.caption := 'Stop Elicitation';
          TIWHelpLink7.lineshelp[0] :=
            'By clicking on this option the intra-criteria evaluation will be finished. Criteria that were not elicited will consider the information originally declared at the beginning of the problem.';

          // componentes rgnConfirmStopElic//
          txtInfostopelic.lines[0] :=
            'If you leave this page, you will be directed to the intercriteria evaluation. The criteria have been declared linear.';
          txtInfostopelic.lines[1] :=
            'Are you sure you want to declare linearity for all criteria?';
          btnConfNao.caption := 'Cancel';
          btnGoInter.caption := 'Confirm';

          // componentes rgnInfosIntra//
          lblinfo1.caption := '1. Intra-criteria elicitation procedure';
          txtinfo1.lines[0] :=
            '(a) Find the mid-value point of [x0 ,x1] and let Vx(ai) = 0.5.';
          txtinfo1.lines[1] :=
            '(b) Find the mid-value point of [x0, x0.5] and let Vx(ai) = 0.25. ';
          txtinfo1.lines[2] :=
            '(c) Find the mid-value point of [x0.5 ,x 1] and let Vx(ai) = 0.75.';
          txtinfo1.lines[3] :=
            '(d) Finally, the shape of marginal function Vx is construct passing through points  x0,  x1,  x 0.5,  x0 .25,  x0.75.';
          lblinfo2.caption :=
            '2. Intra-criteria evaluation with strict preferences';
          txtinfo2.lines[0] :=
            'FITradeoff DSS uses only judgments of strict preference, eliciting admissible ranges of value for each criterion evaluated. The percentual variation aid in this process.';
          lblinfo3.caption := '3. Eliciting the marginal value function';
          txtinfo3.lines[0] :=
            'A marginal value function associates a real number v(x) to each point x in the evaluation space. It is said to be a value function that reflects the preferences of decision makers at different levels of aspiration on a measurable scale.';
          btnokinfos.caption := 'Ok';

          // componentes rgnObrigatorios//
          txtMsgObrigatorios.lines[0] :=
            'The information related to some criteria is not complete. The criteria below shall be elicited:';
          txtSemObrigatorios.lines[0] :=
            'The required information for all criteria has been correctly inputted.';

          // componentes Tela dos gráficos //
          txtPoints.lines[0] :=
            'If you have to divide the range into two, with the same preference intensity, which would be the closest option?';
          txtFunction.lines[0] :=
            'The required points were elicited for the evaluated criterion. Please proceed to the next step of the procedure.';
          btnlinegraph.caption := 'View lines graphic';
          btnbargraph.caption := 'View bar graphic';
          btnnextcrit.caption := 'Next criterion';
          btnNextpoint.caption := 'Continue';
          btnreturnbisec.caption := 'Return';
          lnkGoToInter.caption := 'Go to Inter-criteria evaluation';

          // componente rgn MenuIntra//
          txtmenuintra.lines[0] :=
            'How do you want to conduct the intracriteria evaluation?';
          btnElicFunc.caption := 'Elicit marginal value funcion';
          TIWHelpelicvf.lineshelp[0] :=
            'By clicking on this option, you will start the intra-criteria evaluation, eliciting a marginal value function for any continuous criterion.';
          btnusetab.caption := 'Use predefined analytic functions';
          TIWHelpTip1.lineshelp[0] :=
            'By clicking on this option, the system will use prefined analytic function declared previously for each criterion. This button will remain disabled if information about any criteria is incomplete.';
          btnInputNew.caption := 'Input new problem';

        end; // case 0

      1: // **Português**//
        begin
          // menus tela principal//
          pmpbtnHelpIntra.caption := 'Ajuda';
          pmpbtnResetIntra.caption := 'Opções';
          English1.caption := 'Inglês';
          Portuguese1.caption := 'Português';
          Restartproblem1.caption := 'Reiniciar Problema';
          NewProblem1.caption := 'Novo Problema';
          // Logout1.caption := 'Sair';
          btnAboutIntra.caption := 'Sobre';
          UserGuide1.caption := 'Guia do usuário';

          // componentes tela principal elicitação//
          lblintraevaluation.caption := 'Avaliação Intracritério';
          lblSelectCrit.caption :=
            'Selecione um critério para iniciar a elicitação:';
          // lbleither.caption := 'Você pode:';
          lnkLinear.caption := 'Declarar como uma função linear';
          // IWTextlinear2.lines[0] :=
          // 'se não deseja elicitar a função valor marginal';
          lblOr.caption := 'Ou';
          // lblproceed.caption := 'Prosseguir para a elicitação abaixo.';
          TIWHelpdeclareLin.lineshelp[0] :=
            'Ao clicar nesta opção, a função valor do critério avaliado será considerada linear, encerrando a elicitação deste critério.';
          btnOkElicIntra.caption := 'Ok';
          txtRemarkindif.lines[0] :=
            'Observação: Uma indifereça entre os dois intervalos é equivalente à declarar acima como uma função linear.';
          lnkDefinePoint.caption := 'Visualizar';
          lblDef2.caption := 'gráfico da função valor';
          TIWHelpIntDef.lineshelp[0] :=
            'Ao clicar neste link, as questões geradas para a elicitação serão interrompidas. O gráfico de séries será exibido para que se defina o valor do ponto elicitado, mesmo que o critério de parada não tenha sido atendido.';
          lblpercent.caption := 'Variação percentual admitida para desvio:';
          TIWHelpLink5.lineshelp[0] :=
            'A variação percentual atua como uma margem de tolerância no cálculo da variação entre o melhor e pior valor de consequências para cada critério avaliado. Quando o intervalo é atendido, a variação atua como critério de parada.';
          lnkStopElicit.caption := 'Parar elicitação';
          TIWHelpLink7.lineshelp[0] :=
            'Ao clicar nesta opção, a Avaliação Intracritério será finalizada. Os critérios que não foram elicitados considerarão as informações fornecidas originalmente, no início do problema.';

          // componentes rgnConfirmStopElic//
          txtInfostopelic.lines[0] :=
            'Se você sair desta página será direcionado para a etapa de Avaliação Intercritério. Para os demais critérios, as informações declaradas no início do problema serão consideradas para finalizar a avaliação intracritério.';
          txtInfostopelic.lines[1] := 'Você tem certeza que deseja sair?';
          btnConfNao.caption := 'Cancelar';
          btnGoInter.caption := 'Confirmar';

          // componentes rgnInfosIntra//
          lblinfo1.caption := '1. Procedimento de Elicitação intracritério';
          txtinfo1.lines[0] :=
            '(a) Encontre o valor do ponto médio de [x0,x1] para Vx(ai)=0.5.';
          txtinfo1.lines[1] :=
            '(b) Encontre o valor do ponto médio de [x0,x0.5] para Vx(ai)=0.25.';
          txtinfo1.lines[2] :=
            '(c ) Encontre o valor do ponto médio de [x0.5, x1] para Vx(ai)=0.75.';
          txtinfo1.lines[3] :=
            '(d) Por fim, a forma da função valor marginal Vx is construída cruzando pelos pontos x0,  x1,  x 0.5,  x0.25,  x0.75.';
          lblinfo2.caption :=
            '2. Avaliação Intracritério com preferência estrita';
          txtinfo2.lines[0] :=
            'O SAD FITradeoff utiliza somente declarações de preferência estrita sobre os julgamentos, elicitando intervalos admissíveis de valores para cada critério avaliado. O percentual de variação apoia neste processo.';
          lblinfo3.caption := '3. Elicitando a Função valor marginal';
          txtinfo3.lines[0] :=
            'Uma Função valor marginal associa um número real v(x) a cada ponto x no espaço de avaliação. Onde essa função valor reflete as preferências do decisor em diferentes níveis de aspiração sobre uma escala mensurável.';
          btnokinfos.caption := 'Ok';

          // componentes rgnObrigatorios//
          txtMsgObrigatorios.lines[0] :=
            'As informações declaradas para alguns critérios não estão completas. Os critérios abaixo devem ser elicitados:';
          txtSemObrigatorios.lines[0] :=
            'Todas as informações necessárias para os critérios foram inseridas corretamente.';

          // componentes Tela dos gráficos //
          txtPoints.lines[0] :=
            'Se você tiver que dividir o intervalo em dois, com a mesma intensidade de preferência, qual seria a melhor opção de valor?';
          txtFunction.lines[0] :=
            'Os pontos requeridos foram elicitados para o critério. Por favor, siga para a próxima etapa do procedimento.';
          btnlinegraph.caption := 'Visualizar gráfico de linhas';
          btnbargraph.caption := 'Visualizar gráfico de barras';
          btnnextcrit.caption := 'Próximo critério';
          btnNextpoint.caption := 'Continuar';
          btnreturnbisec.caption := 'Retornar';
          lnkGoToInter.caption := 'Seguir para Avaliação Intercritério';

          // componente rgn MenuIntra//
          txtmenuintra.lines[0] :=
            'Como você deseja conduzir a Avaliação Intracritério?';
          btnElicFunc.caption := 'Elicitar Função valor marginal';
          TIWHelpelicvf.lineshelp[0] :=
            'Ao clicar nesta opção, você iniciará a avaliação intracritério elicitando as Funções valor marginais para cada critério contínuo desejado.';
          btnusetab.caption := 'Utilizar Funçõs analíticas prontas';
          TIWHelpTip1.lineshelp[0] :=
            'Ao clicar nesta opção, o sistema usará as funções analíticas prontas declaradas previamente para cada critério. Este botão ficará desabilitado se algum critério possuir informações incompletas.';
          btnInputNew.caption := 'Inserir novo problema';

        end; // case 1

    end; // case of

  end; // webapp
End; // procedimento

function RemoveCaracteresNaoImprimiveis(const S: string): string;
/// função criada para remover o enter do nome dos critérios
/// Importados do excel
var
  i: integer;
begin
  Result := S;
  for i := 1 to Length(Result) do
  begin
    // Verifica se o caractere é um caractere de controle (código < 32) e substitui por espaço
    if Ord(Result[i]) < 32 then
      Result[i] := ' ';
  end;
end;

procedure TTFrmIntraCriterio.btnGoInterClick(Sender: TObject);
var
i: integer;
/// botão "confirm" da mensagem de advertencia exibida ao usuario, quando ele clica em "Stop elicitation"


begin
  with TIWUserSession(WebApplication.Data) do
  begin
    rgnConfirmStopElic.Visible := false; // rgn de advertencia some

    // quando encerra a elicitação por meio do link "stop elic", vai direto pra matriz input
    Normaliza;

    verificaUnit := -50;
    TfrmEntrada.create(WebApplication).Show;
    rgnElicIntra.Visible := false;
    rgnGraphIntra.Visible := false;

    // salvando stage intracriterio do problema
    EstagioIntra := 2;
    SalvarBdIntra(5);

    { EXPERIMENTO 06_05 }
    { caso o dm interrompa a elic intra }
    // SalvarBdIntra(7);
    { salvar o tempo que finalizou a elic intra }
    ETFimIntra := timetostr(now);



///// SALVANDO A ESCOLHA NO CICLO "Declare linear function for all criteria" NO BANCO DE DADOS /////////
///  WAGNER - 06.08.24

    // incrementando quantidade de ciclos'
    inc(TIWUserSession(WebApplication.Data).Nciclos);
        SetLength(TIWUserSession(WebApplication.Data).MatrizInfoElicited,
      TIWUserSession(WebApplication.Data).Nciclos, 5);

//Salvando a contagem dos ciclos em um vetor

SetLength(TIWUserSession(WebApplication.Data).guardaciclos, Nciclos);


  if Length(TIWUserSession(WebApplication.Data).guardaciclos) = 1 then begin
  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] :=  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] + 1;
  end else begin
  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] :=  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-2] + 1;
   TIWUserSession(WebApplication.Data).guardaciclos[0] := 1; //O ciclo inicial sempre será 1
  end;


      // Passando os dados para a matriz de informações elicitadas em tempo real
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 0] := '1';
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 1] := 'Not selected';
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 2] := 'null';
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 3] := 'null';
      TIWUserSession(WebApplication.Data).MatrizInfoElicited
      [TIWUserSession(WebApplication.Data).Nciclos - 1, 4] :=
      'All criteria have been declared as linear';



    // Salvando info da MatrizIntrapontos para a var infoCYCLE e logo em seguida para o Banco de Dados

    //Variável
    for i := 0 to 4 do
    begin
      TIWUserSession(WebApplication.Data).infoCYCLE := TIWUserSession
        (WebApplication.Data).infoCYCLE + TIWUserSession(WebApplication.Data)
        .MatrizInfoElicited[TIWUserSession(WebApplication.Data).Nciclos - 1, i]
        + '/';
    end;

    // Banco de dados
    with UserSession.ZQuery1 do
    begin
      sql.Text := 'UPDATE intracrit SET cycles ="' + TIWUserSession
        (WebApplication.Data).infoCYCLE + '" WHERE id_problem="' +
        (TIWUserSession(WebApplication.Data).ID_Problema)
        + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data).nround)
        + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
          .fvround) + '";';
      ExecSQL;
    end;





    // Calculando os valores dos pontos da FV quando o usuário declarar como linear
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      if (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 0) or
        (Typeofcrit[i] = 2) or (Typeofcrit[i] = 4) then
      begin
        TIWUserSession(WebApplication.Data).matrizpontosreais[0, i] := BoundMn
          [i];
        TIWUserSession(WebApplication.Data).matrizpontosreais[1, i] := BoundMx
          [i];
        TIWUserSession(WebApplication.Data).matrizpontosreais[2, i] :=
          (BoundMx[i] + BoundMn[i]) / 2;
        TIWUserSession(WebApplication.Data).matrizpontosreais[3, i] :=
          (BoundMx[i] + matrizpontosreais[2, i]) / 2;
        TIWUserSession(WebApplication.Data).matrizpontosreais[4, i] :=
          (BoundMn[i] + matrizpontosreais[2, i]) / 2;
      end;
    end; // for

    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      if (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 1) or
        (Typeofcrit[i] = 3) or (Typeofcrit[i] = 5) then
      begin
        TIWUserSession(WebApplication.Data).matrizpontosreais[0, i] := BoundMx
          [i];
        TIWUserSession(WebApplication.Data).matrizpontosreais[1, i] := BoundMn
          [i];
        TIWUserSession(WebApplication.Data).matrizpontosreais[2, i] :=
          (BoundMx[i] + BoundMn[i]) / 2;
        TIWUserSession(WebApplication.Data).matrizpontosreais[3, i] :=
          (BoundMn[i] + matrizpontosreais[2, i]) / 2;
        TIWUserSession(WebApplication.Data).matrizpontosreais[4, i] :=
          (BoundMx[i] + matrizpontosreais[2, i]) / 2;
      end; // if
    end; // for







  end; // webapp
end;

procedure TTFrmIntraCriterio.btninfoelicitedClick(Sender: TObject);
Var
  i, j, y, a: integer;
  infoILO, infoIUP, infoIND, infoANS, infoCRIT: string;
begin

  SetLength(TIWUserSession(WebApplication.Data).MatrizInfoElicited,
    TIWUserSession(WebApplication.Data).Nciclos, 5);

  /// /TABELA EM TEMPO REAL QUE MOSTRA AS OPÇÕES SELECIONADAS PELO USUÁRIO ENQUANTO A FUNÇÃO VALOR ESTÁ SENDO ELICITADA/////
  rgninfoelicited.Visible := true;

  // Armazenando o nome do critério armazenado naquele momento
  infoCRIT := cmbbxselectCrit.Items[cmbbxselectCrit.ItemIndex];

  // Armazenando os dados do combobox para mostrar em uma tabela em tempo real
  infoILO := copy(rdgrpBisec.Items[0], 29, 50);
  infoIUP := copy(rdgrpBisec.Items[1], 29, 50);
  infoIND := copy(rdgrpBisec.Items[2], 13, 50);


  // Armazenando o intervalo escolhido pelo decisor
  if rdgrpBisec.ItemIndex = 0 then
  begin
    infoANS := '<P align="center">I<SUB>LO</SUB></P>';
  end;
  if rdgrpBisec.ItemIndex = 1 then
  begin
    infoANS := '<P align="center">I<SUB>UP</SUB></P>';
  end;
  if rdgrpBisec.ItemIndex = 2 then
  begin
    infoANS := '<P align="center">Indifferent</P>';
  end;

  //Incrementando a quantidade de ciclos
  inc(TIWUserSession(WebApplication.Data).Nciclos);
  SetLength(TIWUserSession(WebApplication.Data).guardaciclos, TIWUserSession(WebApplication.Data).Nciclos);


  if Length(TIWUserSession(WebApplication.Data).guardaciclos) = 1 then begin
  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] :=  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] + 1;
  end else begin
  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] :=  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-2] + 1;
   TIWUserSession(WebApplication.Data).guardaciclos[0] := 1; //O ciclo inicial sempre será 1
  end;

  // Setando a "MatrizInfoElicited"
  SetLength(TIWUserSession(WebApplication.Data).MatrizInfoElicited,
    TIWUserSession(WebApplication.Data).Nciclos, 5);

  // Passando os dados para a matriz de informações elicitadas em tempo real
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 0] := IntToStr(TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1]);
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 1] := infoCRIT;
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 2] := (rounding(TIWUserSession(WebApplication.Data).LimInf) + ' to ' + rounding(TIWUserSession(WebApplication.Data).LimMed));
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 3] := (rounding(TIWUserSession(WebApplication.Data).LimMed) + ' to ' + rounding(TIWUserSession(WebApplication.Data).LimSup));;

  // Opção escolhida
  if rdgrpBisec.ItemIndex = 0 then
  begin
    TIWUserSession(WebApplication.Data).MatrizInfoElicited
      [TIWUserSession(WebApplication.Data).Nciclos - 1, 4] := (rounding(TIWUserSession(WebApplication.Data).LimInf) + ' to ' + rounding(TIWUserSession(WebApplication.Data).LimMed));
  end;
  if rdgrpBisec.ItemIndex = 1 then
  begin
    TIWUserSession(WebApplication.Data).MatrizInfoElicited
      [TIWUserSession(WebApplication.Data).Nciclos - 1, 4] := (rounding(TIWUserSession(WebApplication.Data).LimMed) + ' to ' + rounding(TIWUserSession(WebApplication.Data).LimSup));
  end;
  if rdgrpBisec.ItemIndex = 2 then
  begin
    TIWUserSession(WebApplication.Data).MatrizInfoElicited
      [TIWUserSession(WebApplication.Data).Nciclos - 1, 4] := infoIND;
  end;

  /// PASSANDO OS DADOS DAS INFORMAÇÕES ELICITADAS EM TEMPO REAL PARA A TABELA QUE APARECERÁ PARA O USUÁRIO///
 /// Acrescentando +1 linha a tabela
  awgcritelicited.RowCount := awgcritelicited.RowCount + 1;

  // Preenchendo a tabela TIWAdvWebGrid que vai mostrar os dados ao usuário em tempo real
  awgcritelicited.Cells[0, awgcritelicited.RowCount - 1] :=
    '<P align="center">' + IntToStr(awgcritelicited.RowCount) + '</P>';
  awgcritelicited.Cells[1, awgcritelicited.RowCount - 1] :=
    '<P align="center">' + (rounding(TIWUserSession(WebApplication.Data).LimInf) + ' to ' + rounding(TIWUserSession(WebApplication.Data).LimMed)) + '</P>';
  awgcritelicited.Cells[2, awgcritelicited.RowCount - 1] :=
    '<P align="center">' + (rounding(TIWUserSession(WebApplication.Data).LimMed) + ' to ' + rounding(TIWUserSession(WebApplication.Data).LimSup)) + '</P>';
  awgcritelicited.Cells[3, awgcritelicited.RowCount - 1] := infoANS;


  //Salvando info da MatrizIntrapontos para a var infoCYCLE
  for i := 0 to 4 do
  begin
    TIWUserSession(WebApplication.Data).infoCYCLE := TIWUserSession
      (WebApplication.Data).infoCYCLE + TIWUserSession(WebApplication.Data).MatrizInfoElicited[TIWUserSession(WebApplication.Data).Nciclos - 1, i]
      + '/';
  end;

  //Salvando todos os ciclos de informações elicitadas na coluna cycles do BD
  with UserSession.ZQuery1 do
  begin
    sql.Text := 'UPDATE intracrit SET cycles ="' + TIWUserSession
      (WebApplication.Data).infoCYCLE + '" WHERE id_problem="' +
      (TIWUserSession(WebApplication.Data).ID_Problema)
      + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data).nround)
      + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
        .fvround) + '";';
    ExecSQL;
  end;

end; // procedimento

procedure TTFrmIntraCriterio.btnConfNaoClick(Sender: TObject);
/// botão "cancel" da mensagem de advertencia exibida ao usuario, quando ele clica em "Stop elicitation"

begin
  rgnConfirmStopElic.Visible := false; // rgn some e continua na rgn de elicitação intra
  cmbbxselectCrit.Enabled := true; // libera de novo todos os componentes chave da região
  cmbbxpercent.Enabled := true;
  rdgrpBisec.Enabled := true;
  lnkLinear.Enabled := true;
  btnOkElicIntra.Enabled := true;
  // txtRemarkindif.visible:= true;

  lblDef2.Visible := false;
  lnkDefinePoint.Visible := false;
  lnkIntDef.Visible := false;
  TIWHelpIntDef.Visible := false;

  { if TIWUserSession(WebApplication.Data).VerificaDefPoint = 0 then
    begin
    // lblDef1.Visible := false;
    lblDef2.Visible := false;
    lnkDefinePoint.Visible := false;
    lnkIntDef.Visible := false;
    TIWHelpIntDef.Visible := false;
    end
    else
    begin
    // lblDef1.Visible := true;
    // lblDef2.Visible := true;
    //  lnkDefinePoint.Visible := true;
    // lnkIntDef.Visible := true;
    // TIWHelpIntDef.Visible := true;
    end; ; }

end;

procedure TTFrmIntraCriterio.btncriterioselicitadosClick(Sender: TObject);
Var
  i, y: integer;
  Critelicitados: string;
  MatrizElicitados: array of array of string;
begin

  /// //////1º CRIANDO E CONFIGURANDO TIWADVWEBGRID PARA MOSTRAR OS DADOS AO USUÁRIO////////////////

  // a)Zerando TIWAdvWebGrid
  awgcritelicitados.RowCount := 0;

  // b)Inserindo as linhas a mais no TIWAdvWebgrid
  for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
  begin
    if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = true then
    begin
      awgcritelicitados.RowCount := awgcritelicitados.RowCount + 1;
    end;
  end;

  // c)Inserindo os nomes dos critérios elicitados no TIWAdvWebgrid
  y := 0; // Zerando indice da tabela TIWAdvWebgrid
  for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
  begin
    if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = true then
    begin
      awgcritelicitados.Cells[0, y] := TIWUserSession(WebApplication.Data)
        .NomeCrit[i]; // Inserindo nome dos critérios elicitados na tabela tiwadvwebgrid
      awgcritelicitados.Cells[1, y] := 'View graphic'; // Inserindo link de gerar o gráfico dos critérios
      awgcritelicitados.Cells[2, y] := 'Reset elicitation';
      // Inserindo link de resetar elicitação do critério
      inc(y);
    end; // if
  end; // for

  // d)Centralizando e colocando na fonte certa
  for i := 0 to awgcritelicitados.Columns.Count - 1 do
  begin
    awgcritelicitados.Columns[i].Alignment := taCenter;
    awgcritelicitados.Columns[i].Font.Fontname := 'Verdana';
  end;

  // e)Habilitando a tabela  (TIWADVWEBGRID)
  // rgninfocritelicitados.Visible := true;

  // e)Caso algum critério já foi elicitado antes, mostrar na tabela
  rgninfocritelicitados.Visible := false;
  for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
  begin
    if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = true then
    begin
      rgninfocritelicitados.Visible := true;

    end;
  end;





end;

{
  /////////1º CRIAR MATRIZ QUE INDICA QUAIS CRITÉRIOS FORAM ELICITADOS//////////
  SetLength(MatrizElicitados, TIWUserSession(WebApplication.Data).NumCrit, 2);

  // a)Colocando os nomes dos critérios na matriz
  for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
  begin
  MatrizElicitados[i, 0] := TIWUserSession(WebApplication.Data).NomeCrit[i];
  end;


  // b)Pegando os indicadores no Banco de Dados

  with UserSession.ZQuery1 do
  begin

  // c)Pegando no BD os indicadores de critérios elicitados
  sql.Text := 'SELECT CritsElicitados FROM intracrit WHERE id_problem="' +
  (TIWUserSession(WebApplication.Data).ID_Problema)
  + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data).nround)
  + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
  .fvround) + '";';
  ExecSQL;
  open;
  Critelicitados := FieldByName('CritsElicitados').AsString;
  close;

  // d)Colocando os indicadores. Onde 0 indica que não foi elicitado e -1 indica que foi)
  for i := 1 to Length(Critelicitados) do
  begin
  if Critelicitados[i] <> '/' then
  begin
  MatrizElicitados[y, 1] := MatrizElicitados[y, 1] + Critelicitados[i];
  end
  else
  begin
  if Critelicitados[i] = '/' then
  begin
  inc(y);
  end; // if =
  end; // if <>
  end; // for
  end;



  /// //////2º CRIAR TIWADVWEBGRID PARA MOSTRAR OS DADOS AO USUÁRIO////////////////

  // a)Zerando TIWAdvWebGrid
  awgcritelicitados.RowCount := 0;

  // b)Inserindo as linhas a mais no TIWAdvWebgrid
  for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
  begin
  if MatrizElicitados[i, 1] = '-1' then
  begin
  awgcritelicitados.RowCount := awgcritelicitados.RowCount + 1;
  end;
  end;

  // c)Inserindo os nomes dos critérios elicitados n0 TIWAdvWebgrid
  y := 0; // Zerando indice da tabela TIWAdvWebgrid
  for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
  begin
  if MatrizElicitados[i, 1] = '-1' then
  begin
  awgcritelicitados.Cells[0, y] := MatrizElicitados[i, 0]; // Inserindo nome dos critérios elicitados na tabela tiwadvwebgrid
  awgcritelicitados.Cells[1, y] := 'View graphic';
  // Inserindo link de gerar o gráfico dos critérios
  awgcritelicitados.Cells[2, y] := 'Reset elicitation';
  // Inserindo link de resetar elicitação do critério
  inc(y);
  end; // if
  end; // for

  // d)Centralizando e colocando na fonte certa
  for i := 0 to awgcritelicitados.Columns.Count - 1 do
  begin
  awgcritelicitados.Columns[i].Alignment := taCenter;
  awgcritelicitados.Columns[i].Font.Fontname := 'Verdana';
  end;

  // e)Habilitando a tabela  (TIWADVWEBGRID)
  rgninfocritelicitados.Visible := true;

  end; }

procedure TTFrmIntraCriterio.btnElicFuncClick(Sender: TObject);
/// neste o usuario entra na região onde acontecerá a elicitação intracriterio///
/// neste são salvos os valores de max e min da escala local, para cada criterio
var
  i, j, P, contvi: integer;
  Aux, Mx, Mn: Double;
  // AuxObrigatorios: string;
  ContObrigatorios: integer;
  a: TIWUserSession;

Begin
  with TIWUserSession(WebApplication.Data) do
  begin

    { EXPERIMENTOS 06_05 - salvando o tempo de início }
    ETInicioIntra := timetostr(now);

    SetLength(MvarIntra, NumCrit);

    /// /////////////////////limpando variaveis importantes durante intra, para evitar info remanescente/////////////
    /// fazendo aqui, pois independente do motivo, para entrar e iniciar a elic intra, tem que passar por esse btn
    parada := false;
    Contavazio := 0;
    contadorponto := 0;

    imgrangesintra.Visible := false; // garantir que grafico da bisseção ficará oculto
    SetLength(TIWUserSession(WebApplication.Data).VtrcritBisec, 0);
    SetLength(VtrcritBisec, NumCrit);
    SetLength(matrizpontosreais, 5, NumCrit);
    SetLength(matrizdinamica, 1, NumCrit);
    SetLength(matrizfixa, Length(matrizfixa) + 1, 2);
    SetLength(vtrNomeNumCont, NumCrit);
    SetLength(AuxConsNorm, Numalt, NumCrit);
    SetLength(perc, NumCrit);
    SetLength(newFtipo, NumCrit); // vtr que vai trocar valor de 0 para 1, em situações que Ftipo<>1

    { ALTERAÇÃO LARISSA - INTRA DISCRETOS }
    SetLength(TipoCrit, NumCrit); // Se o critério é discreto ou contínuo para a elicitação

    // Setlength(CriCont, NumCrit);
    NumCont := 0; // inicia zerado para contar quantos contínuos existem
    SetLength(BoundMx, NumCrit);
    /// setando vetores com valores max e min para escala
    SetLength(BoundMn, NumCrit);
    P := 0;
    ContObrigatorios := 0;
    grdObrigatorios.RowCount := 0; // garante que não fique linhas remanescentes

    // Setando e inicializando componentes que vão ser usados durante a elicitação
    // ATENÇÃO: caso o usuário possa recomeçar a elicitação intracrit ou desfazer a definição de um critério como linear

    SetLength(vtrChangeLin, NumCrit); // limpa var auxiliares para preenchimento dos vetores utilizados no BD
    SetLength(vtrLinearintra, NumCrit);
    auxVtrCL := 0;
    auxVtrCL := 0;

    // inicializa vetores -1, se mudar valor no BD, significa que o índice correspondnete foi elicitado
    for i := 0 to NumCrit - 1 do
    begin
      vtrLinearintra[i] := -1;
      vtrChangeLin[i] := -1;
      perc[i] := 0; // incializa com zero para evitar break quando faz retomada
    end; // inicialização

    { for I := 0 to NumCrit - 1 do
      /// recebendo tipo de função de cada crit em outro vtr que será usado na etapa intra
      TIWUserSession(WebApplication.Data).CriCont[I] := TIWUserSession
      (WebApplication.Data).Ftipo[I]; }

    { ALTERAÇÃO LARISSA - INTRA DISCRETOS }
    (* Todos os critérios vão ser elicitados, incluindo os discretos - MENOS COM 2 NÍVEIS *)
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      if (TIWUserSession(WebApplication.Data).Niveis[i] <> 2) and
        (Niveis[i] <> 6) and (Niveis[i] <> 7) then
      begin
        cmbbxselectCrit.Items.Add(TIWUserSession(WebApplication.Data)
            .NomeCrit[i]);
        inc(TIWUserSession(WebApplication.Data).NumCont); // Mantem a variável NumCont mas ela passa a ser a quantidade total de critérios

        if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 1) then
          TipoCrit[i] := 0
          // contínuo
        else
          TipoCrit[i] := 1; // discreto
      end;
      { begin
        INC(TIWUserSession(WebApplication.Data).NumCont);
        // quando contínuo, incrementa
        // adiciona nome no cmbbx de elicitação
        //  end; // }

    end; // for i

    /// visibilidade do link "stop elicitation' conforme crits 'obrigatorios' são elicitados
    for i := 0 to NumCrit - 1 do
      TIWUserSession(WebApplication.Data).DinamVerificaIntra[i] :=
        TIWUserSession(WebApplication.Data).VerificaIntra[i];

    contvi := 0;
    for i := 0 to NumCrit - 1 do
    begin
      if TIWUserSession(WebApplication.Data).DinamVerificaIntra[i] = true then
      begin
        inc(contvi);
        continue; // testar
      end;
    end;
    if contvi = 0 then // nenhum true = não tem mais obrigatórios
    begin
      { lnkStopElicit.Visible := true;
        //IWLink7.Visible := true;
        TIWHelpLink7.Visible := true; }
    end;
    if contvi <> 0 then // tem algum crit obrigatório não elicitado
    begin
      lnkStopElicit.Visible := false;
      // IWLink7.Visible := false;
      TIWHelpLink7.Visible := false;
    end;

    for j := 0 to NumCrit - 1 do // pegando valores max e min de cada consequencia CritCont na matriz
    begin

      // if (Typeofcrit[J] = 0) OR (Typeofcrit[J] = 1) then
      // begin

      /// valores faceis de substituir por qualquer valor de consequência
      Mx := -50000000000;
      Mn := 50000000000;

      for i := 0 to Numalt - 1 do
      begin
        Aux := TIWUserSession(WebApplication.Data).ConsMatrix[i, j];
        if Mx < Aux then
          Mx := Aux;
        if Mn > Aux then
          Mn := Aux;
      end; // for I := 0 to NumAlt

      TIWUserSession(WebApplication.Data).BoundMx[P] := Mx;
      // globais recebem v=Conseq reais
      TIWUserSession(WebApplication.Data).BoundMn[P] := Mn;
      inc(P);

      // end; // if (Typeofcrit[j]
    end; // for j := 0 to NumCont

    rgnObrigatorios.Visible := false;

    /// inserindo informação dos criterios que obrigatoriamente devem ser elicitados///
    with TIWUserSession(WebApplication.Data) do

    begin
      SetLength(vtrNomeNumCont, NumCont);

      for j := 0 to NumCrit - 1 do

        if (Typeofcrit[j] = 0) OR (Typeofcrit[j] = 1) then
        // se for criContinuo
        begin

          if TIWUserSession(WebApplication.Data).VerificaIntra[j] = true then
          // se tiver faltando informação na planilha, tem que elicitar!

          begin // preenchendo componente que vai exibir os criterios obrigatorios na rgn da elic
            grdObrigatorios.RowCount := grdObrigatorios.RowCount + 1;
            i := grdObrigatorios.RowCount;
            grdObrigatorios.Cell[i - 1, 0].Text := NomeCrit[j] + ';';

            TIWUserSession(WebApplication.Data).vtrNomeNumCont[j] := NomeCrit
              [j];

            txtMsgObrigatorios.Visible := true;
            grdObrigatorios.Visible := true;
            txtSemObrigatorios.Visible := false;
            // rgnObrigatorios.Visible := true;
            // lblSemObrigatorios.Visible := false;
            lnkStopElicit.Visible := false;
            IWLink7.Visible := false;
            TIWHelpLink7.Visible := false;

            inc(ContObrigatorios);

          end; // verificaintra

        end; // if (TypeofCrit[j]= 0) OR  (Typeofcrit[j]= 1)
    end; // for j

    if ContObrigatorios = 0 then
    begin
      txtMsgObrigatorios.Visible := false;
      grdObrigatorios.Visible := false;
      // lblSemObrigatorios.Visible := true;
      txtSemObrigatorios.Visible := true;
      { lnkStopElicit.Visible := true;
        IWLink7.Visible := true;
        TIWHelpLink7.Visible := true; }
      // lblObrigatorios.Caption := 'The required information for all criteria has been correctly inputted';
    end;

    rgnElicIntra.Visible := true;
    rgnMenuIntracrit.Visible := false;

    /// componentes relacionados a exibição do link referente a poder parar de responder perguntas
    /// da bisseção, após a primeira respondida. entrando nos procedimetnos de grafico, mesmo sem
    /// ter atendido criterio de parada

    TIWUserSession(WebApplication.Data).VerificaDefPoint := 0;
    lblDef2.Visible := false;
    // lnkDefinePoint.Visible := false;
    TIWHelpIntDef.Visible := false;

    /// salvando o stage intracriterio do problema  e outras infos

    SalvarBdIntra(0); // salvando no BDIntra BoundMax, BoundMin, Ftipo do problema
    SalvarBdIntra(6); // primeira vez que preenche vtrdinam, sendo atualizado somente no btnNextcrit

    { //alteração em 21.02 }
    for i := 0 to NumCrit - 1 do
      TIWUserSession(WebApplication.Data).newFtipo[i] := TIWUserSession
        (WebApplication.Data).Ftipo[i]; // passando valores de Ftipo original para novo vtr que será utilizado somente quando retornointra=1
    // fim alteração em 21.02

  end; // webapp
end; // procedimento

{ procedure TTFrmIntraCriterio.btnForControlCheckLinClick(Sender: TObject);
  begin
  WebApplication.ShowMessage(
  'By clicking on this option, you declare that the value function of the evaluated criterion can be assumed to be linear. Finishing the elicitation for this criterion.');
  end; }

{ procedure TTFrmIntraCriterio.btnInputNewClick(Sender: TObject);
  begin

  with TIWUserSession(WebApplication.Data) do
  begin
  /// por no btn reset no menu intra///
  verificaUnit := -55;
  TfrmEntrada.create(WebApplication).Show;
  end; // webapp
  end; }

procedure TTFrmIntraCriterio.btnNextpointClick(Sender: TObject);
/// neste procedimento, deve ser captado e salvo o valor do ponto elicitado ///
/// limpeza do grafico e liberação da primeira pergunta para o ponto seguinte///
/// do mesmo criterio. componentes devem ser liberados e limites atualizados///
var
  infoILO, infoIUP: string;
  i, j, l, Count: integer;
  x: Double;

begin
  // chamo esse procedimento ao invés do procedimento de plotar o gráfico e já assumo que a pessoa selecionou o ponto do meio ou o extremo

  { ALTERAÇÃO LARISSA 14.07 }
  // Não vai ter interação com o usuário nessa etapa

  with TIWUserSession(WebApplication.Data) do
  begin
    { if rdgrpbehav.ItemIndex = -1 then
      begin

      if Idioma = 0 then
      begin
      WebApplication.ShowMessage('Please, select an interval.');
      Exit;
      end // EN
      else
      begin
      WebApplication.ShowMessage('Por favor, selecione um intervalo.');
      Exit;
      end; // PT
      end; }

    /// salvando valor da serie selecionada no vtr dinamico que terá os 3 pontos elicitados.
    /// Inc(B) para elicitação do proximo ponto  (0.5; 0.25; 0.75)

    i := AuxSalvai;
    inc(contadorponto); // próximo ponto

    SetLength(vtrpontosbisec, contadorponto);
    SetLength(TIWUserSession(WebApplication.Data).matrizfixa, Length
        (matrizfixa) + 1, 2); // define tamanho dinamicamente com pontos elicitados

    { ALTERAÇÃO LARISSA 14.07 }
    { case rdgrpbehav.ItemIndex of
      0: // escolheu primeiro ponto, S2
      begin
      x := TIWUserSession(WebApplication.Data).Auxvaloresplotados[0];

      end; // case 0

      1: // escolheu segundo ponto, S3
      begin
      x := TIWUserSession(WebApplication.Data).Auxvaloresplotados[1];

      end; // case 1

      2: // escolheu terceiro ponto, s4
      begin
      x := TIWUserSession(WebApplication.Data).Auxvaloresplotados[2];

      end; // case 2
      end; // case of }

    { ALTERAÇÃO LARISSA 14.07 }
    x := TIWUserSession(WebApplication.Data).AuxPonto;

    /// salvando cada ponto elicitado no vetor dinamico que será utilizado para plot do grafico final
    TIWUserSession(WebApplication.Data).vtrpontosbisec[contadorponto - 1] := x;
    TIWUserSession(WebApplication.Data).matrizfixa[Length(matrizfixa) - 1, 0]
      := x;

    begin // liberando componentes

      rdgrpbehav.Visible := false;
      rgnGraphIntra.Visible := false;
      ChartIntra.Visible := false;
      chrtbar.Visible := true;
      btnreturnbisec.Visible := false;
      imgseries.Hide;

      // rgnObrigatorios.Visible := true;
      rdgrpBisec.Enabled := true;
      rgntextoslinear.Visible := true;
      // chrtRangeintra.Visible:= false;
      // imgrangesintra.visible:= false;

      rdgrpBisec.ItemIndex := -1;
      btnOkElicIntra.Enabled := true;
      lnkDefinePoint.Enabled := true;
      // lblDef1.Visible := true;
      // lblDef2.Visible := true;
      // lnkIntDef.Visible := true;
      parada := false;

      lblDef2.Visible := false;
      lnkDefinePoint.Visible := false;
      lnkIntDef.Visible := false;
      TIWHelpIntDef.Visible := false;

      /// verificação relacionada ao link pós primeira pergunta realizada que para as perguntas da bisseção
      { if TIWUserSession(WebApplication.Data).VerificaDefPoint = 0 then
        begin
        // lblDef1.Visible := false;
        lblDef2.Visible := false;
        lnkDefinePoint.Visible := false;
        // lnkIntDef.Visible := false;
        TIWHelpIntDef.Visible := false;

        end
        else
        begin
        // lblDef1.Visible := true;
        //   lblDef2.Visible := true;
        // lnkDefinePoint.Visible := true;
        // lnkIntDef.Visible := true;
        TIWHelpIntDef.Visible := true;
        end; }
    end;

    { ALTERAÇÃO LARISSA - INTRA DISCRETOS }
    /// atualiza limites que serão usados para o proximo ponto elicitado

    begin
      rdgrpBisec.Items.Clear;
      i := AuxSalvai;

      (* Critério discreto com 3 níveis *)
      { if ((typeofcrit[i]=2) OR (typeofcrit[i]=3)) AND (niveis[i] = 3) then
        contadorponto:=3; //finaliza a eliticação }

      (* Critério Contínuo *)
      // if (typeofcrit[i]=0) OR (typeofcrit[i]=1) then
      // begin

      if TIWUserSession(WebApplication.Data).contadorponto = 1 then
      // ponto 0,25
      begin
        TIWUserSession(WebApplication.Data).BoundMd := x; // travando ponto medio escolhido, para usar como 'BoundMed' do range geral

        if (Typeofcrit[i] = 0) then // CriCont min
        Begin

          TIWUserSession(WebApplication.Data).vtrrangeintra[0] := BoundMd;
          vtrrangeintra[1] := BoundMx[i];

          TIWUserSession(WebApplication.Data).LimInf := BoundMx[i];
          TIWUserSession(WebApplication.Data).LimSup := x;
          LimMed := (LimSup + LimInf) * 0.5;

          rdgrpBisec.Visible := true;
          // txtRemarkindif.Visible := true;
          // lblwhatprefer.Visible := true;
          lblwhatprefer2.Visible := true;
          rdgrpBisec.Enabled := true;
          rdgrpBisec.Items.Clear;

          { ALTERAÇÃO 01.03.22- SISTEMA BILINGUE }
          if TIWUserSession(WebApplication.Data).Idioma = 0 then
          begin
            rdgrpBisec.Items.Add('<B>I<SUB>LO</SUB>:</B> ' + 'From ' +
                ({FormatFloat(Strpadrao,} rounding(LimInf)) + ' to ' +
                ({FormatFloat(Strpadrao,} rounding(LimMed)));
            // valores A, Xn, B tem que ser
            rdgrpBisec.Items.Add('<B>I<SUB>UP</SUB>:</B> ' + 'From ' +
                ({FormatFloat(Strpadrao,} rounding(LimMed)) + ' to ' +
                ({FormatFloat(Strpadrao,} rounding(LimSup)));
            rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
          end
          // EN
          else
          begin
            rdgrpBisec.Items.Add('De ' + ({FormatFloat(Strpadrao,} rounding(LimInf))
                + ' até ' + (FormatFloat(Strpadrao, LimMed)));
            // valores A, Xn, B tem que ser
            rdgrpBisec.Items.Add('De ' + ({FormatFloat(Strpadrao,} rounding(LimMed))
                + ' até ' + ({FormatFloat(Strpadrao,} rounding(LimSup)));
            rdgrpBisec.Items.Add('Indiferente');
          end; // PT

          /// atualização da pergunta cada vez que o usuário responde
          // pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

          if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or (Typeofcrit[i] = 4)
            then
            // MIN cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Decrease from ' +
                infoILO + ' or from ' + infoIUP + '?');
          if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or (Typeofcrit[i] = 5)
            then
            // MAX cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Increase from ' +
                infoILO + ' or from ' + infoIUP + '?');

        end; // if (Typeofcrit=0)

        if (Typeofcrit[i] = 1) then // CriCont max
        Begin

          TIWUserSession(WebApplication.Data).vtrrangeintra[1] := BoundMd;
          // atualizando melhor valor para perguntas bisec

          TIWUserSession(WebApplication.Data).LimInf := BoundMn[i];
          TIWUserSession(WebApplication.Data).LimSup := x;
          TIWUserSession(WebApplication.Data).LimMed := (LimSup + LimInf) * 0.5;

          rdgrpBisec.Visible := true;
          // txtRemarkindif.Visible := true;
          // lblwhatprefer.Visible := true;
          lblwhatprefer2.Visible := true;
          rdgrpBisec.Enabled := true;
          rdgrpBisec.Items.Clear;

          if TIWUserSession(WebApplication.Data).Idioma = 0 then
          begin
            rdgrpBisec.Items.Add('<B>I<SUB>LO</SUB>:</B> ' + 'From ' +
                ({FormatFloat(Strpadrao,} rounding(LimInf)) + ' to ' +
                ({FormatFloat(Strpadrao,} rounding(LimMed)));
            // valores A, Xn, B tem que ser
            rdgrpBisec.Items.Add('<B>I<SUB>UP</SUB>:</B> ' + 'From ' +
                ({FormatFloat(Strpadrao,} rounding(LimMed)) + ' to ' +
                ({FormatFloat(Strpadrao,} rounding(LimSup)));
            rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
          end
          // EN
          else
          begin
            rdgrpBisec.Items.Add('De ' + ({FormatFloat(Strpadrao,} rounding(LimInf))
                + ' até ' + ({FormatFloat(Strpadrao,} rounding(LimMed)));
            // valores A, Xn, B tem que ser
            rdgrpBisec.Items.Add('De ' + ({FormatFloat(Strpadrao,} rounding(LimMed))
                + ' até ' + ({FormatFloat(Strpadrao,} rounding(LimSup)));
            rdgrpBisec.Items.Add('Indiferente');
          end; // PT

          // tualização da pergunta cada vez que o usuário responde
          // pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

          if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or (Typeofcrit[i] = 4)
            then
            // MIN cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Decrease from ' +
                 infoILO + ' or from ' + infoIUP + '?');
          if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or (Typeofcrit[i] = 5)
            then
            // MAX cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Increase from ' +
                 infoILO + ' or from ' + infoIUP + '?');
        end; // if (Typeofcrit=1)

        // FIM ALTERAÇÃO 01.03.22- SISTEMA BILINGUE

        TIWUserSession(WebApplication.Data)
          .matrizfixa[Length(matrizfixa) - 1, 1] := 0.5;

        { ALTERAÇÃO LARISSA 14.07 }
        if (TIWUserSession(WebApplication.Data).elicita25 = false) then
        (* O ponto 0,25 não é elicitado (porque o ponto 0,5 é extremo)
          o V(0,25) vai estar na metade do intervalo de V(0) e V(0,5) *)
        begin
          // Assume que o ponto 0,25 está no meio do intervalo entre 0 e 0,5
          // Passa para a elicitação do ponto 0,75
          if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 1) then
          begin // cont
            TIWUserSession(WebApplication.Data).Xn := LimMed;
            // Metade do intervalo entre V(0) e V(0,5)
            AuxPonto := Xn; // auxiliar
            inc(contadorponto); // próximo ponto (como se o 0,25 já tivesse sido elicitado)

            SetLength(vtrpontosbisec, contadorponto);
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, Length
                (matrizfixa) + 1, 2); // define tamanho dinamicamente com pontos elicitados

            x := AuxPonto;
            /// salvando cada ponto elicitado no vetor dinamico que será utilizado para plot do grafico final
            TIWUserSession(WebApplication.Data)
              .vtrpontosbisec[contadorponto - 1] := x;
            TIWUserSession(WebApplication.Data)
              .matrizfixa[Length(matrizfixa) - 1, 0] := x;

          end // cont
          else
            inc(contadorponto); // próximo ponto (como se o 0,25 já tivesse sido elicitado)

        end; // não elicita 0,25

        if TIWUserSession(WebApplication.Data).elicita25 = true then
          PlotaRangeIntra;
        // chamando proced para gerar graph das novas rodadas
      end; // b=1
    end;

    // Caso o ponto 0,25 não seja elicitado, segue para esse procedimento
    if TIWUserSession(WebApplication.Data).contadorponto = 2 then //
    begin
      { vtrrangeintra[0]:= BoundMd;
        vtrrangeintra[1]:= Boundmx[i];
        TIWUserSession(WebApplication.Data).vtrrangeintra[0]:= Boundmn[i];
        TIWUserSession(WebApplication.Data).vtrrangeintra[1]:= BoundMd; }

      begin
        if (Typeofcrit[i] = 0) then // CriCont min
        Begin

          TIWUserSession(WebApplication.Data).vtrrangeintra[0] := BoundMn[i];
          TIWUserSession(WebApplication.Data).vtrrangeintra[1] := BoundMd;

          LimInf := BoundMd;
          LimSup := BoundMn[i];
          LimMed := (LimSup + LimInf) * 0.5;

          rdgrpBisec.Visible := true;
          // txtRemarkindif.Visible := true;
          // lblwhatprefer.Visible := true;
          lblwhatprefer2.Visible := true;
          rdgrpBisec.Enabled := true;
          // rgnObrigatorios.Visible := true;
          rdgrpBisec.Items.Clear;

          { ALTERAÇÃO 01.03.22- SISTEMA BILINGUE }
          if TIWUserSession(WebApplication.Data).Idioma = 0 then
          begin
            rdgrpBisec.Items.Add('<B>I<SUB>LO</SUB>:</B> ' + 'From ' +
                ({FormatFloat(Strpadrao,} rounding(LimInf)) + ' to ' +
                ({FormatFloat(Strpadrao,} rounding(LimMed)));
            // valores A, Xn, B tem que ser
            rdgrpBisec.Items.Add('<B>I<SUB>UP</SUB>:</B> ' + 'From ' +
                ({FormatFloat(Strpadrao,} rounding(LimMed)) + ' to ' +
                ({FormatFloat(Strpadrao,} rounding(LimSup)));
            rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
          end
          // EN
          else
          begin
            rdgrpBisec.Items.Add('De ' + (FormatFloat(Strpadrao, LimInf))
                + ' até ' + ({FormatFloat(Strpadrao,} rounding(LimMed)));
            // valores A, Xn, B tem que ser
            rdgrpBisec.Items.Add('De ' + (FormatFloat(Strpadrao, LimMed))
                + ' até ' + ({FormatFloat(Strpadrao,} rounding(LimSup)));
            rdgrpBisec.Items.Add('Indiferente');
          end; // PT

          // atualização da pergunta cada vez que o usuário responde
          // pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

          if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or (Typeofcrit[i] = 4)
            then
            // MIN cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Decrease from ' +
                 infoILO + ' or from ' + infoIUP + '?');
          if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or (Typeofcrit[i] = 5)
            then
            // MAX cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Increase from ' +
                infoILO + ' or from ' + infoIUP + '?');
        end; // if (Typeofcrit=0)

        if (Typeofcrit[i] = 1) then // CriCont max
        Begin

          vtrrangeintra[0] := BoundMd;
          vtrrangeintra[1] := BoundMx[i];

          LimInf := BoundMd;
          LimSup := BoundMx[i];
          LimMed := (LimSup + LimInf) * 0.5;

          rdgrpBisec.Visible := true;
          // txtRemarkindif.Visible := true;
          // lblwhatprefer.Visible := true;
          lblwhatprefer2.Visible := true;
          rdgrpBisec.Enabled := true;
          // rgnObrigatorios.Visible := true;
          rdgrpBisec.Items.Clear;

          if TIWUserSession(WebApplication.Data).Idioma = 0 then
          begin
            rdgrpBisec.Items.Add('<B>I<SUB>LO</SUB>:</B> ' + 'From ' +
                ({FormatFloat(Strpadrao,} rounding(LimInf)) + ' to ' +
                ({FormatFloat(Strpadrao,} rounding(LimMed)));
            // valores A, Xn, B tem que ser
            rdgrpBisec.Items.Add('<B>I<SUB>UP</SUB>:</B> ' + 'From ' +
                ({FormatFloat(Strpadrao,} rounding(LimMed)) + ' to ' +
                ({FormatFloat(Strpadrao,} rounding(LimSup)));
            rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
          end
          // EN
          else
          begin
            rdgrpBisec.Items.Add('De ' + ({FormatFloat(Strpadrao,} rounding(LimInf))
                + ' até ' + ({FormatFloat(Strpadrao,} rounding(LimMed)));
            // valores A, Xn, B tem que ser
            rdgrpBisec.Items.Add('De ' + ({FormatFloat(Strpadrao,} rounding(LimMed))
                + ' até ' + ({FormatFloat(Strpadrao,} rounding(LimSup)));
            rdgrpBisec.Items.Add('Indiferente');
          end; // PT

          // atualização da pergunta cada vez que o usuário responde
          // pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

          if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or (Typeofcrit[i] = 4)
            then
            // MIN cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Decrease from ' +
                 infoILO + ' or from ' + infoIUP + '?');
          if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or (Typeofcrit[i] = 5)
            then
            // MAX cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Increase from ' +
                 infoILO + ' or from ' + infoIUP + '?');

        end; // if (Typeofcrit=1)
        // FIM ALTERAÇÃO 01.03.22- SISTEMA BILINGUE

        TIWUserSession(WebApplication.Data)
          .matrizfixa[Length(matrizfixa) - 1, 1] := 0.25;

        { ALTERAÇÃO LARISSA 14.07 }
        if (TIWUserSession(WebApplication.Data).elicita75 = false) then
        (* O ponto 0,75 não é elicitado (porque o ponto 0,5 é extremo)
          o V(0,25) vai estar na metade do intervalo de V(1) e V(0,5) *)
        begin
          // Assume que o ponto 0,75 está no meio do intervalo entre 1 e 0,5
          // Finaliza a elicitação

          if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 1) then
          begin // cont

            TIWUserSession(WebApplication.Data).Xn := LimMed;
            // Metade do intervalo entre V(1) e V(0,5)
            AuxPonto := Xn; // auxiliar
            inc(contadorponto); // para finalizar a elicitação

            SetLength(vtrpontosbisec, contadorponto);
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, Length
                (matrizfixa) + 1, 2); // define tamanho dinamicamente com pontos elicitados

            x := AuxPonto;
            /// salvando cada ponto elicitado no vetor dinamico que será utilizado para plot do grafico final
            TIWUserSession(WebApplication.Data)
              .vtrpontosbisec[contadorponto - 1] := x;
            TIWUserSession(WebApplication.Data)
              .matrizfixa[Length(matrizfixa) - 1, 0] := x;
          end // cont

          else // disc
            inc(contadorponto); // para finalizar a elicitação

        end; // não elicita 0,75

        if TIWUserSession(WebApplication.Data).elicita75 = true then
          PlotaRangeIntra;
        // chamando proced para gerar graph das novas rodadas
      end; // b=2
    end;

    if (contadorponto - 1) > 1 then
    begin

      cmbbxselectCrit.Enabled := true;
      cmbbxpercent.Enabled := true;
      cmbbxpercent.ItemIndex := 2;
      // rdgrpbehav.Visible:= false;
      rdgrpBisec.DestroyComponents;
      // btnNextp.Enabled:= false;
      btnnextcrit.Visible := true;
      btnreturnbisec.Visible := false; // quando é pra passar pro crit seguinte, o btn de retorno não aparece
      btnNextpoint.Visible := false;
      rgnObrigatorios.Visible := false;
      btnbargraph.Visible := false;
      btnlinegraph.Visible := false;
      rgntextoslinear.Visible := false;

      if ((Typeofcrit[i] = 0) OR (Typeofcrit[i] = 1)) OR
        (TIWUserSession(WebApplication.Data).matrizfixa[Length(matrizfixa) - 1,
        1] = 0) then
        // cont
        TIWUserSession(WebApplication.Data)
          .matrizfixa[Length(matrizfixa) - 1, 1] := 0.75;

      PlotaValueFunction;

      // end; //END CRITT CONT REVER

    end; // if B>1

  end; // user ses
end; // procedimento

procedure paradaintra;
begin

end;

procedure TTFrmIntraCriterio.btnOkElicIntraClick(Sender: TObject);
// alterado em 01.03.22- sistema bilingue
/// procedimento salva a resposta dada no radio para verifcar o valor do range escolhido
/// e gerar a pergunta seguinte até que criterio de parada= true ou o botão Stop seja acionado.
/// Captura valor percentual do  cmbbxpercent e realiza algumas verificações de preenchimento

var
  i, j, d, E, b, q, Count: integer;
  pe, infoANS: string;
  tamanho_faixa: real;
  percent_remanes, faixa_remanes, auxfaixa: real;
  extremo: boolean;
  ultima_resp: real;
  VAI, VBI: real;
  infoILO, infoIUP: string;

  { procedure indifContinuos;
    begin

    with TIWUserSession(WebApplication.Data) do
    begin
    if contadorponto = 0 then
    begin
    Setlength(TIWUserSession(WebApplication.Data).matrizfixa, 3, 2);
    TIWUserSession(WebApplication.Data).matrizfixa[2, 0] := LimMed;
    matrizfixa[2, 1] := 0.5;
    end;
    if contadorponto = 1 then
    begin
    Setlength(TIWUserSession(WebApplication.Data).matrizfixa, 4, 2);
    TIWUserSession(WebApplication.Data).matrizfixa[3, 0] := LimMed;
    matrizfixa[3, 1] := 0.25;
    end;
    if contadorponto = 2 then
    begin
    Setlength(TIWUserSession(WebApplication.Data).matrizfixa, 5, 2);
    TIWUserSession(WebApplication.Data).matrizfixa[4, 0] := LimMed;
    matrizfixa[4, 1] := 0.75;
    AuxParada:=true;
    end;

    end; // usersession
    end; // procedure }

begin

  // HABILITANDO O LINK "Back one step"//
  { if cmbbxselectCrit.ItemIndex > -1 then
    lnkbackonestep.Visible := true; }

  with TIWUserSession(WebApplication.Data) do
  begin

  //Desabilitando a tabela
  rgninfocritelicitados.Visible := false;

  // Desabilita a visualização do gráfico ao clicar em "Reset elicitation"
      rgngrafintra.Visible := false;

     // Habilitando link de visualizar a atabela
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit do
    if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = true then
    begin
      lnkviewcritelicitados.Visible := true;
    end;


    SetLength(perc, NumCrit); // vtr double que recebe valores percentuais de cada criterio elicitado

    /// default valor percentual é captado e DA é calculado para verificar critério de parada na bisseção
    pe := cmbbxpercent.Text; // percentual
    j := AuxSalvai; // crit avaliado
    TIWUserSession(WebApplication.Data).perc[j] := (StrToFloat(pe) / 100);
    // passando o valor % pra float
    TIWUserSession(WebApplication.Data).DA := perc[j] *
      (BoundMx[j] - (TIWUserSession(WebApplication.Data).BoundMn[j]));
    // usa os pontos de max e min das conseqs reais

    E := 0; // quando clicar botão Ok, incrementa contador, liberando o procedimento Bisec para pergunta 2

    /// verificações se tudo foi declarado
    if (cmbbxselectCrit.ItemIndex = -1) then
    begin
      if Idioma = 0 then
      begin
        WebApplication.ShowMessage('Please, field all information requested.');
        Exit;
      end // EN
      else
      Begin
        WebApplication.ShowMessage(
          'Por favor, preencha todas as informações solicitadas.');
        Exit;
      End; // PT
      Exit;
    end; // show message

    If (rdgrpBisec.ItemIndex = -1)
    { and (VerificaLin = 0) } then
    begin
      if Idioma = 0 then
      begin
        WebApplication.ShowMessage(
          'Please, select one action to function evalulation.');
        Exit;
      end // EN
      else
      Begin
        WebApplication.ShowMessage(
          'Por favor, selecione uma ação para avaliação da função valor.');
        Exit;
      End; // PT
      Exit;
    end; // showmessage


    // captando valores sup e inf da primeira resposta dada
    /// limsup é o melhor valor, liminf é o pior. Não confundir com maiot/menor
    ///

    // Chamando o procedimento que salva as informações dos ciclos e mostra ao usuário em tempo real///
    btninfoelicitedClick(Sender);

    with TIWUserSession(WebApplication.Data) do
    begin
      j := AuxSalvai;
      AuxParada := false;
      cmbbxselectCrit.Enabled := false;

      case rdgrpBisec.ItemIndex of
        0: // escolheu primeira opção do radiogroup
          begin

            TIWUserSession(WebApplication.Data).seqresp := seqresp + IntToStr
              (rdgrpBisec.ItemIndex);
            // armazena a sequência de respostas

            if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) OR
              (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
            begin
              // minimização
              TIWUserSession(WebApplication.Data).ValorB := LimInf;
              TIWUserSession(WebApplication.Data).ValorA := LimMed;
            end;
            // if (typeofcrit=0)

            if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) OR
              (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
            begin
              // maximização
              ValorB := TIWUserSession(WebApplication.Data).LimMed;
              ValorA := TIWUserSession(WebApplication.Data).LimInf;
            end; // if (typeofcrit=1)
            VAI := ValorA;
            VBI := ValorB;
          end; // case 0

        1: // escolheu segunda opção do radiogroup
          begin

            TIWUserSession(WebApplication.Data).seqresp := seqresp + IntToStr
              (rdgrpBisec.ItemIndex);

            if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) OR
              (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) then
            begin
              ValorB := TIWUserSession(WebApplication.Data).LimMed;
              ValorA := TIWUserSession(WebApplication.Data).LimSup;
            end;
            // if (typeofcrit=0)
            if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) OR
              (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
            begin
              TIWUserSession(WebApplication.Data).ValorB := TIWUserSession
                (WebApplication.Data).LimSup;
              TIWUserSession(WebApplication.Data).ValorA := TIWUserSession
                (WebApplication.Data).LimMed;
            end; // if (typeofcrit=1)
            VAI := ValorA;
            VBI := ValorB;
          end; // case 1

        2: // indiferente
          begin
            seqresp := seqresp + IntToStr(rdgrpBisec.ItemIndex);

            TIWUserSession(WebApplication.Data).ValorA := TIWUserSession
              (WebApplication.Data).LimMed;
            TIWUserSession(WebApplication.Data).ValorB := TIWUserSession
              (WebApplication.Data).LimMed;
            VAI := LimInf;
            VBI := LimSup;
          end; // case 2

      end; // case of

    end;

    { ALTERAÇÃO LARISSA - INTRA DISCRETOS }

    (* Gera a pargunta e testa a parada - discretos *)

    if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) or
      (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3) then
    begin
      // Se for discreto
      AuxParada := false;
      GerarPergDiscretos;
    end;

    /// testa critério de parada, se verdadeiro chama procedimento de plot
    with TIWUserSession(WebApplication.Data) do
    begin

      (* TESTE DE PARADA *)

      // CRITÉRIO CONTÍNUO

      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or
        (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) then
      begin
        // Se for contínuo  - teste de parada de Paolla
        if contadorponto = 0 then // teste 23/10 determinando pontos como true
        begin
          elicita05 := true;
          elicita25 := true;
          elicita75 := true;
        end;
        if (((abs(ValorB - ValorA)) <= TIWUserSession(WebApplication.Data).DA)
            OR (FormatFloat('0.00', LimSup) = FormatFloat('0.00', LimMed)) OR
            (FormatFloat('0.00', LimInf) = FormatFloat('0.00', LimMed)))
        { AND ((LimSup <> TIWUserSession(WebApplication.Data).BoundMd) AND
          (LimSup <> TIWUserSession(WebApplication.Data).BoundMx[AuxSalvai])
          AND (LimSup <> TIWUserSession(WebApplication.Data).BoundMn[AuxSalvai]) AND
          (LimInf <> TIWUserSession(WebApplication.Data).BoundMd) AND
          (LimInf <> TIWUserSession(WebApplication.Data).BoundMx[AuxSalvai]) AND
          (LimInf <> TIWUserSession(WebApplication.Data).BoundMn[AuxSalvai]))) }
        then
        begin

          AuxParada := true;
          { ALTERAÇÃO LARISSA 14.07 }

          (* Só verifica os extremos na elicitação do ponto 0,5 *)
          if contadorponto = 0 then
          begin
            // extremo: se o Xn fica no próprio ponto extremo ou no meio da faixa
            extremo := false;
            elicita05 := true;
            elicita25 := true;
            elicita75 := true;
            j := AuxSalvai;

            { Verificação da elicitação dos pontos 0,25 e 0,75 }

            if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) then
              auxfaixa := BoundMx[j];
            if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) then
              auxfaixa := BoundMn[j];

            (* Percentual da faixa (ponto médio e limite inferior) menor que 20% *)
            tamanho_faixa := abs(TIWUserSession(WebApplication.Data)
                .BoundMx[j] - TIWUserSession(WebApplication.Data).BoundMn[j]);
            // faixa_remanes := TIWUserSession(WebApplication.Data).LimMed - TIWUserSession(WebApplication.Data).LimInf;
            faixa_remanes := TIWUserSession(WebApplication.Data)
              .LimMed - auxfaixa;
            percent_remanes := faixa_remanes / tamanho_faixa;

            (* limite inferior sendo A em que V(A)=0 *)
            if (percent_remanes <= 0.2) AND
              (TIWUserSession(WebApplication.Data).LimInf = auxfaixa) then
              TIWUserSession(WebApplication.Data).elicita25 := false
            else
            begin

              if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) then
                auxfaixa := BoundMn[j];
              if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) then
                auxfaixa := BoundMx[j];

              (* Percentual da faixa (ponto médio e limite superior) menor que 20% *)
              tamanho_faixa := abs(TIWUserSession(WebApplication.Data)
                  .BoundMx[j] - TIWUserSession(WebApplication.Data).BoundMn[j]);
              faixa_remanes := auxfaixa - TIWUserSession(WebApplication.Data)
                .LimMed;
              percent_remanes := faixa_remanes / tamanho_faixa;

              (* limite superior sendo C em que V(C) = 1 *)
              if (percent_remanes <= 0.2) AND
                (TIWUserSession(WebApplication.Data).LimSup = auxfaixa) then
                TIWUserSession(WebApplication.Data).elicita75 := false;
            end; // Não elicita

            ultima_resp := rdgrpBisec.ItemIndex;
            // armazena a ultima resposta daquele ponto

            { o ponto que eu perguntei agora está em qual lado da faixa? }
            if Typeofcrit[j] = 1 then
            begin
              if ((TIWUserSession(WebApplication.Data)
                    .LimSup <= tamanho_faixa / 2) AND (ultima_resp = 0)) OR
                ((TIWUserSession(WebApplication.Data)
                    .LimInf >= tamanho_faixa / 2) AND (ultima_resp = 1)) then
              begin
                extremo := true;
                Xn := TIWUserSession(WebApplication.Data).LimMed;
                // ** Salvando os pontos para a AS **//
                SetLength(MvarIntra[AuxSalvai], PontoIntra + 1);
                SetLength(MvarIntra[AuxSalvai, PontoIntra], 3);
                TIWUserSession(WebApplication.Data)
                  .MvarIntra[AuxSalvai, PontoIntra, 2] := Xn;
                if rdgrpBisec.ItemIndex <> 2 then
                begin
                  TIWUserSession(WebApplication.Data)
                    .MvarIntra[AuxSalvai, PontoIntra, 0] := (VAI + VBI) * 0.5;
                  MvarIntra[AuxSalvai, PontoIntra, 1] :=
                    (Xn + MvarIntra[AuxSalvai, PontoIntra, 0]) * 0.5;
                end
                else
                begin
                  MvarIntra[AuxSalvai, PontoIntra, 0] := ((Xn + VAI) * 0.5);
                  MvarIntra[AuxSalvai, PontoIntra, 1] := (Xn + VBI) * 0.5;
                end;
                /// //////////////////////////////////////////////////////////////////////////////
              end;
            end;

            if Typeofcrit[j] = 0 then
            begin
              if ((TIWUserSession(WebApplication.Data)
                    .LimSup <= tamanho_faixa / 2) AND (ultima_resp = 1)) OR
                ((TIWUserSession(WebApplication.Data)
                    .LimInf >= tamanho_faixa / 2) AND (ultima_resp = 0)) then
              begin
                extremo := true;
                Xn := TIWUserSession(WebApplication.Data).LimMed;
                // ** Salvando os pontos para a AS **//
                SetLength(MvarIntra[AuxSalvai], PontoIntra + 1);
                SetLength(MvarIntra[AuxSalvai, PontoIntra], 3);
                TIWUserSession(WebApplication.Data)
                  .MvarIntra[AuxSalvai, PontoIntra, 2] := Xn;
                if rdgrpBisec.ItemIndex <> 2 then
                begin
                  TIWUserSession(WebApplication.Data)
                    .MvarIntra[AuxSalvai, PontoIntra, 0] := (VAI + VBI) * 0.5;
                  MvarIntra[AuxSalvai, PontoIntra, 1] :=
                    (Xn + MvarIntra[AuxSalvai, PontoIntra, 0]) * 0.5;
                end
                else
                begin
                  MvarIntra[AuxSalvai, PontoIntra, 0] := ((Xn + VAI) * 0.5);
                  MvarIntra[AuxSalvai, PontoIntra, 1] := (Xn + VBI) * 0.5;
                end;
                /// //////////////////////////////////////////////////////////////////////////////
              end;
            end;

          end; // if contadorponto = ponto 0,5

          if extremo = false then
          begin
            TIWUserSession(WebApplication.Data).Xn :=
              (abs(TIWUserSession(WebApplication.Data).ValorB + TIWUserSession
                  (WebApplication.Data).ValorA)) * 0.5;
            // ** Salvando os pontos para a AS **//
            SetLength(MvarIntra[AuxSalvai], PontoIntra + 1);
            SetLength(MvarIntra[AuxSalvai, PontoIntra], 3);
            MvarIntra[AuxSalvai, PontoIntra, 2] := Xn;
            MvarIntra[AuxSalvai, PontoIntra, 0] := ((Xn + VAI) * 0.5);
            MvarIntra[AuxSalvai, PontoIntra, 1] := (Xn + VBI) * 0.5;
            /// //////////////////////////////////////////////////////////////////////////////
          end;
          // Se for um dos pontos extremos o Xn é o próprio ponto

        end; // crit cont
      end; // teste de parada para contínuos

      (* PARADA DISCRETOS *)

      if ((TIWUserSession(WebApplication.Data).Typeofcrit[j] = 2) or
          (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 3)) AND
        (AuxParada = true) then
      begin // Se for discreto
        PararDiscretos;
      end; // Critérios discretos

      (* PARADA  CONTÍNUOS *)

      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) or
        (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) then
      begin

        if (AuxParada = true) then
        begin

          parada := true; // criterio de parada atendido, pode parar elicitação do ponto
          cmbbxselectCrit.Enabled := false;
          // garantir que criterio não será alterado
          cmbbxpercent.Enabled := false; // garantir que percent não será alterado
          rdgrpBisec.Enabled := false;
          rgntextoslinear.Visible := false;

          btnOkElicIntra.Enabled := false;
          // btnStopElic.Enabled := false;
          lnkDefinePoint.Enabled := false;
          rgnObrigatorios.Visible := false;
          btnreturnbisec.Visible := false;
          btnNextpoint.Enabled := true;

          TIWUserSession(WebApplication.Data).AuxPonto := Xn; // auxiliar para procedure TTFrmIntraCriterio.btnNextpointClick

          // if (Typeofcrit[I] = 0) OR (Typeofcrit[I] = 1) then
          // begin
          SetLength(matrizdinamica, 3, 2); // salva os tres valores que serão exibidos nas series plotadas dinamicament
          TIWUserSession(WebApplication.Data).matrizdinamica[0, 0] := ValorA;
          TIWUserSession(WebApplication.Data).matrizdinamica[1, 0] := ValorB;
          TIWUserSession(WebApplication.Data).matrizdinamica[2, 0] := Xn;

          case contadorponto of
            0: // b=1
              begin
                matrizdinamica[0, 1] := 0.5;
                matrizdinamica[1, 1] := 0.5;
                TIWUserSession(WebApplication.Data).matrizdinamica[2, 1] := 0.5;
                PontoIntra := 1;
              end;
            1:
              // b=2
              begin
                matrizdinamica[0, 1] := 0.25;
                matrizdinamica[1, 1] := 0.25;
                TIWUserSession(WebApplication.Data).matrizdinamica[2, 1] :=
                  0.25;
                PontoIntra := 2;
              end;
            2:
              // b=3
              begin
                matrizdinamica[0, 1] := 0.75;
                matrizdinamica[1, 1] := 0.75;
                TIWUserSession(WebApplication.Data).matrizdinamica[2, 1] :=
                  0.75;
              end;

          end; // case of

          { ALTERAÇÃO LARISSA 14.07 }
          // PlotaGraphsIntra2; - A rgnGraphIntra não vai ser mais exibida
          btnNextpointClick(Self);

          { begin
            if Idioma = 0 then
            WebApplication.ShowMessage(
            'An admissible range for the elicited point has been found. Select the most appropriate option on the chart.')
            else
            WebApplication.ShowMessage(
            'Um intervalo admissível para o ponto elicitado foi identificado. Selecione a opção mais apropriada do gráfico.');
            end; // showmessage }

          // end; // Se for contínuo

        end // auxParada = true

        (* não entrou no critério de parada *)
        Else

          /// Se não, incrementa e entra no procedimento bissec
          inc(E); // tudo correto e primeira resposta foi dada
        if E > 0 then
        begin

          cmbbxselectCrit.Enabled := false;
          // garantir que criterio não será alterado
          cmbbxpercent.Enabled := false; // garantir que desvio não será alterado

          if ((Typeofcrit[j] = 0) OR (Typeofcrit[j] = 1)) then
          begin
            // if (rdgrpBisec.ItemIndex <> 2) then
            Bisection; // chama procedimento realiza elicitação a partir da segunda pergunta

            if (abs(LimInf - LimSup) >= 10)
            { OR (limMed-BoundMn[I] >=10)) } then
            begin
              Strpadrao := '0';
            end;

            if (abs(LimInf - LimSup) < 10)
            { OR (TIWUserSession(WebApplication.Data).limMed-BoundMn[I] <10)) }
            then
            begin
              Strpadrao := '0.00';
            end;

            BEGIN
              rdgrpBisec.Items.Clear;
              i := AuxSalvai;

              if contadorponto = 0 then // ponto 0,5
              Begin
                if (Typeofcrit[i] = 0) then // CriCont min
                Begin
                  rdgrpBisec.Visible := true;
                  // txtRemarkindif.Visible := true;
                  // lblwhatprefer.Visible := true;
                  lblwhatprefer2.Visible := true;
                  rdgrpBisec.Enabled := true;
                  rdgrpBisec.Items.Clear;

                  if TIWUserSession(WebApplication.Data).Idioma = 0 then
                  begin
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMx[i]) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMn[i]));
                    rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');

                  end // EN
                  else
                  begin
                    rdgrpBisec.Items.Add
                      ('De ' + {FormatFloat(Strpadrao,} rounding(BoundMx[i])
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimMed)
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(BoundMn[i]));
                    rdgrpBisec.Items.Add('Indiferente');
                  end; // PT

                  // Atualização da pergunta cada vez que o usuário responde
                  // pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

                  if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or
                    (Typeofcrit[i] = 4) then
                    // MIN cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Decrease from ' +
                       infoILO + ' or from ' + infoIUP + '?');
                  if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or
                    (Typeofcrit[i] = 5) then
                    // MAX cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Increase from ' +
                       infoILO + ' or from ' + infoIUP + '?');
                end; // if (Typeofcrit=0)

                if (Typeofcrit[i] = 1) then // CriCont max
                Begin
                  rdgrpBisec.Visible := true;
                  // txtRemarkindif.Visible := true;
                  // lblwhatprefer.Visible := true;
                  lblwhatprefer2.Visible := true;
                  rdgrpBisec.Enabled := true;
                  rdgrpBisec.Items.Clear;

                  if TIWUserSession(WebApplication.Data).Idioma = 0 then
                  begin
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMn[i]) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(TIWUserSession(WebApplication.Data).LimMed)
                      );
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMx[i]));
                    rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
                  end // EN
                  else
                  Begin
                    rdgrpBisec.Items.Add
                      ('De ' + {FormatFloat(Strpadrao,} rounding(BoundMn[i])
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimMed)
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(BoundMx[i]));
                    rdgrpBisec.Items.Add('Indiferente');
                  End; // PT

                  // Atualização da pergunta cada vez que o usuário responde
                  // Pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

                  if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or
                    (Typeofcrit[i] = 4) then
                    // MIN cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Decrease from '
                        +  infoILO + ' or from ' + infoIUP + '?');
                  if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or
                    (Typeofcrit[i] = 5) then
                    // MAX cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Increase from '
                        +  infoILO + ' or from ' + infoIUP + '?');

                end; // auxtype=1
              end; // b=0

              if contadorponto = 1 then // ponto 0,25
              begin
                if (Typeofcrit[i] = 0) then // CriCont min
                Begin
                  { LimInf := BoundMx[I];
                    LimSup := x;
                    LimMed := (LimSup + LimInf) * 0.5; }

                  rdgrpBisec.Visible := true;
                  // txtRemarkindif.Visible := true;
                  // lblwhatprefer.Visible := true;
                  lblwhatprefer2.Visible := true;
                  rdgrpBisec.Enabled := true;
                  rdgrpBisec.Items.Clear;

                  if TIWUserSession(WebApplication.Data).Idioma = 0 then
                  begin
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMx[i]) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMd));
                    rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
                  end // EN
                  else
                  begin
                    rdgrpBisec.Items.Add
                      ('De ' + {FormatFloat(Strpadrao,} rounding(BoundMx[i])
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimMed)
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(BoundMd));
                    rdgrpBisec.Items.Add('Indiferente');
                  end; // PT

                  // Atualização da pergunta cada vez que o usuário responde
                  // Pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

                  if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or
                    (Typeofcrit[i] = 4) then
                    // MIN cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Decrease from '
                        +  infoILO + ' or from ' + infoIUP + '?');
                  if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or
                    (Typeofcrit[i] = 5) then
                    // MAX cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Increase from '
                        +  infoILO + ' or from ' + infoIUP + '?');

                end; // if (Typeofcrit=0)

                if (Typeofcrit[i] = 1) then // CriCont max
                Begin
                  { LimInf := BoundMn[I];
                    LimSup := x;
                    LimMed := (LimSup + LimInf) * 0.5; }

                  rdgrpBisec.Visible := true;
                  // txtRemarkindif.Visible := true;
                  // lblwhatprefer.Visible := true;
                  lblwhatprefer2.Visible := true;
                  rdgrpBisec.Enabled := true;
                  rdgrpBisec.Items.Clear;

                  if TIWUserSession(WebApplication.Data).Idioma = 0 then
                  begin
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMn[i]) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMd));
                    rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
                  end // EN
                  else
                  Begin
                    rdgrpBisec.Items.Add
                      ('De ' + {FormatFloat(Strpadrao,} rounding(BoundMn[i])
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimMed)
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(BoundMd));
                    rdgrpBisec.Items.Add('Indiferente');
                  End; // PT

                  // Atualização da pergunta cada vez que o usuário responde
                  // Pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

                  if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or
                    (Typeofcrit[i] = 4) then
                    // MIN cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Decrease from '
                        +  infoILO + ' or from ' + infoIUP + '?');
                  if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or
                    (Typeofcrit[i] = 5) then
                    // MAX cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Increase from '
                        +  infoILO + ' or from ' + infoIUP + '?');

                end; // if (Typeofcrit=1)
              end; // b=1

              if contadorponto = 2 then // ponto 0,75
              begin
                if (Typeofcrit[i] = 0) then // CriCont min
                Begin
                  { LimInf := BoundMd;
                    LimSup := BoundMn[I];
                    LimMed := (LimSup + LimInf) * 0.5; }

                  rdgrpBisec.Visible := true;
                  // txtRemarkindif.Visible := true;
                  // lblwhatprefer.Visible := true;
                  lblwhatprefer2.Visible := true;
                  rdgrpBisec.Enabled := true;
                  rdgrpBisec.Items.Clear;

                  if TIWUserSession(WebApplication.Data).Idioma = 0 then
                  begin
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMd) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMn[i]));
                    rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
                  end // EN
                  else
                  Begin
                    rdgrpBisec.Items.Add
                      ('De ' + {FormatFloat(Strpadrao,} rounding(BoundMd)
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimMed)
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(BoundMn[i]));
                    rdgrpBisec.Items.Add('Indiferente');
                  End; // PT 222

                  // Atualização da pergunta cada vez que o usuário responde
                  // Pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

                  if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or
                    (Typeofcrit[i] = 4) then
                    // MIN cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Decrease from '
                        +  infoILO + ' or from ' + infoIUP + '?');
                  if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or
                    (Typeofcrit[i] = 5) then
                    // MAX cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Increase from '
                        +  infoILO + ' or from ' + infoIUP + '?');

                end; // if (Typeofcrit=0)

                if (Typeofcrit[i] = 1) then // CriCont max
                Begin
                  { LimInf := BoundMd;
                    LimSup := BoundMx[I];
                    LimMed := (LimSup + LimInf) * 0.5; }

                  rdgrpBisec.Visible := true;
                  // txtRemarkindif.Visible := true;
                  // lblwhatprefer.Visible := true;
                  lblwhatprefer2.Visible := true;
                  rdgrpBisec.Enabled := true;
                  rdgrpBisec.Items.Clear;

                  if TIWUserSession(WebApplication.Data).Idioma = 0 then
                  begin
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMd) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add
                      ('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + {FormatFloat
                        (Strpadrao,} rounding(LimMed) + ' to ' + {FormatFloat
                        (Strpadrao,} rounding(BoundMx[i]));
                    rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
                  end // EN
                  else
                  Begin
                    rdgrpBisec.Items.Add
                      ('De ' + {FormatFloat(Strpadrao,} rounding(BoundMd)
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(LimMed));
                    // valores A, Xn, B tem que ser
                    rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimMed)
                        + ' até ' + {FormatFloat(Strpadrao,} rounding(BoundMx[i]));
                    rdgrpBisec.Items.Add('Indiferente');
                  End; // PT

                  // Atualização da pergunta cada vez que o usuário responde
                  // Pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

                  if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or
                    (Typeofcrit[i] = 4) then
                    // MIN cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Decrease from '
                        +  infoILO + ' or from ' + infoIUP + '?');
                  if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or
                    (Typeofcrit[i] = 5) then
                    // MAX cont e disc
                    lblwhatprefer2.caption := (
                      'What brings you greater increase in value: Increase from '
                        +  infoILO + ' or from ' + infoIUP + '?');

                end; // if (Typeofcrit=1)
              end; // b=2

              { Incrementa o contador ponto para os casos de indiferença - para indicar a posição certa na próxima resposta }
              if rdgrpBisec.ItemIndex = 2 then
                inc(contadorponto);

            end; // if E>0
          end; // if (LimSup-LimInf)<=

        end; // se for contínuo - parada ou não

      end; // gerar perguntas contínuos

    end;

    // lblDef2.Visible := true;
    // lnkDefinePoint.Visible := true;
    // TIWHelpIntDef.Visible := true;

    SalvarBdIntra(3);
    rdgrpBisec.ItemIndex := -1;

    if (rgnGraphIntra.Visible) and (cmbbxselectCrit.Items.Count = 1) then
    begin
      btnnextcrit.Font.Fontname := 'Verdana';
      btnnextcrit.Font.Size := 10;
      btnnextcrit.Font.Style := [fsbold];
      btnnextcrit.Width := 160;
      btnnextcrit.caption := 'Continue';
    end;
    /// Salva no BDIntra percentual escolhido pro crit e se o crit pasou pela bisseção

  END; // user session

end;

procedure TTFrmIntraCriterio.PararDiscretos;
begin
  cmbbxselectCrit.Enabled := true;

  rdgrpBisec.Enabled := false;
  rgntextoslinear.Visible := false;

  btnOkElicIntra.Enabled := false;
  // btnStopElic.Enabled := false;
  lnkDefinePoint.Enabled := false;
  rgnObrigatorios.Visible := false;
  btnreturnbisec.Visible := false;
  btnNextpoint.Enabled := true;

  with TIWUserSession(WebApplication.Data) do
  begin

    { if Idioma = 0 then
      WebApplication.ShowMessage(
      'An admissible range for the elicited point has been found. Select the most appropriate option on the chart.')
      else
      WebApplication.ShowMessage(
      'Um intervalo admissível para o ponto elicitado foi identificado. Selecione a opção mais apropriada do gráfico.');
      // end; // showmessage }

    // liberando componentes

    rdgrpbehav.Visible := false;
    rgnGraphIntra.Visible := false;
    ChartIntra.Visible := false;
    chrtbar.Visible := true;
    btnreturnbisec.Visible := false;
    imgseries.Hide;

    // rgnObrigatorios.Visible := true;
    rdgrpBisec.Enabled := true;
    rgntextoslinear.Visible := true;
    // chrtRangeintra.Visible:= false;
    // imgrangesintra.visible:= false;

    rdgrpBisec.ItemIndex := -1;
    btnOkElicIntra.Enabled := true;
    lnkDefinePoint.Enabled := true;
    rdgrpBisec.Items.Clear;
    cmbbxselectCrit.Enabled := true;
    cmbbxpercent.Enabled := true;
    cmbbxpercent.ItemIndex := 2;
    // rdgrpbehav.Visible:= false;
    rdgrpBisec.DestroyComponents;
    // btnNextp.Enabled:= false;
    btnnextcrit.Visible := true;
    btnreturnbisec.Visible := false; // quando é pra passar pro crit seguinte, o btn de retorno não aparece
    btnNextpoint.Visible := false;
    rgnObrigatorios.Visible := false;
    btnbargraph.Visible := false;
    btnlinegraph.Visible := false;
    rgntextoslinear.Visible := false;

  end; // UserSession

  PlotaValueFunction;
end;

procedure TTFrmIntraCriterio.GerarPergDiscretos;
var
  j, t, i: integer;
  AuxMin, AuxMax, AuxMed, Nivel: integer;
  infoILO, infoIUP : string;

  procedure PreencherRdgrp;
  var
    i, Count: integer;
  begin
    rdgrpBisec.Visible := true;
    // txtRemarkindif.Visible := true;
    // lblwhatprefer.Visible := true;
    lblwhatprefer2.Visible := true;
    rdgrpBisec.Enabled := true;
    rdgrpBisec.Items.Clear;

    (* Discretos: Não tem formato padrão 0.00 *)
    if TIWUserSession(WebApplication.Data).Idioma = 0 then
    begin
      rdgrpBisec.Items.Add('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + IntToStr
          (AuxMin) + ' to ' + IntToStr(AuxMed));
      // valores A, Xn, B tem que ser
      rdgrpBisec.Items.Add('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + IntToStr
          (AuxMed) + ' to ' + IntToStr(AuxMax));
      rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
    end; // EN

    // Atualização da pergunta cada vez que o usuário responde
    // Pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

    with TIWUserSession(WebApplication.Data) do
    begin
      for i := 0 to NumCrit - 1 do
      begin
        if cmbbxselectCrit.Items.Strings[cmbbxselectCrit.ItemIndex]
          = TIWUserSession(WebApplication.Data).NomeCrit[i] then
        begin
          if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or (Typeofcrit[i] = 4)
            then
            // MIN cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Decrease from ' +
                 infoILO + ' or from ' + infoIUP + '?');
          if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or (Typeofcrit[i] = 5)
            then
            // MAX cont e disc
            lblwhatprefer2.caption := (
              'What brings you greater increase in value: Increase from ' +
                 infoILO + ' or from ' + infoIUP + '?');
        end;
      end;
    end;

    { if TIWUserSession(WebApplication.Data).Idioma = 0 then
      begin
      rdgrpBisec.Items.Add('From ' + inttostr(AuxMin) + ' to ' + inttostr
      (AuxMed) + ' .');
      // valores A, Xn, B tem que ser
      rdgrpBisec.Items.Add('From ' + inttostr(AuxMed) + ' to ' + inttostr
      (AuxMax) + ' .');
      rdgrpBisec.Items.Add('Indifferent.');
      end // EN
      else
      Begin
      rdgrpBisec.Items.Add('De ' + inttostr(AuxMin) + ' até ' + inttostr
      (AuxMed) + ' .');
      // valores A, Xn, B tem que ser
      rdgrpBisec.Items.Add('De ' + inttostr(AuxMed) + ' até ' + inttostr
      (AuxMax) + ' .');
      rdgrpBisec.Items.Add('Indiferente.');
      End; // PT; }
  end; // Preencher RadioGroup

  procedure PlotaRangeDisc;
  var
    ponto: real;
    auxpontos, teste: array of real;
    i: integer;
  begin
    with TIWUserSession(WebApplication.Data) do
    begin

      chrtRangeintra.View3D := false;
      chrtRangeintra.bottomaxis.Visible := true;
      chrtRangeintra.bottomaxis.title.Font.Size := 8;
      chrtRangeintra.LeftAxis.Visible := false;
      chrtRangeintra.title.Visible := false;
      chrtRangeintra.legend.Visible := false;
      chrtRangeintra.RightAxis.Items.Clear;
      chrtRangeintra.LeftAxis.Items.Clear;
      chrtRangeintra.bottomaxis.Items.Clear;
      chrtRangeintra.Series[0].Clear;
      chrtRangeintra.Series[1].Clear;

      { if Typeofcrit[J] = 2 then
        begin
        ponto := Niveis[J] - AuxMed;
        teste[0] := Niveis[J];
        teste[1] := AuxMed;
        teste[2] := 1;
        end;
        if Typeofcrit[J] = 3 then
        begin
        ponto := AuxMed - 1;
        teste[0] := 1;
        teste[1] := AuxMed;
        teste[2] := Niveis[J];
        end; }

      chrtRangeintra.Series[1].addxy(abs(AuxMed - AuxMin), j, '' + trescasas(AuxMed), clWebORANGE); // seta laranja
      chrtRangeintra.Series[0].addxy(abs(AuxMax - AuxMin), j, '' + FormatFloat
          (Strpadrao, AuxMax), clwebBLUE); // barra azul

      chrtRangeintra.bottomaxis.Items.Clear;
      SetLength(auxpontos, 3);
      SetLength(teste, 3);
      auxpontos[0] := AuxMin;
      auxpontos[1] := AuxMed;
      auxpontos[2] := AuxMax;
      teste[0] := 0;
      teste[1] := abs(AuxMed - AuxMin);
      teste[2] := abs(AuxMax - AuxMin);

      for i := 0 to 2 do
        chrtRangeintra.bottomaxis.Items.Add(teste[i], floattostr(auxpontos[i]));

      imgrangesintra.Picture.Bitmap.Assign
        (chrtRangeintra.TeeCreateBitmap(clWebAQUA, rect(0, 0,
            imgrangesintra.Width, imgrangesintra.Height)));

    end; // UserSession
  end; // Proc

begin
  (* Caso o critério selecionado para elicitação seja discreto *)
  (* A primeira pergunta da elicitação vai ser respondida e esse procedimento vai ser chamado para gerar a próxima a partir da quantidade de niveis do critério e da resposta anterior *)

  with TIWUserSession(WebApplication.Data) do
  begin
    j := AuxSalvai;
    SetLength(TIWUserSession(WebApplication.Data).VetFixAuxiliar, 3);
    case Niveis[j] of
      3:
        begin
          SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 3, 2);
          TIWUserSession(WebApplication.Data).matrizfixa[2, 0] := 2;
          SetLength(MvarIntra[AuxSalvai], 1);
          SetLength(MvarIntra[AuxSalvai, 0], 4);
          if seqresp = '0' then
          begin
            matrizfixa[2, 1] := 0.75;
            // Análise de sensibilidade (Variar entre 0,50 e 0,75) - 0,63; 0,56; 0,69;
            // ** Salvando info para a AS **//
            MvarIntra[AuxSalvai, 0, 0] := 0.63;
            MvarIntra[AuxSalvai, 0, 1] := 0.56;
            MvarIntra[AuxSalvai, 0, 2] := 0.69;
            MvarIntra[AuxSalvai, 0, 3] := 0.75;
            /// ////////////////////////////////////////////////////////////////

            VetFixAuxiliar[2] := 2;
          end; // faixa 1

          if seqresp = '1' then
          begin
            matrizfixa[2, 1] := 0.25;
            // Análise de sensibilidade (Variar entre 0,25 e 0,50) - 0,38; 0,44; 0,31;
            // ** Salvando info para a AS **//
            MvarIntra[AuxSalvai, 0, 0] := 0.38;
            MvarIntra[AuxSalvai, 0, 1] := 0.44;
            MvarIntra[AuxSalvai, 0, 2] := 0.31;
            MvarIntra[AuxSalvai, 0, 3] := 0.25;
            /// ////////////////////////////////////////////////////////////////
            VetFixAuxiliar[1] := 2;
          end; // faixa 2

          if seqresp = '2' then
          begin
            matrizfixa[2, 1] := 0.5;
            // Análise de sensibilidade  (Variar entre 0,25 e 0,50 e 0,50 e 0,75) - 0,38; 0,63;
            // ** Salvando info para a AS **//
            SetLength(MvarIntra[AuxSalvai, 0], 3);
            MvarIntra[AuxSalvai, 0, 0] := 0.38;
            MvarIntra[AuxSalvai, 0, 1] := 0.63;
            MvarIntra[AuxSalvai, 0, 3] := 0.5;
            /// ////////////////////////////////////////////////////////////////
            VetFixAuxiliar[0] := 2;
          end; // faixa indiferente
          AuxParada := true;
          Exit;
        end; // 3 níveis

      4:
        begin
          (* PONTO 0,5 *)
          SetLength(MvarIntra[AuxSalvai], 2);
          if Length(seqresp) <= 1 then
          begin

            SetLength(MvarIntra[AuxSalvai, 0], 4);
            SetLength(MvarIntra[AuxSalvai, 1], 4);
          end;

          (* PRIMEIRA RESPOSTA *)
          // FAIXA 1
          if seqresp = '0' then
          begin

            // Gerar 2º pergunta
            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 4;
              AuxMed := 3;
              AuxMax := 1;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 1;
              AuxMed := 2;
              AuxMax := 4;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 4, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[2, 1] := 0.5;
            if Typeofcrit[j] = 2 then // min
            begin
              matrizfixa[2, 0] := 3;
              VetFixAuxiliar[0] := 3;
            end;
            if Typeofcrit[j] = 3 then // max
            begin
              matrizfixa[2, 0] := 2;
              VetFixAuxiliar[0] := 2;
            end;

            TIWUserSession(WebApplication.Data).matrizfixa[3, 1] := 0.75;
            if Typeofcrit[j] = 2 then // min
            begin
              matrizfixa[3, 0] := 2;
              VetFixAuxiliar[2] := 2;
            end;
            if Typeofcrit[j] = 3 then // max
            begin
              matrizfixa[3, 0] := 3;
              VetFixAuxiliar[2] := 3;
            end;

            // v(2) = 0,5
            // v(3) = 0,75 - AS próxima perg
            // não elicita 0,25
            // elicita 0,75
            // AS NA PRÓXIMA PERGUNTA

            Exit;
          end;
          (* SEGUNDA RESPOSTA - apenas nos casos em que a 1º resposta foi a faixa 1 *)
          if seqresp = '00' then // 1 - 3 e 1 - 2
          begin
            // Análise de sensibilidade (Variar entre 0,25 e 0,50); 0,38; 0,31; 0,44;
            MvarIntra[AuxSalvai, 0, 0] := 0.38;
            MvarIntra[AuxSalvai, 0, 1] := 0.31;
            MvarIntra[AuxSalvai, 0, 2] := 0.44;
            MvarIntra[AuxSalvai, 0, 3] := 0.5;
          end;

          if seqresp = '02' then // 1-3 e indiferente
          begin
            // Análise de sensibilidade (Variar entre 0,25 e 0,50 e 0,50 e 0,75) - 0,38; 0,63
            SetLength(MvarIntra[AuxSalvai, 0], 3);
            MvarIntra[AuxSalvai, 0, 0] := 0.38;
            MvarIntra[AuxSalvai, 0, 1] := 0.63;
            MvarIntra[AuxSalvai, 0, 2] := 0.5;
          end;

          if seqresp = '01' then // 1-3 e 2-4
          begin
            // Análise de sensibilidade  (Variar entre 0,50 e 0,75); 0,63; 0,69; 0,56
            MvarIntra[AuxSalvai, 0, 0] := 0.63;
            MvarIntra[AuxSalvai, 0, 1] := 0.69;
            MvarIntra[AuxSalvai, 0, 2] := 0.56;
            MvarIntra[AuxSalvai, 0, 3] := 0.5;
          end;
          (* PONTO 0,75 - PRIMEIRA PERGUNTA *)
          if (seqresp = '00') or (seqresp = '01') OR (seqresp = '02') then
          begin
            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 3;
              AuxMed := 2;
              AuxMax := 1;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 2;
              AuxMed := 3;
              AuxMax := 4;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;
            Exit;
          end;

          (* PONTO 0,75 - PRIMEIRA RESPOSTA *)
          // indiferente para o ponto 0,75
          if (seqresp = '002') or (seqresp = '012') OR (seqresp = '022') then
          begin
            // Análise de sensibilidade (Variar entre 0,5e 0,75 e 0,75 e 1) - 0,63; 0,88;
            AuxParada := true;
            SetLength(MvarIntra[AuxSalvai, 1], 3);
            MvarIntra[AuxSalvai, 1, 0] := 0.63;
            MvarIntra[AuxSalvai, 1, 1] := 0.88;
            MvarIntra[AuxSalvai, 1, 2] := 0.75;
          end;
          // faixa 1 para o ponto 0,75
          if (seqresp = '000') or (seqresp = '010') OR (seqresp = '020') then
          begin
            // Análise de sensibilidade (Variar entre 0,5 e 0,75); 0,63; 0,69; 0,56 - 0,63; 0,88;
            AuxParada := true;
            MvarIntra[AuxSalvai, 1, 0] := 0.63;
            MvarIntra[AuxSalvai, 1, 1] := 0.69;
            MvarIntra[AuxSalvai, 1, 2] := 0.56;
            MvarIntra[AuxSalvai, 1, 3] := 0.75;
          end;
          // Faixa 2 para o ponto 0,75
          if (seqresp = '001') or (seqresp = '011') OR (seqresp = '021') then
          begin
            // Análise de sensibilidade (Variar entre 0,75 e 1); 0,88; 0,81; 0,94. - 0,63; 0,88;
            AuxParada := true;
            MvarIntra[AuxSalvai, 1, 0] := 0.88;
            MvarIntra[AuxSalvai, 1, 1] := 0.81;
            MvarIntra[AuxSalvai, 1, 2] := 0.94;
            MvarIntra[AuxSalvai, 1, 3] := 0.75;
          end;

          // FAIXA 2
          if seqresp = '1' then
          begin
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 4, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[2, 1] := 0.5;

            if Typeofcrit[j] = 2 then // min
            begin
              matrizfixa[2, 0] := 2;
              VetFixAuxiliar[0] := 2;
            end;
            if Typeofcrit[j] = 3 then // max
            begin
              matrizfixa[2, 0] := 3;
              VetFixAuxiliar[0] := 3;
            end;

            matrizfixa[3, 1] := 0.25;
            if Typeofcrit[j] = 2 then // min
            begin
              matrizfixa[3, 0] := 3;
              VetFixAuxiliar[1] := 3;
            end;
            if Typeofcrit[j] = 3 then // max
            begin
              matrizfixa[3, 0] := 2;
              VetFixAuxiliar[1] := 2;
            end;

            // nao elicita 0,75
            // elicita 0,25 > gera outra pergunta

            // Pergunta para o ponto 0,25
            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 4;
              AuxMed := 3;
              AuxMax := 2;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 1;
              AuxMed := 2;
              AuxMax := 3;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;

          end;

          if seqresp = '10' then // 1 - 3 e 1 - 2
          begin
            // Análise de sensibilidade (Variar entre 0,25 e 0,50); 0,38; 0,31; 0,44;
            AuxParada := true;
            MvarIntra[AuxSalvai, 0, 0] := 0.63;
            MvarIntra[AuxSalvai, 0, 1] := 0.69;
            MvarIntra[AuxSalvai, 0, 2] := 0.58;
            MvarIntra[AuxSalvai, 0, 3] := 0.5;
          end;

          if seqresp = '12' then // 1-3 e indiferente
          begin
            // Análise de sensibilidade (Variar entre 0,25 e 0,50 e 0,50 e 0,75) - 0,38; 0,63
            AuxParada := true;
            SetLength(MvarIntra[AuxSalvai, 0], 3);
            MvarIntra[AuxSalvai, 0, 0] := 0.38;
            MvarIntra[AuxSalvai, 0, 1] := 0.63;
            MvarIntra[AuxSalvai, 0, 2] := 0.5;
          end;

          if seqresp = '11' then // 1-3 e 2-4
          begin
            // Análise de sensibilidade  (Variar entre 0,50 e 0,75); 0,63; 0,69; 0,56
            AuxParada := true;
            MvarIntra[AuxSalvai, 0, 0] := 0.63;
            MvarIntra[AuxSalvai, 0, 1] := 0.69;
            MvarIntra[AuxSalvai, 0, 2] := 0.56;
            MvarIntra[AuxSalvai, 0, 3] := 0.5;
          end;

          // INDIFERENTE
          if seqresp = '2' then
          begin
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 4, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[2, 1] := 0.5;
            if Typeofcrit[j] = 2 then // min
              matrizfixa[2, 0] := 2;
            if Typeofcrit[j] = 3 then // max
              matrizfixa[2, 0] := 3;

            matrizfixa[3, 1] := 0.25;
            if Typeofcrit[j] = 2 then // min
              matrizfixa[3, 0] := 3;
            if Typeofcrit[j] = 3 then // max
              matrizfixa[3, 0] := 2;

            // Análise de sensibilidade (Variar entre 0,25 e 0,50 e 0,50 e 0,75) - 0,38; 0,63;
            SetLength(MvarIntra[AuxSalvai, 0], 3);
            MvarIntra[AuxSalvai, 0, 0] := 0.38;
            MvarIntra[AuxSalvai, 0, 1] := 0.63;
            MvarIntra[AuxSalvai, 0, 2] := 0.5;
            // nao elicita 0,75
            // elicita 0,25 > gera outra pergunta (para avaliar AS)

            // Pergunta para o ponto 0,25
            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 4;
              AuxMed := 3;
              AuxMax := 2;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 1;
              AuxMed := 2;
              AuxMax := 3;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;

          end;

          (* PONTO 0,25 *)

          (* Segunda resposta - faixa 2 ou indiferente + indiferente *)
          if (seqresp = '12') OR (seqresp = '22') then
          begin
            // 3-4 ou indiferente  e indiferente
            // Análise de sensibilidade (Variar entre 0 e 0,25 e 0,25 e 0,5) - 0,13; 0,38;
            AuxParada := true;
            SetLength(MvarIntra[AuxSalvai, 1], 3);
            MvarIntra[AuxSalvai, 1, 0] := 0.13;
            MvarIntra[AuxSalvai, 1, 1] := 0.38;
            MvarIntra[AuxSalvai, 1, 2] := 0.25;
          end;
          if (seqresp = '10') OR (seqresp = '20') then
          begin
            // 3-4 ou indif e 1-2
            // Análise de sensibilidade (Variar entre 0 e 0,25); 0,13; 0,19; 0,06;
            AuxParada := true;
            MvarIntra[AuxSalvai, 1, 0] := 0.13;
            MvarIntra[AuxSalvai, 1, 1] := 0.19;
            MvarIntra[AuxSalvai, 1, 2] := 0.06;
            MvarIntra[AuxSalvai, 1, 3] := 0.25;
          end;
          if (seqresp = '11') OR (seqresp = '21') then
          begin
            // 3-4 ou indif e 2-3
            // Análise de sensibilidade (Variar entre 0,25 e 0,5); 0,38; 0,31; 0,44
            AuxParada := true;
            MvarIntra[AuxSalvai, 1, 0] := 0.38;
            MvarIntra[AuxSalvai, 1, 1] := 0.31;
            MvarIntra[AuxSalvai, 1, 2] := 0.44;
            MvarIntra[AuxSalvai, 1, 3] := 0.25;
          end;

        end; // 4 níveis

      5:
        begin
          // Setlength(TIWUserSession(WebApplication.Data).matrizfixa, 4, 2);
          SetLength(MvarIntra[AuxSalvai], 2);
          SetLength(MvarIntra[AuxSalvai, 0], 4);
          SetLength(MvarIntra[AuxSalvai, 1], 4);
          (* PONTO 0,5 *)

          (* PONTO 0,5 - 2º RESPOSTA - 1º RESP FOI FAIXA 2 *)
          if (seqresp = '10') or (seqresp = '00') then
          begin
            // A.S da 1º RESPOSTA: (Variar entre 0,5 e 0,25); Pontos de variação (0,38; 0,31; 0,44);
            MvarIntra[AuxSalvai, 0, 0] := 0.38;
            MvarIntra[AuxSalvai, 0, 1] := 0.31;
            MvarIntra[AuxSalvai, 0, 2] := 0.44;
            MvarIntra[AuxSalvai, 0, 3] := 0.5;
          end;

          if (seqresp = '11') or (seqresp = '01') then
          begin
            // A.S da 2º RESPOSTA: (Variar entre 0,5 e 0,75); Pontos de variação (0,63; 0,56; 0,69);
            MvarIntra[AuxSalvai, 0, 0] := 0.63;
            MvarIntra[AuxSalvai, 0, 1] := 0.56;
            MvarIntra[AuxSalvai, 0, 2] := 0.69;
            MvarIntra[AuxSalvai, 0, 3] := 0.5;
          end;
          if (seqresp = '12') or (seqresp = '02') then
          begin
            // A.S da 3º RESPOSTA: (Variar entre 0,25 e 0,50 e 0,50 e 0,75); Pontos de variação (0,38; 0,63);
            SetLength(MvarIntra[AuxSalvai, 0], 3);
            MvarIntra[AuxSalvai, 0, 0] := 0.63;
            MvarIntra[AuxSalvai, 0, 1] := 0.38;
            MvarIntra[AuxSalvai, 0, 2] := 0.5;
          end;

          // FAIXA 1
          if seqresp = '0' then
          begin
            (* Gerar 2º pergunta - para AS *)

            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 5;
              AuxMed := 4;
              AuxMax := 1;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 1;
              AuxMed := 2;
              AuxMax := 5;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;

            // não elicita o ponto 0,25
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 3, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[2, 1] := 0.5;
            if Typeofcrit[j] = 3 then // máx
              matrizfixa[2, 0] := 2;
            if Typeofcrit[j] = 2 then // min
              matrizfixa[2, 0] := 4;

            Exit;

          end; // seqresp 0

          (* SEGUNDA RESPOSTA - casos em que a 1º resposta foi a faixa 1 *)
          { if seqresp = '00' then // 1 - 3 e 1 - 2
            // AS esquerda e parada
            if seqresp = '02' then // 1-3 e indiferente
            // AS meio   e parada
            if seqresp = '01' then // 1-3 e 2-5
            // AS direita e parada }

          (* PONTO 0,75 - PRIMEIRA PERGUNTA *)
          { Independente da segunda resposta, se a faixa 1 foi escolhida, a elicitação do ponto 0,75 é a mesma }
          if (seqresp = '00') OR (seqresp = '01') OR (seqresp = '02') then
          begin

            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 4;
              AuxMed := 2;
              AuxMax := 1;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 2;
              AuxMed := 4;
              AuxMax := 5;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;
            Exit;
          end;

          if (seqresp = '000') OR (seqresp = '010') OR (seqresp = '020') then
          begin
            (* 2º pergunta do ponto 0,75 dado que escolheu a faixa 1 para esse ponto *)

            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 4;
              AuxMed := 3;
              AuxMax := 1;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 2;
              AuxMed := 3;
              AuxMax := 5;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;

            { para todos os casos V(3) = 0,75 }
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 5, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[3, 1] := 0.75;
            matrizfixa[3, 0] := 3;
            matrizfixa[4, 1] := ((0.75 + 1) / 2);

            if Typeofcrit[j] = 3 then // máx
              matrizfixa[4, 0] := 4;
            if Typeofcrit[j] = 2 then // min
              matrizfixa[4, 0] := 2;

            Exit;

          end;
          (* SEGUNDA RESPOSTA PONTO 0,75 - casos em que a 1º resposta foi a faixa 1 *)
          // 00; 01;02: ponto 0,5
          // 00;01;02 : ponto 0,75

          if (seqresp = '0000') OR (seqresp = '0100') OR (seqresp = '0200') then
          begin

            // AS esquerda - : (Variar entre 0,5 e 0,75); Pontos de variação (0,63; 0,56; 0,69);
            AuxParada := true;
            MvarIntra[AuxSalvai, 1, 0] := 0.63;
            MvarIntra[AuxSalvai, 1, 1] := 0.56;
            MvarIntra[AuxSalvai, 1, 2] := 0.69;
            MvarIntra[AuxSalvai, 1, 3] := 0.75;
          end;

          if (seqresp = '0001') OR (seqresp = '0101') OR (seqresp = '0201') then
          begin
            // AS direita - : (Variar entre 0,75 e 1); Pontos de variação (0,88; 0,81; 0,94);
            AuxParada := true;
            MvarIntra[AuxSalvai, 1, 0] := 0.88;
            MvarIntra[AuxSalvai, 1, 1] := 0.81;
            MvarIntra[AuxSalvai, 1, 2] := 0.94;
            MvarIntra[AuxSalvai, 1, 3] := 0.75;
          end;
          if (seqresp = '0002') OR (seqresp = '0102') OR (seqresp = '0202') then
          begin
            // AS centro - : (Variar entre 0,5 e 0,75 e 0,75 e 1); Pontos de variação (0,63; 0,88);
            AuxParada := true;
            SetLength(MvarIntra[AuxSalvai, 1], 3);
            MvarIntra[AuxSalvai, 1, 0] := 0.63;
            MvarIntra[AuxSalvai, 1, 1] := 0.88;
            MvarIntra[AuxSalvai, 1, 2] := 0.75;
          end;

          if (seqresp = '001') OR (seqresp = '011') OR (seqresp = '021') then
          begin
            (* 2º pergunta do ponto 0,75 dado que escolheu a faixa 2 para esse ponto *)
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 5, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[3, 1] := 0.75;
            if Typeofcrit[j] = 3 then // máx
              matrizfixa[3, 0] := 4;
            if Typeofcrit[j] = 2 then // min
              matrizfixa[3, 0] := 2;
            // AS - A.S da 2º RESPOSTA: (Variar entre 0,75 e 1); Pontos de variação (0,88; 0,81; 0,94);
            MvarIntra[AuxSalvai, 1, 0] := 0.88;
            MvarIntra[AuxSalvai, 1, 1] := 0.81;
            MvarIntra[AuxSalvai, 1, 2] := 0.94;
            MvarIntra[AuxSalvai, 1, 3] := 0.75;

            matrizfixa[4, 1] := ((0.75 + 0.5) / 2);
            matrizfixa[4, 0] := 3;

            AuxParada := true;
          end;

          if (seqresp = '002') OR (seqresp = '012') OR (seqresp = '022') then
          begin
            (* 2º pergunta do ponto 0,75 dado que escolheu a faixa indiferente para esse ponto *)
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 5, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[3, 1] := 0.75;
            if Typeofcrit[j] = 3 then // máx
              matrizfixa[3, 0] := 4;
            if Typeofcrit[j] = 2 then // min
              matrizfixa[3, 0] := 2;
            // AS - A.S da 3º RESPOSTA: (Variar entre 0,5 e 0,75 e 0,75 e 1); Pontos de variação (0,63; 0,88);
            AuxParada := true;
            SetLength(MvarIntra[AuxSalvai, 1], 3);
            MvarIntra[AuxSalvai, 1, 0] := 0.63;
            MvarIntra[AuxSalvai, 1, 1] := 0.88;
            MvarIntra[AuxSalvai, 1, 2] := 0.75;
            matrizfixa[4, 1] := ((0.75 + 0.5) / 2);
            matrizfixa[4, 0] := 3;

            AuxParada := true;
          end;

          (* PONTO 0,5 *)
          if seqresp = '1' then
          begin
            (* Gerar 2º pergunta - para AS *)

            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 5;
              AuxMed := 2;
              AuxMax := 1;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 1;
              AuxMed := 4;
              AuxMax := 5;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;
            // não elicita o ponto 0,75
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 3, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[2, 1] := 0.5;
            if Typeofcrit[j] = 3 then // máx
              matrizfixa[2, 0] := 4;
            if Typeofcrit[j] = 2 then // min
              matrizfixa[2, 0] := 2;

            Exit;
          end;

          (* PRIMEIRA PERGUNTA - PONTO 0,25 - dado que no ponto 0,5 escolheu a faixa 2 *)
          if (TIWUserSession(WebApplication.Data).seqresp = '10') OR
            (seqresp = '11') OR (seqresp = '12') then
          begin

            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 5;
              AuxMed := 3;
              AuxMax := 2;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 1;
              AuxMed := 3;
              AuxMax := 4;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;
            Exit;
          end;

          // 2º pergunta ponto 0,25  - dado que a primeira resposta foi a faixa 1
          if (seqresp = '100') OR (seqresp = '110') OR (seqresp = '120') then
          begin
            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 5;
              AuxMed := 4;
              AuxMax := 2;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 1;
              AuxMed := 2;
              AuxMax := 4;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 5, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[3, 1] := 0.25;
            if Typeofcrit[j] = 3 then // max
              matrizfixa[3, 0] := 2;
            if Typeofcrit[j] = 2 then // min
              matrizfixa[3, 0] := 4;

            matrizfixa[4, 1] := ((0.5 + 0.25) / 2);
            matrizfixa[4, 0] := 3;
            Exit;
          end;

          // 2º resposta ponto 0,25  - dado que a primeira resposta foi a faixa 1
          if (seqresp = '1000') OR (seqresp = '1100') OR (seqresp = '1200') then
          begin
            // A.S da 1º RESPOSTA: (Variar entre 0 e 0,25); Pontos de variação (0,13; 0,19; 0,06);
            AuxParada := true;
            MvarIntra[AuxSalvai, 1, 0] := 0.13;
            MvarIntra[AuxSalvai, 1, 1] := 0.19;
            MvarIntra[AuxSalvai, 1, 2] := 0.06;
            MvarIntra[AuxSalvai, 1, 3] := 0.25;
          end;
          if (seqresp = '1001') OR (seqresp = '1101') OR (seqresp = '1201') then
          begin
            // A.S da 2º RESPOSTA: (Variar entre 0,25 e 0,5); Pontos de variação (0,38; 0,31; 0,44);
            AuxParada := true;
            MvarIntra[AuxSalvai, 1, 0] := 0.38;
            MvarIntra[AuxSalvai, 1, 1] := 0.31;
            MvarIntra[AuxSalvai, 1, 2] := 0.44;
            MvarIntra[AuxSalvai, 1, 3] := 0.25;
          end;
          if (seqresp = '1002') OR (seqresp = '1102') OR (seqresp = '1202') then
          begin
            // A.S da 3º RESPOSTA: (Variar entre 0 e 0,25 e 0,25 e 0,5); Pontos de variação (0,13; 0,38);
            TIWUserSession(WebApplication.Data).AuxParada := true;
            SetLength(MvarIntra[AuxSalvai, 1], 3);
            MvarIntra[AuxSalvai, 1, 0] := 0.13;
            MvarIntra[AuxSalvai, 1, 1] := 0.38;
            MvarIntra[AuxSalvai, 1, 2] := 0.25;

          end;
          // 2º pergunta ponto 0,25  - dado que a primeira resposta foi a faixa 2
          if (seqresp = '101') OR (seqresp = '111') OR (seqresp = '121') then
          begin
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 4, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[3, 1] := 0.25;
            matrizfixa[3, 0] := 3;
            { matrizfixa[4, 1] := (0.25 / 2);
              matrizfixa[4, 0] := 2; }
            // A.S da 2º RESPOSTA: (Variar entre 0,25 e 0,5); Pontos de variação (0,38; 0,31; 0,44)
            MvarIntra[AuxSalvai, 1, 0] := 0.38;
            MvarIntra[AuxSalvai, 1, 1] := 0.31;
            MvarIntra[AuxSalvai, 1, 2] := 0.44;
            MvarIntra[AuxSalvai, 1, 3] := 0.25;

            AuxParada := true;
          end;

          // 2º pergunta ponto 0,25  - dado que a primeira resposta foi indiferente
          if (seqresp = '102') OR (seqresp = '112') OR (seqresp = '122') then
          begin
            SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 4, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[3, 1] := 0.25;
            matrizfixa[3, 0] := 3;
            { matrizfixa[4, 1] := (0.25 / 2);
              matrizfixa[4, 0] := 2; }
            // A.S da 3º RESPOSTA: (Variar entre 0 e 0,25 e 0,25 e 0,5); Pontos de variação (0,13; 0,38);
            SetLength(MvarIntra[AuxSalvai, 1], 3);
            MvarIntra[AuxSalvai, 1, 0] := 0.13;
            MvarIntra[AuxSalvai, 1, 1] := 0.38;
            MvarIntra[AuxSalvai, 1, 2] := 0.25;
            AuxParada := true;
          end;

          (* SEGUNDA PERGUNTA - PONTO 0,25 - dado que no ponto 0,5 escolheu a indiferença *)
          // 2º resposta ponto 0,25  - dado que a primeira resposta foi a faixa 1
          // Para todos esses casos faz a elicitação do ponto 0,75
          if (seqresp = '200') OR (seqresp = '210') OR (seqresp = '220') then
          begin
            // A.S da 1º RESPOSTA: (Variar entre 0 e 0,25); Pontos de variação (0,13; 0,19; 0,06);
            MvarIntra[AuxSalvai, 1, 0] := 0.13;
            MvarIntra[AuxSalvai, 1, 1] := 0.19;
            MvarIntra[AuxSalvai, 1, 2] := 0.06;
            MvarIntra[AuxSalvai, 1, 3] := 0.25;
          end;
          if (seqresp = '201') OR (seqresp = '211') OR (seqresp = '221') then
          begin
            // A.S da 2º RESPOSTA: (Variar entre 0,25 e 0,5); Pontos de variação (0,38; 0,31; 0,44);
            MvarIntra[AuxSalvai, 1, 0] := 0.38;
            MvarIntra[AuxSalvai, 1, 1] := 0.31;
            MvarIntra[AuxSalvai, 1, 2] := 0.44;
            MvarIntra[AuxSalvai, 1, 3] := 0.25;
          end;
          if (seqresp = '202') OR (seqresp = '212') OR (seqresp = '222') then
          begin
            // A.S da 3º RESPOSTA: (Variar entre 0 e 0,25 e 0,25 e 0,5); Pontos de variação (0,13; 0,38);
            SetLength(MvarIntra[AuxSalvai, 1], 3);
            MvarIntra[AuxSalvai, 1, 0] := 0.13;
            MvarIntra[AuxSalvai, 1, 1] := 0.38;
            MvarIntra[AuxSalvai, 1, 2] := 0.25;
          end;

          // 1º resposta 0,5 - indiferente //1º pergunta 0,25
          if seqresp = '2' then
          begin
            SetLength(matrizfixa, 5, 2);
            TIWUserSession(WebApplication.Data).matrizfixa[2, 1] := 0.5;
            matrizfixa[2, 0] := 3;
            TIWUserSession(WebApplication.Data).matrizfixa[3, 1] := 0.25;
            TIWUserSession(WebApplication.Data).matrizfixa[4, 1] := 0.75;
            if Typeofcrit[j] = 2 then
            begin
              matrizfixa[3, 0] := 4;
              matrizfixa[4, 0] := 2;
            end; // min
            if Typeofcrit[j] = 3 then
            begin
              matrizfixa[3, 0] := 2;
              matrizfixa[4, 0] := 4;
            end; // min

            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 5;
              AuxMed := 4;
              AuxMax := 3;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 1;
              AuxMed := 2;
              AuxMax := 3;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;

          end;

          // 1º resposta ponto 0,25 dado que a faixa indiferente foi escolhida para o ponto 0,5
          if seqresp = '20' then
          begin
            // A.S da 1º RESPOSTA: (Variar entre 0 e 0,25); Pontos de variação (0,13; 0,19; 0,06);
            MvarIntra[AuxSalvai, 1, 0] := 0.13;
            MvarIntra[AuxSalvai, 1, 1] := 0.19;
            MvarIntra[AuxSalvai, 1, 2] := 0.06;
            MvarIntra[AuxSalvai, 1, 3] := 0.25;
          end;
          if seqresp = '21' then
          begin
            // A.S da 2º RESPOSTA: (Variar entre 0,25 e 0,5); Pontos de variação (0,38; 0,31; 0,44);
            MvarIntra[AuxSalvai, 1, 0] := 0.38;
            MvarIntra[AuxSalvai, 1, 1] := 0.31;
            MvarIntra[AuxSalvai, 1, 2] := 0.44;
            MvarIntra[AuxSalvai, 1, 3] := 0.25;
          end;
          if seqresp = '22' then
          begin
            // A.S da 3º RESPOSTA: (Variar entre 0 e 0,25 e 0,25 e 0,5); Pontos de variação (0,13; 0,38);
            SetLength(MvarIntra[AuxSalvai, 1], 3);
            MvarIntra[AuxSalvai, 1, 0] := 0.13;
            MvarIntra[AuxSalvai, 1, 1] := 0.38;
            MvarIntra[AuxSalvai, 1, 2] := 0.25;
          end;
          // 1º pergunta do ponto 0,75 dado que no ponto 0,5 escolheu a faixa indiferente e independente da resposta pra o ponto 0,25
          if (seqresp = '20') OR (seqresp = '21') OR (seqresp = '22') then
          begin
            if Typeofcrit[j] = 2 then // minimização
            begin
              AuxMin := 3;
              AuxMed := 2;
              AuxMax := 1;
            end;
            if Typeofcrit[j] = 3 then
            begin
              AuxMin := 3;
              AuxMed := 4;
              AuxMax := 5;
            end;
            // maximização

            PreencherRdgrp;
            PlotaRangeDisc;
          end;

          if Length(seqresp) > 1 then
            if seqresp[1] = '2' then
            begin
              SetLength(MvarIntra[AuxSalvai], 3);
              SetLength(MvarIntra[AuxSalvai, 2], 4);
            end;
          // 1º resposta do ponto 0,75 - FAIXA 1 -  dado que no ponto 0,5 escolheu a faixa indiferente e independente da resposta pra o ponto 0,25
          if (seqresp = '200') OR (seqresp = '210') OR (seqresp = '220') then
          begin
            // A.S da 1º RESPOSTA: (Variar entre 0,5 e 0,75); Pontos de variação (0,63; 0,56; 0,69);
            AuxParada := true;
            MvarIntra[AuxSalvai, 2, 0] := 0.63;
            MvarIntra[AuxSalvai, 2, 1] := 0.56;
            MvarIntra[AuxSalvai, 2, 2] := 0.69;
            MvarIntra[AuxSalvai, 2, 3] := 0.75;
          end;
          // 1º resposta do ponto 0,75 - FAIXA 2
          if (seqresp = '201') OR (seqresp = '211') OR (seqresp = '221') then
          begin
            // A.S da 2º RESPOSTA: (Variar entre 0,75 e 1); Pontos de variação (0,88; 0,81; 0,94);
            AuxParada := true;
            MvarIntra[AuxSalvai, 2, 0] := 0.88;
            MvarIntra[AuxSalvai, 2, 1] := 0.81;
            MvarIntra[AuxSalvai, 2, 2] := 0.94;
            MvarIntra[AuxSalvai, 2, 3] := 0.75;
          end;
          if (seqresp = '202') OR (seqresp = '212') OR (seqresp = '222') then
          begin
            // A.S da 3º RESPOSTA: (Variar entre 0,5 e 0,75 e 0,75 e 1); Pontos de variação (0,63; 0,88);
            AuxParada := true;
            SetLength(MvarIntra[AuxSalvai, 2], 3);
            MvarIntra[AuxSalvai, 2, 0] := 0.63;
            MvarIntra[AuxSalvai, 2, 1] := 0.88;
            MvarIntra[AuxSalvai, 2, 2] := 0.75;
          end;

        end; // 5 níveis
    end; // case of
  end; // user session
end; // procedure

procedure TTFrmIntraCriterio.btnokinfos1Click(Sender: TObject);
/// botão da rgn acionada no link "about intra-criteria", acionado quando o usuário
/// deseja fechar a janela que contem as informações sobre essa parte do sistema
var
  i, contvi, ind, u: integer;

begin
  with TIWUserSession(WebApplication.Data) do

  begin
    SetLength(DinamVerificaIntra, NumCrit);
    contvi := 0;
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      if TIWUserSession(WebApplication.Data).DinamVerificaIntra[i] = true then
      begin
        inc(contvi);
        continue; // testar
      end;
    end;
    if contvi = 0 then // nenhum true = não tem mais obrigatórios
    begin
      { lnkStopElicit.Visible := true;
        IWLink7.Visible := true;
        TIWHelpLink7.Visible := true; }
    end;
    if contvi <> 0 then // tem algum crit obrigatório não elicitado
    begin
      IWLink1.Visible := false;
      IWLink7.Visible := false;
      TIWHelpLink7.Visible := false;
    end; // if dinamico= false

    rgnInfosIntra.Visible := false;
    txtMsgObrigatorios.Visible := true;
    grdObrigatorios.Visible := true;
    txtSemObrigatorios.Visible := false;
    // rgnObrigatorios.Visible := true;
  end;
end;

procedure TTFrmIntraCriterio.lnkLinearClick(Sender: TObject);
{ ALTERAÇÃO EM 15.02.22 }
/// Usuario quis declarar um criterio como func linear direto, passando para  a elicitação do próximo
var
  j, it, i, contvi, ind, u: integer;
  nomc: string;
  Zmax, Zmin: Double;
  matriztestesnormal: array of array of Double;

begin

  with TIWUserSession(WebApplication.Data) do

  begin
    rgnlegendranges.Visible := false;
    IWLabel4.Visible := false;
    j := AuxSalvai;
    SetLength(MvarIntra[j], 0);
    EstagioIntra := 1; // algum criterio de fato já foi elicitado- ALTERAÇÃO EM 14.02.22
    SalvarBdIntra(5); // atualizando stage da elicitação intra- ALTERAÇÃO EM 14.02.22

    { if TIWUserSession(WebApplication.Data).Ftipo[J] = 1 then
      // o critério já havia sido declarado como linear e o usuário marcou o check
      begin
      TIWUserSession(WebApplication.Data).vtrLinearintra
      [TIWUserSession(WebApplication.Data).auxVtrLI] := J;
      INC(auxVtrLI);
      // preenchido com o índice do vetor
      SalvarBdIntra(2); // salvando vtrLinearintra e vtrchangelinear no BD a partir da referencia id_problem
      end // fim do end Ftipo = 1
      else
      begin // o critério não era linear e vai passar a ser }

        // DESABILITANDO JANELA DE DECISÃO DA "RESET ELICITATION" CASO ESTEJA SENDO MOSTRADA
    rgnresetcrit.Visible := false;

        TIWUserSession(WebApplication.Data).Ftipo[j] := 1;
    // mudei o tipo da função
    TIWUserSession(WebApplication.Data).newFtipo[j] := 1;
    // alteração em 21.02

    TIWUserSession(WebApplication.Data).vtrChangeLin[TIWUserSession(WebApplication.Data).auxVtrCL] := j;
    // preenchido com o índice do vetor que foi alterado
    inc(auxVtrCL);
    SalvarBdIntra(2); // salvando vtrLinearintra e vtrchangelinear no BD a partir da referencia id_problem
    // end; // end if Ftipo <> 1

    // TIWUserSession(WebApplication.Data).VtrcritBisec[j] := false; // forçar que passe no trecho tradicional da normaliza - alteração 21.02.22
    // 28.05.23 - A linha acima foi deixada como comentário pois o critério está sendo elicitado se for definido como linear
    SalvarBdIntra(3); // alteração em 21.02.22
    // TIWUserSession(WebApplication.Data).CriCont[J] := 1;
    /// preenche

    /// SALVANDO OS PONTOS DA FUNÇÃO VALOR MARGINAL DO CRITÉRIO QUE FOI DEFINIDO COMO LINEAR (INDIVIDUALMENTE)////
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      if TIWUserSession(WebApplication.Data).NomeCrit[i] = cmbbxselectCrit.Items
        [cmbbxselectCrit.ItemIndex] then
      begin

        if (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 0) or
          (Typeofcrit[i] = 2) or (Typeofcrit[i] = 4) then // Minimização
        begin

          if (Typeofcrit[i] = 2) then
          begin // Minimização Discreto
            TIWUserSession(WebApplication.Data).matrizpontosreais[0, i] := 1;
            TIWUserSession(WebApplication.Data).matrizpontosreais[1, i] :=
              Niveis[i];

            if (Niveis[i] mod 2) = 0 then
            begin // Nº de níveis pares
              TIWUserSession(WebApplication.Data).matrizpontosreais[2, i] :=
                ((matrizpontosreais[0, i] + matrizpontosreais[1, i]) / 2) - 0.5;

              TIWUserSession(WebApplication.Data).matrizpontosreais[3, i] :=
                ((matrizpontosreais[1, i] + matrizpontosreais[2, i]) / 2);

              TIWUserSession(WebApplication.Data).matrizpontosreais[4, i] :=
                ((matrizpontosreais[0, i] + matrizpontosreais[2, i]) / 2);
            end
            else
            begin // Nº de níveis ímpares
            TIWUserSession(WebApplication.Data).matrizpontosreais[2, i] :=
              (matrizpontosreais[0, i] + matrizpontosreais[1, i]) / 2;
            TIWUserSession(WebApplication.Data).matrizpontosreais[3, i] :=
              (matrizpontosreais[1, i] + matrizpontosreais[2, i]) / 2;
            TIWUserSession(WebApplication.Data).matrizpontosreais[4, i] :=
              (matrizpontosreais[0, i] + matrizpontosreais[2, i]) / 2;
            end;

          end
          else // Minimização Contínuos
          begin
            TIWUserSession(WebApplication.Data).matrizpontosreais[0, i] :=
              BoundMn[i];
            TIWUserSession(WebApplication.Data).matrizpontosreais[1, i] :=
              BoundMx[i];
            TIWUserSession(WebApplication.Data).matrizpontosreais[2, i] :=
              (BoundMx[i] + BoundMn[i]) / 2;
            TIWUserSession(WebApplication.Data).matrizpontosreais[3, i] :=
              (BoundMx[i] + matrizpontosreais[2, i]) / 2;
            TIWUserSession(WebApplication.Data).matrizpontosreais[4, i] :=
              (BoundMn[i] + matrizpontosreais[2, i]) / 2;
          end;
        end
        else // Maximização
        begin
          if (Typeofcrit[i] = 3) then
          begin // Maximização Discreto
            TIWUserSession(WebApplication.Data).matrizpontosreais[0, i] := Niveis[i];
            TIWUserSession(WebApplication.Data).matrizpontosreais[1, i] := 1;

            if (Niveis[i] mod 2) = 0 then
            begin // Nº de níveis pares
              TIWUserSession(WebApplication.Data).matrizpontosreais[2, i] :=
                ((matrizpontosreais[0, i] + matrizpontosreais[1, i]) / 2) + 0.5;

              TIWUserSession(WebApplication.Data).matrizpontosreais[3, i] :=
                ((matrizpontosreais[1, i] + matrizpontosreais[2, i]) / 2);

              TIWUserSession(WebApplication.Data).matrizpontosreais[4, i] :=
                ((matrizpontosreais[0, i] + matrizpontosreais[2, i]) / 2);
            end
            else
            begin // Nº de níveis ímpares
              TIWUserSession(WebApplication.Data).matrizpontosreais[2, i] :=
                (matrizpontosreais[0, i] + matrizpontosreais[1, i]) / 2;
            TIWUserSession(WebApplication.Data).matrizpontosreais[2, i] :=
              (matrizpontosreais[0, i] + matrizpontosreais[1, i]) / 2;
            TIWUserSession(WebApplication.Data).matrizpontosreais[3, i] :=
              (matrizpontosreais[1, i] + matrizpontosreais[2, i]) / 2;
            TIWUserSession(WebApplication.Data).matrizpontosreais[4, i] :=
              (matrizpontosreais[0, i] + matrizpontosreais[2, i]) / 2;
            end;

          end
          else // Maximização Contínuos
          begin
            TIWUserSession(WebApplication.Data).matrizpontosreais[0, i] :=
              BoundMx[i];
            TIWUserSession(WebApplication.Data).matrizpontosreais[1, i] :=
              BoundMn[i];
            TIWUserSession(WebApplication.Data).matrizpontosreais[2, i] :=
              (BoundMx[i] + BoundMn[i]) / 2;
            TIWUserSession(WebApplication.Data).matrizpontosreais[3, i] :=
              (BoundMn[i] + matrizpontosreais[2, i]) / 2;
            TIWUserSession(WebApplication.Data).matrizpontosreais[4, i] :=
              (BoundMx[i] + matrizpontosreais[2, i]) / 2;
        end; // for

        end;
      end;
    end;



    /// Indicando que o critério selecionado foi elicitado ao clicar em "Declare as a linear function"
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      if TIWUserSession(WebApplication.Data).NomeCrit[i] = cmbbxselectCrit.Items
        [cmbbxselectCrit.ItemIndex] then
      begin
        TIWUserSession(WebApplication.Data).VtrcritBisec[i] := true;
      end; // if
    end; // for

   ////////////////////////////////////// NORMALIZANDO OS VALORES CASO O USUÁRIO DEFINA O CRITÉRIO COMO LINEAR ///////////////////////////////
   ///   Implementado - 29.05.2024

    with TIWUserSession(WebApplication.Data) do
  begin
    SetLength(TIWUserSession(WebApplication.Data).ConsNorm, TIWUserSession
        (WebApplication.Data).Numalt, TIWUserSession(WebApplication.Data)
        .NumCrit);
    // Setlength(VtrcritBisec, Numcrit);   verificar se após comentario vai dar erro

    for j := 0 to NumCrit - 1 do
      for i := 0 to Numalt - 1 do


        if TIWUserSession(WebApplication.Data).Nomecrit[j] = cmbbxselectCrit.Items[cmbbxselectCrit.ItemIndex] then
        begin
        if TIWUserSession(WebApplication.Data).VtrcritBisec[j] = true then
        begin

          if (TIWUserSession(WebApplication.Data).Niveis[j] = 2) or
            (TIWUserSession(WebApplication.Data).Niveis[j] = 6) or
            (TIWUserSession(WebApplication.Data).Niveis[j] = 7) then
          begin
            TIWUserSession(WebApplication.Data).Ftipo[j] := 1;
          end;

          /// verificar se os criterios DISCRETOS devem seguir uma regra diferente de transformação da escala///
          case TIWUserSession(WebApplication.Data).Ftipo[j] of // função que armazena o vetor dos tipos de FO declaradas na planilha

            1: // procedimento realiza a normalização das consequências considerando a função valor linear ///////////////////////
              begin
                // Normalização para os critérios de maximização //////////////////////
                if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or
                  (Typeofcrit[j] = 3) then
                  TIWUserSession(WebApplication.Data).ConsNorm[i, j] :=
                    (ConsMatrix[i, j] - Min[j]) / (Max[j] - Min[j]);
                /// Normalização para os critérios de minimização //////////////////////
                if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
                  TIWUserSession(WebApplication.Data).ConsNorm[i, j] :=
                    (ConsMatrix[i, j] - Max[j]) / (-Max[j] + Min[j]);
              end;

            2: // procedimento realiza a normalização das consequencias considerando função valor exponencial
              begin
                if Min[j] = 0 then
                  Min[j] := Power(10, -5);
                // O QUE É POWER??
                Zmin := Exp(TIWUserSession(WebApplication.Data)
                    .parA[j] * Min[j]);
                // exponencial do parametro A vezes o valor minimo capturado no criterio
                Zmax := Exp(parA[j] * Max[j]); // Exponencial do parametro A vezes o valor máximo capturado no criterio

                // normalização para os criterios de maximização//
                if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
                  ConsNorm[i, j] :=
                    (Exp(parA[j] * TIWUserSession(WebApplication.Data)
                        .ConsMatrix[i, j]) - Zmin) / (Zmax - Zmin);
                // normalização para os criterios de minimização//
                if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
                  ConsNorm[i, j] := (Exp(parA[j] * ConsMatrix[i, j]) - Zmax) /
                    (Zmin - Zmax);
              end;

            3: // procedimento realiza a normalização das consequencias considerando função valor logaritmica
              begin
                if Min[j] = 0 then
                  Min[j] := Power(10, -5);
                // O QUE É POWER??
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
              end;

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
                  TIWUserSession(WebApplication.Data).ConsNorm[i, j] :=
                    (Exp(-parA[j] / TIWUserSession(WebApplication.Data)
                        .ConsMatrix[i, j]) - Zmax) / (Zmin - Zmax);
                { else
                  ConsNorm[i, j] := 1; }
              end;
          end;

        end; // final dos contadores

        end;


    SetLength(matriztestesnormal, Numalt, NumCrit);
    for i := 0 to Numalt - 1 do
      for j := 0 to NumCrit - 1 do
        matriztestesnormal[i, j] := TIWUserSession(WebApplication.Data)
          .ConsNorm[i, j];

  end;
  // final dos casos

  SalvarBdIntra(1); // chama caso para atualizar ConsNorm dos crits que não passaram pela interpolação


   ///  FINAL DA NORMALIZAÇÃO DE CRITÉRIO LINEAR  ///

    // Chamando botão para gerar a tabela de criterios elicitados
    btncriterioselicitadosClick(Sender);

    /// FIM DE: SALVAMENTO DOS PONTOS DA FUNÇÃO VALOR MARGINAL DO CRITÉRIO QUE FOI DEFINIDO COMO LINEAR (INDIVIDUALMENTE)////

    /// //SALVANDO A ESCOLHA NO CICLO "Declare linear function for all criteria" NO BANCO DE DADOS /////////

    // incrementando quantidade de ciclos'
    inc(TIWUserSession(WebApplication.Data).Nciclos);
        SetLength(TIWUserSession(WebApplication.Data).MatrizInfoElicited,
      TIWUserSession(WebApplication.Data).Nciclos, 5);

//Salvando a contagem dos ciclos em um vetor

SetLength(TIWUserSession(WebApplication.Data).guardaciclos, Nciclos);


  if Length(TIWUserSession(WebApplication.Data).guardaciclos) = 1 then begin
  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] :=  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] + 1;
  end else begin
  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] :=  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-2] + 1;
   TIWUserSession(WebApplication.Data).guardaciclos[0] := 1; //O ciclo inicial sempre será 1
  end;
      // Passando os dados para a matriz de informações elicitadas em tempo real
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 0] := IntToStr(TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1]);
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 1] := cmbbxselectCrit.Items[cmbbxselectCrit.ItemIndex];
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 2] := copy
      (rdgrpBisec.Items[0], 29, 50);
  TIWUserSession(WebApplication.Data).MatrizInfoElicited
    [TIWUserSession(WebApplication.Data).Nciclos - 1, 3] := copy
      (rdgrpBisec.Items[1], 29, 50);
      TIWUserSession(WebApplication.Data).MatrizInfoElicited
      [TIWUserSession(WebApplication.Data).Nciclos - 1, 4] :=
      'Criterion declared as linear';

    // Salvando info da MatrizIntrapontos para a var infoCYCLE e logo em seguida para o Banco de Dados

    //Variável
    for i := 0 to 4 do
    begin
      TIWUserSession(WebApplication.Data).infoCYCLE := TIWUserSession
        (WebApplication.Data).infoCYCLE + TIWUserSession(WebApplication.Data)
        .MatrizInfoElicited[TIWUserSession(WebApplication.Data).Nciclos - 1, i]
        + '/';
    end;

    // Banco de dados
    with UserSession.ZQuery1 do
    begin
      sql.Text := 'UPDATE intracrit SET cycles ="' + TIWUserSession
        (WebApplication.Data).infoCYCLE + '" WHERE id_problem="' +
        (TIWUserSession(WebApplication.Data).ID_Problema)
        + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data).nround)
        + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
          .fvround) + '";';
      ExecSQL;
    end;

    // Zerando a tabela as informações elicitadas em tempo real
    awgcritelicited.RowCount := 0;

    // Desabilitar a tabela dos ciclos
    rgninfoelicited.Visible := false;

    it := cmbbxselectCrit.ItemIndex;
    nomc := cmbbxselectCrit.Items[it];
    cmbbxselectCrit.Items.Delete(it); // excluindo do combo critérios já analisados

    for u := 0 to NumCrit - 1 do
    begin
      if TIWUserSession(WebApplication.Data).NomeCrit[u] = nomc then
        ind := u;
    end;

    begin
      if Idioma = 0 then
        WebApplication.ShowMessage(
          'The criterion was declared linear. Please proceed to the elicitation of the next criterion.')
      else
        WebApplication.ShowMessage(
          'O critério foi declarado como linear. Por favor, siga para a elicitação do próximo critério.');
    end;
    // showmessage

    { ALTERAÇÃO EM 14.02.22 }
    BEGIN
      // o critério z foi elicitado (e vai ser excluido do cmbbx)
      if TIWUserSession(WebApplication.Data).VerificaIntra[ind] = true then
      // se era obrigatório antes (true)
      BEGIN
        TIWUserSession(WebApplication.Data).DinamVerificaIntra[ind] := false;
        // deixou de ser obrigatório pq foi elicitado
        SalvarBdIntra(6); // um crit que era "obrigatório" foi elicitado como linear, atualizando dinverifica e newftipo
      END; // fim alteração 14.02

      contvi := 0;
      for i := 0 to NumCrit - 1 do
      begin
        if TIWUserSession(WebApplication.Data).DinamVerificaIntra[i] = true then
        begin
          inc(contvi);
          continue; // testar
        end;
      end;

    END;

    if contvi = 0 then // nenhum true = não tem mais obrigatórios
    begin
      { lnkStopElicit.Visible := true;
        TIWHelpLink7.Visible := true; }
    end;

    if contvi <> 0 then // tem algum crit obrigatório não elicitado
    begin
      lnkStopElicit.Visible := false;
      TIWHelpLink7.Visible := false;
    end;

    cmbbxselectCrit.ItemIndex := -1; // limapndo todos os componentes da região para nova elicitação
    cmbbxpercent.ItemIndex := 2;
    rdgrpBisec.Items.Clear;
    rdgrpBisec.Enabled := false;
    rdgrpBisec.Visible := true;
    // txtRemarkindif.Visible := false;
    // lblwhatprefer.Visible := false;
    lblwhatprefer2.Visible := false;
    imgrangesintra.Visible := false;

    rgntextoslinear.Visible := false;
    TIWHelpdeclareLin.Visible := false;
    btnOkElicIntra.Visible := false;
    cmbbxselectCrit.Enabled := true;
    cmbbxpercent.Enabled := true;
    txtPoints.Visible := true;

    if cmbbxselectCrit.Items.Count = 0 then
    /// QUANDO não tiver crit, ACABOU ELICINTRA. SEGUE PARA INTERCRIT

    begin // ao invés de ir para a rgn com o link "Go to inter", passa direto para rgn da matriz de conseq

      verificaUnit := -50;
      TfrmEntrada.create(WebApplication).Show;
      rgnElicIntra.Visible := false;
      rgnGraphIntra.Visible := false;

      { salvar o tempo que finalizou a elic intra }
      ETFimIntra := timetostr(now);

      // Salvar nas planilhas Tempos
      // SalvarBdIntra(7);
      // salvando stage intracriterio do problema
      EstagioIntra := 2;
      SalvarBdIntra(5);
    end; // items.count=0

    // ATUALIZANDO OS VALORES DE 1, 0, 0.25, 0.50 E 0.75 PARA O BANCO DE DADOS NA COLUNA "PointsBisec"
    // Atualizando uma variável auxiliar e já atualizando no Banco de Dados
    // Atualizar Variável
    TIWUserSession(WebApplication.Data).infoMatrizPontosReais := '';
    // Zerando
    for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      for i := 0 to 4 do
      begin
        TIWUserSession(WebApplication.Data).infoMatrizPontosReais :=
          TIWUserSession(WebApplication.Data).infoMatrizPontosReais + floattostr
          (TIWUserSession(WebApplication.Data).matrizpontosreais[i, j]) + '/';
      end;
    end;

    // Atualizar Banco de dados
    with UserSession.ZQuery1 do
    begin
      // Atualizando os pontos da função valor no Banco de dados
      sql.Text := 'UPDATE intracrit SET PointsBisec ="' + TIWUserSession
        (WebApplication.Data).infoMatrizPontosReais + '" WHERE id_problem="' +
        (TIWUserSession(WebApplication.Data).ID_Problema)
        + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data).nround)
        + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
          .fvround) + '";';
      ExecSQL;
    end; // UserSession

  end; // webapp
end;


procedure TTFrmIntraCriterio.lnkStopElicitClick(Sender: TObject);
/// link acionado toda vez que o decisor quiser interromper de vez o processo de elicitação intracriterio.
/// Seguindo para a etapa de avaliação Inter.
var
  i, j: integer;

begin
  with TIWUserSession(WebApplication.Data) do
  begin

    cmbbxselectCrit.Enabled := false; // trava todos os componentes chave da região
    cmbbxpercent.Enabled := false;
    rdgrpBisec.Enabled := false;
    btnOkElicIntra.Enabled := false;
    lnkDefinePoint.Enabled := false;
    lnkLinear.Enabled := false;
    rgnConfirmStopElic.Visible := true;

    // advertencia pro que vai encerrar tudo
    // txtRemarkindif.visible:= false;

  end; // UserSession
end;

procedure TTFrmIntraCriterio.lnkviewcritelicitadosClick(Sender: TObject);
begin

  lnkviewcritelicitados.Visible := false;
  btncriterioselicitadosClick(Sender);
  //rgninfocritelicitados.Visible := true;
  rgninfoelicited.Visible := false;
  rgnInfosIntra.Visible := false;

end;

// click true

{ procedure TTFrmIntraCriterio.cmbbxpercentChange(Sender: TObject);
  /// valor percentual declarado como aceito para variação é captado e DA é calculado para
  /// verificar critério de parada na bisseção
  var
  J: integer;
  I: string;

  begin
  With TIWUserSession(WebApplication.Data) do

  begin
  I := cmbbxpercent.Text; // percentual
  J := AuxSalvai; // crit avaliado
  TIWUserSession(WebApplication.Data).Perc := (StrToFloat(I) / 100);
  // passando o valor % pra float
  TIWUserSession(WebApplication.Data).DA := Perc *
  (BoundMx[J] - (TIWUserSession(WebApplication.Data).BoundMn[J]));
  // usa os pontos de max e min das conseqs reais
  end; // usersession
  end; }

procedure TTFrmIntraCriterio.cmbbxselectCritChange(Sender: TObject);
/// ESTE PROCEDIMENTO REALIZA A PRIMEIRA PERGUNTA DA ELICITAÇÃO INTRACRITERIO.
/// SENDO ACIONADO CADA VEZ QUE O USUARIO SELECIONAR UM NOVO CRICONT PARA ELICITAR.

var
  i, j, K, Count: integer;
  TextoSemQuebrasDeLinha, infoILO, infoIUP: string;

  // ValorA, ValorXn, ValorB: Double; // var utilizadas para atualizar range da elicitação

begin
    if (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 2) or (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 3) then
    IWLabel4.Visible := false;
  // Desabilitando informações da intra caso ela esteja sendo mostrada
  rgnInfosIntra.Visible := false;
  // Desabilitando tabela de critelicitados
  rgninfocritelicitados.Visible := false;
  // Habilitando link pra ver tabela critelicitados
  for i := 0 to TIWUserSession(WebApplication.Data).NumCrit do
    if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = true then
    begin
      lnkviewcritelicitados.Visible := true;
    end;

  IWLink1.Visible := false;
  With TIWUserSession(WebApplication.Data) do
  Begin
    contadorponto := 0; // contador global para indicar a troca para ponto seguinte 0-0.5, 1-0.25, 2-0.75.
    // inicializado aqui, pois a cada troca de criterio, ele zera indicando que os 3 pontos reiniciarão
    PontoIntra := 0;
    // Setlength(Auxtypeofcrit, NumCont);
    SetLength(TIWUserSession(WebApplication.Data).matrizfixa, 2, 2);
    // matriz que recebe valores atribuídos a cada ponto elicitado.
    SetLength(TIWUserSession(WebApplication.Data).vtrrangeintra, 2);
    // inicia setada com 2col, 2lin pois recebe os limites max e min das consequencias inputadas

    seqresp := ''; // limpa a string de respostas

    K := 0;

    { ALTERAÇÃO LARISSA 16.06 }
    NumPergRange := 0;

    if cmbbxselectCrit.ItemIndex <> -1 then
    // exibe perguntas da elicitação
    begin
      rdgrpBisec.Items.Clear;

      // I é o índice do critério selecionado
      for i := 0 to NumCrit - 1 do
      begin
        if cmbbxselectCrit.Items.Strings[cmbbxselectCrit.ItemIndex]
          = TIWUserSession(WebApplication.Data).NomeCrit[i] then
        begin
          AuxSalvai := i;

          SetLength(MvarIntra[i], 3);

          // identificando indice do criterio elicitado no momento
          {if Idioma = 0 then
          begin
            TextoSemQuebrasDeLinha := RemoveCaracteresNaoImprimiveis
              (NomeCrit[i]);
            lblwhatprefer.caption := ('Considering the criterion "' +
                TextoSemQuebrasDeLinha + '"comparing the two ranges below,');
            { ALTERAÇÃO LARISSA - INTRA DISCRETOS }
            (* Habilita esses componentes para todos os tipos de critérios *)

            {if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or
              (Typeofcrit[i] = 4) then
              // MIN cont e disc
              lblwhatprefer2.caption := (
                'which range do you prefer to decrease, in order to have a greater increase in the value of the range?');

            if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or
              (Typeofcrit[i] = 5) then
              // MAX cont e disc
              lblwhatprefer2.caption := (
                'which range do you prefer to increase, in order to have a greater increase in the value of the range?');
          end
          // EN

          else

          begin
            lblwhatprefer.caption :=
              ('Considerando o critério "' + NomeCrit[i] +
                '"comparando os dois intervalos abaixo,');

            if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) then
              // MIN cont e disc
              lblwhatprefer2.caption := (
                'qual intervalo você prefere reduzir, a fim de obter um melhor ganho no valor do intervalo?');

            if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) then
              // MAX cont e disc
              lblwhatprefer2.caption := (
                'qual intervalo você prefere aumentar, a fim de obter um melhor ganho no valor do intervalo?');
          end; }
          // PT
          TIWUserSession(WebApplication.Data).vtrrangeintra[0] := TIWUserSession
            (WebApplication.Data).BoundMn[i];
          TIWUserSession(WebApplication.Data).vtrrangeintra[1] := TIWUserSession
            (WebApplication.Data).BoundMx[i];

          // verificando range do criterio, para formatar o numero de casas decimais ao longo dos graficos

          { alteração em 20.02, devolvi casas decimas. avaliar se pode permanecer ou se lógcica
            para o arredondamento deve ser repensada para valores >10 }

          { if BoundMx[i] <=10 then
            begin
            Strpadrao := '0.000';
            end; //if <=10
            if BoundMx[i] >10 then
            begin
            Strpadrao := '0.00';
            end; }

          { ALTERAÇÃO LARISSA - INTRA DISCRETOS }
          (* Habilita esses componentes para todos os tipos de critérios *)

          rdgrpBisec.Visible := true;
          // txtRemarkindif.Visible := true;
          // lblwhatprefer.Visible := true;
          lblwhatprefer2.Visible := true;
          rdgrpBisec.Enabled := true;
          btnOkElicIntra.Visible := true;
          rdgrpBisec.Items.Clear;

          (* Critério Contínuo *)
          if (Typeofcrit[i] = 0) then // CriCont min
          Begin
            TIWUserSession(WebApplication.Data).LimInf := BoundMx[i];
            TIWUserSession(WebApplication.Data).LimSup := BoundMn[i];
            TIWUserSession(WebApplication.Data).LimMed := (LimSup + LimInf) * 0.5;
          end; // if (Typeofcrit=0)

          if (Typeofcrit[i] = 1) then // CriCont max
          Begin
            LimInf := BoundMn[i];
            LimSup := BoundMx[i];
            LimMed := (LimSup + LimInf) * 0.5;
          End; // if (Typeofcrit=1)

          (* Critério Discreto *)
          if (Typeofcrit[i] = 2) then // CriDisc min
          Begin
            LimInf := Niveis[i];
            LimSup := 1;
            if (Niveis[i] mod 2) = 0 then
              // Nº níveis é par
              LimMed := ((LimSup + LimInf) * 0.5) - 0.5
            else // Nº níveis é impar
              LimMed := ((LimSup + LimInf) * 0.5);
          End; // // if (Typeofcrit=2)

          if (Typeofcrit[i] = 3) then // CriDisc max
          Begin
            LimInf := 1;
            LimSup := Niveis[i];
            if (Niveis[i] mod 2) = 0 then
              // Nº níveis é par
              LimMed := ((LimSup + LimInf) * 0.5) + 0.5
            else // Nº níveis é impar
              LimMed := ((LimSup + LimInf) * 0.5);
          end; // if (Typeofcrit=3)

          if (abs(LimInf - LimSup) >= 10)
          { OR (limMed-BoundMn[I] >=10)) } then
          begin
            Strpadrao := '0';
          end;

          if (abs(LimInf - LimSup) < 10)
          { OR (TIWUserSession(WebApplication.Data).limMed-BoundMn[I] <10)) }
          then
          begin
            Strpadrao := '0.00';
          end;

          (* Contínuos: FormatFloat StrPadrão *)
          if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 1) then
          begin
            if TIWUserSession(WebApplication.Data).Idioma = 0 then
            begin
              rdgrpBisec.Items.Add
                ('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + {FormatFloat
                  (Strpadrao,} rounding(LimInf) + ' to ' + {FormatFloat(Strpadrao,} rounding(LimMed)
                );
              // valores A, Xn, B tem que ser
              rdgrpBisec.Items.Add
                ('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + {FormatFloat
                  (Strpadrao,} rounding(LimMed) + ' to ' + {FormatFloat(Strpadrao,} rounding(LimSup)
                );
              rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');

            end // EN
            else
            Begin
              rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimInf)
                  + ' até ' + {FormatFloat(Strpadrao,} rounding(LimMed));
              // valores A, Xn, B tem que ser
              rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimMed)
                  + ' até ' + {FormatFloat(Strpadrao,} rounding(LimSup));
              rdgrpBisec.Items.Add('Indiferente');
            End; // PT

            // Atualização da pergunta cada vez que o usuário responde
            // Pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);


            if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or
              (Typeofcrit[i] = 4) then
              // MIN cont e disc
              lblwhatprefer2.caption := (
                'What brings you greater increase in value: Decrease from ' +
                   infoILO + ' or from ' + infoIUP + '?');
            if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or
              (Typeofcrit[i] = 5) then
              // MAX cont e disc
              lblwhatprefer2.caption := (
                'What brings you greater increase in value: Increase from ' +
                   infoILO + ' or from ' + infoIUP + '?');

          end; // contínuos

          (* Discretos: Não tem formato padrão 0.00 *)
          if (Typeofcrit[i] = 2) OR (Typeofcrit[i] = 3) then
          begin
            if TIWUserSession(WebApplication.Data).Idioma = 0 then
            begin
              rdgrpBisec.Items.Add
                ('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + floattostr(LimInf)
                  + ' to ' + floattostr(LimMed));
              // valores A, Xn, B tem que ser
              rdgrpBisec.Items.Add
                ('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + floattostr(LimMed)
                  + ' to ' + floattostr(LimSup));
              rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent');
            end // EN
            else
            Begin
              rdgrpBisec.Items.Add('De ' + floattostr(LimInf)
                  + ' até ' + floattostr(LimMed));
              // valores A, Xn, B tem que ser
              rdgrpBisec.Items.Add('De ' + floattostr(LimMed)
                  + ' até ' + floattostr(LimSup));
              rdgrpBisec.Items.Add('Indiferente');
            End; // PT

            // Atualização da pergunta cada vez que o usuário responde
            // Pegando dados  do combobox
            infoILO := copy(rdgrpBisec.Items[0], 29, 50);
            infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

            if (Typeofcrit[i] = 0) OR (Typeofcrit[i] = 2) or
              (Typeofcrit[i] = 4) then
              // MIN cont e disc
              lblwhatprefer2.caption := (
                'What brings you greater increase in value: Decrease from ' +
                   infoILO + ' or from ' + infoIUP + '?');
            if (Typeofcrit[i] = 1) OR (Typeofcrit[i] = 3) or
              (Typeofcrit[i] = 5) then
              // MAX cont e disc
              lblwhatprefer2.caption := (
                'What brings you greater increase in value: Increase from ' +
                   infoILO + ' or from ' + infoIUP + '?');

          end; // discretos

          { FIM - ALTERAÇÃO LARISSA - INTRA DISCRETOS }

        end; // if cmbbxSelecCrit.ItemIndex <> -1
      end; // if cmbbxselectCrit.text = nomecrit[i]
    end; // for I := 0 to Numcrit - 1

    TIWUserSession(WebApplication.Data).matrizfixa[0, 0] := LimSup;
    matrizfixa[1, 0] := LimInf;
    matrizfixa[0, 1] := 1;
    matrizfixa[1, 1] := 0;

    lblDef2.Visible := false;
    lnkDefinePoint.Visible := false;
    lnkIntDef.Visible := false;
    TIWHelpIntDef.Visible := false;

    /// define se link que interrompe perguntas da bisseção ficar visível ou não
    { if TIWUserSession(WebApplication.Data).VerificaDefPoint = 0 then
      begin
      // lblDef1.Visible := false;
      lblDef2.Visible := false;
      lnkDefinePoint.Visible := false;
      TIWHelpIntDef.Visible := false;
      end
      else
      begin
      //  lblDef2.Visible := true;
      //   lnkDefinePoint.Visible := true;
      TIWHelpIntDef.Visible := true;
      end; }

    rgntextoslinear.Visible := true;
    TIWHelpdeclareLin.Visible := true;

    imgrangesintra.Visible := true;
    rgnlegendranges.Visible := true;
    lbllegendranges.Visible := true;

    // if (Typeofcrit[I] = 0) OR (Typeofcrit[I] = 1)OR (Niveis[I] = 3) then
    PlotaRangeIntra; // primeiro plote do range exibido nas perguntas da bissec

    /// ///FAZENDO A PERGUNTA AO DECISOR QUANDO UM CRITÉRIO É SELECIONADO////////
    /// ////Explicação: Todos os dados são retirados do combobox abaixo e colocados na label//////////
    // Pegando os dados do Combobox abaixo para adicionar na pergunta
    { infoILO := copy(rdgrpBisec.Items[0], 29, 50);
      infoIUP := copy(rdgrpBisec.Items[1], 29, 50);

      for count:=0 to 50 do //laço para remover o ponto
      begin
      if (infoILO[count]='.') then infoILO[count]:=' ';
      if (infoIUP[count]='.') then infoIUP[count]:='?';
      end;

      //ALTERAÇÃO NA PERGUNTA AO USUÁRIO
      // Explicação: os intervalos colocados na label da pergunta foram retirados do combobox abaixo
      // identificando indice do criterio elicitado no momento
      if Idioma = 0 then
      begin
      //TextoSemQuebrasDeLinha := RemoveCaracteresNaoImprimiveis(NomeCrit[I]);
      {lblwhatprefer.caption :=
      ('Considering the criterion "' + TextoSemQuebrasDeLinha + '"comparing the two intervals below and answer:'); }
    { ALTERAÇÃO LARISSA - INTRA DISCRETOS }
    (* Habilita esses componentes para todos os tipos de critérios *)

    { if (Typeofcrit[I] = 0) OR (Typeofcrit[I] = 2) or (Typeofcrit[I] = 4) then
      // MIN cont e disc
      lblwhatprefer2.caption := (
      'What brings you greater increase in value: Decrease from ' + infoILO + 'or from ' + infoIUP);

      if (Typeofcrit[I] = 1) OR (Typeofcrit[I] = 3) or (Typeofcrit[I] = 5) then
      // MAX cont e disc
      lblwhatprefer2.caption := (
      'What brings you greater increase in value: Increase from ' + infoILO + 'or from ' + infoIUP);
      end
      // EN

      else

      begin
      lblwhatprefer.caption :=
      ('Considerando o critério "' + NomeCrit[I] +
      '"comparando os dois intervalos abaixo,');

      if (Typeofcrit[I] = 0) OR (Typeofcrit[I] = 2) then
      // MIN cont e disc
      lblwhatprefer2.caption := (
      'qual intervalo você prefere reduzir, a fim de obter um melhor ganho no valor do intervalo?');

      if (Typeofcrit[I] = 1) OR (Typeofcrit[I] = 3) then
      // MAX cont e disc
      lblwhatprefer2.caption := (
      'qual intervalo você prefere aumentar, a fim de obter um melhor ganho no valor do intervalo?');
      end;
      // PT
      {FINAL - PERGUNTA }

  end; // UserSession

End;

procedure TTFrmIntraCriterio.English1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\User guide FITradeoff web' + '.pdf', true);
end;

procedure TTFrmIntraCriterio.imgENClick(Sender: TObject);
// criado em 01.03.22- Sistema bilingue
var
  TextoSemQuebrasDeLinha: string;
begin
  With TIWUserSession(WebApplication.Data) do

  begin
    // imgPT.Visible := true;
    // imgPT2.Visible := true;
    imgEN.Visible := false;
    imgEN2.Visible := false;
    TIWUserSession(WebApplication.Data).Idioma := 0;

   { if (TIWUserSession(WebApplication.Data).AuxSalvai <= TIWUserSession
        (WebApplication.Data).NumCrit - 1) and
      (TIWUserSession(WebApplication.Data).AuxSalvai >= 0) then
    // labels com pergunta da bisseção, pois o primeiro lugar que cria é no evento Onchange do cmbbx, então só altera pondo aqui no clique
    begin
      lblwhatprefer.caption := ('Considering the criterion "' +
          TextoSemQuebrasDeLinha { TIWUserSession
          (WebApplication.Data).NomeCrit[AuxSalvai] } //+ '"comparing the two ranges below,');

      {if (TIWUserSession(WebApplication.Data).Typeofcrit[AuxSalvai] = 0) or
        (Typeofcrit[AuxSalvai] = 4) or (Typeofcrit[AuxSalvai] = 2) then
        // CriCont min
        lblwhatprefer2.caption := (
          'which range do you prefer to decrease, in order to have a greater increase in the value of the range?');

      if (TIWUserSession(WebApplication.Data).Typeofcrit[AuxSalvai] = 1) or
        (Typeofcrit[AuxSalvai] = 3) or (Typeofcrit[AuxSalvai] = 5) then
        // CriCont max
        lblwhatprefer2.caption := (
          'which range do you prefer to increase, in order to have a greater increase in the value of the range?');
    end;}

    if VerificaDefPoint = 0 then // primeira pergunta ainda não foi respondida , refaz pergunta pois comando de criação está em evento Onchance
    begin

      rdgrpBisec.Items.Clear;

      (* Discretos: Não tem formato padrão 0.00 *)
      rdgrpBisec.Items.Add('<B>I<SUB>LO</SUB>:</B> ' + 'From ' + {FormatFloat
          (Strpadrao,} rounding(LimInf) + ' to ' + {FormatFloat(Strpadrao,} rounding(LimMed) + '.');
      // valores A, Xn, B tem que ser
      rdgrpBisec.Items.Add('<B>I<SUB>UP</SUB>:</B> ' + 'From ' + {FormatFloat
          (Strpadrao,} rounding(LimMed) + ' to ' + {FormatFloat(Strpadrao,} rounding(LimSup) + '.');
      rdgrpBisec.Items.Add('<B>Ind: </B>' + 'Indifferent.');
      // end // EN

      { rdgrpBisec.Items.Add('From ' + FormatFloat(Strpadrao, LimInf)
        + ' to ' + FormatFloat(Strpadrao, LimMed) + '.');
        // valores A, Xn, B tem que ser
        rdgrpBisec.Items.Add('From ' + FormatFloat(Strpadrao, LimMed)
        + ' to ' + FormatFloat(Strpadrao, LimSup) + '.');
        rdgrpBisec.Items.Add('Indifferent.'); }
    end; // if verificadefpoint
    // até aqui

    Definir_Idioma;

  end;
end;

procedure TTFrmIntraCriterio.imgPTClick(Sender: TObject);
// criado em 01.03.22- Sistema bilingue
begin
  With TIWUserSession(WebApplication.Data) do

  begin
    imgPT.Visible := false;
    imgPT2.Visible := false;
    // imgEN.Visible := true;
    // imgEN2.Visible := true;
    TIWUserSession(WebApplication.Data).Idioma := 1;

    // labels com pergunta da bisseção, pois o primeiro lugar que cria é no evento Onchange do cmbbx, então só altera pondo aqui no clique
    Begin
      lblwhatprefer.caption :=
        ('Considerando o critério "' + NomeCrit[AuxSalvai] +
          '"comparando os dois intervalos abaixo,');

      if (Typeofcrit[AuxSalvai] = 0) then // CriCont min
        lblwhatprefer2.caption := (
          'qual intervalo você prefere reduzir, a fim de obter um melhor ganho no valor do intervalo?');

      if (Typeofcrit[AuxSalvai] = 1) then // CriCont max
        lblwhatprefer2.caption := (
          'qual intervalo você prefere aumentar, a fim de obter um melhor ganho no valor do intervalo?');
    end;

    if VerificaDefPoint = 0 then // primeira pergunta ainda não foi respondida
    begin

      rdgrpBisec.Items.Clear;

      rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimInf)
          + ' até ' + {FormatFloat(Strpadrao,} rounding(LimMed) + ' .');
      // valores A, Xn, B tem que ser
      rdgrpBisec.Items.Add('De ' + {FormatFloat(Strpadrao,} rounding(LimMed)
          + ' até ' + {FormatFloat(Strpadrao,} rounding(LimSup) + ' .');
      rdgrpBisec.Items.Add('Indiferente.');
    end; // if verificadefpoint

    Definir_Idioma;
  end;
end;

procedure TTFrmIntraCriterio.linkinfoelicitingClick(Sender: TObject);
begin
  // Chamando procedimento do Help>About
  btnAboutIntraClick(Sender);
end;

procedure TTFrmIntraCriterio.lnkbackonestepClick(Sender: TObject);
begin
  { PENDENTE }
end;

procedure TTFrmIntraCriterio.lnkcloseinfoClick(Sender: TObject);
begin
  rgninfocritelicitados.Visible := false;
  lnkviewcritelicitados.Visible := true;

  // Caso haja informações elicitadas para o critério atual, mostrar o TIWAdvWebGrid em tempo real
  if awgcritelicited.RowCount >= 1 then
    rgninfoelicited.Visible := true;
end;

procedure TTFrmIntraCriterio.lnkdeclareLinClick(Sender: TObject);
begin
  // WebApplication.ShowMessage(
  // 'By clicking on this option, the value function of the evaluated criterion will be consedered linear, finishing the elicitation for this criterion.');
end;

procedure TTFrmIntraCriterio.lnkGoToInterClick(Sender: TObject);
/// sist é direcionado para região de ordenação das constantes, para poder iniciar
/// etapa de elicitação intercriterio. Normaliza é chamada para realizar transformaçãoverificar casos
/// de escala de algum crit que tenha sido declarado como linear ou não tenha
/// sido elicitado, quando aplicável.

begin
  with TIWUserSession(WebApplication.Data) do

  begin
    Normaliza;

    verificaUnit := -50;
    TfrmEntrada.create(WebApplication).Show;
    rgnElicIntra.Visible := false;
    rgnGraphIntra.Visible := false;

    // salvando stage intracriterio do probnglema
    EstagioIntra := 2;
    SalvarBdIntra(5);

  end; // webapp
end; // procedimento

procedure TTFrmIntraCriterio.btnnextcritClick(Sender: TObject);
/// botão exibido quando todos os pontos de um critério foram elicitados e o
/// gráfico da função valor está sendo exibido ao usuário. Quando ultimo critério,
/// também libera componentes para migrar para a rgn de elicitação intercriterio

var
  i, P, z, y, contvi, ind, u: integer;
  j, nomc: string;
  x0, y0: real;

  (* Procedimento de verificação da matriz fixa - ajuste dos parâmetros para a função da interpolação *)
  procedure VerificaMatrizFixa;
  var
    a, b: integer;
    auxmatfix, novamatfix: array of array of real;
    vetfix: array of real;
    cont: integer;
    x0, x1, x, y, y0, y1: real;
  begin
    with TIWUserSession(WebApplication.Data) do
    begin
      i := ind;
      (* reproduz a Matriz Fixa em uma matriz local para fazer a verificação *)
      SetLength(auxmatfix, Length(matrizfixa), 2);
      SetLength(novamatfix, 5, 2);
      for a := 0 to 1 do
      begin
        for b := 0 to Length(matrizfixa) - 1 do
          auxmatfix[b, a] := TIWUserSession(WebApplication.Data)
            .matrizfixa[b, a];
      end; // for i

      for a := 0 to 1 do
      begin
        for b := 0 to 1 do
          novamatfix[b, a] := auxmatfix[b, a];
      end; // for i

      (* Se for diferente de 3 níveis, o ponto 0,5 necessariamente foi elicitado *)
      if Niveis[ind] <> 3 then
      begin

        novamatfix[2, 0] := auxmatfix[2, 0];

        (* Verifica se o ponto 0,25 foi elicitado *)
        cont := 0;
        for a := 0 to Length(auxmatfix) - 1 do
        // Passa por todas as linhas
        begin
          if auxmatfix[a, 1] = 0.25 then
          begin
            novamatfix[3, 0] := auxmatfix[a, 0];
            novamatfix[3, 1] := auxmatfix[a, 1];
          end // if 0,5
          else
            inc(cont);
        end; // for i

        (* Caso o ponto 0,25 não tenha sido elicitado *)
        if cont = Length(auxmatfix) then
          // metade da faixa entre 0 e 0,5
          novamatfix[3, 0] := ((novamatfix[1, 0] + novamatfix[2, 0]) / 2);

        (* Verifica se o ponto 0,75 foi elicitado *)
        cont := 0;
        for a := 0 to Length(auxmatfix) - 1 do
        // Passa por todas as linhas
        begin
          if auxmatfix[a, 1] = 0.75 then
          begin
            novamatfix[4, 0] := auxmatfix[a, 0];
            novamatfix[4, 1] := auxmatfix[a, 1];
          end // if 0,5
          else
            inc(cont);
        end; // for i

        (* Caso o ponto 0,75 não tenha sido elicitado *)
        if cont = Length(auxmatfix) then
          // metade da faixa entre 1 e 0,5
          novamatfix[4, 0] := ((novamatfix[0, 0] + novamatfix[2, 0]) / 2);

      end // Diferente de 3 níveis
      else
      (* 3 níveis *)
      begin

        (* Ponto 0,75 foi elicitado *)
        if auxmatfix[2, 1] = 0.75 then
        begin
          y1 := auxmatfix[2, 1]; // 0,75
          x1 := auxmatfix[2, 0];
          y0 := auxmatfix[1, 1]; // 0
          x0 := auxmatfix[1, 0];

          // Interpola 0,5, 0,25 e repete o 0,75
          novamatfix[2, 0] := x0 + ((x1 - x0) * (0.5 / auxmatfix[2, 1]));
          novamatfix[3, 0] := x0 + ((x1 - x0) * (0.25 / auxmatfix[2, 1]));
          novamatfix[4, 0] := auxmatfix[2, 0];
        end; // 0,75

        (* Ponto 0,25 foi elicitado *)
        if auxmatfix[2, 1] = 0.25 then
        begin
          y0 := auxmatfix[2, 1]; // 0,25
          x0 := auxmatfix[2, 0];
          y1 := auxmatfix[0, 1]; // 1
          x1 := auxmatfix[0, 0];

          // Interpola 0,5, 0,75 e repete o 0,25
          novamatfix[2, 0] := x0 +
            ((x1 - x0) * ((0.5 - y0) / (auxmatfix[0, 1] - auxmatfix[2, 1])));
          novamatfix[4, 0] := x0 +
            ((x1 - x0) * ((0.75 - y0) / (auxmatfix[0, 1] - auxmatfix[2, 1])));
          novamatfix[3, 0] := auxmatfix[2, 0];
        end; // 0,25

        (* Ponto 0,5 foi elicitado *)
        if auxmatfix[2, 1] = 0.5 then
        begin
          // ponto 0,25 e 0,75 são metade da faixa
          novamatfix[2, 0] := auxmatfix[2, 0];
          novamatfix[3, 0] := (abs(auxmatfix[2, 0] + auxmatfix[1, 0]) / 2);
          novamatfix[4, 0] := (abs(auxmatfix[2, 0] + auxmatfix[0, 0]) / 2);
        end;
        // 0,25

      end; // 3 níveis

      novamatfix[0, 1] := auxmatfix[0, 1];
      novamatfix[1, 1] := auxmatfix[1, 1];
      novamatfix[2, 1] := 0.5;
      novamatfix[3, 1] := 0.25;
      novamatfix[4, 1] := 0.75;

      SetLength(matrizfixa, 5, 2);
      for a := 0 to 1 do
      begin
        for b := 0 to 4 do
          TIWUserSession(WebApplication.Data).matrizfixa[b, a] := novamatfix
            [b, a];
      end; // for i

    end; // UserSession
  end;

begin

  with TIWUserSession(WebApplication.Data) do

  begin
    SetLength(VtrcritBisec, NumCrit);
    z := cmbbxselectCrit.ItemIndex;
    nomc := cmbbxselectCrit.Items[z];
    cmbbxselectCrit.Items.Delete(z);

    ETSelIntra := timetostr(now);
    EAuxNomeCrit := nomc;
    for u := 0 to NumCrit - 1 do
    begin
      if NomeCrit[u] = nomc then
        ind := u;
    end;

    TIWUserSession(WebApplication.Data).EindCrit := IntToStr(ind);
    Eseqintra := seqresp;
    // Salvar na tabela intracrit
    SalvarBdIntra(8);

    { ALTERAÇÃO EM 14.02.22 }
    // o critério z foi elicitado (e vai ser excluido do cmbbx)
    if TIWUserSession(WebApplication.Data).VerificaIntra[ind] = true then
    begin
      // se era obrigatório antes (true)
      TIWUserSession(WebApplication.Data).DinamVerificaIntra[ind] := false;
      // deixou de ser obrigatório pq foi elicitado
      SalvarBdIntra(6); //
    end;
    // fim alteração 14.02

    contvi := 0;
    for i := 0 to NumCrit - 1 do
    begin
      if TIWUserSession(WebApplication.Data).DinamVerificaIntra[i] = true then
      begin
        inc(contvi);
        continue; // testar
      end;
    end;
    if contvi = 0 then // nenhum true = não tem mais obrigatórios
    begin
      { lnkStopElicit.Visible := true;
        IWLink7.Visible := true;
        TIWHelpLink7.Visible := true; }
    end;
    if contvi <> 0 then // tem algum crit obrigatório não elicitado
    begin

      lnkStopElicit.Visible := false;
      // IWLink7.Visible := false;
      TIWHelpLink7.Visible := false;
    end;
    { lnkStopElicit.Visible := false;
      // IWLink7.Visible := false;
      TIWHelpLink7.Visible := false; }

    { Alteração Intracritério Discretos 08/08/22 }
    (* Se o critério for discreto, é preciso verificar a MatrizFixa - se está de acordo com os parâmetros para ser utilizada na interpolação *)
    if (TIWUserSession(WebApplication.Data).Typeofcrit[ind] = 2) OR
      (Typeofcrit[ind] = 3) then
      VerificaMatrizFixa;

    // if (Typeofcrit[I] = 0) OR (Typeofcrit[I] = 1) then
    InterpolacaoPontos; // entra no procedimento que realizará a normalização viainterpolação linear

    begin
      if cmbbxselectCrit.Items.Count = 0 then
      /// QUANDO não tiver crit, ACABOU ELICINTRA. SEGUE DIRETO PARA A INTERCRIT
      begin
        Normaliza;

        verificaUnit := -50;
        TfrmEntrada.create(WebApplication).Show;
        rgnElicIntra.Visible := false;
        rgnGraphIntra.Visible := false;
        chrtRangeintra.Visible := false;
        imgrangesintra.Visible := false;
        // salvando stage intracriterio do problema
        EstagioIntra := 2; // acabou etapa intra
        SalvarBdIntra(5);

      end // items.count=0

      else // se ñ, libera para elicitação do proximo crit
      BEGIN

        rdgrpBisec.Items.Clear;
        rdgrpBisec.Visible := false;
        txtRemarkindif.Visible := false;
        rdgrpBisec.Enabled := true;
        lblwhatprefer.Visible := false;
        lblwhatprefer2.Visible := false;
        txtFunction.Visible := false;
        txtPoints.Visible := true;
        btnNextpoint.Enabled := true;
        cmbbxpercent.ItemIndex := 2;
        cmbbxselectCrit.ItemIndex := -1;

        cmbbxselectCrit.Enabled := true;

        btnNextpoint.Visible := true;
        rdgrpBisec.Enabled := true;
        rgnGraphIntra.Visible := false;
        chrtRangeintra.Visible := false;
        imgrangesintra.Visible := false;
        rgnElicIntra.Visible := true;
        btnOkElicIntra.Visible := false;
        btnlinegraph.Visible := true;
        // rgnObrigatorios.Visible := true;
        rgntextoslinear.Visible := false;
        TIWHelpdeclareLin.Visible := false;

        EstagioIntra := 1; // algum critério de fato já foi elicitado- ALTERADO EM 15.02.22
        SalvarBdIntra(5); // atualizando stage da elicitação intra- ALTERADO EM 15.02.22

        lblDef2.Visible := false;
        lnkDefinePoint.Visible := false;
        lnkIntDef.Visible := false;
        TIWHelpIntDef.Visible := false;

        /// verificação da visibilidade do link para interromper perguntas da elcitação, após 1º perg
        { if VerificaDefPoint = 0 then
          begin
          lblDef2.Visible := false;
          lnkDefinePoint.Visible := false;
          TIWHelpIntDef.Visible := false;
          end
          else
          begin
          //   lblDef2.Visible := true;
          //  lnkDefinePoint.Visible := true;
          TIWHelpIntDef.Visible := true;
          end; }
      end;
    END; // b

  end; // webapp
  rgnlegendranges.Visible := false;
  IWLabel4.Visible := false;

  // Desabilitando e reiniciando tabela das info elicitadas
  awgcritelicited.ClearCells;
  awgcritelicited.RowCount := 0;
  rgninfoelicited.Visible := false;

  // Desabilitando "Back one Step"
  lnkbackonestep.Visible := false;

  // Chama procedimento de mostrar os critérios elicitados
  btncriterioselicitadosClick(Sender);

  // Desabilita o link "View information on the criteria elicited"
  lnkviewcritelicitados.Visible := false;

end; // procedimento

{ procedure TTFrmIntraCriterio.IWLink1Click(Sender: TObject);
  begin
  rgnInfosIntra.Visible := true;
  IWLink1.Visible := false;
  txtMsgObrigatorios.Visible := false;
  grdObrigatorios.Visible := false;
  lnkStopElicit.Visible := false;
  IWLink7.Visible := false;
  // lblSemObrigatorios.Visible := false;
  txtSemObrigatorios.Visible := false;
  rgnObrigatorios.Visible := false;
  end; }

procedure TTFrmIntraCriterio.btnlinegraphClick(Sender: TObject);
begin
  PlotaGraphsIntra;
  btnlinegraph.Visible := false;
  btnbargraph.Visible := true;
end;

procedure TTFrmIntraCriterio.Logout1Click(Sender: TObject);
begin
  TIWUserSession(WebApplication.Data).AUXLOGOUT := -363636;
  TIWUserSession(WebApplication.Data).verificaUnit := 0;
  TfrmEntrada.create(WebApplication).Show;
  // IWRgnReset.Visible := true;
end;

// procedure

{ procedure TTFrmIntraCriterio.btnResetIntraClick(Sender: TObject);
  /// botão acionado toda vez que decisor quiser sair da região de elicitação intracriterio
  var
  I, J, Auxi: integer;

  begin
  with TIWUserSession(WebApplication.Data) do
  begin

  /// troca de região///
  rgnMenuIntracrit.Visible := true;
  rgnElicIntra.Visible := false;

  Auxi := 0;
  for I := 0 to Numcrit - 1 do
  begin
  if (TIWUserSession(WebApplication.Data).VerificaIntra[I]) = true then
  begin
  Auxi := 1;
  end;
  end;

  if Auxi = 1 then
  btnusetab.Enabled := false;

  if Auxi = 0 then
  btnusetab.Enabled := true;

  /// liberando componentes e principais variaveis///
  cmbbxselectCrit.ItemIndex := -1;
  cmbbxselectCrit.Enabled := true;
  cmbbxselectCrit.Clear;
  cmbbxpercent.ItemIndex := 2;
  cmbbxpercent.Enabled := true;
  grdObrigatorios.Clear;

  rdgrpBisec.Enabled := true;
  rdgrpBisec.Items.Clear;
  rdgrpBisec.ItemIndex := -1;
  btnNextpoint.Enabled := true;
  btnOkElicIntra.Enabled := true;
  // btnStopElic.Enabled := true;
  lnkDefinePoint.Enabled := true;
  // btnusetab.Enabled := true;
  btnInputNew.Enabled := true;

  rgnGraphIntra.Visible := false;
  rgnInfosIntra.Visible := true;
  rdgrpbehav.Visible := false;
  btnNextpoint.Enabled := false;
  ChartIntra.Visible := false;
  rgnInfosIntra.Visible := false;
  IWLink1.Visible := true;
  // ChartIntra.ClearChart;
  imgseries.Hide;

  lnkLinear.Visible := false;
  IWText8.Visible := false;
  lnkdeclareLin.Visible := false;
  btnOkElicIntra.Visible := false;
  rdgrpBisec.Visible := false;
  lblwhatprefer.Visible := false;

  for J := 0 to Length(vtrpontosbisec) - 1 do // limpando o vetor
  TIWUserSession(WebApplication.Data).vtrpontosbisec[J] := 0;

  { BoundMx:=0;
  BoundMn:=0;
  LimSup:=0;
  LimInf:=0;
  LimMed:=0;
  DA:=0;
  Perc:=0; }

{ SalvarBdIntra(-1); // incrementa roundIntra, indica que usuario está refazendo mesmo prob sem ter concluido/deslogado
  end;
  end; }

procedure TTFrmIntraCriterio.btnresetnaoClick(Sender: TObject);
begin
rgnresetcrit.Visible := false;

end;

procedure TTFrmIntraCriterio.btnresetsimClick(Sender: TObject);
var
i, j: integer;

begin


/// 1º ATUALIZANDO OS INDICADORES DE CRITÉRIOS ELICITADOS NO BANCO DE DADOS (COLUNAS: "CritElicitados" e "percent" ///
        // a) ATUALIZAR O INDICADOR DE CRITÉRIO JÁ ATUALIZADO PARA "False"
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
          if TIWUserSession(WebApplication.Data)
            .NomeCrit[i] = awgcritelicitados.Cells[0, TIWUserSession(WebApplication.Data).linhaselecionada] then
            TIWUserSession(WebApplication.Data).VtrcritBisec[i] := false;

        // b) PASSAR PARA A VAR AUXILIAR E PARA O BANCO DE DADOS
        // Atualiza variável
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = false then
            TIWUserSession(WebApplication.Data).infoCritElicitados :=
              TIWUserSession(WebApplication.Data).infoCritElicitados + '0/';
          if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = true then
            TIWUserSession(WebApplication.Data).infoCritElicitados :=
              TIWUserSession(WebApplication.Data).infoCritElicitados + '-1/';
        end; // for i

        // Atualizar Banco de Dados
        with UserSession.ZQuery1 do
        begin
          sql.Text := 'UPDATE intracrit SET CritsElicitados ="' + TIWUserSession
            (WebApplication.Data).infoCritElicitados + '" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).ID_Problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '"AND RoundIntra="' + IntToStr
            (TIWUserSession(WebApplication.Data).fvround) + '";';
          ExecSQL;
        end; // UserSession.ZQuery

        // c) ATUALIZAR A VAR AUXILIAR "infoPercent" e passando para Banco de Dados
        // Atualiza variável
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = false then
            TIWUserSession(WebApplication.Data).infoPercent := TIWUserSession
              (WebApplication.Data).infoPercent + '0/';
          if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = true then
            TIWUserSession(WebApplication.Data).infoPercent := TIWUserSession
              (WebApplication.Data).infoPercent + '0,15/';
        end; // for i

        // Atualizar Banco de Dados
        with UserSession.ZQuery1 do
        begin
          sql.Text := 'UPDATE intracrit SET percent ="' + TIWUserSession
            (WebApplication.Data).infoPercent + '" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).ID_Problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '"AND RoundIntra="' + IntToStr
            (TIWUserSession(WebApplication.Data).fvround) + '";';
          ExecSQL;
        end; // UserSession.ZQuery

        /// 2º ZERANDO OS VALORES NORMALIZADOS DO CRITÉRIO NA MATRIZ GLOBAL "Matrizpontosreais" e no Banco de dados ///

        // b) ATUALIZANDO OS VALORES NORMALIZADOS DO CRITÉRIO SELECIONADO PARA ZERO //
        SetLength(TIWUserSession(WebApplication.Data).ConsNorm, TIWUserSession(WebApplication.Data).Numalt , TIWUserSession(WebApplication.Data).NumCrit);

        for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if TIWUserSession(WebApplication.Data).VtrcritBisec[j] = false then
          begin
            for i := 0 to TIWUserSession(WebApplication.Data).Numalt - 1 do
            begin
              TIWUserSession(WebApplication.Data).ConsNorm[i, j] := 0;
            end; // for i
          end; // if
        end; // for i

        // c) PASSANDO OS DADOS DA MATRIZ PARA A VAR AUXILIAR E PARA O BANCO DE DADOS
         // Atualiza variável
        TIWUserSession(WebApplication.Data).infoConsNorm := ''; // Esvaziando ela para depois preencher com os dados atualizados
        for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          for i := 0 to TIWUserSession(WebApplication.Data).Numalt - 1 do
          begin
            TIWUserSession(WebApplication.Data).infoConsNorm := TIWUserSession
              (WebApplication.Data).infoConsNorm + floattostr
              (TIWUserSession(WebApplication.Data).ConsNorm[i, j]) + '/';
          end; // for i
        end; // for j

        // Atualiza Banco de Dados
        with UserSession.ZQuery1 do
        begin
          sql.Text := 'UPDATE intracrit SET CritsElicitados ="' + TIWUserSession
            (WebApplication.Data).infoConsNorm + '" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).ID_Problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '"AND RoundIntra="' + IntToStr
            (TIWUserSession(WebApplication.Data).fvround) + '";';
          ExecSQL;
        end; // UserSession.ZQuery

        /// // 3º ZERAR OS PONTOS DO GRÁFICO NO BANCO DE DADOS E NA "Matrizpontosreais" //////

        // a) Zerando os pontos da função valor do critério resetado na "Matrizpontosreais"
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if TIWUserSession(WebApplication.Data)
            .NomeCrit[i] = awgcritelicitados.Cells[0, TIWUserSession(WebApplication.Data).linhaselecionada] then
          begin
            for j := 0 to 4 do
            begin
              TIWUserSession(WebApplication.Data).matrizpontosreais[j, i] := 0;
            end; // for j
          end; // if
        end; // for i

        // b) Atualizando uma variável auxiliar e já atualizando no Banco de Dados
        // Atualizar Variável
        TIWUserSession(WebApplication.Data).infoMatrizPontosReais := '';
        // Zerando
        for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          for i := 0 to 4 do
          begin
            TIWUserSession(WebApplication.Data).infoMatrizPontosReais :=
              TIWUserSession(WebApplication.Data)
              .infoMatrizPontosReais + floattostr
              (TIWUserSession(WebApplication.Data).matrizpontosreais[i, j])
              + '/';
          end;
        end;

        // Atualizar Banco de dados
        with UserSession.ZQuery1 do
        begin
          // Atualizando os pontos da função valor no Banco de dados
          sql.Text := 'UPDATE intracrit SET PointsBisec ="' + TIWUserSession
            (WebApplication.Data).infoMatrizPontosReais +
            '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .ID_Problema) + '"AND round="' + IntToStr
            (TIWUserSession(WebApplication.Data).nround)
            + '"AND RoundIntra="' + IntToStr
            (TIWUserSession(WebApplication.Data).fvround) + '";';
          ExecSQL;
        end; // UserSession.ZQuery


        /// /4º DETALHES FINAIS////

        // a)ATUALIZANDO CRITÉRIOS DO COMBOBOX
        cmbbxselectCrit.Items.Clear;
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if (TIWUserSession(WebApplication.Data).VtrcritBisec[i] = false) and
            (TIWUserSession(WebApplication.Data).Niveis[i] <> 2) and
            (TIWUserSession(WebApplication.Data).Niveis[i] <> 6) and
            (TIWUserSession(WebApplication.Data).Niveis[i] <> 7) then
          begin
            cmbbxselectCrit.Items.Add(TIWUserSession(WebApplication.Data)
                .NomeCrit[i]);
          end; // if
        end; // for i

        // b)SELECIONANDO O CRITÉRIO QUE FOI RESETADO
        for i := 0 to cmbbxselectCrit.Items.Count - 1 do
        begin
          if cmbbxselectCrit.Items[i] = awgcritelicitados.Cells[0, TIWUserSession(WebApplication.Data).linhaselecionada]
            then
            cmbbxselectCrit.ItemIndex := i;
        end;

        // c)CHAMANDO PROCEDIMENTO QUE ATUALIZA A TABELA
        btncriterioselicitadosClick(Sender);

        // d)CHAMANDO O PROCEDIMENTO DO RADIOGROUP PARA HABILITAR A PERGUNTA E O GRÁFICO
        cmbbxselectCritChange(Sender);

        // e)DESABILITANDO O GRÁFICO CASO ELE ESTEJA SENDO MOSTRADO
        rgngrafintra.Visible := false;


        // f)DESABILITANDO A JANELA DE DECISÃO
        rgnresetcrit.Visible := false;

end;


procedure TTFrmIntraCriterio.btnreturnbisecClick(Sender: TObject);
begin
  rgntextoslinear.Visible := true;
  rdgrpBisec.Enabled := true;
  btnOkElicIntra.Enabled := true;
  // btnStopElic.Enabled := false;
  lnkDefinePoint.Enabled := true;
  btnreturnbisec.Visible := false;
  rgnGraphIntra.Visible := false;
  // rgnObrigatorios.Visible := true;

  lblDef2.Visible := false;
  lnkDefinePoint.Visible := false;
  lnkIntDef.Visible := false;
  TIWHelpIntDef.Visible := false;

end;

procedure TTFrmIntraCriterio.btnsaveimagefvClick(Sender: TObject);
begin
  // SALVANDO A IMAGEM DO GRÁFICO
  chtformvf.TeeCreateBitmap(clWhite, rect(0, 0, 590, 360)).SaveToFile
    ('C:\inetpub\fitradeoff\Images\ Form of the value' + '.jpg');
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\ Form of the value' + '.jpg', true);
  // DELETANDO A IMAGEM DO GRÁFICO -  PRA NÃO ENCHER A MEMÓRIA
  DeleteFile('C:\inetpub\fitradeoff\Images\ Form of the value' + '.jpg');
end;

procedure TTFrmIntraCriterio.btnsavepointsClick(Sender: TObject);
Var
  i, j, y: integer;
  BDElicitados, PontosFVdb: string;
  CritsElicitados, pontosFV: array of string;

begin

  { with UserSession.ZQuery1 do
    begin
    sql.Text := 'SELECT PointsBisec FROM intracrit WHERE id_problem="' +
    (TIWUserSession(WebApplication.Data).ID_Problema)
    + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data).nround)
    + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
    .fvround) + '";';
    ExecSQL;
    open;
    PontosFVdb := FieldByName('PointsBisec').AsString;
    close;

    end; // UserSession (Banco de dados)

    // Setando variáveis
    SetLength(CritsElicitados, NumCrit);
    SetLength(pontosFV, NumCrit * 5);
    SetLength(TIWUserSession(WebApplication.Data).todoscriterios, NumCrit);
    SetLength(TIWUserSession(WebApplication.Data).MatrizIntrapontos, 0);
    SetLength(TIWUserSession(WebApplication.Data).MatrizIntrapontos, NumCrit, 7);

    with UserSession.ZQuery1 do
    begin
    // Pegando no BD os nomes de todos os criterios
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
    sql.Text := 'SELECT name FROM criteria WHERE id_problem="' +
    (TIWUserSession(WebApplication.Data).ID_Problema)
    + '"AND id_criterion="' + IntToStr(i) + '";';
    ExecSQL;
    open;
    TIWUserSession(WebApplication.Data).todoscriterios[i] := FieldByName
    ('name').AsString;
    close;
    end;

    // Pegando no BD os indicadores dos criterios que foram ou não elicitados (-1 significa que foi elicitado e 0 que não foi elicitado)
    sql.Text := 'SELECT CritsElicitados FROM intracrit WHERE id_problem="' +
    (TIWUserSession(WebApplication.Data).ID_Problema)
    + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data).nround)
    + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
    .fvround) + '";';
    ExecSQL;
    open;
    BDElicitados := FieldByName('CritsElicitados').AsString;
    close;

    // Pegando no BD os pontos elicitados nessa ordem (1, 0, 0.5, 0.25 e 0,75)
    sql.Text := 'SELECT PointsBisec FROM intracrit WHERE id_problem="' +
    (TIWUserSession(WebApplication.Data).ID_Problema)
    + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data).nround)
    + '"AND RoundIntra="' + IntToStr(TIWUserSession(WebApplication.Data)
    .fvround) + '";';
    ExecSQL;
    open;
    PontosFVdb := FieldByName('PointsBisec').AsString;
    close;
    end; // UserSession (Banco de dados)

    // Colocando os nomes dos critérios na MatrizIntrapontos
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
    TIWUserSession(WebApplication.Data).MatrizIntrapontos[i, 0] :=
    TIWUserSession(WebApplication.Data).todoscriterios[i];
    end;

    // Colocando na MatrizIntrapontos os indicadores de elicitados ou não. Onde 1 significa que foi elicitado e 0 que não foi elicitado
    y := 0;
    for i := 1 to Length(BDElicitados) do
    begin
    if BDElicitados[i] <> '/' then
    begin
    TIWUserSession(WebApplication.Data).MatrizIntrapontos[y, 1] :=
    BDElicitados[i];
    end
    else if BDElicitados[i] = '/' then
    begin
    inc(y);
    end;
    end; // for

    // Armazenando os pontos da Função Valor encontrados na matriz de platar o gráfico
    i := 0;
    j := 2;
    for y := 1 to Length(PontosFVdb) do
    begin
    if PontosFVdb[y] <> '/' then
    begin
    TIWUserSession(WebApplication.Data).MatrizIntrapontos[i, j] :=
    TIWUserSession(WebApplication.Data).MatrizIntrapontos[i, j] + PontosFVdb
    [y];
    end
    else if PontosFVdb[y] = '/' then
    begin
    inc(j);
    end;

    if j > 6 then
    begin
    inc(i);
    j := 2;
    end;
    end;

    // Contando quantos critérios já foram elicitados
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
    if BDElicitados[i] = '1' then
    TIWUserSession(WebApplication).Nelicitados := TIWUserSession
    (WebApplication).Nelicitados + 1;
    end;

    end; // UserSession (var globais)
    end; // procedure
    }
end;

procedure TTFrmIntraCriterio.lnkDefinePointClick(Sender: TObject);
/// procedimento deve pegar os limites sup e inf atuais do range e plotar grafico de series  mesmo que não se tenha
/// alcançado o critério de parada, fornecendo visualização parcial dos resultados
var
  LimSupN, LimInfN, LimMedN: Double;
  i, j: integer;

begin
  with TIWUserSession(WebApplication.Data) do
  Begin
    rgntextoslinear.Visible := false;
    j := AuxSalvai;

    if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) then

    begin
      LimSupN := LimInf;
      LimInfN := LimSup;
      LimMedN := (LimSupN + LimInfN) * 0.5;
    end; // if (typeofcrit=0)

    if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) then

    begin
      LimSupN := LimSup;
      LimInfN := LimInf;
      LimMedN := (LimSupN + LimInfN) * 0.5;
    end; // if (typeofcrit=1)

    LimSup := LimSupN;
    LimInf := LimInfN;
    TIWUserSession(WebApplication.Data).LimMed := LimMedN;

    cmbbxselectCrit.Enabled := false; // garantir que criterio não será alterado
    cmbbxpercent.Enabled := false; // garantir que percent não será alterado
    rdgrpBisec.Enabled := false;
    btnOkElicIntra.Enabled := false;
    btnreturnbisec.Visible := true;
    rgnObrigatorios.Visible := false;

    SetLength(matrizdinamica, 3, 2);
    matrizdinamica[0, 0] := ValorA;
    matrizdinamica[1, 0] := ValorB;
    matrizdinamica[2, 0] := Xn;

    case contadorponto of

      0: // b=1
        begin
          matrizdinamica[0, 1] := 0.5;
          matrizdinamica[1, 1] := 0.5;
          matrizdinamica[2, 1] := 0.5;
        end;

      1: // b=2
        begin
          matrizdinamica[0, 1] := 0.25;
          matrizdinamica[1, 1] := 0.25;
          matrizdinamica[2, 1] := 0.25;
        end;

      2: // b=3
        begin
          matrizdinamica[0, 1] := 0.75;
          matrizdinamica[1, 1] := 0.75;
          matrizdinamica[2, 1] := 0.75;
        end;

    end; // case of

    // PlotaGraphsIntra2;

  end; // webapp
end; // procedimento

procedure TTFrmIntraCriterio.btnusetabClick(Sender: TObject);
// usuário escolhe continuar com os valores inseridos no excel, seguindo direto para a rgnConseqMatriz.
// Além da transição de telas, procedimento Normaliza é chamado, uma vez que as consequencias serão transformadas
// por meio deste e não da interpolacaopontos.

begin

  with TIWUserSession(WebApplication.Data) do
  begin

    Normaliza;

    verificaUnit := -50;
    TfrmEntrada.create(WebApplication).Show;
    rgnMenuIntracrit.Visible := false;

    // salvando stage intracriterio do problema
    EstagioIntra := 3; // usuario entrou direto com valores do excel, sem passar pela elicitação intracriterio
    SalvarBdIntra(5);
  end;
end;


// procedimento

procedure TTFrmIntraCriterio.btnAboutIntraClick(Sender: TObject);
begin
  rgnInfosIntra.Visible := true;
  // IWLink1.Visible := false;
  txtMsgObrigatorios.Visible := false;
  grdObrigatorios.Visible := false;
  lnkStopElicit.Visible := false;
  TIWHelpLink7.Visible := false;
  TIWHelpLink7.Visible := false;
  // lblSemObrigatorios.Visible := false;
  txtSemObrigatorios.Visible := false;
  rgnObrigatorios.Visible := false;
  //IWLink1.Visible := false;

  // DESABILITANDO JANELA DE DECISÃO DA "RESET ELICITATION" CASO ESTEJA SENDO MOSTRADA
    rgnresetcrit.Visible := false;


end;

procedure TTFrmIntraCriterio.btnbargraphClick(Sender: TObject);
begin
  // PlotaGraphsIntra2;
  btnlinegraph.Visible := true;
  btnbargraph.Visible := false;
end;

procedure TTFrmIntraCriterio.btnclosegrafintraClick(Sender: TObject);
begin
  rgngrafintra.Visible := false;
end;

procedure TTFrmIntraCriterio.awgcritelicitadosAsyncLinkClick
  (Sender: TObject; EventParams: TStringList; RowIndex, ColumnIndex: integer);
var
  Line: array of TLineSeries;
  i, j: integer;
  teste: integer;

begin
  {
    // Chama procedimento que pega todos os dados da Intra
    btnsavepointsClick(Sender);

    rgngrafintra.Visible := true;

    // Limpa o gráfico
    chtformvf.title.Clear; // Limpa o título
    chtformvf.serieslist.clearvalues; // limpa os valores das series
    chtformvf.bottomaxis.Items.Clear; // limpa a legenda inferior do grafico
    chtformvf.RemoveAllSeries; // apaga todas as series
    chtformvf.View3D := false; // esconde o gráfico em modo 3D
    chtformvf.legend.Visible := false;

    chtformvf.title.Text.Add('Form of the value function of criteria ' +
    (awgcritelicitados.Cells[0, RowIndex])); // Pegando nome do critério para o título do grafico

    SetLength(Line, 5);
    Line[0] := TLineSeries.create(Self);
    // cria as series do gráfico
    chtformvf.AddSeries(Line[0]);
    Line[0].Marks.Visible := true;

    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
    if TIWUserSession(WebApplication.Data).MatrizIntrapontos[i, 0]
    = awgcritelicitados.Cells[0, RowIndex] then
    begin

    chtformvf.Series[0].addxy(StrToFloat(TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 3]), 0, TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 3]);
    chtformvf.Series[0].addxy(StrToFloat(TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 5]), 0.25, TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 5]);
    chtformvf.Series[0].addxy(StrToFloat(TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 4]), 0.5, TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 4]);
    chtformvf.Series[0].addxy(StrToFloat(TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 6]), 0.75, TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 6]);
    chtformvf.Series[0].addxy(StrToFloat(TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 2]), 1, TIWUserSession(WebApplication.Data)
    .MatrizIntrapontos[i, 2]);

    Line[0].Pointer.Visible := true; // Torna os pontos visíveis

    // Configura o eixo Y para mostrar apenas os valores desejados
    chtformvf.LeftAxis.SetMinMax(0, 1); // Define o mínimo e o máximo do eixo Y
    chtformvf.LeftAxis.Increment := 0.25; // Define o incremento do eixo Y para mostrar os pontos desejados

    chtformvf.bottomaxis.title.caption := 'x';
    chtformvf.bottomaxis.title.Position := tpEnd;
    chtformvf.bottomaxis.title.Font.Style := [fsbold];

    // Config eixo y
    chtformvf.LeftAxis.title.caption := 'V(x)';
    chtformvf.LeftAxis.title.Position := tpEnd;
    chtformvf.LeftAxis.title.Font.Style := [fsbold];

    end;

    end;

    imgformvf.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
    (chtformvf.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgformvf.Width,
    imgformvf.Height))); }

end;

procedure TTFrmIntraCriterio.awgcritelicitadosLinkClick
  (Sender: TObject; RowIndex, ColumnIndex: integer);
var
  Line: array of TLineSeries;
  i, j, x, y: integer;
  pontosFV, Critelicitados, Valoresnormalizados, percent: string;
  Matriznormalizados, MatrizPontosFV: array of array of string;

BEGIN
  case ColumnIndex of
    1: // Programando Link "View graphic" (coluna do TIWAdvWebGrid que gera o gráfico)
      Begin

        { // Chama procedimento que armazena os pontos elicitados
          btnsavepointsClick(Sender); }

            // DESABILITANDO JANELA DE DECISÃO DA "RESET ELICITATION" CASO ESTEJA SENDO MOSTRADA
    rgnresetcrit.Visible := false;

        rgngrafintra.Visible := true;

        // Limpa o gráfico
        chtformvf.title.Clear; // Limpa o título
        chtformvf.serieslist.clearvalues; // limpa os valores das series
        chtformvf.bottomaxis.Items.Clear; // limpa a legenda inferior do grafico
        chtformvf.RemoveAllSeries; // apaga todas as series
        chtformvf.View3D := false; // esconde o gráfico em modo 3D
        chtformvf.legend.Visible := false;

        chtformvf.title.Text.Add('Form of the value function ' +
            awgcritelicitados.Cells[0, RowIndex]);
        // Adicionando título ao gráfico

        lblformofthefv.caption :=
          'Form of the value function of criteria ' + awgcritelicitados.Cells
          [0, RowIndex];
        /// /Alterando título (LABEL)

        SetLength(Line, 5);
        Line[0] := TLineSeries.create(Self); // cria as series do gráfico (como se fosse um componente)
        chtformvf.AddSeries(Line[0]); // Adicionando a série ao gráfico
        Line[0].Marks.Visible := true; // Colocando para aparecer o valor no ponto

        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin

          if TIWUserSession(WebApplication.Data)
            .NomeCrit[i] = awgcritelicitados.Cells[0, RowIndex] then // Criando gráfico do critério de acordo com a linha que está sendo clicada na tabela
          begin


            // OBS.: Foi criada uma regra para mostrar no gráfico apenas valores inteiros (caso o critério seja construído)
            /// Foi criada uma regra onde os números maiores do que 10 serão arredondados e os números menores do que 10 aparecerão com 2 casas decimais

            if (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 2) or
              (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 3) then
            begin

              if Frac(TIWUserSession(WebApplication.Data)
                  .matrizpontosreais[1, i]) = 0 then
              begin

                if (TIWUserSession(WebApplication.Data).matrizpontosreais[1, i]
                    > 10) then
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[1, i], 0, {floattostr }
                      (Rounding(TIWUserSession(WebApplication.Data).matrizpontosreais[1, i])));
                end
                else
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[1, i], 0, {FormatFloat
                      ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                          .matrizpontosreais[1, i])));
                end;
              end;

              if Frac(TIWUserSession(WebApplication.Data)
                  .matrizpontosreais[3, i]) = 0 then
              begin

                if (TIWUserSession(WebApplication.Data).matrizpontosreais[3, i]
                    > 10) then
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[3, i], 0.25, {floattostr}
                      (Rounding(TIWUserSession(WebApplication.Data)
                          .matrizpontosreais[3, i])));
                end
                else
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[3, i], 0.25, {FormatFloat
                      ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                          .matrizpontosreais[3, i])));
                end;
              end;

              if Frac(TIWUserSession(WebApplication.Data)
                  .matrizpontosreais[2, i]) = 0 then
              begin

                if (TIWUserSession(WebApplication.Data).matrizpontosreais[2, i]
                    > 10) then
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[2, i], 0.5, {floattostr}
                      (Rounding(TIWUserSession(WebApplication.Data)
                          .matrizpontosreais[2, i])));
                end
                else
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[2, i], 0.5, {FormatFloat
                      ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                          .matrizpontosreais[2, i])));
                end;
              end;

              if Frac(TIWUserSession(WebApplication.Data)
                  .matrizpontosreais[4, i]) = 0 then
              begin

                if (TIWUserSession(WebApplication.Data).matrizpontosreais[4, i]
                    > 10) then
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[4, i], 0.75, {floattostr}
                      (Rounding(TIWUserSession(WebApplication.Data)
                          .matrizpontosreais[4, i])));
                end
                else
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[4, i], 0.75, {FormatFloat
                      ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                          .matrizpontosreais[4, i])));
                end;
              end;

              if Frac(TIWUserSession(WebApplication.Data)
                  .matrizpontosreais[0, i]) = 0 then
              begin
                if (TIWUserSession(WebApplication.Data).matrizpontosreais[0, i]
                    > 10) then
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[0, i], 1, {floattostr}
                      (Rounding(TIWUserSession(WebApplication.Data)
                          .matrizpontosreais[0, i])));
                end
                else
                begin
                  chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                      .matrizpontosreais[0, i], 1, {FormatFloat
                      ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                          .matrizpontosreais[0, i])));
                end;
              end;
            end // tipo de critério construído

            else
            /// A partir daqui é a geração do gráfico caso o critério seja natual(conínuo)

              if (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 0) or
              (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 1) then
            begin

              if (TIWUserSession(WebApplication.Data).matrizpontosreais[1, i]
                  > 10) then
              begin
                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[1, i], 0, {floattostr}
                    (Rounding(TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[1, i])));
              end
              else
              begin
                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[1, i], 0, {FormatFloat
                    ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[1, i])));
              end;

              if (TIWUserSession(WebApplication.Data).matrizpontosreais[3, i]
                  > 10) then
              begin
                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[3, i], 0.25, {floattostr}
                    (Rounding(TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[3, i])));
              end
              else
              begin
                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[3, i], 0.25, {FormatFloat
                    ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[3, i])));
              end;

              if (TIWUserSession(WebApplication.Data).matrizpontosreais[2, i]
                  > 10) then
              begin
                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[2, i], 0.5, {floattostr}
                    (Rounding(TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[2, i])));
              end
              else
              begin
                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[2, i], 0.5, {FormatFloat
                    ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[2, i])));
              end;

              if (TIWUserSession(WebApplication.Data).matrizpontosreais[4, i]
                  > 10) then
              begin

                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[4, i], 0.75, {floattostr}
                    (Rounding(TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[4, i])));
              end
              else
              begin
                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[4, i], 0.75, {FormatFloat
                    ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[4, i])));
              end;

              if (TIWUserSession(WebApplication.Data).matrizpontosreais[0, i]
                  > 10) then
              begin
                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[0, i], 1, {floattostr}
                    (Rounding(TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[0, i])));
              end
              else
              begin
                chtformvf.Series[0].addxy(TIWUserSession(WebApplication.Data)
                    .matrizpontosreais[0, i], 1, {FormatFloat
                    ('0.00',} rounding((TIWUserSession(WebApplication.Data)
                        .matrizpontosreais[0, i])));
              end;
            end;

            Line[0].Pointer.Visible := true; // Torna os pontos visíveis

            // Configura o eixo Y para mostrar apenas os valores desejados
            chtformvf.LeftAxis.SetMinMax(0, 1);
            // Define o mínimo e o máximo do eixo Y
            chtformvf.LeftAxis.Increment := 0.25; // Define o incremento do eixo Y para mostrar os pontos desejados

            chtformvf.bottomaxis.title.caption := 'x';
            chtformvf.bottomaxis.title.Position := tpEnd;
            chtformvf.bottomaxis.title.Font.Style := [fsbold];

            // Config eixo y
            chtformvf.LeftAxis.title.caption := 'V(x)';
            chtformvf.LeftAxis.title.Position := tpEnd;
            chtformvf.LeftAxis.title.Font.Style := [fsbold];

          end;
        end;

        imgformvf.Picture.Bitmap.Assign // Comando que tira o 'print' do gráfico para exibi-lo no componente image
          (chtformvf.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgformvf.Width,
              imgformvf.Height)));
      End; // Case Column index = 1   (geração do gráfico)

    2:
      /// LINK "Reset elicitation"
      // RESETAR ELICITAÇÃO DE UM CRITÉRIO //
      Begin

      //Armazenando qual linha foi clicada
      TIWUserSession(WebApplication.Data).linhaselecionada :=  RowIndex;

      // Janela de decisão - Deixando visível o aviso de que os dados serão perdidos (Aqui o usuário vai confirmar ou cancelar a solicitação)
      rgnresetcrit.Visible := true;

      // Desabilita a visualização do gráfico ao clicar em "Reset elicitation"
      rgngrafintra.Visible := false;

       //Obs: O cód abaixo foi colocado no botão "Confirm" da janela de decisão

      {
        /// 1º ATUALIZANDO OS INDICADORES DE CRITÉRIOS ELICITADOS NO BANCO DE DADOS (COLUNAS: "CritElicitados" e "percent" ///
        // a) ATUALIZAR O INDICADOR DE CRITÉRIO JÁ ATUALIZADO PARA "False"
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
          if TIWUserSession(WebApplication.Data)
            .NomeCrit[i] = awgcritelicitados.Cells[0, RowIndex] then
            TIWUserSession(WebApplication.Data).VtrcritBisec[i] := false;

        // b) PASSAR PARA A VAR AUXILIAR E PARA O BANCO DE DADOS
        // Atualiza variável
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = false then
            TIWUserSession(WebApplication.Data).infoCritElicitados :=
              TIWUserSession(WebApplication.Data).infoCritElicitados + '0/';
          if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = true then
            TIWUserSession(WebApplication.Data).infoCritElicitados :=
              TIWUserSession(WebApplication.Data).infoCritElicitados + '-1/';
        end; // for i

        // Atualizar Banco de Dados
        with UserSession.ZQuery1 do
        begin
          sql.Text := 'UPDATE intracrit SET CritsElicitados ="' + TIWUserSession
            (WebApplication.Data).infoCritElicitados + '" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).ID_Problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '"AND RoundIntra="' + IntToStr
            (TIWUserSession(WebApplication.Data).fvround) + '";';
          ExecSQL;
        end; // UserSession.ZQuery

        // c) ATUALIZAR A VAR AUXILIAR "infoPercent" e passando para Banco de Dados
        // Atualiza variável
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = false then
            TIWUserSession(WebApplication.Data).infoPercent := TIWUserSession
              (WebApplication.Data).infoPercent + '0/';
          if TIWUserSession(WebApplication.Data).VtrcritBisec[i] = true then
            TIWUserSession(WebApplication.Data).infoPercent := TIWUserSession
              (WebApplication.Data).infoPercent + '0,15/';
        end; // for i

        // Atualizar Banco de Dados
        with UserSession.ZQuery1 do
        begin
          sql.Text := 'UPDATE intracrit SET percent ="' + TIWUserSession
            (WebApplication.Data).infoPercent + '" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).ID_Problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '"AND RoundIntra="' + IntToStr
            (TIWUserSession(WebApplication.Data).fvround) + '";';
          ExecSQL;
        end; // UserSession.ZQuery

        /// 2º ZERANDO OS VALORES NORMALIZADOS DO CRITÉRIO NA MATRIZ GLOBAL "Matrizpontosreais" e no Banco de dados ///

        // b) ATUALIZANDO OS VALORES NORMALIZADOS DO CRITÉRIO SELECIONADO PARA ZERO //
        SetLength(TIWUserSession(WebApplication.Data).ConsNorm, TIWUserSession(WebApplication.Data).Numalt , TIWUserSession(WebApplication.Data).NumCrit);

        for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if TIWUserSession(WebApplication.Data).VtrcritBisec[j] = false then
          begin
            for i := 0 to TIWUserSession(WebApplication.Data).Numalt - 1 do
            begin
              TIWUserSession(WebApplication.Data).ConsNorm[i, j] := 0;
            end; // for i
          end; // if
        end; // for i

        // c) PASSANDO OS DADOS DA MATRIZ PARA A VAR AUXILIAR E PARA O BANCO DE DADOS
         // Atualiza variável
        TIWUserSession(WebApplication.Data).infoConsNorm := ''; // Esvaziando ela para depois preencher com os dados atualizados
        for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          for i := 0 to TIWUserSession(WebApplication.Data).Numalt - 1 do
          begin
            TIWUserSession(WebApplication.Data).infoConsNorm := TIWUserSession
              (WebApplication.Data).infoConsNorm + floattostr
              (TIWUserSession(WebApplication.Data).ConsNorm[i, j]) + '/';
          end; // for i
        end; // for j

        // Atualiza Banco de Dados
        with UserSession.ZQuery1 do
        begin
          sql.Text := 'UPDATE intracrit SET CritsElicitados ="' + TIWUserSession
            (WebApplication.Data).infoConsNorm + '" WHERE id_problem="' +
            (TIWUserSession(WebApplication.Data).ID_Problema)
            + '"AND round="' + IntToStr(TIWUserSession(WebApplication.Data)
              .nround) + '"AND RoundIntra="' + IntToStr
            (TIWUserSession(WebApplication.Data).fvround) + '";';
          ExecSQL;
        end; // UserSession.ZQuery

        /// // 3º ZERAR OS PONTOS DO GRÁFICO NO BANCO DE DADOS E NA "Matrizpontosreais" //////

        // a) Zerando os pontos da função valor do critério resetado na "Matrizpontosreais"
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if TIWUserSession(WebApplication.Data)
            .NomeCrit[i] = awgcritelicitados.Cells[0, RowIndex] then
          begin
            for j := 0 to 4 do
            begin
              TIWUserSession(WebApplication.Data).matrizpontosreais[j, i] := 0;
            end; // for j
          end; // if
        end; // for i

        // b) Atualizando uma variável auxiliar e já atualizando no Banco de Dados
        // Atualizar Variável
        TIWUserSession(WebApplication.Data).infoMatrizPontosReais := '';
        // Zerando
        for j := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          for i := 0 to 4 do
          begin
            TIWUserSession(WebApplication.Data).infoMatrizPontosReais :=
              TIWUserSession(WebApplication.Data)
              .infoMatrizPontosReais + floattostr
              (TIWUserSession(WebApplication.Data).matrizpontosreais[i, j])
              + '/';
          end;
        end;

        // Atualizar Banco de dados
        with UserSession.ZQuery1 do
        begin
          // Atualizando os pontos da função valor no Banco de dados
          sql.Text := 'UPDATE intracrit SET PointsBisec ="' + TIWUserSession
            (WebApplication.Data).infoMatrizPontosReais +
            '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
              .ID_Problema) + '"AND round="' + IntToStr
            (TIWUserSession(WebApplication.Data).nround)
            + '"AND RoundIntra="' + IntToStr
            (TIWUserSession(WebApplication.Data).fvround) + '";';
          ExecSQL;
        end; // UserSession

        /// /4º DETALHES FINAIS////

        // a)ATUALIZANDO CRITÉRIOS DO COMBOBOX
        cmbbxselectCrit.Items.Clear;
        for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
        begin
          if (TIWUserSession(WebApplication.Data).VtrcritBisec[i] = false) and
            (TIWUserSession(WebApplication.Data).Niveis[i] <> 2) and
            (TIWUserSession(WebApplication.Data).Niveis[i] <> 6) and
            (TIWUserSession(WebApplication.Data).Niveis[i] <> 7) then
          begin
            cmbbxselectCrit.Items.Add(TIWUserSession(WebApplication.Data)
                .NomeCrit[i]);
          end; // if
        end; // for i

        // b)SELECIONANDO O CRITÉRIO QUE FOI RESETADO
        for i := 0 to cmbbxselectCrit.Items.Count - 1 do
        begin
          if cmbbxselectCrit.Items[i] = awgcritelicitados.Cells[0, RowIndex]
            then
            cmbbxselectCrit.ItemIndex := i;
        end;

        // c)CHAMANDO PROCEDIMENTO QUE ATUALIZA A TABELA
        btncriterioselicitadosClick(Sender);

        // d)CHAMANDO O PROCEDIMENTO DO RADIOGROUP PARA HABILITAR A PERGUNTA E O GRÁFICO
        cmbbxselectCritChange(Sender);

        // e)DESABILITANDO O GRÁFICO CASO ELE ESTEJA SENDO MOSTRADO
        rgngrafintra.Visible := false;

        }
      End; // Case Column index = 2 (link "Reset elicitation")

    /// ////////////// FINAL DO LINK "Reset elicitation" //////////////////////////////

  end; // case 1 or 2...
END; // Procedure

  Function TTFrmIntraCriterio.Trocapv(Num: String): Double;
  var
    S: string;
    i: integer;
  begin
    S := Num;
    for i := 2 to length(S) - 1 do
      if S[i] = '.' then
        S[i] := ',';

    Result := StrToFloat(S);
  end;

procedure TTFrmIntraCriterio.Bisection;
/// procedimento onde de fato ocorre a atualização dos ranges a cada resposta dada no processo, a partir
/// da segunda pergunta, até que se atenda a parada e procedimento de plot seja executado

var
  i, j: integer;
  LimSupN, LimInfN, LimMedN: Double;
  // 'limiares' da rodada que estiver sendo elicitada
  tamanho_faixa, percent_remanes, faixa_remanes, auxfaixa: real;
Begin
  with TIWUserSession(WebApplication.Data) do

  Begin
    j := AuxSalvai;

    case rdgrpBisec.ItemIndex of
      0: // escolheu primeira opção do radiogroup
        begin
          if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) then

          begin
            LimSupN := LimMed;
            LimInfN := LimInf;
            LimMedN := ((LimSupN + LimInfN) * 0.5);
          end; // if (typeofcrit=0)

          if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) then

          begin
            LimSupN := LimMed;
            LimInfN := LimInf;
            LimMedN := ((LimSupN + LimInfN) * 0.5);
          end; // if (typeofcrit=1)
        end; // case 0

      1: // escolheu segunda opção do radiogroup
        begin
          if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) then

          begin
            LimSupN := LimSup;
            LimInfN := LimMed;
            LimMedN := ((LimSupN + LimInfN) * 0.5);
          end; // if (typeofcrit=0)

          if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) then

          begin
            LimSupN := LimSup;
            LimInfN := LimMed;
            LimMedN := ((LimSupN + LimInfN) * 0.5);
          end; // if (typeofcrit=1)
        end; // case 1

      { 2:
        begin

        if contadorponto = 0 then
        begin
        (* Próxima pergunta é o ponto 0,25 *)
        LimSupN := TIWUserSession(WebApplication.Data).LimMed;
        LimInfN := TIWUserSession(WebApplication.Data).LimInf;
        LimMedN := ((LimSupN + LimInfN) * 0.5);
        end;

        if contadorponto = 1 then
        begin
        (* Próxima pergunta é o ponto 0,25 *)
        LimSupN := TIWUserSession(WebApplication.Data).BoundMx[I]; // 1
        LimInfN := TIWUserSession(WebApplication.Data).matrizfixa[2, 0];
        // 0,5
        LimMedN := ((LimSupN + LimInfN) * 0.5);
        end;

        end; }

    end; // case of

    LimSup := LimSupN;
    LimInf := LimInfN;
    TIWUserSession(WebApplication.Data).LimMed := LimMedN;

    PlotaRangeIntra; // mudar o grafico conforme vai mudando range da bisec

    /// captura de valores somente para plote dos graficos///
    ValorA := LimInf;
    ValorB := LimSup;
    Xn := (LimSup + LimInf) * 0.5;

    TIWUserSession(WebApplication.Data).AuxPonto := Xn;
    /// testa critério de parada, se verdadeiro chama procedimento de plot

    if ((abs(ValorB - ValorA)) <= TIWUserSession(WebApplication.Data).DA) OR
      (FormatFloat('0.00', LimSup) = FormatFloat('0.00', LimMed)) OR
      (FormatFloat('0.00', LimInf) = FormatFloat('0.00', LimMed))
    { AND ((LimSup <> TIWUserSession(WebApplication.Data).BoundMd) AND
      (LimSup <> TIWUserSession(WebApplication.Data).BoundMx[AuxSalvai])
      AND (LimSup <> TIWUserSession(WebApplication.Data).BoundMn[AuxSalvai]) AND
      (LimInf <> TIWUserSession(WebApplication.Data).BoundMd) AND
      (LimInf <> TIWUserSession(WebApplication.Data).BoundMx[AuxSalvai]) AND
      (LimInf <> TIWUserSession(WebApplication.Data).BoundMn[AuxSalvai]))) }
    then
    begin
      parada := true;
      // criterio de parada atendido, pode parar elicitação do ponto
      cmbbxselectCrit.Enabled := false; // garantir que criterio não será alterado
      cmbbxpercent.Enabled := false; // garantir que percent não será alterado
      rdgrpBisec.Enabled := false;
      rgntextoslinear.Visible := false;
      btnOkElicIntra.Enabled := false;
      // btnStopElic.Enabled := false;
      lnkDefinePoint.Enabled := false;
      rgnObrigatorios.Visible := false;

      SetLength(matrizdinamica, 3, 2);
      matrizdinamica[0, 0] := ValorA;
      matrizdinamica[1, 0] := ValorB;
      matrizdinamica[2, 0] := Xn;

      case contadorponto of

        0: // b=1
          begin
            TIWUserSession(WebApplication.Data).matrizdinamica[0, 1] := 0.5;
            matrizdinamica[1, 1] := 0.5;
            matrizdinamica[2, 1] := 0.5;
          end;

        1: // b=2
          begin
            matrizdinamica[0, 1] := 0.25;
            TIWUserSession(WebApplication.Data).matrizdinamica[1, 1] := 0.25;
            matrizdinamica[2, 1] := 0.25;
          end;

        2: // b=3
          begin
            matrizdinamica[0, 1] := 0.75;
            matrizdinamica[1, 1] := 0.75;
            TIWUserSession(WebApplication.Data).matrizdinamica[2, 1] := 0.75;
          end;

      end; // case of

      // Teste 24/10
      { Verificação da elicitação dos pontos 0,25 e 0,75 }

      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) then
        auxfaixa := BoundMx[j];
      if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) then
        auxfaixa := BoundMn[j];

      (* Percentual da faixa (ponto médio e limite inferior) menor que 20% *)
      tamanho_faixa := abs(TIWUserSession(WebApplication.Data)
          .BoundMx[j] - TIWUserSession(WebApplication.Data).BoundMn[j]);
      // faixa_remanes := TIWUserSession(WebApplication.Data).LimMed - TIWUserSession(WebApplication.Data).LimInf;
      faixa_remanes := TIWUserSession(WebApplication.Data).LimMed - auxfaixa;
      percent_remanes := faixa_remanes / tamanho_faixa;

      (* limite inferior sendo A em que V(A)=0 *)
      if (percent_remanes <= 0.2) AND (TIWUserSession(WebApplication.Data)
          .LimInf = auxfaixa) then
        TIWUserSession(WebApplication.Data).elicita25 := false
      else
      begin

        if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 0) then
          auxfaixa := BoundMn[j];
        if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) then
          auxfaixa := BoundMx[j];

        (* Percentual da faixa (ponto médio e limite superior) menor que 20% *)
        tamanho_faixa := abs(TIWUserSession(WebApplication.Data)
            .BoundMx[j] - TIWUserSession(WebApplication.Data).BoundMn[j]);
        faixa_remanes := auxfaixa - TIWUserSession(WebApplication.Data).LimMed;
        percent_remanes := faixa_remanes / tamanho_faixa;

        (* limite superior sendo C em que V(C) = 1 *)
        if (percent_remanes <= 0.2) AND (TIWUserSession(WebApplication.Data)
            .LimSup = auxfaixa) then
          TIWUserSession(WebApplication.Data).elicita75 := false;
      end; // Não elicita

      // PlotaGraphsIntra2;
      TIWUserSession(WebApplication.Data).VtrcritBisec[j] := true;
      // indica que passou pelo procedimento e será interpolado

      { begin
        WebApplication.ShowMessage(
        'An admissible range for the elicited point has been found. Select the most appropriate option on the chart.');
        // Exit;
        end; // showmessage }
      btnNextpointClick(Self);
    end; // if (LimSup-LimInf)

  end; // web aplic
End; // procedimento

procedure TTFrmIntraCriterio.PlotaGraphsIntra;
/// PROCEDIMENTO RESPONSAVEL PELO PLOTE DOS GRAFICOS DE SERIE, QUANDO ELICITANDO OS TRES PONTOS.

var
  i, l, j: integer;
  SeriesIntra: array of TLineSeries;
  Auxnomeseries: array [0 .. 2] of string;
  // Auxvaloresplotados: array of double;
  flag1: boolean; // auxilia na verificação para quais séries pode plotar

Begin
  with TIWUserSession(WebApplication.Data) do

  begin
    SetLength(SeriesIntra, 3);
    ChartIntra.View3D := false;

    // I := AuxSalvai;
    rdgrpbehav.Visible := true;
    rgnInfosIntra.Visible := false;
    btnNextpoint.Visible := true;
    btnNextpoint.Enabled := true;
    btnnextcrit.Visible := false;
    ChartIntra.Visible := true;
    rgnGraphIntra.Visible := true;

    // Desabilitando e reiniciando tabela das info elicitadas
    awgcritelicited.ClearCells;
    awgcritelicited.RowCount := 0;
    rgninfoelicited.Visible := false;

    // construção das series, recebendo o svalores elicitados na rodada que estiver em execução
    with TIWUserSession(WebApplication.Data) do
    begin

      ChartIntra.ClearChart;
      rdgrpbehav.Items.Clear;

      if Idioma = 0 then
      begin
        Auxnomeseries[0] := 'Blue line';
        Auxnomeseries[1] := 'Yellow line';
        Auxnomeseries[2] := 'Red line';
      end // EN
      else
      begin
        Auxnomeseries[0] := 'Linha azul';
        Auxnomeseries[1] := 'Linha amarela';
        Auxnomeseries[2] := 'Linha vermelha';
      end; // PT

      for l := 0 to 2 do
      begin

        SeriesIntra[l] := TLineSeries.create(Self);
        SeriesIntra[l].Clear;
        // rdgrpbehav.Items.Clear;
      end; // for l

      i := 0;
      SetLength(Auxvaloresplotados, i);

      for l := 0 to 2 do // quantidade de séries
      begin
        flag1 := false;

        // Compara o ponto X que queremos plotar com cada um dos pontos X anteriormente obtidos
        for j := 0 to Length(matrizfixa) - 1 do
        begin
          if matrizfixa[j, 0] = matrizdinamica[l, 0] then
            flag1 := true; // Indica que existe um X anteriormente obtido que é igual ao X atual
        end;

        // Só plota qualquer ponto da série se o ponto X elicitado for diferente de qualquer outro ponto X anteriormente obtido
        if flag1 = false then
        begin
          SetLength(Auxvaloresplotados, i + 1);

          for j := 0 to Length(matrizfixa) - 1 do
          begin
            SeriesIntra[l].addxy(TIWUserSession(WebApplication.Data)
                .matrizfixa[j, 0], matrizfixa[j, 1], {FormatFloat
                (Strpadrao,} rounding(matrizfixa[j, 0]));
          end;
          // for j

          SeriesIntra[l].addxy(TIWUserSession(WebApplication.Data)
              .matrizdinamica[l, 0], TIWUserSession(WebApplication.Data)
              .matrizdinamica[l, 1], {FormatFloat(Strpadrao,}
              rounding(matrizdinamica[l, 0]));
          SeriesIntra[l].Marks.Visible := false;

          TIWUserSession(WebApplication.Data).Auxvaloresplotados[i] :=
            TIWUserSession(WebApplication.Data).matrizdinamica[l, 0];
          inc(i);

          rdgrpbehav.Items.Add(Auxnomeseries[l] + '(' + {FormatFloat
              (Strpadrao,} rounding(matrizdinamica[l, 0]) + ')');
        end;

      end; // for l

    end; // userssesion

    for i := 0 to 2 do
    begin

      SeriesIntra[i].Pointer.Visible := true;
      SeriesIntra[i].Marks.Visible := true;
      SeriesIntra[i].Marks.Angle := 30;
      SeriesIntra[i].Marks.Margins.Left := 0;
      SeriesIntra[i].Marks.Margins.Top := 0;
      SeriesIntra[i].Marks.Margins.Right := 0;
      SeriesIntra[i].Marks.Margins.Bottom := 0;
      ChartIntra.View3D := false;
      ChartIntra.legend.Visible := false;

      ChartIntra.AddSeries(SeriesIntra[i]);
      ChartIntra.LeftAxis.Increment := 0.25;
      // intervalo de plote eixo y
      ChartIntra.LeftAxis.title.caption := 'V(x)';
      ChartIntra.LeftAxis.title.Position := tpEnd;
      ChartIntra.LeftAxis.title.Font.Style := [fsbold];

      ChartIntra.bottomaxis.Items.Automatic := true;
      // ChartIntra.BottomAxis.Logarithmic := true; // escala logaritmica para as labels não se sobreporem
      ChartIntra.bottomaxis.LabelsAlternate := true;
      ChartIntra.bottomaxis.LabelsAngle := 45;
      ChartIntra.bottomaxis.title.caption := 'x';
      ChartIntra.bottomaxis.title.Position := tpEnd;
      ChartIntra.bottomaxis.title.Font.Style := [fsbold];

      IWLabel3.Text := NomeCrit[AuxSalvai]; // titulo com nomedo criterio do grafico exibido
      // ChartIntra.BottomAxis.PosLabels(125, 'v(y)');

    end; // for i

    imgseries.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (ChartIntra.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgseries.Width,
          imgseries.Height)));

    imgseries.Show; // volta a visualização da imagem ocultada após trocar para ponto seguinte da bisec

  end; // UserSession
End; // procedimento

procedure TTFrmIntraCriterio.PlotaGraphsIntra2;
var
  i, j, l, K: integer;
  pontolaran: Double;
  Auxvteste: string;
  Auxnomeseries: array [0 .. 2] of string;
  flag1: boolean;
  // auxilia na verificação para quais séries pode plotar
  vtrpontosref, vtrteste, vtrmedio: array of Double;

Begin
  with TIWUserSession(WebApplication.Data) do
  begin

    // visualização de componentes
    rdgrpbehav.Visible := true;
    rgnInfosIntra.Visible := false;
    btnNextpoint.Visible := true;
    btnNextpoint.Enabled := true;
    btnnextcrit.Visible := false;
    rgnGraphIntra.Visible := true;
    btnbargraph.Visible := false;
    btnlinegraph.Visible := true;

      // Desabilitando e reiniciando tabela das info elicitadas
    awgcritelicited.ClearCells;
    awgcritelicited.RowCount := 0;
    rgninfoelicited.Visible := false;

    // vetor auxiliar para construção do rdgpSeries
    ChartIntra.ClearChart;
    rdgrpbehav.Items.Clear;

    if Idioma = 0 then
    begin
      Auxnomeseries[0] := 'Blue line';
      Auxnomeseries[1] := 'Yellow line';
      Auxnomeseries[2] := 'Red line';
    end // EN
    else
    begin
      Auxnomeseries[0] := 'Linha azul';
      Auxnomeseries[1] := 'Linha amarela';
      Auxnomeseries[2] := 'Linha vermelha';
    end; // PT

    // propriedades chart

    chrtbar.View3D := false;
    chrtbar.bottomaxis.Visible := true;
    chrtbar.Visible := true;
    chrtbar.title.Visible := false;
    chrtbar.legend.Visible := false;
    chrtbar.RightAxis.Items.Clear;
    chrtbar.LeftAxis.Items.Clear;
    chrtbar.bottomaxis.Items.Clear;
    // chrtbar.BottomAxis.endposition.
    chrtbar.Series[0].Clear;
    chrtbar.Series[1].Clear;

    // configurações de título, nome do eixo
    chrtbar.LeftAxis.title.caption := 'V(x)';
    chrtbar.LeftAxis.title.Position := tpEnd;
    chrtbar.LeftAxis.title.Font.Style := [fsbold];

    chrtbar.bottomaxis.LabelsAlternate := true;
    chrtbar.bottomaxis.LabelsAngle := 45;
    chrtbar.bottomaxis.title.caption := 'x';
    chrtbar.bottomaxis.title.Position := tpEnd;
    chrtbar.bottomaxis.title.Font.Style := [fsbold];
    IWLabel3.Text := NomeCrit[AuxSalvai];

    SetLength(vtrpontosref, 5);
    SetLength(vtrteste, 5);
    SetLength(vtrmedio, 3);

    K := AuxSalvai;
    Auxvteste := '';
    i := 0;
    SetLength(Auxvaloresplotados, i);

    for l := 0 to 2 do
    begin
      flag1 := false;

      // Compara o ponto X que queremos plotar com cada um dos pontos X anteriormente obtidos
      for j := 0 to Length(matrizfixa) - 1 do
      begin
        if TIWUserSession(WebApplication.Data).matrizfixa[j, 0] = matrizdinamica
          [l, 0] then
          flag1 := true; // Indica que existe um X anteriormente obtido que é igual ao X atual
      end;

      // Só plota qualquer ponto da série se o ponto X elicitado for diferente de qualquer outro ponto X anteriormente obtido
      if flag1 = false then
      begin
        SetLength(Auxvaloresplotados, i + 1);

        begin

          if Typeofcrit[K] = 1 then // max
          begin
            vtrteste[0] := vtrrangeintra[0];
            vtrteste[1] := TIWUserSession(WebApplication.Data)
              .matrizdinamica[0, 0]; // ponto medio
            vtrteste[2] := matrizdinamica[1, 0]; // ponto max
            vtrteste[3] := matrizdinamica[2, 0]; // ponto min
            vtrteste[4] := vtrrangeintra[1];

            vtrpontosref[0] := 0;
            vtrpontosref[1] := TIWUserSession(WebApplication.Data)
              .matrizdinamica[0, 0] - vtrrangeintra[0];
            vtrpontosref[2] := matrizdinamica[1, 0] - vtrrangeintra[0];
            vtrpontosref[3] := matrizdinamica[2, 0] - vtrrangeintra[0];
            vtrpontosref[4] := vtrrangeintra[1] - vtrrangeintra[0];

            // vtr com os pontos medios da serie
            vtrmedio[0] := matrizdinamica[0, 0];
            vtrmedio[1] := matrizdinamica[1, 0];
            vtrmedio[2] := matrizdinamica[2, 0];

            chrtbar.Series[1].addxy((vtrmedio[l] - vtrrangeintra[0]), l, '',
              clWebORANGE);
            chrtbar.Series[0].addxy((vtrrangeintra[1] - vtrrangeintra[0]), l,
              'x:' + FormatFloat(Strpadrao, vtrmedio[l]), clwebBLUE);
          end // max

          else
          begin // minimização

            vtrteste[0] := vtrrangeintra[1];
            vtrteste[1] := matrizdinamica[0, 0];
            vtrteste[2] := matrizdinamica[1, 0];
            vtrteste[3] := matrizdinamica[2, 0];
            vtrteste[4] := vtrrangeintra[0];

            vtrpontosref[0] := 0;
            vtrpontosref[1] := vtrrangeintra[1] - matrizdinamica[0, 0];
            vtrpontosref[2] := vtrrangeintra[1] - matrizdinamica[1, 0];
            vtrpontosref[3] := vtrrangeintra[1] - matrizdinamica[2, 0];
            vtrpontosref[4] := vtrrangeintra[1] - vtrrangeintra[0];

            vtrmedio[0] := matrizdinamica[0, 0];
            vtrmedio[1] := matrizdinamica[1, 0];
            vtrmedio[2] := matrizdinamica[2, 0];

            chrtbar.Series[1].addxy((vtrrangeintra[1] - vtrmedio[l]), l, '',
              clWebORANGE);
            chrtbar.Series[0].addxy((vtrrangeintra[1] - vtrrangeintra[0]), l,
              'x:' + FormatFloat(Strpadrao, vtrmedio[l]), clwebBLUE);

          end; // min
        end;

        TIWUserSession(WebApplication.Data).Auxvaloresplotados[i] :=
          TIWUserSession(WebApplication.Data).matrizdinamica[l, 0];
        inc(i);

        rdgrpbehav.Items.Add(FormatFloat(Strpadrao, matrizdinamica[l, 0]));
      end; //
    end; // for l

    chrtbar.bottomaxis.Items.Clear;

    for i := 0 to 4 do
    begin
      if Auxvteste <> floattostr(vtrteste[i]) then
      begin
        chrtbar.bottomaxis.Items.Add(vtrpontosref[i], FormatFloat
            (Strpadrao, vtrteste[i]));
        Auxvteste := floattostr(vtrteste[i]);
      end;
      // if Auxvteste <>
    end; // for I

    imgseries.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (chrtbar.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgseries.Width,
          imgseries.Height)));

    imgseries.Show; // volta a visualização da imagem ocultada após trocar para ponto seguinte da bisec
  end; // webapp
End; // procedimento

procedure TTFrmIntraCriterio.PlotaRangeIntra;
var
  i, j, K: integer;
  pontolaran, pontoazul: Double;
  vtrteste, vtrpontosref: array of Double;

Begin
  with TIWUserSession(WebApplication.Data) do
  begin

    i := AuxSalvai;
    SetLength(vtrteste, 3);
    SetLength(vtrpontosref, 3);

    chrtRangeintra.View3D := false;
    chrtRangeintra.bottomaxis.Visible := true;
    chrtRangeintra.bottomaxis.title.Font.Size := 8;
    // chrtRangeintra.BottomAxis.Items.Automatic := true;
    chrtRangeintra.LeftAxis.Visible := false;
    chrtRangeintra.title.Visible := false;
    chrtRangeintra.legend.Visible := false;
    chrtRangeintra.RightAxis.Items.Clear;
    chrtRangeintra.LeftAxis.Items.Clear;
    chrtRangeintra.bottomaxis.Items.Clear;
    chrtRangeintra.Series[0].Clear;
    chrtRangeintra.Series[1].Clear;

    (* Plot primeiro gráfico discretos *)
    if (TIWUserSession(WebApplication.Data).Typeofcrit[i] = 2) OR
      (Typeofcrit[i] = 3) then
    begin

      vtrteste[0] := LimInf;
      vtrteste[1] := LimMed;
      vtrteste[2] := LimSup;

      chrtRangeintra.Series[1].addxy(abs(LimMed - LimInf), j, '' + {trescasas}
          rounding(LimMed), clWebORANGE); // seta laranja
      chrtRangeintra.Series[0].addxy(abs(LimSup - LimInf), j, '' + {FormatFloat
          (Strpadrao,} rounding(LimSup), clwebBLUE); // barra azul

      chrtRangeintra.bottomaxis.Items.Clear;
      vtrpontosref[0] := 0;
      vtrpontosref[1] := abs(LimMed - LimInf);
      vtrpontosref[2] := abs(LimSup - LimInf);

      for j := 0 to 2 do
        chrtRangeintra.bottomaxis.Items.Add
          (vtrpontosref[j], {floattostr}rounding(vtrteste[j]));

      imgrangesintra.Picture.Bitmap.Assign
        (chrtRangeintra.TeeCreateBitmap(clWebAQUA, rect(0, 0,
            imgrangesintra.Width, imgrangesintra.Height)));

    end // discretos

    ELSE
    begin
      { Critérios Contínuos }

      if (Typeofcrit[i] = 1) then
      // Maximização Cont
      begin
        vtrteste[0] := TIWUserSession(WebApplication.Data).vtrrangeintra[0];
        vtrteste[1] := TIWUserSession(WebApplication.Data).LimMed;
        vtrteste[2] := TIWUserSession(WebApplication.Data).vtrrangeintra[1];

        vtrpontosref[0] := 0;
        vtrpontosref[1] := LimMed - vtrrangeintra[0];
        vtrpontosref[2] := vtrrangeintra[1] - vtrrangeintra[0];

        pontolaran := LimMed - vtrrangeintra[0];
        chrtRangeintra.Series[1].addxy(pontolaran, i, '' + {trescasas}rounding(LimMed), clWebORANGE);
        chrtRangeintra.Series[0].addxy((vtrrangeintra[1] - vtrrangeintra[0]),
          i, '' + {FormatFloat(Strpadrao,} rounding(LimSup), clwebBLUE);
      end;

      if (Typeofcrit[i] = 0) then
      // Minimização Cont/Disc
      begin
        vtrteste[0] := vtrrangeintra[1];
        vtrteste[1] := LimMed;
        vtrteste[2] := vtrrangeintra[0];

        vtrpontosref[0] := 0;
        vtrpontosref[1] := vtrrangeintra[1] - LimMed;
        vtrpontosref[2] := vtrrangeintra[1] - vtrrangeintra[0];

        pontolaran := vtrrangeintra[1] - LimMed;

        chrtRangeintra.Series[1].addxy(pontolaran, i, '' + {trescasas}rounding(LimMed),
          clWebORANGE);
        chrtRangeintra.Series[0].addxy((vtrrangeintra[1] - vtrrangeintra[0]),
          i, '' + {FormatFloat(Strpadrao,} rounding(LimInf), clwebBLUE);
      end; // fim min

      chrtRangeintra.bottomaxis.Items.Clear;

      for j := 0 to 2 do
        chrtRangeintra.bottomaxis.Items.Add
          (vtrpontosref[j], {FormatFloat(Strpadrao,} rounding(vtrteste[j]));

      imgrangesintra.Picture.Bitmap.Assign
        (chrtRangeintra.TeeCreateBitmap(clWebAQUA, rect(0, 0,
            imgrangesintra.Width, imgrangesintra.Height)));

    end; // else
  end; // webapp
End; // procedimento

procedure TTFrmIntraCriterio.PlotaValueFunction;
/// PROCEDIMENTO RESPONSAVEL PELO PLOTE FINAL DA FUNÇÃO VALOR

var
  i, l, j: integer;
  SeriesIntra: array of TLineSeries;

Begin
  with TIWUserSession(WebApplication.Data) do

  begin

    SetLength(SeriesIntra, 1);
    ChartIntra.View3D := false;
    rdgrpbehav.Visible := false;
    btnNextpoint.Enabled := false;
    btnnextcrit.Visible := true;
    rgnInfosIntra.Visible := false;
    ChartIntra.Visible := true;
    rgnGraphIntra.Visible := true;
    txtPoints.Visible := false;
    txtFunction.Visible := true;

      // Desabilitando e reiniciando tabela das info elicitadas
    awgcritelicited.ClearCells;
    awgcritelicited.RowCount := 0;
    rgninfoelicited.Visible := false;

    l := 0;
    SeriesIntra[l] := TLineSeries.create(Self);

    for j := 0 to Length(matrizfixa) - 1 do
    begin

      SeriesIntra[l].addxy(TIWUserSession(WebApplication.Data)
          .matrizfixa[j, 0], matrizfixa[j, 1], {FormatFloat
          (Strpadrao,} rounding(matrizfixa[j, 0]));
    end;

    // ChartIntra.Series[0].Clear;
    ChartIntra.ClearChart;

    SeriesIntra[0].Pointer.Visible := true;
    SeriesIntra[0].Marks.Visible := true;
    SeriesIntra[0].Marks.Margins.Left := 0;
    SeriesIntra[0].Marks.Margins.Top := 0;
    SeriesIntra[0].Marks.Margins.Right := 0;
    SeriesIntra[0].Marks.Margins.Bottom := 0;
    IWLabel3.Text := NomeCrit[AuxSalvai];

    // Colocando título no gráfico da INTRA
    ChartIntra.title.Text.Add('Form of the value function ');
    ChartIntra.title.Font.Name := 'Verdana';
    ChartIntra.title.Font.Color := clBlack;
    ChartIntra.title.Font.Style := [fsbold];

    ChartIntra.View3D := false;
    ChartIntra.AddSeries(SeriesIntra[0]);
    ChartIntra.legend.Visible := false;
    ChartIntra.LeftAxis.Increment := 0.25;
    // intervalo de plote eixo y
    ChartIntra.LeftAxis.title.caption := 'V(x)';
    ChartIntra.LeftAxis.title.Position := tpEnd;

    ChartIntra.LeftAxis.title.Font.Style := [fsbold];
    // ChartIntra.BottomAxis.Logarithmic := true; // escala logaritmica para as labels não se sobreporem

    ChartIntra.bottomaxis.LabelsAlternate := true;
    ChartIntra.bottomaxis.title.caption := 'x';
    ChartIntra.bottomaxis.title.Position := tpEnd;
    ChartIntra.bottomaxis.title.Font.Style := [fsbold];

    imgseries.Picture.Bitmap.Assign // comando que tira o 'print' do gráfico para exibi-lo no componente image
      (ChartIntra.TeeCreateBitmap(clWebAQUA, rect(0, 0, imgseries.Width,
          imgseries.Height)));

    imgseries.Show; // volta a visualização da imagem ocultada após trocar para ponto seguinte da bisec

  end; // usersession
End;

procedure TTFrmIntraCriterio.Portuguese1Click(Sender: TObject);
begin
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\Guia Rápido Fitradeoff - PT-BR' + '.pdf', true);
end;

procedure TTFrmIntraCriterio.Restartproblem1Click(Sender: TObject);
/// botão acionado toda vez que decisor quiser sair da região de elicitação intracriterio
var
  i, j, Auxi: integer;

begin
  with TIWUserSession(WebApplication.Data) do
  begin
  IWLabel4.Visible := false;

    /// troca de região///
    //rgnMenuIntracrit.Visible := true;
    rgnElicIntra.Visible := true;
    IWLink1.Visible := true;

    // DESABILITANDO O GRÁFICO CASO ELE ESTEJA SENDO MOSTRADO
    rgngrafintra.Visible := false;

    // DESABILITANDO JANELA DE DECISÃO DA "RESET ELICITATION" CASO ESTEJA SENDO MOSTRADA
    rgnresetcrit.Visible := false;


    {
    // LIMPANDO VARIRÁVEL QUE SALVA OS CICLOS DA ETAPA INTRACRITÉRIO
    TIWUserSession(WebApplication.Data).infoCYCLE := '';

    // LIMPANDO MATRIZ QUE SALVA OS CICLOS DA ETAPA INTRA
    SetLength(TIWUserSession(WebApplication.Data).MatrizInfoElicited, 0, 0);

    // ZERANDO O CONTADOR DE CICLOS DA ETAPA INTRACRITERIO
    TIWUserSession(WebApplication.Data).Nciclos := 0;
    }

     TIWUserSession(WebApplication.Data).infoCYCLE := TIWUserSession
      (WebApplication.Data).infoCYCLE + '0////Reset elicitation/';


        //Incrementando a quantidade de ciclos
  inc(Nciclos);
  //Salvando a contagem dos ciclos em um vetor

  SetLength(guardaciclos, TIWUserSession(WebApplication.Data).Nciclos);

  TIWUserSession(WebApplication.Data).guardaciclos[0] := 1; //O ciclo inicial sempre será 1
  TIWUserSession(WebApplication.Data).guardaciclos[TIWUserSession(WebApplication.Data).Nciclos-1] :=  0;


    // Desabilitando e zerando as tabelas da intra
    rgninfoelicited.Visible := false;
    rgninfocritelicitados.Visible := false;
    awgcritelicitados.RowCount := 0;
    awgcritelicited.RowCount := 0;

    Auxi := 0;
    {for i := 0 to NumCrit - 1 do
    begin
      if (TIWUserSession(WebApplication.Data).VerificaIntra[i]) = true then
      begin
        Auxi := 1;
      end;
    end; }

    if Auxi = 1 then
    btnusetab.Enabled := false;
    rgnObrigatorios.Visible := false;

    if Auxi = 0 then
      btnusetab.Enabled := true;
    // rgnObrigatorios.Visible := true;

    /// liberando componentes e principais variaveis///
    cmbbxselectCrit.ItemIndex := -1;
    cmbbxselectCrit.Enabled := true;
    cmbbxselectCrit.Clear;
    cmbbxpercent.ItemIndex := 2;
    cmbbxpercent.Enabled := true;
    grdObrigatorios.Clear;

    rdgrpBisec.Enabled := true;
    rdgrpBisec.Items.Clear;
    rdgrpBisec.ItemIndex := -1;
    btnNextpoint.Enabled := true;
    btnOkElicIntra.Enabled := true;
    lnkDefinePoint.Enabled := true;
    // btnusetab.Enabled := true;
    btnInputNew.Enabled := true;

    rgnGraphIntra.Visible := false;
    // rgnInfosIntra.Visible := true;
    rdgrpbehav.Visible := false;
    btnNextpoint.Enabled := false;
    ChartIntra.Visible := false;
    rgnInfosIntra.Visible := false;
    imgseries.Hide;

    rgntextoslinear.Visible := false;
    TIWHelpdeclareLin.Visible := false;
    btnOkElicIntra.Visible := false;
    rdgrpBisec.Visible := false;
    txtRemarkindif.Visible := false;
    lblwhatprefer.Visible := false;
    lblwhatprefer2.Visible := false;

    SetLength(TIWUserSession(WebApplication.Data).newFtipo, 0);
    // alteração 22.02.22

    for j := 0 to Length(vtrpontosbisec) - 1 do // limpando o vetor
      TIWUserSession(WebApplication.Data).vtrpontosbisec[j] := 0;

    {if Auxi = 1 then
      btnElicFuncClick(Self);}

    SalvarBdIntra(-1); // abre novo roundIntra, indica que usuario está refazendo mesmo prob sem ter concluido/deslogado
  end;
  rgnlegendranges.Visible := false;
  IWLabel4.Visible := false;

  // Inabilitando tabela dos critérios elicitados
  rgninfocritelicitados.Visible := false;
  btnElicFuncClick(Self);

  // Inabilitando link para visualizar critérios elicitados e chamando procedimento para atualizar a tabela dos critelicitados
  lnkviewcritelicitados.Visible := false;
  btncriterioselicitadosClick(Sender);

end;

// procedimento

procedure TTFrmIntraCriterio.InterpolacaoPontos;
/// neste procedimento é realizado o calculo das conseq normalizadas, a partir de interpolação linear
/// utilizando os pontos elicitados

var
  i, j, l, q: integer;
  Ct: integer; // Índice do critério que está sendo transformado por meio da interpolação, na ordem da planilha de input
  // AuxConsReal, y, x, xp: array of double;
  AuxMatrizfixa: array of array of Double;
  AuxCons: Double;

begin
  with TIWUserSession(WebApplication.Data) do
  begin
    SetLength(AuxMatrizfixa, Length(matrizfixa), 2);
    SetLength(matrizpontosreais, 5, NumCrit);
    // Setlength(AuxConsReal, numalt);
    SetLength(AuxConsNorm, Numalt, NumCrit);
    SetLength(ConsNorm, Numalt, NumCrit);
    Ct := AuxSalvai;

    for i := 0 to 1 do
    begin
      for j := 0 to Length(matrizfixa) - 1 do
        // mtz local pega pontos elicitados, para não mexer na matriz global

        AuxMatrizfixa[j, i] := TIWUserSession(WebApplication.Data)
          .matrizfixa[j, i];
    end; // for i

    for i := 0 to Numalt - 1 do
    begin
      AuxCons := TIWUserSession(WebApplication.Data).ConsMatrix[i, Ct]; // Vai ajudar  código a ficar mais limpo e permitir ver  valor da cons em questão

      if (Typeofcrit[Ct] = 1) OR (Typeofcrit[Ct] = 3) then // maximização
      begin

        If AuxCons = TIWUserSession(WebApplication.Data).BoundMn[Ct] then
          AuxConsNorm[i, Ct] := 0;
        If AuxCons = TIWUserSession(WebApplication.Data).BoundMx[Ct] then
          AuxConsNorm[i, Ct] := 1

        else // se não forem os extremos, interpola os intermediarios

          if (AuxCons > AuxMatrizfixa[1, 0]) and
          (AuxCons <= AuxMatrizfixa[3, 0]) then // interpolação 0 e 0,25
        begin
          AuxConsNorm[i, Ct] := 0.25 * ((AuxCons - AuxMatrizfixa[1, 0]) /
              (AuxMatrizfixa[3, 0] - AuxMatrizfixa[1, 0]));
        end;

        if (AuxCons > AuxMatrizfixa[3, 0]) and (AuxCons <= AuxMatrizfixa[2, 0])
          then
        // interpolação 0,25 e 0,5
        begin
          TIWUserSession(WebApplication.Data).AuxConsNorm[i, Ct] := 0.25 +
            (0.25 * ((AuxCons - AuxMatrizfixa[3, 0]) /
                (AuxMatrizfixa[2, 0] - AuxMatrizfixa[3, 0])));
        end;

        if (AuxCons > AuxMatrizfixa[2, 0]) and (AuxCons <= AuxMatrizfixa[4, 0])
          then
        // interpolação 0,5 e 0,75
        begin
          AuxConsNorm[i, Ct] := 0.5 +
            (0.25 * ((AuxCons - AuxMatrizfixa[2, 0]) /
                (AuxMatrizfixa[4, 0] - AuxMatrizfixa[2, 0])));
        end;

        if (AuxCons > AuxMatrizfixa[4, 0]) and (AuxCons < AuxMatrizfixa[0, 0])
          then
        // interpolação 0,75 e 1
        begin
          AuxConsNorm[i, Ct] := 0.75 +
            (0.25 * ((AuxCons - AuxMatrizfixa[4, 0]) /
                (AuxMatrizfixa[0, 0] - AuxMatrizfixa[4, 0])));
        end;
      end;
      // typeof =1

      if (Typeofcrit[Ct] = 0) OR (Typeofcrit[Ct] = 2) then // minimização
      begin

        If AuxCons = TIWUserSession(WebApplication.Data).BoundMn[Ct] then
          AuxConsNorm[i, Ct] := 1;
        If AuxCons = TIWUserSession(WebApplication.Data).BoundMx[Ct] then
          AuxConsNorm[i, Ct] := 0

        else // se não forem os extremos, interpola os intermediarios

          if (AuxCons < AuxMatrizfixa[1, 0]) and
          (AuxCons >= AuxMatrizfixa[3, 0]) then // interpolação 0 e 0,25
        begin
          AuxConsNorm[i, Ct] := 0.25 * ((AuxCons - AuxMatrizfixa[1, 0]) /
              (AuxMatrizfixa[3, 0] - AuxMatrizfixa[1, 0]));
        end;

        if (AuxCons < AuxMatrizfixa[3, 0]) and (AuxCons >= AuxMatrizfixa[2, 0])
          then
        // interpolação 0,25 e 0,5
        begin
          AuxConsNorm[i, Ct] := 0.25 +
            (0.25 * ((AuxCons - AuxMatrizfixa[3, 0]) /
                (AuxMatrizfixa[2, 0] - AuxMatrizfixa[3, 0])));
        end;

        if (AuxCons < AuxMatrizfixa[2, 0]) and (AuxCons >= AuxMatrizfixa[4, 0])
          then
        // interpolação 0,5 e 0,75
        begin
          TIWUserSession(WebApplication.Data).AuxConsNorm[i, Ct] := 0.5 +
            (0.25 * ((AuxCons - AuxMatrizfixa[2, 0]) /
                (AuxMatrizfixa[4, 0] - AuxMatrizfixa[2, 0])));
        end;

        if (AuxCons < AuxMatrizfixa[4, 0]) and (AuxCons > AuxMatrizfixa[0, 0])
          then
        // interpolação 0,75 e 1
        begin
          AuxConsNorm[i, Ct] := 0.75 +
            (0.25 * ((AuxCons - AuxMatrizfixa[4, 0]) /
                (AuxMatrizfixa[0, 0] - AuxMatrizfixa[4, 0])));
        end;
      end;
      // typeof =0
    end; // for i

    // preenchendo boleano que indica quando faz interpolação
    TIWUserSession(WebApplication.Data).VtrcritBisec[Ct] := true;

    // salvando normalização local na consnorm principal//
    for i := 0 to Numalt - 1 do
      TIWUserSession(WebApplication.Data).ConsNorm[i, Ct] := AuxConsNorm[i, Ct];

    for i := 0 to 4 do // quantidades de pontos da função
      TIWUserSession(WebApplication.Data).matrizpontosreais[i, Ct] := matrizfixa
        [i, 0]; // salvando os pontos reais de todos os crit na ordem do input, a cada rodada de elicitação finalizada

    SalvarBdIntra(1); // salvando no BD idproblem, consnorm e e pontosbisec a cada rodada
    SalvarBdIntra(3);
  end; // webapp
end;

procedure TTFrmIntraCriterio.IWAppFormCreate(Sender: TObject);
begin
btncriterioselicitadosClick(Sender);
rgnresetcrit.Visible := false;

end;

procedure TTFrmIntraCriterio.IWButton10Click(Sender: TObject);
var
  i: integer;
begin
  WebApplication.TerminateAndRedirect('http://fitradeoff.org/');
  WebApplication.Terminate();
end;

procedure TTFrmIntraCriterio.IWButton1Click(Sender: TObject);
begin
  // SALVANDO A IMAGEM DO GRÁFICO
  ChartIntra.TeeCreateBitmap(clWhite, rect(0, 0, ChartIntra.Width,
      ChartIntra.Height)).SaveToFile(
    'C:\inetpub\fitradeoff\Images\ Form of the value' + '.jpg');
  WebApplication.SendFile(
    'C:\inetpub\fitradeoff\Images\ Form of the value' + '.jpg', true);
  // DELETANDO A IMAGEM DO GRÁFICO -  PRA NÃO ENCHER A MEMÓRIA
  DeleteFile('C:\inetpub\fitradeoff\Images\ Form of the value' + '.jpg');
end;

procedure TTFrmIntraCriterio.btnokinfosClick(Sender: TObject);
/// botão da rgn acionada no link "about intra-criteria", acionado quando o usuário
/// deseja fechar a janela que contem as informações sobre essa parte do sistema
var
  i, contvi, ind, u: integer;

begin
  with TIWUserSession(WebApplication.Data) do

  begin
    SetLength(DinamVerificaIntra, NumCrit);
    contvi := 0;
    for i := 0 to TIWUserSession(WebApplication.Data).NumCrit - 1 do
    begin
      if TIWUserSession(WebApplication.Data).DinamVerificaIntra[i] = true then
      begin
        inc(contvi);
        continue; // testar
      end;
    end;
    if contvi = 0 then // nenhum true = não tem mais obrigatórios
    begin
      { lnkStopElicit.Visible := true;
        IWLink7.Visible := true;
        TIWHelpLink7.Visible := true; }
    end;
    if contvi <> 0 then // tem algum crit obrigatório não elicitado
    begin
      //IWLink1.Visible := false;
      IWLink7.Visible := false;
      TIWHelpLink7.Visible := false;
    end; // if dinamico= false

    rgnInfosIntra.Visible := false;
    txtMsgObrigatorios.Visible := true;
    grdObrigatorios.Visible := true;
    txtSemObrigatorios.Visible := false;
    // rgnObrigatorios.Visible := true;
  end;
end;

procedure TTFrmIntraCriterio.TesteMatVarClick(Sender: TObject);
begin
  WebApplication.ShowMessage(floattostr(TIWUserSession(WebApplication.Data)
        .MvarIntra[0, 0, 0]));
end;

// procedimento

procedure TTFrmIntraCriterio.rgnElicIntraCreate(Sender: TObject);
var
  i: integer;
begin
  if TIWUserSession(WebApplication.Data).resetintra = false then
    btncriterioselicitadosClick(Sender);

    //Apenas mostrar o link para definir todos os critérios como lineares se nenhum tiver sido elicitado até o momento
    // 26/06 - wagner
    if awgcritelicitados.RowCount>0 then begin
    IWLink1.Visible:= false;
    end else
    IWLink1.Visible:= true;

end;

procedure TTFrmIntraCriterio.rgninfocritelicitadosCreate(Sender: TObject);
begin
  // Tirando a borda da region
  rgninfocritelicitados.BorderOptions.Color := clWindow;

end;

procedure TTFrmIntraCriterio.rgninfoelicitedCreate(Sender: TObject);
begin
  rgninfoelicited.BorderOptions.Color := clWindow;

end;

procedure TTFrmIntraCriterio.rgnMenuIntracritCreate(Sender: TObject);
/// criação da visibilidade da rgn dfe elicitação e verificações sobre componentes
/// que passarão pela fase, por falta de info na planilha de input

var
  i, j, ContObrigatorios: integer;
begin

  // ** Definindo o idioma ativo **//
  if TIWUserSession(WebApplication.Data).Idioma = 1 then
    imgPTClick(Self)
  else
    imgENClick(Self);
  with TIWUserSession(WebApplication.Data) do

  begin

    case retornointra of // ALTERAÇÃO EM 14.02.22
      0: // estagiointra=0, nenhum criterio foi elicitado até o final, então volta na tela do menu
        begin
          rgnMenuIntracrit.Visible := true;
          rgnMenuIntracrit.Left := 425;
          rgnMenuIntracrit.Top := 100;
          rgnElicIntra.Align := Talign(5);
          /// salvando o stage intracriterio do problema
          EstagioIntra := 0;
          SalvarBdIntra(-1); // criando no BDIntra o registro da planilha intracrit
          SalvarBdIntra(5); // atualizando stage na planilha intracrit
          { EXPERIMENTOS 06_05 }
          btnElicFuncClick(Self);
        end; // CASE 0

      1: // estagiointra=1, algum criterio já foi elicitado até o final, então volta na tela de elicitação
        begin
          rgnElicIntra.Visible := true;
          rgnElicIntra.Left := 425;
          rgnElicIntra.Top := 100;
          rgnElicIntra.Align := Talign(5);
          grdObrigatorios.RowCount := 0; // garante que não fique linhas remanescentes
          ContObrigatorios := 0; // inicilizando var

          with TIWUserSession(WebApplication.Data) do

          begin
            SetLength(vtrNomeNumCont, NumCrit);

            for j := 0 to NumCrit - 1 do

              // if (Typeofcrit[J] = 0) OR (Typeofcrit[J] = 1) then
              // se for criContinuo
              if (TIWUserSession(WebApplication.Data).Niveis[j] <> 2) and
                (Niveis[j] <> 6) and (Niveis[j] <> 7) then
              begin

                if TIWUserSession(WebApplication.Data).DinamVerificaIntra[j]
                  = true then
                // critérios que eram obrigatorios na primeira entrada e ainda não foram elicitados

                begin // preenchendo componente que vai exibir os criterios obrigatorios na rgn da elic
                  grdObrigatorios.RowCount := grdObrigatorios.RowCount + 1;
                  i := grdObrigatorios.RowCount;
                  grdObrigatorios.Cell[i - 1, 0].Text := NomeCrit[j] + ';';
                  TIWUserSession(WebApplication.Data).vtrNomeNumCont[j] :=
                    NomeCrit[j];
                  cmbbxselectCrit.Items.Add(vtrNomeNumCont[j]);
                  // inserindo criterios remanescentes no cmbbx dos criterios
                  inc(ContObrigatorios);

                end; // Dinamverificaintra
              end; // if (TypeofCrit[j]= 0) OR  (Typeofcrit[j]= 1)

            txtMsgObrigatorios.Visible := true;
            grdObrigatorios.Visible := true;
            txtSemObrigatorios.Visible := false;
            // rgnObrigatorios.Visible := true;
            lnkStopElicit.Visible := false;
            TIWHelpLink7.Visible := false;
            lnkDefinePoint.Visible := false;
            lblDef2.Visible := false;
            TIWHelpIntDef.Visible := false;

          end; // for j

          if ContObrigatorios = 0 then // ou seja, todos foram imputados completos
          /// componentes relacionados a exibição do link referente a poder parar de responder perguntas
          /// da bisseção, após a primeira respondida.
          begin
            txtMsgObrigatorios.Visible := false;
            grdObrigatorios.Visible := false;
            txtSemObrigatorios.Visible := true;
            { lnkStopElicit.Visible := true;
              TIWHelpLink7.Visible := true; }
          end;

        end; // 1
    end; // case of   //FIM ALTERAÇÃO EM 14.02.22

  end; // WEBAPP

end;

procedure TTFrmIntraCriterio.rgntextoslinearCreate(Sender: TObject);
begin

end;

// proced

Function TTFrmIntraCriterio.trescasas(Num: Double): String;
/// função para arredondamento adaptada para duas casas, ao invés de 3
var
  S: string;
  i, K: integer;
  inicia: boolean;

begin
  inicia := false;
  K := 0;
  S := floattostr(Num);
  // ** Contando o número de casas decimais **//
  for i := 2 to Length(S) - 1 do
  begin
    if inicia = true then
      inc(K);
    if (S[i] = ',') or (S[i] = '.') then
      inicia := true;
  end;

  if K >= 3 then
    Result := FormatFloat('0.00', Num)
  else
    Result := S;
end;

/// FUNÇÃO REPONSAVEL POR REALIZAR O ARREDONDAMENTO DAS CONSEQUÊNCIAS 7
/// MOSTRADAS AO USUÁRIO - Yara
function TTFrmIntraCriterio.Rounding(Value: Double): String;
var
  RangeDif, resultado: Double;
  Digitos, ValueTrunc, i, DecimalPos: Integer;
  Valuestr, DecimalPart, IntPart, Suffix, temp: String;
begin
  with TIWUserSession(WebApplication.Data) do
  begin
  i := AuxSalvai;
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
  IWLabel4.Visible := true;


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
    if (StrToIntDef(DecimalPart, -1) = 0) then
      Result := IntPart + Suffix; // Remove a parte decimal, mantendo 'M' ou 'K'
  end;
end;

if (Typeofcrit[i] = 2) or (Typeofcrit[i] = 3) then
Result := FormatFloat('0', value); // Retorno padrão para casos não especificados para critérios discretos
end;
end;


procedure TTFrmIntraCriterio.NewProblem1Click(Sender: TObject);
var
  i: integer;

begin
  with TIWUserSession(WebApplication.Data) do
  begin


    // DESABILITANDO JANELA DE DECISÃO DA "RESET ELICITATION" CASO ESTEJA SENDO MOSTRADA
    rgnresetcrit.Visible := false;


    // Inabilitando tabela dos critérios elicitados
    rgninfocritelicitados.Visible := false;

    // limpando infos remanescentes do vtr verificaintra, caso usuário mude prob sem deslogar
    for i := 0 to NumCrit - 1 do
      TIWUserSession(WebApplication.Data).VerificaIntra[i] := false;

    // faz transição de unt
    TIWUserSession(WebApplication.Data).verificaUnit := -55;
    TfrmEntrada.create(WebApplication).Show;

  end; // webapp
end;

procedure TTFrmIntraCriterio.Normaliza;
/// Esse procedimento realiza a normalização das consequências considerando
/// o tipo de função valor. E se o critério em qurestão passou ou não pela avaliação IntraCrit
var
  i, j: integer;
  Zmax, Zmin: Double;
  matriztestesnormal: array of array of Double;

begin

  with TIWUserSession(WebApplication.Data) do
  begin
    SetLength(TIWUserSession(WebApplication.Data).ConsNorm, TIWUserSession
        (WebApplication.Data).Numalt, TIWUserSession(WebApplication.Data)
        .NumCrit);
    // Setlength(VtrcritBisec, Numcrit);   verificar se após comentario vai dar treta

    for j := 0 to NumCrit - 1 do
      for i := 0 to Numalt - 1 do

        if TIWUserSession(WebApplication.Data).VtrcritBisec[j] = true then
        // criterio passou pela interpolação para transformar escala
        begin
          continue;
        end

        else // false indica que crit não foi elicitado, entra na normaliza
        begin

          if (TIWUserSession(WebApplication.Data).Niveis[j] = 2) or
            (TIWUserSession(WebApplication.Data).Niveis[j] = 6) or
            (TIWUserSession(WebApplication.Data).Niveis[j] = 7) then
          begin
            TIWUserSession(WebApplication.Data).Ftipo[j] := 1;
          end;

          /// verificar se os criterios DISCRETOS devem seguir uma regra diferente de transformação da escala///
          case TIWUserSession(WebApplication.Data).Ftipo[j] of // função que armazena o vetor dos tipos de FO declaradas na planilha

            1: // procedimento realiza a normalização das consequências considerando a função valor linear ///////////////////////
              begin
                // Normalização para os critérios de maximização //////////////////////
                if (TIWUserSession(WebApplication.Data).Typeofcrit[j] = 1) or
                  (Typeofcrit[j] = 3) then
                  TIWUserSession(WebApplication.Data).ConsNorm[i, j] :=
                    (ConsMatrix[i, j] - Min[j]) / (Max[j] - Min[j]);
                /// Normalização para os critérios de minimização //////////////////////
                if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
                  TIWUserSession(WebApplication.Data).ConsNorm[i, j] :=
                    (ConsMatrix[i, j] - Max[j]) / (-Max[j] + Min[j]);

              end;

            2: // procedimento realiza a normalização das consequencias considerando função valor exponencial
              begin
                if Min[j] = 0 then
                  Min[j] := Power(10, -5);
                // O QUE É POWER??
                Zmin := Exp(TIWUserSession(WebApplication.Data)
                    .parA[j] * Min[j]);
                // exponencial do parametro A vezes o valor minimo capturado no criterio
                Zmax := Exp(parA[j] * Max[j]); // exponencial do parametro A vezes o valor máximo capturado no criterio

                // normalização para os criterios de maximização//
                if (Typeofcrit[j] = 1) or (Typeofcrit[j] = 3) then
                  ConsNorm[i, j] :=
                    (Exp(parA[j] * TIWUserSession(WebApplication.Data)
                        .ConsMatrix[i, j]) - Zmin) / (Zmax - Zmin);
                // normalização para os criterios de minimização//
                if (Typeofcrit[j] = 0) or (Typeofcrit[j] = 2) then
                  ConsNorm[i, j] := (Exp(parA[j] * ConsMatrix[i, j]) - Zmax) /
                    (Zmin - Zmax);
              end;

            3: // procedimento realiza a normalização das consequencias considerando função valor logaritmica
              begin
                if Min[j] = 0 then
                  Min[j] := Power(10, -5);
                // O QUE É POWER??
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
              end;

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
                  TIWUserSession(WebApplication.Data).ConsNorm[i, j] :=
                    (Exp(-parA[j] / TIWUserSession(WebApplication.Data)
                        .ConsMatrix[i, j]) - Zmax) / (Zmin - Zmax);
                { else
                  ConsNorm[i, j] := 1; }
              end;
          end;

        end; // final dos contadores

    SetLength(matriztestesnormal, Numalt, NumCrit);
    for i := 0 to Numalt - 1 do
      for j := 0 to NumCrit - 1 do
        matriztestesnormal[i, j] := TIWUserSession(WebApplication.Data)
          .ConsNorm[i, j];

  end;
  // final dos casos

  SalvarBdIntra(1); // chama caso para atualizar ConsNorm dos crits que não passaram pela interpolação

end;

procedure TTFrmIntraCriterio.SalvarBdIntra(evento: integer);
// procedimento que salva infos requeridas pelo BD, na etapa de elicitação intracritério.
// Onde 'evento' é o parametro utilizado para identificar os cases que serão chamados ao longo do codigo
var
  i, j, K: integer;
  AuxMatInterpol, AuxPointsBisec, AuxBoundMx, AuxBoundMn, AuxFtipoOrig,
    AuxLinearIntra, AuxChangeLinear, Auxpercentcrit, AuxCritElicit,
    AuxverificaIntra, AuxDinVerifica, AuxNewftipo, AuxMatVar: string;

begin
  with TIWUserSession(WebApplication.Data) do
  begin

    with UserSession.ZQuery1 do
      case evento of

        - 1: // criando registro do idproblem, roundIntra e roundInter que serão atualizados a cada info nova
          // este caso é chamado no Oncreat da rgn MenuIntra
          begin
            inc(TIWUserSession(WebApplication.Data).fvround);
            // primeiro registro, começa em 0

            sql.Text :=
              'INSERT INTO intracrit (Id_problem, round, RoundIntra) VALUES ("'
              + (TIWUserSession(WebApplication.Data).ID_Problema)
              + '", "' + IntToStr(TIWUserSession(WebApplication.Data).nround)
              + '" , "' + IntToStr(TIWUserSession(WebApplication.Data).fvround)
              + '")';
            ExecSQL;


          end; // case -1

        0:
          /// salvando, Ftipo original, Bounds Max e Min do problema a partir da referencia id_problem. Conforme ordem da planilha
          /// criterios que não tiveram função declarada, recebem 0. mas serão alterados
          /// este case é chamado no final do btnElicFunc update pra não criar novo registro
          /// Só entra uma vez, pq os bounds já sabe desde o início
          begin
            AuxBoundMx := '';
            AuxBoundMn := '';
            AuxFtipoOrig := '';
            AuxverificaIntra := '';

            for i := 0 to NumCrit - 1 do
            begin
              AuxBoundMx := AuxBoundMx + floattostr
                (TIWUserSession(WebApplication.Data).BoundMx[i]) + '/';
              AuxBoundMn := AuxBoundMn + floattostr
                (TIWUserSession(WebApplication.Data).BoundMn[i]) + '/';
              AuxFtipoOrig := AuxFtipoOrig + IntToStr
                (TIWUserSession(WebApplication.Data).Ftipo[i]) + '/';
              AuxverificaIntra := AuxverificaIntra + BoolToStr
                (TIWUserSession(WebApplication.Data).VerificaIntra[i]) + '/';
            end; // for i

            begin // passando pro BD
              sql.Text := 'UPDATE intracrit SET BoundMx ="' + AuxBoundMx +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;

              sql.Text := 'UPDATE intracrit SET BoundMn ="' + AuxBoundMn +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;

              sql.Text :=
                'UPDATE intracrit SET OriginalFtipo ="' + AuxFtipoOrig +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;
              sql.Text :=
                'UPDATE intracrit SET Verificaintra ="' + AuxverificaIntra +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;

            end; // for
          end; // case 0

        1:
          /// salvando id_problem, ConsNorm e Matrizpontosreais, gradatrivamente. Conforme ordem da planilha
          /// Esse caso foi chamado no final do proced InterpolacaoPontos. E no final da Normaliza
          /// update pra não criar novo registro
          begin
            AuxMatInterpol := '';
            AuxPointsBisec := '';
            SetLength(matrizpontosreais, 5, NumCrit);

            for j := 0 to NumCrit - 1 do
            begin

              for i := 0 to Numalt - 1 do
              begin
                AuxMatInterpol := AuxMatInterpol + floattostr
                  (TIWUserSession(WebApplication.Data).ConsNorm[i, j]) + '/';
              end; // for i
            end; // for j

            for j := 0 to NumCrit - 1 do
            begin
              for i := 0 to 5 - 1 do
              begin

                { if TIWUserSession(WebApplication.Data).verificaintra[j]=false then
                  begin
                  AuxPointsBisec:= AuxPointsBisec + '/';
                  end
                  else }
                AuxPointsBisec := AuxPointsBisec + floattostr
                  (TIWUserSession(WebApplication.Data).matrizpontosreais[i, j])
                  + '/';
              end;
              // for j
            end; // for i

            begin
              sql.Text :=
                'UPDATE intracrit SET NormalizaInterpol ="' + AuxMatInterpol +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;

              sql.Text :=
                'UPDATE intracrit SET PointsBisec ="' + AuxPointsBisec +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;

            end;

            AuxMatVar := '';
            // ** Salvando Matriz de Variação da AS **//
            for i := 0 to Length(TIWUserSession(WebApplication.Data).MvarIntra)
              - 1 do
            begin
              if Length(MvarIntra[i]) > 0 then
              begin
                // ** § separa as informações de critérios distintos **//
                if AuxMatVar <> '' then
                  AuxMatVar := AuxMatVar + '§';
                for j := 0 to Length(MvarIntra[i]) - 1 do
                begin
                  if j > 0 then
                    // ** - separa as informações de pontos distintos do mesmo critério I**//
                    AuxMatVar := AuxMatVar + '-';
                  for K := 0 to Length(MvarIntra[i, j]) - 1 do
                    // ** / separa as valores distintos atribuídos ao mesmo ponto J**//
                    AuxMatVar := AuxMatVar + floattostr(MvarIntra[i, j, K])
                      + '/';
                end;
              end
              else
                { S significa que o critério não teve a FV elicitada e portanto,
                  não tem pontos para serem variados }
                AuxMatVar := AuxMatVar + 's';
            end;

            sql.Text := 'UPDATE intracrit SET matasvar ="' + AuxMatVar +
              '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '"AND round="' + IntToStr
              (TIWUserSession(WebApplication.Data).nround)
              + '"AND RoundIntra="' + IntToStr
              (TIWUserSession(WebApplication.Data).fvround) + '";';
            ExecSQL;

          end; // case 1

        2:
          /// salvando criterios que foram declarados como linear na intracrit, a partir da referencia id_problem
          /// cada posição dos vtrs recebem o índice do criterio que preencheu o vtr correspondente
          /// este case é chamado no link 'Declare linear'. update pra não criar novo registro
          begin
            AuxLinearIntra := '';
            AuxChangeLinear := '';

            for i := 0 to NumCrit - 1 do
            begin
              if auxVtrLI <> 0 then
                // crits que já eram lineares

                AuxLinearIntra := AuxLinearIntra + IntToStr
                  (TIWUserSession(WebApplication.Data).vtrLinearintra[i]) + '/';

              begin // passando pro BD
                sql.Text :=
                  'UPDATE intracrit SET LinearIntra ="' + AuxLinearIntra +
                  '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                    .ID_Problema) + '"AND round="' + IntToStr
                  (TIWUserSession(WebApplication.Data).nround)
                  + '"AND RoundIntra="' + IntToStr
                  (TIWUserSession(WebApplication.Data).fvround) + '";';
                ExecSQL;
              end;

              if auxVtrCL <> 0 then // crits alterados para lineares

                AuxChangeLinear := AuxChangeLinear + IntToStr
                  (TIWUserSession(WebApplication.Data).vtrChangeLin[i]) + '/';

              begin
                sql.Text :=
                  'UPDATE intracrit SET ChangeLinear ="' + AuxChangeLinear +
                  '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                    .ID_Problema) + '"AND round="' + IntToStr
                  (TIWUserSession(WebApplication.Data).nround)
                  + '"AND RoundIntra="' + IntToStr
                  (TIWUserSession(WebApplication.Data).fvround) + '";';
                ExecSQL;
              end;

            end; // for i
          end; // case 2

        3:
          /// salvando percent dos criterios e se passou pela bisseção, a partir da referencia id_problem
          /// por ser um vtrbolean, se critelicitado receber -1, indica que passou pela bisseção e será interpolado
          /// este case é chamado no btnOkElicFunc. update pra não criar novo registro
          begin
            Auxpercentcrit := '';
            AuxCritElicit := '';

            for i := 0 to NumCrit - 1 do
            begin
              AuxCritElicit := AuxCritElicit + BoolToStr
                (TIWUserSession(WebApplication.Data).VtrcritBisec[i]) + '/';
              Auxpercentcrit := Auxpercentcrit + floattostr
                (TIWUserSession(WebApplication.Data).perc[i]) + '/';
            end; // for i

            begin
              sql.Text :=
                'UPDATE intracrit SET CritsElicitados ="' + AuxCritElicit +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;

              sql.Text := 'UPDATE intracrit SET percent ="' + Auxpercentcrit +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;

            end;

          end; // case 3

        { 4: // salvando id_problem, Matrizpontosreais, gradatrivamente. Conforme ordem da planilha
          /// Esse caso foi chamado no final do proced InterpolacaoPontos
          /// update pra não criar novo registro

          begin
          AuxPointsBisec := '';

          for J := 0 to NumCrit - 1 do
          begin

          for I := 0 to 5 - 1 do
          begin
          AuxPointsBisec := AuxPointsBisec + FloatToStr(matrizpontosreais[I, J]) + '/';
          end; // for j
          end; // for i

          begin
          SQL.Text :=
          'UPDATE intracrit SET PointsBisec ="' + AuxPointsBisec +
          '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
          .ID_Problema) + '"AND round="' + inttostr
          (TIWUserSession(WebApplication.Data).nround) + '";';
          ExecSQL;

          end;
          end; // case 4 }

        5: // salvando os stages da elicitação intracritério, a partir da referencia id_problem
          // Chamado no btnGoInterClick, lnkLinearClick, lnkGoToInterClick, btnnextcritClick, btnusetabClick, rgnMenuIntracritCreate.
          begin
            /// EstagioIntra=0 está no Oncreat da região MenuIntra
            /// EstagioIntra=1 está no lnkLinearclick e no btnnextcrit
            /// EstagioIntra=2 está no link "Go to inter" e em um if do btnnextcrit
            /// EstagioIntra=3 está no btnusetab da região MenuIntra

            sql.Text := 'UPDATE intracrit SET stage ="' + IntToStr
              (TIWUserSession(WebApplication.Data).EstagioIntra)
              + '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '"AND round="' + IntToStr
              (TIWUserSession(WebApplication.Data).nround)
              + '"AND RoundIntra="' + IntToStr
              (TIWUserSession(WebApplication.Data).fvround) + '";';
            ExecSQL;

            /// Caso em que o usuário já realizou a intra, está na tela de resultados
            /// E decide resetar a intra e sair do sistema
            /// Auxilia na retomada - YARA
            if (TIWUserSession(WebApplication.Data).resetintra = true) then
            begin
              TIWUserSession(WebApplication.Data).EstagioIntra := 2;
              for i := 0 to NumCrit - 1 do
              begin
                if (TIWUserSession(WebApplication.Data).EstagioIntra = 2) and
                  (TIWUserSession(WebApplication.Data).fvround <> 0) then
                  SalvarBdIntra(1);
              end;
              TIWUserSession(WebApplication.Data).resetintra := false;
            end;

          end; // case 5

        6: // salvando vetor dinamico do verificaintra, a partir da referencia id_problem. Conforme ordem da planilha
          /// este case é chamado pela primeira vez no btnElicFunc, para ser preenchidos. E depois nos componentes
          // lnkDeclareLin e btnnextcrit, onde criterios elicitados têm o boleano alterado para false, deixando de ser "obrigatórios"

          begin
            AuxDinVerifica := '';
            AuxNewftipo := '';
            // alteração 22.02.22

            for i := 0 to NumCrit - 1 do
            begin
              AuxDinVerifica := AuxDinVerifica + BoolToStr
                (TIWUserSession(WebApplication.Data).DinamVerificaIntra[i])
                + '/';

              AuxNewftipo := AuxNewftipo + IntToStr
                (TIWUserSession(WebApplication.Data).newFtipo[i]) + '/';
            end;

            begin // passando pro BD

              sql.Text :=
                'UPDATE intracrit SET DinVerificaIntra ="' + AuxDinVerifica +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;

              { ALTERAÇÃO 22.02.22 }
              sql.Text := 'UPDATE intracrit SET NewFtipo ="' + AuxNewftipo +
                '" WHERE id_problem="' + (TIWUserSession(WebApplication.Data)
                  .ID_Problema) + '"AND round="' + IntToStr
                (TIWUserSession(WebApplication.Data).nround)
                + '"AND RoundIntra="' + IntToStr
                (TIWUserSession(WebApplication.Data).fvround) + '";';
              ExecSQL;
              // FIM ALTERAÇÃO 22.02.22

            end; // for
          end; // case 6

        7:
          begin

            sql.Text := 'UPDATE tempos SET intra_fim ="' + ETFimIntra +
              '" WHERE id_problema="' + (TIWUserSession(WebApplication.Data)
                .ID_Problema) + '";';
            ExecSQL;
          end; // case 7

        8:
          begin

            for i := 0 to NumCrit - 1 do
            begin
              if NomeCrit[i] = EAuxNomeCrit then
                EindCrit := IntToStr(i);
            end;
            sql.Text :=
              'INSERT INTO info_intra (id_problem, criterio, seq_resp, tempo) VALUES ("' +
              (TIWUserSession(WebApplication.Data).ID_Problema)
              + '", "' + TIWUserSession(WebApplication.Data)
              .EindCrit + '" , "' + TIWUserSession(WebApplication.Data)
              .Eseqintra + '", "' + TIWUserSession(WebApplication.Data)
              .ETSelIntra + '")';
            ExecSQL;
          end;

      end; // case of

  end; // webapp
end; // proced

end.
