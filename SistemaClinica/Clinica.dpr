program Clinica;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadPacientes in 'UnitCadPacientes.pas' {FormCadPacientes},
  UnitCadAgendamentos in 'UnitCadAgendamentos.pas' {FormCadAgendamentos},
  UnitDM in 'UnitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadPacientes, FormCadPacientes);
  Application.CreateForm(TFormCadAgendamentos, FormCadAgendamentos);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
