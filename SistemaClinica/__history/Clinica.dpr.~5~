program Clinica;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadPacientes in 'UnitCadPacientes.pas' {FormCadPacientes},
  UnitCadAgendamentos in 'UnitCadAgendamentos.pas' {FormCadAgendamentos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadPacientes, FormCadPacientes);
  Application.CreateForm(TFormCadAgendamentos, FormCadAgendamentos);
  Application.Run;
end.
