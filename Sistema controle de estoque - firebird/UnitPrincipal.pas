unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sistema2: TMenuItem;
    Cadastros1: TMenuItem;
    Produto1: TMenuItem;
    Movimentaes1: TMenuItem;
    GerenciarMovimentaes1: TMenuItem;
    EditorSql1: TMenuItem;
    Image1: TImage;
    procedure Sistema2Click(Sender: TObject);
    procedure Produto1Click(Sender: TObject);
    procedure GerenciarMovimentaes1Click(Sender: TObject);
    procedure ConsultarMovimentaes1Click(Sender: TObject);
    procedure EditorSql1Click(Sender: TObject);
    function Aspas(Value : String) : String;
  private
    { Private declarations }
  public

  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitCadProdutos, UnitCadMovimentacao, UnitConsMovimentacao, UnitEditorSql;

function TFormPrincipal.Aspas(Value: String): String;
begin
 Aspas := QuotedStr(Value);
end;

procedure TFormPrincipal.ConsultarMovimentaes1Click(Sender: TObject);
begin
 FormConsMovimentacao.showModal
end;

procedure TFormPrincipal.EditorSql1Click(Sender: TObject);
begin
 FormEditorSql.ShowModal;
end;

procedure TFormPrincipal.GerenciarMovimentaes1Click(Sender: TObject);
begin
 FormCadMovimentacao.showModal
end;

procedure TFormPrincipal.Produto1Click(Sender: TObject);
begin
 FormCadProdutos.showModal
end;

procedure TFormPrincipal.Sistema2Click(Sender: TObject);
begin
 IF Application.MessageBox('Deseja Realmente sair do sistema?','Sair', MB_ICONQUESTION+MB_YESNO) = mrYes then
 BEGIN
  Application.Terminate
 END;

end;

end.
