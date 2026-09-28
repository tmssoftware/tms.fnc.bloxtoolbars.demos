unit UBloxEditor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCSplitter,
  VCL.TMSFNCBloxToolBar, VCL.TMSFNCToolBar, VCL.TMSFNCBloxControl,
  VCL.TMSFNCCustomScrollControl, VCL.TMSFNCBloxSelector,
  VCL.TMSFNCCustomControl, VCL.TMSFNCBloxNavigator, Vcl.ExtCtrls;

type
  TBloxEditorForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TMSFNCBloxNavigator1: TTMSFNCBloxNavigator;
    TMSFNCBloxControl1: TTMSFNCBloxControl;
    TMSFNCToolBar1: TTMSFNCToolBar;
    TMSFNCBloxEditToolBar1: TTMSFNCBloxEditToolBar;
    TMSFNCBloxSelectToolBar1: TTMSFNCBloxSelectToolBar;
    TMSFNCBloxFormatBlockToolBar1: TTMSFNCBloxFormatBlockToolBar;
    TMSFNCBloxFormatBlockTextToolBar1: TTMSFNCBloxFormatBlockTextToolBar;
    TMSFNCSplitter1: TTMSFNCSplitter;
    TMSFNCBloxSelector1: TTMSFNCBloxSelector;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BloxEditorForm: TBloxEditorForm;

implementation

{$R *.dfm}

end.
