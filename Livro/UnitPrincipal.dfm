object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Livros'
  ClientHeight = 457
  ClientWidth = 633
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 254
    Height = 40
    Caption = 'Cadastro de Livros'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 40
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 86
    Width = 32
    Height = 15
    Caption = 'T'#237'tulo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 139
    Width = 32
    Height = 15
    Caption = 'Autor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 194
    Width = 42
    Height = 15
    Caption = 'G'#234'nero'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 301
    Width = 38
    Height = 15
    Caption = 'Idioma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 328
    Top = 139
    Width = 45
    Height = 15
    Caption = 'Resumo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 328
    Top = 301
    Width = 88
    Height = 15
    Caption = 'Canais de venda'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 107
    Width = 289
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 160
    Width = 289
    Height = 23
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 215
    Width = 145
    Height = 23
    TabOrder = 2
    Items.Strings = (
      'Romance'
      'Autoajuda'
      'Autobiografia'
      'Suspense')
  end
  object RadioButton1: TRadioButton
    Left = 42
    Top = 322
    Width = 113
    Height = 17
    Caption = 'Ingl'#234's'
    TabOrder = 3
  end
  object RadioButton2: TRadioButton
    Left = 42
    Top = 348
    Width = 113
    Height = 17
    Caption = 'Portugu'#234's'
    TabOrder = 4
  end
  object RadioButton3: TRadioButton
    Left = 42
    Top = 370
    Width = 113
    Height = 16
    Caption = 'Espanhol'
    TabOrder = 5
  end
  object CheckBox1: TCheckBox
    Left = 328
    Top = 107
    Width = 153
    Height = 17
    Caption = 'Dispon'#237'vel em estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
  end
  object Memo1: TMemo
    Left = 328
    Top = 160
    Width = 273
    Height = 113
    TabOrder = 7
  end
  object CheckBox2: TCheckBox
    Left = 344
    Top = 322
    Width = 97
    Height = 17
    Caption = 'Internet'
    TabOrder = 8
  end
  object CheckBox3: TCheckBox
    Left = 344
    Top = 348
    Width = 97
    Height = 17
    Caption = 'Telefone'
    TabOrder = 9
  end
  object CheckBox4: TCheckBox
    Left = 344
    Top = 369
    Width = 97
    Height = 17
    Caption = 'Loja Fisica'
    TabOrder = 10
  end
  object Button1: TButton
    Left = 24
    Top = 413
    Width = 97
    Height = 25
    Caption = 'Cadastrar'
    TabOrder = 11
  end
  object Button2: TButton
    Left = 136
    Top = 413
    Width = 97
    Height = 25
    Caption = 'Excluir'
    TabOrder = 12
  end
  object Button3: TButton
    Left = 248
    Top = 413
    Width = 97
    Height = 25
    Caption = 'Pesquisar'
    TabOrder = 13
  end
end
