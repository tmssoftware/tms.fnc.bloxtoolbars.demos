unit UBloxEditor;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  LCLTMSFNCBloxControl, LCLTMSFNCBloxSelector, LCLTMSFNCBloxNavigator,
  LCLTMSFNCBloxToolBar, LCLTMSFNCSplitter, LCLTMSFNCToolBar;

type

  { TFNCBloxEditorForm }

  TFNCBloxEditorForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    TMSFNCBloxControl1: TTMSFNCBloxControl;
    TMSFNCBloxEditToolBar1: TTMSFNCBloxEditToolBar;
    TMSFNCBloxFormatBlockTextToolBar1: TTMSFNCBloxFormatBlockTextToolBar;
    TMSFNCBloxFormatBlockToolBar1: TTMSFNCBloxFormatBlockToolBar;
    TMSFNCBloxNavigator1: TTMSFNCBloxNavigator;
    TMSFNCBloxSelector1: TTMSFNCBloxSelector;
    TMSFNCBloxSelectToolBar1: TTMSFNCBloxSelectToolBar;
    TMSFNCSplitter1: TTMSFNCSplitter;
    TMSFNCToolBar1: TTMSFNCToolBar;
  private

  public

  end;

var
  FNCBloxEditorForm: TFNCBloxEditorForm;

implementation

{$R *.lfm}

end.

