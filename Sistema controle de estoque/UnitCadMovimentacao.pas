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
    procedure btnIncluiClick(Sender: TObject);
    procedure btnConfirmaClick(Sender: TObject);
    procedure btnCancelaClick(Sender: TObject);
    procedure btnExcluiClick(Sender: TObject);
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


procedure TFormCadMovimentacao.btnCancelaClick(Sender: TObject);
begin

 if Application.MessageBox('Deseja cancelar a movimenta��o?', 'Cancelar', MB_ICONERROR+MB_YESNO) = MRYES then
  BEGIN
     btnInclui.Enabled := true;
     btnExclui.enabled := true;
     btnConfirma.Enabled := false;
     btnCancela.Enabled := false;
     cbTpMov.Enabled := false;
     txtResponsavel.ReadOnly := true;
     mmObs.ReadOnly := true;

     DM.tbMovimentacoes.Cancel;
  END;
end;

procedure TFormCadMovimentacao.btnConfirmaClick(Sender: TObject);
begin
 btnInclui.Enabled := true;
 btnExclui.enabled := true;
 btnConfirma.Enabled := false;
 btnCancela.Enabled := false;
 cbTpMov.Enabled := false;
 txtResponsavel.ReadOnly := true;
 mmObs.ReadOnly := true;

 DM.tbMovimentacoes.Post;
end;

procedure TFormCadMovimentacao.btnExcluiClick(Sender: TObject);
begin
if Application.MessageBox('Deseja excluir a movimenta��o?', 'Excluir', MB_ICONQUESTION+MB_YESNO) = MRYES then
  BEGIN
     DM.tbMovimentacoes.Delete;
  END;
end;

procedure TFormCadMovimentacao.btnIncluiClick(Sender: TObject);
begin
 btnInclui.Enabled := false;
 btnExclui.enabled := false;
 btnConfirma.Enabled := true;
 btnCancela.Enabled := true;
 cbTpMov.Enabled := True;
 txtResponsavel.ReadOnly := false;
 mmObs.ReadOnly := false;

 DM.tbMovimentacoes.Append;
 DM.tbMovimentacoes.FieldByName('dataHora').value := now
end;



end.