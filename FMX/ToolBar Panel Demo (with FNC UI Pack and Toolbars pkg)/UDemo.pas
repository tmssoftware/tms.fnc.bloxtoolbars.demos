unit UDemo;

interface

{$IFDEF ANDROID}
{$DEFINE MOBILE}
{$ENDIF}
{$IFDEF IOS}
{$DEFINE MOBILE}
{$ENDIF}

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.TMSFNCCustomControl, FMX.TMSFNCCustomScrollControl, FMX.TMSFNCBloxControl,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.TMSFNCBloxCoreTypes,
  FMX.TMSFNCBloxCoreUtils, FMX.TMSFNCBloxCoreLine, FMX.TMSFNCBloxCorePolygon,
  FMX.TMSFNCBloxCoreTextCell, FMX.TMSFNCBloxCoreLineArrow,
  FMX.TMSFNCBloxCoreLinkPoint, FMX.TMSFNCBloxCoreHandle,
  FMX.TMSFNCBloxCoreGroup, FMX.TMSFNCBloxCoreBlock, FMX.TMSFNCBloxCoreElement,
  FMX.TMSFNCBloxUIRegistration, FMX.TMSFNCBloxUISnapGrid,
  FMX.TMSFNCBloxUIRenderer;

type
  TForm66 = class(TForm)
    Panel1: TPanel;
    TMSFNCBloxControl1: TTMSFNCBloxControl;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form66: TForm66;

implementation

{$R *.fmx}

uses
  FMX.TMSFNCBloxToolBar,
  FMX.TMSFNCBloxShapesFlowChart,
  FMX.TMSFNCBloxShapesDFD,
  FMX.TMSFNCPersistence;

procedure TForm66.FormCreate(Sender: TObject);
var
  tbl: TTMSFNCBloxToolBar;
  ab: TTMSFNCBloxFlowActionBlock;
  db: TTMSFNCBloxFlowDataBlock;
  dcb: TTMSFNCBloxFlowDecisionBlock;
  dmb: TTMSFNCBloxFlowDocumentBlock;
  l: TTMSFNCBloxDFDDataFlowLine;
  c: TTMSFNCGraphicsColor;
