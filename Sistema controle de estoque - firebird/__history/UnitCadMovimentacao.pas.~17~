unit UnitCadMovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFormCadMovimentacao = class(TForm)
    Label1: TLabel;
    cbTpMov: TDBComboBox;
    DBEdit1: TDBEdit;
    txtResponsavel: TDBEdit;
    mmObs: TDBMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    btnInclui: TButton;
    btnExclui: TButton;
    btnCancela: TButton;
    btnConfirma: TButton;
    Label6: TLabel;
    cbProd: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    edtQtde: TDBEdit;
    DBGrid2: TDBGrid;
    Label9: TLabel;
    txtTotalProdutos: TLabel;
    btnIncluiProd: TButton;
    btnExcluiProd: TButton;
    btnCancelaProd: TButton;
    BtnConfirmaProd: TButton;
    txtId: TDBEdit;
    DBEdit2: TDBEdit;
    procedure btnIncluiClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
    procedure btnAlteraClick(Sender: TObject);
    procedure btnIncluiProdClick(Sender: TObject);
    procedure btnExcluiProdClick(Sender: TObject);
    procedure BtnConfirmaProdClick(Sender: TObject);
    procedure btnCancelaProdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCadMovimentacao: TFormCadMovimentacao;

implementation

{$R *.dfm}

uses UnitDM;




procedure TFormCadMovimentacao.btnAlteraClick(Sender: TObject);
begin
     btnInclui.Enabled := false;
     btnExclui.enabled := false;
     btnConfirma.Enabled := true;
     btnCancela.Enabled := true;
     cbTpMov.Enabled := false;
     txtResponsavel.ReadOnly := true;
     mmObs.ReadOnly := true;
end;

procedure TFormCadMovimentacao.btnCancelaClick(Sender: TObject);
begin

 if Application.MessageBox('Deseja cancelar a movimentação?', 'Cancelar', MB_ICONERROR+MB_YESNO) = MRYES then
  BEGIN
     btnInclui.Enabled := true;
     btnExclui.enabled := true;
     btnConfirma.Enabled := false;
     btnCancela.Enabled := false;
     btnIncluiProd.Enabled := true;
     btnExcluiProd.enabled := true;
     cbTpMov.Enabled := false;
     txtResponsavel.ReadOnly := true;
     mmObs.ReadOnly := true;

     DM.tbMovimentacoes.Cancel;
  END;
end;

procedure TFormCadMovimentacao.btnCancelaProdClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja cancelar a inclusão deste produto?', 'Cancelar', MB_ICONERROR+MB_YESNO) = MRYES then
  BEGIN
    btnIncluiProd.Enabled := true;
    btnExcluiProd.enabled := true;
    btnConfirmaProd.Enabled := false;
    btnCancelaProd.Enabled := false;
    cbProd.enabled := false;
    edtQtde.Enabled := false;

     DM.tbMovProdutos.Cancel;
  END;
end;

procedure TFormCadMovimentacao.btnConfirmaClick(Sender: TObject);
begin
   if txtResponsavel.Text = '' then
    begin
      Application.MessageBox('Impossivel cadastrar movimentações sem o Responsavel', 'Favor preencher o responsavel', MB_ICONEXCLAMATION+MB_OK);
    end;
   if cbTpMov.Text = '' then
    begin
      Application.MessageBox('Impossivel cadastrar movimentações sem informar o tipo', 'Favor preencher o tipo', MB_ICONEXCLAMATION+MB_OK);
    end;
   if (cbTpMov.Text <> '') and (txtResponsavel.Text <> '') then
    begin
     btnInclui.Enabled := true;
     btnExclui.enabled := true;
     btnConfirma.Enabled := false;
     btnCancela.Enabled := false;
     btnIncluiProd.Enabled := true;
     btnExcluiProd.enabled := true;
     cbTpMov.Enabled := false;
     txtResponsavel.ReadOnly := true;
     mmObs.ReadOnly := true;

     DM.tbMovimentacoes.Post;
    end;
end;

procedure TFormCadMovimentacao.BtnConfirmaProdClick(Sender: TObject);
var
  estoque: integer;
  qtde: Integer;
  resultado: Integer;
  produtoID: Integer;
