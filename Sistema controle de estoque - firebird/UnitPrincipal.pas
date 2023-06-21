unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, UnitCadMovimentacao, UnitCadProdutos, UnitEditorSql;

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
    procedure EditorSql1Click(Sender: TObject);
    function Aspas(Value : String) : String;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    var
      FormCadMovimentacoesAberto: boolean;
      CadMovimentacoesForm: TFormCadMovimentacao;
      CadProdutosForm: TFormCadProdutos;
      EditorSqlForm: TFormEditorSql;
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

function TFormPrincipal.Aspas(Value: String): String;
begin
 Aspas := QuotedStr(Value);
end;

procedure TFormPrincipal.EditorSql1Click(Sender: TObject);
begin
 if EditorSqlForm = nil then
  begin
    EditorSqlForm := TFormEditorSql.Create(self);
    EditorSqlForm.Show;
  end
 else
  begin
    EditorSqlForm.BringToFront;
  end;
end;

procedure TFormPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 IF Application.MessageBox('Deseja Realmente sair do sistema?','Sair', MB_ICONQUESTION+MB_YESNO) = mrYes then
 BEGIN
  if (CadProdutosForm = nil) and (CadMovimentacoesForm = nil) and (EditorSqlForm = nil) then
    begin
        Application.Terminate
    end
  else
    begin
      Application.MessageBox('Impossivel finalizar o sistema com telas abertas, favor fechar todas as telas!', 'Sistema', MB_ICONEXCLAMATION+MB_OK);
      Action := caNone;
    end;
 END
 else
  begin
    Action := caNone;
  end;
end;

procedure TFormPrincipal.FormCreate(Sender: TObject);
begin
 FormPrincipal.BringToFront;
end;

procedure TFormPrincipal.GerenciarMovimentaes1Click(Sender: TObject);
begin
///valida se a var que contem se a tela foi criada na memoria é igual a vazia
if CadMovimentacoesForm = nil then
  begin
    CadMovimentacoesForm := TFormCadMovimentacao.Create(Self);
    CadMovimentacoesForm.Show;
  end
  else
  ///caso for vazia ira somente trazer a tela para frente
    CadMovimentacoesForm.BringToFront;
end;


procedure TFormPrincipal.Produto1Click(Sender: TObject);
begin
///valida se a var que contem se a tela foi criada na memoria é igual a vazia
if CadProdutosForm = nil then
  begin
    cadProdutosForm := TFormCadProdutos.Create(self);
    cadProdutosForm.Show;
  end
  else
  ///caso for vazia ira somente trazer a tela para frente
    cadProdutosForm.BringToFront;

end;

procedure TFormPrincipal.Sistema2Click(Sender: TObject);
begin
 IF Application.MessageBox('Deseja Realmente sair do sistema?','Sair', MB_ICONQUESTION+MB_YESNO) = mrYes then
 BEGIN
  if (CadProdutosForm = nil) and (CadMovimentacoesForm = nil) and (EditorSqlForm = nil) then
    begin
        Application.Terminate
    end
  else
    begin
      Application.MessageBox('Impossivel finalizar o sistema com telas abertas, favor fechar todas as telas!', 'Sistema', MB_ICONEXCLAMATION+MB_OK)
    end;
 END;
end;

end.
