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
    txtId: TDBEdit;
    btnInclui: TButton;
    btnExclui: TButton;
    btnCancela: TButton;
    btnConfirma: TButton;
    btnFechar: TButton;
    procedure btnCancelaClick(Sender: TObject);
    procedure btnIncluiClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public

  end;

var
  FormCadProdutos: TFormCadProdutos;

implementation

{$R *.dfm}

uses UnitDM, FireDAC.Comp.Client, UnitPrincipal;

procedure TFormCadProdutos.btnCancelaClick(Sender: TObject);
begin
   btnInclui.Enabled := true;
   btnExclui.Enabled := true;
   btnConfirma.Enabled := false;
   btnCancela.Enabled := false;
   btnFechar.Enabled := true;
   txtNomeProd.Enabled := false;
   txtFabricante.Enabled := false;

   DM.tbProdutos.Cancel;
end;

procedure TFormCadProdutos.btnConfirmaClick(Sender: TObject);
var
  vQry: TFDQuery;
begin
    vQry := TFDQuery.Create(nil);
    vQry.Connection := DM.Conexao;

   try
      vQry.Close;
      vQry.SQL.Clear;
      vQry.Params.Clear;
      ///comando de insert buscando os valores da tela
       vQry.SQL.Add('INSERT INTO PRODUTOS(ID, NOME, FABRICANTE, VALIDADE, ESTOQUEATUAL) VALUES(:ID, :NOME, :FABRICANTE, :VALIDADE, :ESTOQUEATUAL)');
       vQry.ParamByName('id').value := txtId.text;
       vQry.ParamByName('nome').value := txtNomeProd.text;
       vQry.ParamByName('fabricante').value := txtFabricante.text;
       vQry.ParamByName('validade').Value := StrToDate(edtValidade.Text);
       vQry.ParamByName('estoqueAtual').Value := '0';
       ///valida��es de campos n�o informados
       if txtNomeProd.Text = '' then
        begin
          Application.MessageBox('Impossivel cadastrar produto sem nome', 'Favor preencher o nome', MB_ICONEXCLAMATION+MB_OK);
        end;
       if txtFabricante.Text = '' then
        begin
          Application.MessageBox('Impossivel cadastrar produto sem fabricante', 'Favor preencher o fabricante', MB_ICONEXCLAMATION+MB_OK);
        end;
       if (txtFabricante.Text <> '') and (txtNomeProd.Text <> '') then
        begin
           btnInclui.Enabled := true;
           btnExclui.Enabled := true;
           btnConfirma.Enabled := false;
           btnFechar.Enabled := true;
           btnCancela.Enabled := false;
           txtNomeProd.Enabled := false;
           txtFabricante.Enabled := false;

           vQry.ExecSQL;
           DM.tbProdutos.Cancel;
        end;
   finally
     vQry.Free;
   end;
end;

procedure TFormCadProdutos.btnExcluiClick(Sender: TObject);
var
  pQry, qQry: TFDQuery;
  possuiMov : integer;
begin
pQry := TFDQuery.Create(nil);
pQry.Connection := DM.Conexao;
qQry := TFDQuery.Create(nil);
qQry.Connection := DM.Conexao;

DM.tbProdutos.Refresh;
try
  qQry.Close;
  qQry.SQL.Clear;
  qQry.Params.Clear;

  qQry.SQL.Add('SELECT IDPRODUTO FROM MOVIMENTACOES_PRODUTO WHERE IDPRODUTO = :idProd');
  qQry.ParamByName('idProd').Value := txtId.Text;
  qQry.Open;

  if not qQry.IsEmpty then
    begin
      possuiMov := 1;
    end
  else
    begin
      possuiMov := 0;
    end;
finally

end;


    ///valida��es se o produtos possui estoque e � possivel excluir ou n�o
 if Application.MessageBox('Deseja Excluir este produto?', 'Excluir', MB_ICONQUESTION+MB_YESNO) = MRYES then
 BEGIN
   if (possuiMov = 1) then
    begin
      Application.MessageBox('Impossivel excluir produtos vinculados a movimenta��es', 'Impossivel', MB_ICONERROR+MB_OK)
    end
   else
    begin
     try
        pQry.Close;
        pQry.SQL.Clear;
        pQry.Params.Clear;

        pQry.SQL.Add('DELETE FROM PRODUTOS WHERE ID = :ID');
        pQry.ParamByName('id').value := txtId.text;

        pQry.ExecSQL;
        DM.tbprodutos.Refresh;
     finally
       pQry.Free;
     end;
    end;
 END;
end;

procedure TFormCadProdutos.btnFecharClick(Sender: TObject);
begin
 Close;
end;

procedure TFormCadProdutos.btnIncluiClick(Sender: TObject);
var
  iQry : TFDQuery;
  result : integer;
begin
   iQry := TFDQuery.Create(nil);
   iQry.Connection := DM.Conexao;

   try
     iQry.Close;
     iQry.SQL.Clear;
     iQry.Params.Clear;

     iQry.SQL.Add('SELECT MAX(ID) +1 FROM PRODUTOS');
     iQry.Open;
     ///seta o valor de result para o campo ID do produto +1
     if iQry.RecordCount = 0 then
        begin
          result := 1
        end
       else
        begin
          result := iQry.Fields[0].AsInteger;
        end;
       ///enabled ou disabled campos na tela
       btnInclui.Enabled := false;
       btnExclui.Enabled := false;
       btnConfirma.Enabled := true;
       btnFechar.Enabled := false;
       btnCancela.Enabled := true;
       txtNomeProd.Enabled := true;
       txtFabricante.Enabled := true;
      ///funcoes de inclus�o no banco de dados
      DM.tbProdutos.Append;
      DM.tbProdutos.FieldByName('validade').Value := now;
      DM.tbProdutos.FieldByName('id').Value := result;
      DM.tbProdutos.FieldByName('estoqueAtual').Value := '0'
   finally
      iQry.Free;
   end;

end;

procedure TFormCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := caFree;
  FormPrincipal.CadProdutosForm := NIL;
end;

procedure TFormCadProdutos.FormShow(Sender: TObject);
begin
 DM.tbProdutos.Refresh;
 WindowState := wsMaximized;
end;

end.
