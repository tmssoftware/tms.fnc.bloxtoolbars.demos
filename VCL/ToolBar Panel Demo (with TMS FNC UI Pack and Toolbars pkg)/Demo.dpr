program Demo;

uses
  Vcl.Forms,
  UDemo in 'UDemo.pas' {Form66};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm66, Form66);
  Application.Run;
end.
