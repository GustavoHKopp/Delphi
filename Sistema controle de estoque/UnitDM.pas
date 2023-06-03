unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    tbProdutos: TFDTable;
    tbMovProdutos: TFDTable;
    dsProdutos: TDataSource;
    dsMovProdutos: TDataSource;
    tbMovimentacoes: TFDTable;
    dsMovimentacoes: TDataSource;
    sqlAumentaEstoque: TFDCommand;
    sqlDiminuiEstoque: TFDCommand;
    sqlMovimentacoes: TFDQuery;
    dsSqlMovimentacoes: TDataSource;
    tbProdutosid: TFDAutoIncField;
    tbProdutosnome: TStringField;
    tbProdutosfabricante: TStringField;
    tbProdutosvalidade: TDateField;
    tbProdutosestoqueAtual: TIntegerField;
    tbMovProdutosid: TFDAutoIncField;
    tbMovProdutosidMovimentacao: TIntegerField;
    tbMovProdutosidProduto: TIntegerField;
    tbMovProdutosqtd: TIntegerField;
    tbMovProdutosnomeProduto: TStringField;
    sqlValidaEstoque: TFDQuery;
    dsValidaEstoque: TDataSource;
    tbMovimentacoesid: TFDAutoIncField;
    tbMovimentacoestipo: TStringField;
    tbMovimentacoesdataHora: TDateTimeField;
    tbMovimentacoesresponsavel: TStringField;
    tbMovimentacoesobservacoes: TMemoField;
    procedure calcularTotais;
    procedure tbMovimentacoesAfterScroll(DataSet: TDataSet);
    procedure tbMovProdutosAfterDelete(DataSet: TDataSet);
    procedure tbMovProdutosAfterPost(DataSet: TDataSet);
    procedure tbMovProdutosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UnitCadMovimentacao;

{$R *.dfm}

procedure TDM.calcularTotais;
var
  totais : integer;
begin
  if tbMovProdutos.State in [dsBrowse] then
   begin
     tbMovProdutos.First;

      while not tbMovProdutos.Eof do
       begin
         totais:= totais + tbMovProdutos.FieldByName('qtd').value;

         tbMovProdutos.Next;
       end;

       formCadMovimentacao.txtTotalProdutos.Caption := IntToStr(totais);
   end;
end;

procedure TDM.tbMovimentacoesAfterScroll(DataSet: TDataSet);
begin
 calcularTotais;
end;

procedure TDM.tbMovProdutosAfterDelete(DataSet: TDataSet);
begin
  calcularTotais;
end;

procedure TDM.tbMovProdutosAfterPost(DataSet: TDataSet);
begin
     calcularTotais;

     if (tbMovimentacoes.FieldByName('tipo').Value = 'Entrada')  then
     begin
       sqlAumentaEstoque.ParamByName('pId').value := tbMovProdutos.FieldByName('idProduto').Value;
       sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
       sqlAumentaEstoque.Execute;
     end;

      if (tbMovimentacoes.FieldByName('tipo').Value = 'Saida')  then
     begin
       sqlDiminuiEstoque.ParamByName('pId').value := tbMovProdutos.FieldByName('idProduto').Value;
       sqlDiminuiEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
       sqlDiminuiEstoque.Execute;
     end;
end;

procedure TDM.tbMovProdutosBeforeDelete(DataSet: TDataSet);
begin
  if (tbMovimentacoes.FieldByName('tipo').Value = 'Entrada')  then
     begin
       sqlDiminuiEstoque.ParamByName('pId').value := tbMovProdutos.FieldByName('idProduto').Value;
       sqlDiminuiEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
       sqlDiminuiEstoque.Execute;
     end;

      if (tbMovimentacoes.FieldByName('tipo').Value = 'Saida')  then
     begin
       sqlAumentaEstoque.ParamByName('pId').value := tbMovProdutos.FieldByName('idProduto').Value;
       sqlAumentaEstoque.ParamByName('pQtd').Value := tbMovProdutos.FieldByName('qtd').Value;
       sqlAumentaEstoque.Execute;
     end;
end;

end.
