object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 164
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 11
    Width = 97
    Height = 15
    Caption = 'Digite um n'#250'mero'
  end
  object Label2: TLabel
    Left = 192
    Top = 11
    Width = 97
    Height = 15
    Caption = 'Digite um n'#250'mero'
  end
  object Label3: TLabel
    Left = 336
    Top = 11
    Width = 52
    Height = 15
    Caption = 'Resultado'
  end
  object Label4: TLabel
    Left = 160
    Top = 29
    Width = 18
    Height = 25
    Caption = '+'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 325
    Top = 30
    Width = 13
    Height = 25
    Caption = '='
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtNum1: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object txtNum2: TEdit
    Left = 192
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object txtResultado: TEdit
    Left = 352
    Top = 32
    Width = 121
    Height = 23
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 24
    Top = 72
    Width = 449
    Height = 25
    Caption = 'Somar'
    TabOrder = 3
    OnClick = Button1Click
  end
end
