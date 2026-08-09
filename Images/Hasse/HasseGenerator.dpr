program HasseGenerator;

uses
  Forms,
  SimpleGraph in 'SimpleGraph.pas',
  uHasseDiagram in 'uHasseDiagram.pas' {frmSimpleGraph},
  uHasseDiagramLegend in 'uHasseDiagramLegend.pas' {frmHasseDiagramLegend};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmSimpleGraph, frmSimpleGraph);
  Application.CreateForm(TfrmHasseDiagramLegend, frmHasseDiagramLegend);
  Application.Run;
end.
