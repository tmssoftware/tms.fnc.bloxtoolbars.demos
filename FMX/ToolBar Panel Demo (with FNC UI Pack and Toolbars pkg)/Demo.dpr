program Demo;

uses
  System.StartUpCopy,
  FMX.Forms,
  UDemo in 'UDemo.pas' {Form66};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm66, Form66);
  Application.Run;
end.