begin
    //seta o id do cbprod para o produtoID
    produtoID := cbProd.KeyValue;

    //faz uma consulta para buscar o estoqueAtual da tabel pelo id que esta no parametro
    DM.sqlValidaEstoque.SQL.Text := 'SELECT estoqueAtual FROM produtos WHERE id = :id';
    DM.sqlValidaEstoque.ParamByName('id').AsInteger := produtoID;
    DM.sqlValidaEstoque.Open;

    // valida se o sql nao trouxe vazio
    if not DM.sqlValidaEstoque.IsEmpty then
  begin
    if (cbTpMov.Text = 'Saida') then
    begin

      estoque := DM.sqlValidaEstoque.FieldByName('estoqueAtual').value;
      qtde := StrToInt(edtQtde.Text);
      resultado := estoque - qtde;

      //consulta pegando o (resultado - qtde) do text
      if resultado >= 0 then
      begin
      //estoque suficiente
        btnIncluiProd.Enabled := true;
        btnExcluiProd.enabled := true;
        btnConfirmaProd.Enabled := false;
        btnCancelaProd.Enabled := false;
        cbProd.enabled := false;
        edtQtde.Enabled := false;

        DM.tbMovProdutos.Post;
      end
      else
      begin
        //estoque Insuficiente
        Application.MessageBox('Estoque Insuficiente para realizar a saida, verifique!', 'Estoque', MB_ICONEXCLAMATION+MB_OK);
        btnIncluiProd.Enabled := true;
        btnExcluiProd.enabled := true;
        btnConfirmaProd.Enabled := false;
        btnCancelaProd.Enabled := false;
        cbProd.enabled := false;
        edtQtde.Enabled := false;

        DM.tbMovProdutos.Cancel
      end;
    end
    else
    //tp da mov = entrada
    begin
        btnIncluiProd.Enabled := true;
        btnExcluiProd.enabled := true;
        btnConfirmaProd.Enabled := false;
        btnCancelaProd.Enabled := false;
        cbProd.enabled := false;
        edtQtde.Enabled := false;

        DM.tbMovProdutos.Post;
    end;
  end;

  DM.sqlValidaEstoque.Close;
end;

procedure TFormCadMovimentacao.btnExcluiClick(Sender: TObject);
begin
DM.tbMovimentacoes.Refresh;

if Application.MessageBox('Deseja excluir a movimentação?', 'Excluir', MB_ICONQUESTION+MB_YESNO) = MRYES then
  BEGIN
     if (StrToInt(txtTotalProdutos.caption) > 0) then
     begin
       Application.MessageBox('Impossivel excluir movimentação com quantidade', 'Impossivel', MB_ICONERROR+MB_OK)
     end
     else
     begin
        DM.tbMovimentacoes.Delete;
     end;
  END;
end;

procedure TFormCadMovimentacao.btnExcluiProdClick(Sender: TObject);
begin
  if Application.MessageBox('Deseja excluir o produto da movimentação?', 'Excluir', MB_ICONQUESTION+MB_YESNO) = MRYES then
  BEGIN
    DM.tbMovProdutos.Delete;
  END;
end;

procedure TFormCadMovimentacao.btnIncluiClick(Sender: TObject);
begin
 btnInclui.Enabled := false;
 btnExclui.enabled := false;
 btnConfirma.Enabled := true;
 btnCancela.Enabled := true;
 btnIncluiProd.Enabled := false;
 btnExcluiProd.enabled := false;
 cbTpMov.Enabled := True;
 txtResponsavel.ReadOnly := false;
 mmObs.ReadOnly := false;

 DM.tbMovimentacoes.Append;
 DM.tbMovimentacoes.FieldByName('dataHora').value := now;
 DM.tbMovimentacoes.FieldByName('id').asInteger := 36;
end;

procedure TFormCadMovimentacao.btnIncluiProdClick(Sender: TObject);
begin
  btnIncluiProd.Enabled := false;
  btnExcluiProd.enabled := false;
  btnConfirmaProd.Enabled := true;
  btnCancelaProd.Enabled := true;
  cbProd.enabled := true;
  edtQtde.Enabled := true;

  DM.tbMovProdutos.Append;
end;

end.
