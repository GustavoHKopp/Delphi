object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Qual seu nome?'
  ClientHeight = 203
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 32
    Width = 88
    Height = 15
    Caption = 'Digite seu Nome'
  end
  object Name: TLabel
    Left = 32
    Top = 83
    Width = 84
    Height = 15
    Caption = 'Digite sua Idade'
  end
  object CaixaNome: TEdit
    Left = 32
    Top = 48
    Width = 361
    Height = 23
    TabOrder = 0
  end
  object Button1: TButton
    Left = 318
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Confirmar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object CaixaIdade: TEdit
    Left = 32
    Top = 99
    Width = 73
    Height = 23
    NumbersOnly = True
    TabOrder = 2
  end
end