begin
  tbl := TTMSFNCBloxToolBar.Create(Self);
  tbl.Parent := Self;
  tbl.Align := TAlignLayout.Left;
  {$IFDEF MOBILE}
  tbl.EmbeddedMode := True;
  TMSFNCBloxControl1.Presenter.Zoom := 0.75;
  {$ENDIF}

  Label1.Text := 'The toolbar at the left side can be used to change the appearance and layout'+
  ' of the elements as well as provide access to all the registered elements.'#13#10'Select an '+
  'already existing element or use the drag & drop functionality to place new elements on the blox canvas';

  c := gcNavy;

  TMSFNCBloxControl1.BeginUpdate;
  ab := TTMSFNCBloxFlowActionBlock.Create;
  ab.Stroke.Color := c;
  ab.Stroke.Width := 2;
  ab.TextColor := c;
  ab.FontStyle := [xsBold];
  ab.Left := 50;
  ab.Top := 50;
  ab.Width := ab.Width + 20;
  ab.Height := ab.Height + 20;
  ab.Text := 'Receive Order';
  TMSFNCBloxControl1.Blox.Add(ab);

  db := TTMSFNCBloxFlowDataBlock.Create;
  db.Stroke.Color := c;
  db.Stroke.Width := 2;
  db.TextColor := c;
  db.FontStyle := [xsBold];
  db.Left := ab.Left + ab.Width + 75;
  db.Top := ab.Top;
  db.Width := db.Width + 20;
  db.Height := db.Height + 20;
  db.Text := 'Distribution Centre';
  TMSFNCBloxControl1.Blox.Add(db);

  l := TTMSFNCBloxDFDDataFlowLine.Create;
  l.SourceLinkPoint.AnchorLink := ab.LinkPoints[3];
  l.TargetLinkPoint.AnchorLink := db.LinkPoints[1];
  l.Stroke.Color := c;
  l.Stroke.Width := 2;
  TMSFNCBloxControl1.Blox.Add(l);

  dcb := TTMSFNCBloxFlowDecisionBlock.Create;
  dcb.Stroke.Color := c;
  dcb.Stroke.Width := 2;
  dcb.TextColor := c;
  dcb.FontStyle := [xsBold];
  dcb.Left := db.Left + db.Width + 75;
  dcb.Top := db.Top;
  dcb.Width := dcb.Width + 20;
  dcb.Height := dcb.Height + 20;
  dcb.Text := 'Stock';
  TMSFNCBloxControl1.Blox.Add(dcb);

  l := TTMSFNCBloxDFDDataFlowLine.Create;
  l.SourceLinkPoint.AnchorLink := db.LinkPoints[2];
  l.TargetLinkPoint.AnchorLink := dcb.LinkPoints[2];
  l.Stroke.Color := c;
  l.Stroke.Width := 2;
  TMSFNCBloxControl1.Blox.Add(l);

  dmb := TTMSFNCBloxFlowDocumentBlock.Create;
  dmb.Stroke.Color := c;
  dmb.Stroke.Width := 2;
  dmb.TextColor := c;
  dmb.FontStyle := [xsBold];
  dmb.Left := dcb.Left + dcb.Width + 100;
  dmb.Top := dcb.Top + 50;
  dmb.Width := dmb.Width + 20;
  dmb.Height := dmb.Height + 20;
  dmb.Text := 'Print Invoice';
  TMSFNCBloxControl1.Blox.Add(dmb);

  l := TTMSFNCBloxDFDDataFlowLine.Create;
  l.SourceLinkPoint.AnchorLink := dcb.LinkPoints[3];
  l.TargetLinkPoint.AnchorLink := dmb.LinkPoints[1];
  l.Stroke.Color := c;
  l.Stroke.Width := 2;
  l.Text := 'Yes';
  l.TextColor := c;
  l.FontStyle := [xsBold];
  TMSFNCBloxControl1.Blox.Add(l);

  db := TTMSFNCBloxFlowDataBlock.Create;
  db.Stroke.Color := c;
  db.Stroke.Width := 2;
  db.TextColor := c;
  db.FontStyle := [xsBold];
  db.Left := dcb.Left - 100;
  db.Top := dcb.Top + dcb.Height + 150;
  db.Width := db.Width + 20;
  db.Height := db.Height + 20;
  db.Text := 'Advise Marketing';
  TMSFNCBloxControl1.Blox.Add(db);

  l := TTMSFNCBloxDFDDataFlowLine.Create;
  l.SourceLinkPoint.AnchorLink := dcb.LinkPoints[1];
  l.TargetLinkPoint.AnchorLink := db.LinkPoints[0];
  l.Stroke.Color := c;
  l.Stroke.Width := 2;
  l.Text := 'No';
  l.TextColor := c;
  l.FontStyle := [xsBold];
  TMSFNCBloxControl1.Blox.Add(l);

  ab := TTMSFNCBloxFlowActionBlock.Create;
  ab.Stroke.Color := gcRed;
  ab.Stroke.Width := 2;
  ab.TextColor := gcWhite;
  ab.FontStyle := [xsBold];
  ab.Left := dmb.Left;
  ab.Top := db.Top + 150;
  ab.Width := ab.Width + 20;
  ab.Height := ab.Height + 20;
  ab.Text := 'Inform Customer';
  ab.StrokeStyle := ssDot;
  ab.FillColor := gcLightcoral;
  TMSFNCBloxControl1.Blox.Add(ab);

  l := TTMSFNCBloxDFDDataFlowLine.Create;
  l.SourceLinkPoint.AnchorLink := db.LinkPoints[3];
  l.TargetLinkPoint.AnchorLink := ab.LinkPoints[0];
  l.Stroke.Color := gcRed;
  l.Stroke.Width := 2;
  l.StrokeStyle := ssDot;
  TMSFNCBloxControl1.Blox.Add(l);

  ab := TTMSFNCBloxFlowActionBlock.Create;
  ab.Stroke.Color := gcGreen;
  ab.Stroke.Width := 2;
  ab.TextColor := gcWhite;
  ab.FillColor := gcLightseagreen;
  ab.FontStyle := [xsBold];
  ab.Left := dmb.Left;
  ab.Top := dmb.Top + dmb.Height + 75;
  ab.Width := ab.Width + 20;
  ab.Height := ab.Height + 20;
  ab.Text := 'Ship Order';
  TMSFNCBloxControl1.Blox.Add(ab);

  l := TTMSFNCBloxDFDDataFlowLine.Create;
  l.SourceLinkPoint.AnchorLink := dmb.LinkPoints[3];
  l.TargetLinkPoint.AnchorLink := ab.LinkPoints[0];
  l.Stroke.Color := gcGreen;
  l.Stroke.Width := 2;
  TMSFNCBloxControl1.Blox.Add(l);

  TMSFNCBloxControl1.EndUpdate;
  TMSFNCBloxControl1.UndoManager.PushState('Original');
end;

end.
