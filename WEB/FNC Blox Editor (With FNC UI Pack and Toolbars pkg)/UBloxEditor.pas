unit UBloxEditor;

interface

uses
  System.SysUtils, System.Classes, JS, Web, WEBLib.Graphics, WEBLib.Controls,
  WEBLib.Forms, WEBLib.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCSplitter,
  VCL.TMSFNCCustomControl, VCL.TMSFNCCustomScrollControl, VCL.TMSFNCBloxControl,
  Vcl.Controls, WEBLib.ExtCtrls, VCL.TMSFNCBloxSelector, VCL.TMSFNCBloxToolBar,
  VCL.TMSFNCToolBar, VCL.TMSFNCBloxNavigator, WEBLIB.TMSFNCBloxCoreTypes;

type
  TForm1 = class(TWebForm)
    WebPanel1: TWebPanel;
    WebPanel2: TWebPanel;
    TMSFNCBloxControl1: TTMSFNCBloxControl;
    TMSFNCSplitter1: TTMSFNCSplitter;
    TMSFNCBloxSelector1: TTMSFNCBloxSelector;
    TMSFNCBloxNavigator1: TTMSFNCBloxNavigator;
    TMSFNCToolBar1: TTMSFNCToolBar;
    TMSFNCBloxFormatBlockToolBar1: TTMSFNCBloxFormatBlockToolBar;
    TMSFNCBloxFormatBlockTextToolBar1: TTMSFNCBloxFormatBlockTextToolBar;
    TMSFNCBloxEditToolBar1: TTMSFNCBloxEditToolBar;
    TMSFNCBloxSelectToolBar1: TTMSFNCBloxSelectToolBar;
    procedure WebFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.WebFormShow(Sender: TObject);
begin
  WebPanel1.Height := TMSFNCToolBar1.Height + TMSFNCBloxFormatBlockToolBar1.Height + TMSFNCBloxFormatBlockTextToolBar1.Height + 2;
end;

end.