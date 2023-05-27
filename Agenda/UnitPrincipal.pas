unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    txtBusca: TEdit;
    Label6: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Label9: TLabel;
    DBMemo1: TDBMemo;
    Label10: TLabel;
    DBText2: TDBText;
    EdtName: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    EdtCelular: TDBEdit;
    cbBloq: TDBCheckBox;
    Label4: TLabel;
    mmObs: TDBMemo;
    Label5: TLabel;
    DBText1: TDBText;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    procedure txtBuscaChange(Sender: TObject);
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


procedure TForm1.txtBuscaChange(Sender: TObject);
begin
  DM.tbContatos.Locate('nome', txtBusca.text, [loPartialKey])
end;

end.
