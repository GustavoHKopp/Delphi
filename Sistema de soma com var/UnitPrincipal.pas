unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    txtNum1: TEdit;
    txtNum2: TEdit;
    txtResultado: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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

var
  ///var numericas: Integer(sem virgula)  e Real(com virgula)
  num1, num2, result : Real;

  ///var Text: string
  ///var l�gica: boolean(true or false)

begin
 txtresultado.Text := '';
 num1 := StrtoFloat(txtNum1.Text);
 num2 := StrtoFloat(txtNum2.Text);
 result := num1 + num2;

 txtResultado.Text := FloatToStr(result);

end;

end.
