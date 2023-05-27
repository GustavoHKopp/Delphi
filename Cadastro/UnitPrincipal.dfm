object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Clientes'
  ClientHeight = 420
  ClientWidth = 686
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 686
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 13
      Width = 280
      Height = 40
      Caption = 'Cadastro de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -29
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 343
      Top = 14
      Width = 75
      Height = 48
      Caption = 'Novo'
      TabOrder = 0
    end
    object Button2: TButton
      Left = 424
      Top = 13
      Width = 75
      Height = 49
      Caption = 'Salvar'
      TabOrder = 1
    end
    object Button3: TButton
      Left = 505
      Top = 14
      Width = 75
      Height = 48
      Caption = 'Cancelar'
      TabOrder = 2
    end
    object Button4: TButton
      Left = 586
      Top = 14
      Width = 75
      Height = 48
      Caption = 'excluir'
      TabOrder = 3
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 73
    Width = 686
    Height = 347
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Dados Pessoais'
      object Label2: TLabel
        Left = 12
        Top = 11
        Width = 96
        Height = 15
        Caption = 'C'#243'digo do Cliente'
      end
      object Label3: TLabel
        Left = 12
        Top = 64
        Width = 90
        Height = 15
        Caption = 'Nome do Cliente'
      end
      object Label4: TLabel
        Left = 160
        Top = 11
        Width = 79
        Height = 15
        Caption = 'Tipo de Cliente'
      end
      object Label5: TLabel
        Left = 339
        Top = 11
        Width = 15
        Height = 15
        Caption = 'RG'
      end
      object Label6: TLabel
        Left = 520
        Top = 11
        Width = 97
        Height = 15
        Caption = 'Data de Expedi'#231#227'o'
      end
      object Label7: TLabel
        Left = 12
        Top = 118
        Width = 49
        Height = 15
        Caption = 'Endere'#231'o'
      end
      object Label8: TLabel
        Left = 12
        Top = 174
        Width = 31
        Height = 15
        Caption = 'Bairro'
      end
      object Label9: TLabel
        Left = 181
        Top = 174
        Width = 37
        Height = 15
        Caption = 'Cidade'
      end
      object Label10: TLabel
        Left = 12
        Top = 231
        Width = 14
        Height = 15
        Caption = 'UF'
      end
      object Label11: TLabel
        Left = 94
        Top = 231
        Width = 21
        Height = 15
        Caption = 'CEP'
      end
      object Label12: TLabel
        Left = 339
        Top = 64
        Width = 44
        Height = 15
        Caption = 'Telefone'
      end
      object Label13: TLabel
        Left = 520
        Top = 64
        Width = 37
        Height = 15
        Caption = 'Celular'
      end
      object Label14: TLabel
        Left = 339
        Top = 118
        Width = 29
        Height = 15
        Caption = 'Email'
      end
      object Edit1: TEdit
        Left = 12
        Top = 32
        Width = 121
        Height = 23
        NumbersOnly = True
        ReadOnly = True
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 12
        Top = 85
        Width = 309
        Height = 23
        TabOrder = 1
      end
      object ComboBox1: TComboBox
        Left = 160
        Top = 32
        Width = 145
        Height = 23
        Style = csDropDownList
        TabOrder = 2
        Items.Strings = (
          'Pessoa F'#237'sica'
          'Pessoa Jur'#237'dica')
      end
      object Edit3: TEdit
        Left = 339
        Top = 32
        Width = 145
        Height = 23
        TabOrder = 3
      end
      object Edit5: TEdit
        Left = 12
        Top = 139
        Width = 309
        Height = 23
        TabOrder = 4
      end
      object Edit6: TEdit
        Left = 12
        Top = 195
        Width = 142
        Height = 23
        TabOrder = 5
      end
      object Edit7: TEdit
        Left = 181
        Top = 195
        Width = 140
        Height = 23
        TabOrder = 6
      end
      object Edit8: TEdit
        Left = 12
        Top = 252
        Width = 61
        Height = 23
        TabOrder = 7
      end
      object Edit9: TEdit
        Left = 94
        Top = 252
        Width = 121
        Height = 23
        TabOrder = 8
      end
      object Edit12: TEdit
        Left = 339
        Top = 139
        Width = 320
        Height = 23
        TabOrder = 9
      end
      object CheckBox1: TCheckBox
        Left = 339
        Top = 195
        Width = 126
        Height = 17
        Caption = 'Cliente Negativado'
        TabOrder = 10
      end
      object MaskEdit1: TMaskEdit
        Left = 520
        Top = 32
        Width = 135
        Height = 23
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 11
        Text = '  /  /    '
      end
      object MaskEdit2: TMaskEdit
        Left = 522
        Top = 85
        Width = 130
        Height = 23
        EditMask = '!\(99\)00000-0000;1;_'
        MaxLength = 14
        TabOrder = 12
        Text = '(  )     -    '
      end
      object MaskEdit3: TMaskEdit
        Left = 339
        Top = 85
        Width = 141
        Height = 23
        EditMask = '!\(99\)00000-0000;1;_'
        MaxLength = 14
        TabOrder = 13
        Text = '(  )     -    '
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Dados do C'#244'njuge'
      ImageIndex = 1
    end
    object TabSheet3: TTabSheet
      Caption = 'Dados do Trabalho'
      ImageIndex = 2
    end
    object TabSheet4: TTabSheet
      Caption = 'An'#225'lise de Cr'#233'dito'
      ImageIndex = 3
    end
  end
end
