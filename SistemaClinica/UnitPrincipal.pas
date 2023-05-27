unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.jpeg;

type
  TFormPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Agendamenots1: TMenuItem;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Image1: TImage;
    procedure Sair1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Agendamenots1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

uses UnitCadPacientes, UnitCadAgendamentos;

procedure TFormPrincipal.Agendamenots1Click(Sender: TObject);
begin
 FormCadAgendamentos.showModal;
end;

procedure TFormPrincipal.BitBtn1Click(Sender: TObject);
begin
 FormCadAgendamentos.ShowModal;
end;

procedure TFormPrincipal.BitBtn2Click(Sender: TObject);
begin
 FormCadPacientes.ShowModal;
end;

procedure TFormPrincipal.Pacientes1Click(Sender: TObject);
begin
 FormCadPacientes.showModal;
end;

procedure TFormPrincipal.Sair1Click(Sender: TObject);
begin
 Application.Terminate;
end;

end.
