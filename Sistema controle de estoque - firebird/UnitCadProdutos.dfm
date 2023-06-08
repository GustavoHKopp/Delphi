object FormCadProdutos: TFormCadProdutos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 450
  ClientWidth = 741
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object Label1: TLabel
    Left = 32
    Top = 31
    Width = 248
    Height = 32
    Caption = 'Cadastro de Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtNomeProd: TLabel
    Left = 32
    Top = 167
    Width = 125
    Height = 21
    Caption = 'Nome do Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 223
    Width = 71
    Height = 21
    Caption = 'Fabricante'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 232
    Top = 223
    Width = 57
    Height = 21
    Caption = 'Inculs'#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 278
    Width = 166
    Height = 21
    Caption = 'Quantidade em Estoque'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 119
    Width = 50
    Height = 21
    Caption = 'Codigo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object txtNomeProd: TDBEdit
    Left = 32
    Top = 188
    Width = 321
    Height = 29
    DataField = 'NOME'
    DataSource = DM.dsProdutos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object txtFabricante: TDBEdit
    Left = 32
    Top = 243
    Width = 194
    Height = 29
    DataField = 'FABRICANTE'
    DataSource = DM.dsProdutos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object edtValidade: TDBEdit
    Left = 232
    Top = 244
    Width = 119
    Height = 29
    DataField = 'VALIDADE'
    DataSource = DM.dsProdutos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object txtEstoque: TDBEdit
    Left = 32
    Top = 305
    Width = 166
    Height = 29
    DataField = 'ESTOQUEATUAL'
    DataSource = DM.dsProdutos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 375
    Top = 31
    Width = 361
    Height = 402
    DataSource = DM.dsProdutos
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'Codigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FABRICANTE'
        Title.Caption = 'Fabricante'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VALIDADE'
        Title.Caption = 'Validade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUEATUAL'
        Title.Caption = 'Estoque'
        Visible = True
      end>
  end
  object txtId: TDBEdit
    Left = 32
    Top = 141
    Width = 121
    Height = 29
    DataField = 'ID'
    DataSource = DM.dsProdutos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object btnInclui: TButton
    Left = 24
    Top = 402
    Width = 75
    Height = 31
    Caption = 'Incluir'
    TabOrder = 6
    OnClick = btnIncluiClick
  end
  object btnExclui: TButton
    Left = 105
    Top = 402
    Width = 75
    Height = 31
    Caption = 'Excluir'
    TabOrder = 7
    OnClick = btnExcluiClick
  end
  object btnCancela: TButton
    Left = 266
    Top = 402
    Width = 75
    Height = 31
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 8
    OnClick = btnCancelaClick
  end
  object btnConfirma: TButton
    Left = 185
    Top = 402
    Width = 75
    Height = 31
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 9
    OnClick = btnConfirmaClick
  end
end
