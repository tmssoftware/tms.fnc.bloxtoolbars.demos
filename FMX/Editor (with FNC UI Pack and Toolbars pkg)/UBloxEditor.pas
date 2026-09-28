unit UBloxEditor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.TMSFNCTypes, FMX.TMSFNCUtils, FMX.TMSFNCGraphics, FMX.TMSFNCGraphicsTypes,
  FMX.TMSFNCBloxToolBar, FMX.TMSFNCToolBar, FMX.TMSFNCSplitter,
  FMX.TMSFNCBloxSelector, FMX.TMSFNCCustomScrollControl, FMX.TMSFNCBloxControl,
  FMX.TMSFNCCustomControl, FMX.TMSFNCBloxNavigator, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.TMSFNCBloxCoreTypes, FMX.TMSFNCBloxCoreUtils,
  FMX.TMSFNCBloxCoreLine, FMX.TMSFNCBloxCorePolygon, FMX.TMSFNCBloxCoreTextCell,
  FMX.TMSFNCBloxCoreLineArrow, FMX.TMSFNCBloxCoreLinkPoint,
  FMX.TMSFNCBloxCoreHandle, FMX.TMSFNCBloxCoreGroup, FMX.TMSFNCBloxUISnapGrid,
  FMX.TMSFNCBloxCoreBlock, FMX.TMSFNCBloxCoreElement,
  FMX.TMSFNCBloxUIRegistration, FMX.TMSFNCBloxUIRenderer;

type
  TBloxEditorForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TMSFNCBloxNavigator1: TTMSFNCBloxNavigator;
    TMSFNCBloxSelector1: TTMSFNCBloxSelector;
    TMSFNCSplitter1: TTMSFNCSplitter;
    TMSFNCToolBar1: TTMSFNCToolBar;
    TMSFNCBloxEditToolBar1: TTMSFNCBloxEditToolBar;
    TMSFNCBloxFormatBlockToolBar1: TTMSFNCBloxFormatBlockToolBar;
    TMSFNCBloxFormatBlockTextToolBar1: TTMSFNCBloxFormatBlockTextToolBar;
    TMSFNCBloxSelectToolBar1: TTMSFNCBloxSelectToolBar;
    TMSFNCBloxControl1: TTMSFNCBloxControl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BloxEditorForm: TBloxEditorForm;

implementation

{$R *.fmx}

end.
