unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    cbUsuario: TComboBox;
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  case cbUsuario.ItemIndex of
     0: showMessage('Logado como: Investidor');
     1: showMessage('Logado como: Diretor');
     2: showMessage('Logado como: Supervisor');
     3: showMessage('Logado como: Gerente');
     4: showMessage('Logado como: Vendedor');
  end;
end;

end.
