unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    rgOpcoes: TRadioGroup;
    txtConsulta: TEdit;
    lblConsulta: TLabel;
    btnRealizarConsulta: TButton;
    DBGrid1: TDBGrid;
    procedure rgOpcoesClick(Sender: TObject);
    procedure btnRealizarConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses UnitDM;

procedure TForm1.btnRealizarConsultaClick(Sender: TObject);
begin
  DM.sqlConsulta.Close;
  DM.sqlConsulta.SQL.Clear;

  if (rgOpcoes.ItemIndex = 0) then
  begin
   if (txtConsulta.text = '') then
    begin
      DM.sqlConsulta.SQL.Add('SELECT * FROM clientes');
    end
   else
    begin
      DM.sqlConsulta.Sql.Add('SELECT * FROM clientes WHERE nome LIKE :pConsulta');
      DM.sqlConsulta.ParamByName('pConsulta').AsString := txtConsulta.Text + '%';
    end;
  end;

  if (rgOpcoes.ItemIndex = 1) then
  begin
    if (txtConsulta.Text = '') then
      begin
        DM.sqlConsulta.SQL.Add('SELECT * FROM clientes')
      end
    else
      begin
        DM.sqlConsulta.SQL.Add('SELECT * FROM clientes WHERE bairro LIKE :pConsulta');
        DM.sqlConsulta.ParamByName('pConsulta').AsString := txtConsulta.Text + '%';
      end;
  end;

  DM.sqlConsulta.Open;
end;

procedure TForm1.rgOpcoesClick(Sender: TObject);
begin

 if (rgOpcoes.ItemIndex = 0) then
  begin
   lblConsulta.Caption := 'Digite o Nome'
  end;

 if (rgOpcoes.ItemIndex = 1) then
  begin
    lblConsulta.Caption := 'Digite o Bairro'
  end;

end;

end.
