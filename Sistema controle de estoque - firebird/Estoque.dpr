program Estoque;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadProdutos in 'UnitCadProdutos.pas' {FormCadProdutos},
  UnitCadMovimentacao in 'UnitCadMovimentacao.pas' {FormCadMovimentacao},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitEditorSql in 'UnitEditorSql.pas' {FormEditorSql},
  UnFuncoes in 'UnFuncoes.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
