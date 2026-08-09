unit uHasseDiagramLegend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, ExtCtrls;

type
  TfrmHasseDiagramLegend = class(TForm)
    Image1: TImage;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHasseDiagramLegend: TfrmHasseDiagramLegend;

implementation

{$R *.dfm}


procedure TfrmHasseDiagramLegend.FormShow(Sender: TObject);
begin
frmHasseDiagramLegend.FormStyle := fsStayOnTop;
end;

end.
