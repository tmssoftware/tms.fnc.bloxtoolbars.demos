program BloxEditor;

uses
  System.StartUpCopy,
  FMX.Forms,
  UBloxEditor in 'UBloxEditor.pas' {BloxEditorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TBloxEditorForm, BloxEditorForm);
  Application.Run;
end.
