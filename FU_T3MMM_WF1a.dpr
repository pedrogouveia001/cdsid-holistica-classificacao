program FU_T3MMM_WF1a;
//Library FU_T3MMM_WF1a;

uses
  ISAPIApp,
  IWInitISAPI,
  Forms,
  IWMain,
  ServerController in 'ServerController.pas' {IWServerController: TIWServerControllerBase},
  UserSessionUnit in 'UserSessionUnit.pas' {IWUserSession: TIWUserSessionBase},
  lpsolve51 in 'lpsolve51.pas',
  untIntro in 'untIntro.pas' {FrmEntrada: TIWAppForm},
  uCode in 'uCode.pas',
  uAPI_SolveLP in 'uAPI_SolveLP.pas',
  uIntercritério in 'uIntercritério.pas' {frmaintercriterio: TIWAppForm},
  uPerfis in 'uPerfis.pas' {frmPerfis: TIWAppForm},
  uResultados in 'uResultados.pas' {frmResultados: TIWAppForm},
  untSortingResults in 'untSortingResults.pas' {frmSortingResults: TIWAppForm},
  uPortfolioResults in 'uPortfolioResults.pas' {frmPortfolioResultados: TIWAppForm},
  untIntraCriterio in 'untIntraCriterio.pas' {TFrmIntraCriterio: TIWAppForm},
  untPortfolioresults in 'untPortfolioresults.pas' {frmportfolioresults: TIWAppForm};

{$R *.res}
{Início ISAPI}
//exports GetExtensionVersion, HttpExtensionProc, TerminateExtension;
{Fim ISAPI}

begin
  Application.Initialize;
  Application.CreateForm(TformIWMain, formIWMain);
  Application.Run;
  //IwRun; {ISAPI}
end.
