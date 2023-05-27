object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 149
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 40
    Top = 11
    Width = 148
    Height = 15
    Caption = 'Selecione o perfil de usu'#225'rio'
  end
  object cbUsuario: TComboBox
    Left = 40
    Top = 32
    Width = 233
    Height = 23
    TabOrder = 0
    Items.Strings = (
      'Investidor'
      'Diretor'
      'Supervisor'
      'Gerente'
      'Vendedor')
  end
  object Button1: TButton
    Left = 40
    Top = 72
    Width = 233
    Height = 25
    Caption = 'Avan'#231'ar'
    TabOrder = 1
    OnClick = Button1Click
  end
end
