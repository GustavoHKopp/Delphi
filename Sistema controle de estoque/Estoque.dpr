program Estoque;

uses
  Vcl.Forms,
  UnitPrincipal in 'UnitPrincipal.pas' {FormPrincipal},
  UnitCadProdutos in 'UnitCadProdutos.pas' {FormCadProdutos},
  UnitCadMovimentacao in 'UnitCadMovimentacao.pas' {FormCadMovimentacao},
  UnitConsMovimentacao in 'UnitConsMovimentacao.pas' {FormConsMovimentacao},
  UnitDM in 'UnitDM.pas' {DM: TDataModule},
  UnitEditorSql in 'UnitEditorSql.pas' {FormEditorSql};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TFormCadProdutos, FormCadProdutos);
  Application.CreateForm(TFormCadMovimentacao, FormCadMovimentacao);
  Application.CreateForm(TFormConsMovimentacao, FormConsMovimentacao);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFormEditorSql, FormEditorSql);
  Application.Run;
end.
