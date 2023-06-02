unit UnitCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask;

type
  TFormCadProdutos = class(TForm)
    Label1: TLabel;
    txtNomeProd: TDBEdit;
    txtFabricante: TDBEdit;
    edtValidade: TDBEdit;
    txtEstoque: TDBEdit;
    edtNomeProd: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBGrid1: TDBGrid;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    btnInclui: TButton;
    btnExclui: TButton;
    btnCancela: TButton;
    btnConfirma: TButton;
    procedure btnCancelaClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadProdutos: TFormCadProdutos;

implementation

{$R *.dfm}

uses UnitDM;


procedure TFormCadProdutos.btnCancelaClick(Sender: TObject);
begin
   btnInclui.Enabled := true;
   btnExclui.Enabled := true;
   btnConfirma.Enabled := false;
   btnCancela.Enabled := false;
   txtNomeProd.Enabled := false;
   txtFabricante.Enabled := false;
   txtEstoque.Enabled := false;

   DM.tbProdutos.Cancel;
end;

procedure TFormCadProdutos.btnConfirmaClick(Sender: TObject);
begin
   btnInclui.Enabled := true;
   btnExclui.Enabled := true;
   btnConfirma.Enabled := false;
   btnCancela.Enabled := false;
   txtNomeProd.Enabled := false;
   txtFabricante.Enabled := false;
   txtEstoque.Enabled := false;

   DM.tbProdutos.Post;
end;

procedure TFormCadProdutos.btnExcluiClick(Sender: TObject);
begin
 if Application.MessageBox('Deseja Excluir este produto?', 'Excluir', MB_ICONQUESTION+MB_YESNO) = MRYES then
 BEGIN

   if (StrToInt(txtEstoque.text) > 0) then
    begin
      Application.MessageBox('Impossivel excluir produtos com quantidade em estoque', 'Impossivel', MB_ICONERROR+MB_OK)
    end
   else
    begin
      DM.tbProdutos.Delete;
    end;
 END;
end;

procedure TFormCadProdutos.btnIncluiClick(Sender: TObject);
begin
 btnInclui.Enabled := false;
 btnExclui.Enabled := false;
 btnConfirma.Enabled := true;
 btnCancela.Enabled := true;
 txtNomeProd.Enabled := true;
 txtFabricante.Enabled := true;
 txtEstoque.Enabled := true;

 DM.tbProdutos.Append;
 DM.tbProdutos.FieldByName('validade').Value := now;
end;

procedure TFormCadProdutos.FormShow(Sender: TObject);
begin
  DM.tbProdutos.Refresh;
end;

end.
