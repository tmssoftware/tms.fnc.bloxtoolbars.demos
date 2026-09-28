program BloxEditor;

uses
  Vcl.Forms,
  UBloxEditor in 'UBloxEditor.pas' {BloxEditorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TBloxEditorForm, BloxEditorForm);
  Application.Run;
end.
