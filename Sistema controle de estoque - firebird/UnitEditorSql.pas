unit UnitEditorSql;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids;

type
  TFormEditorSql = class(TForm)
    mmSql: TMemo;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    QrySql: TFDQuery;
    dsSql: TDataSource;
    btnConsulta: TButton;
    btnExecuta: TButton;
    btnSair: TButton;
    Panel1: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnConsultaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnExecutaClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure mmSqlKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private

  public
    { Public declarations }
  end;

var
  FormEditorSql: TFormEditorSql;

implementation

{$R *.dfm}

uses UnitPrincipal, UnitDM, StrUtils;

function ValidarQuery(const query: string): Boolean;
begin
  Result := not AnsiStartsText('SELECT', TrimLeft(query));
end;

procedure TFormEditorSql.btnConsultaClick(Sender: TObject);
begin
if (mmSql.text <> '') then
  begin
    QrySql.close;
    QrySql.SQL.Clear;

    QrySql.SQL.Add(mmSql.text);
    if not ValidarQuery(mmSQL.text) then
      begin
        QrySql.Open();
      end
    else
      begin
        Application.MessageBox('Para rodar um Comando clique em consultar', 'Sistema', MB_ICONEXCLAMATION+MB_OK);
      end;
  end
else
  begin
    Application.MessageBox('Favor digitar o select antes de consultar', 'Sistema', MB_ICONEXCLAMATION+MB_OK);
  end;
end;

procedure TFormEditorSql.btnExecutaClick(Sender: TObject);
begin
  if (mmSQL.Text <> '') then
  begin
    QrySql.close;
    QrySql.SQL.Clear;

    QrySql.SQL.Add(mmSql.text);
    if ValidarQuery(mmSQL.text) then
      begin
        QrySql.ExecSQL;
        Application.MessageBox('Comando rodou com sucesso!', 'Sistema', MB_ICONEXCLAMATION+MB_OK);
      end
    else
      begin
        Application.MessageBox('Para rodar um SELECT clique em consultar', 'Sistema', MB_ICONEXCLAMATION+MB_OK);
      end;
  end
else
  begin
    Application.MessageBox('Favor digitar o comando antes de executar', 'Sistema', MB_ICONEXCLAMATION+MB_OK);
  end;
end;

procedure TFormEditorSql.btnSairClick(Sender: TObject);
begin
 Close;
end;

procedure TFormEditorSql.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
 FormPrincipal.EditorSqlForm := nil;
end;

procedure TFormEditorSql.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F9 then
  begin
    btnConsulta.Click;
  end;
end;

procedure TFormEditorSql.FormShow(Sender: TObject);
begin
 mmSql.Text := ''
end;

procedure TFormEditorSql.mmSqlKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F9 then
    begin
      btnConsulta.Click;
    end;

  if Key = VK_f6 then
    begin
      btnExecuta.Click;
    end;
end;

end.
