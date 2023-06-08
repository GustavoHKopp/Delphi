object FormCadMovimentacao: TFormCadMovimentacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Movimenta'#231#227'o'
  ClientHeight = 477
  ClientWidth = 1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 298
    Height = 32
    Caption = 'Gerenciar Movimenta'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 63
    Top = 62
    Width = 158
    Height = 21
    Caption = 'Tipo da Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 124
    Width = 82
    Height = 21
    Caption = 'Data e Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 25
    Top = 178
    Width = 87
    Height = 21
    Caption = 'Respons'#225'vel'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 236
    Width = 89
    Height = 21
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 711
    Top = 17
    Width = 317
    Height = 32
    Caption = 'Produtos da Movimenta'#231#227'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 711
    Top = 99
    Width = 125
    Height = 21
    Caption = 'Escolha o Produto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 951
    Top = 92
    Width = 81
    Height = 21
    Caption = 'Quantidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 711
    Top = 424
    Width = 138
    Height = 21
    Caption = 'Total de Produtos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object txtTotalProdutos: TLabel
    Left = 855
    Top = 424
    Width = 18
    Height = 21
    Caption = '00'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbTpMov: TDBComboBox
    Left = 63
    Top = 89
    Width = 217
    Height = 29
    Style = csDropDownList
    DataField = 'tipo'
    DataSource = DM.dsMovimentacoes
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Items.Strings = (
      'Entrada'
      'Saida')
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 151
    Width = 218
    Height = 29
    DataField = 'dataHora'
    DataSource = DM.dsMovimentacoes
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
  end
  object txtResponsavel: TDBEdit
    Left = 24
    Top = 200
    Width = 298
    Height = 29
    DataField = 'responsavel'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object mmObs: TDBMemo
    Left = 24
    Top = 258
    Width = 298
    Height = 145
    DataField = 'observacoes'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 334
    Top = 91
    Width = 344
    Height = 312
    DataSource = DM.dsMovimentacoes
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATAHORA'
        Title.Caption = 'DATA E HORA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESPONSAVEL'
        Visible = True
      end>
  end
  object btnInclui: TButton
    Left = 24
    Top = 430
    Width = 75
    Height = 31
    Caption = 'Incluir'
    TabOrder = 5
    OnClick = btnIncluiClick
  end
  object btnExclui: TButton
    Left = 105
    Top = 430
    Width = 75
    Height = 31
    Caption = 'Excluir'
    TabOrder = 6
    OnClick = btnExcluiClick
  end
  object btnCancela: TButton
    Left = 268
    Top = 430
    Width = 75
    Height = 31
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 7
    OnClick = btnCancelaClick
  end
  object btnConfirma: TButton
    Left = 187
    Top = 430
    Width = 75
    Height = 31
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 8
    OnClick = btnConfirmaClick
  end
  object cbProd: TDBLookupComboBox
    Left = 711
    Top = 121
    Width = 235
    Height = 29
    DataField = 'idProduto'
    DataSource = DM.dsMovProdutos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsProdutos
    ParentFont = False
    TabOrder = 9
  end
  object edtQtde: TDBEdit
    Left = 952
    Top = 121
    Width = 96
    Height = 29
    DataField = 'qtd'
    DataSource = DM.dsMovProdutos
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBGrid2: TDBGrid
    Left = 711
    Top = 168
    Width = 337
    Height = 235
    DataSource = DM.dsMovProdutos
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'NOMEPRODUTO'
        Title.Caption = 'Produto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QTD'
        Visible = True
      end>
  end
  object btnIncluiProd: TButton
    Left = 713
    Top = 61
    Width = 75
    Height = 31
    Caption = 'Incluir'
    TabOrder = 12
    OnClick = btnIncluiProdClick
  end
  object btnExcluiProd: TButton
    Left = 794
    Top = 61
    Width = 75
    Height = 31
    Caption = 'Excluir'
    TabOrder = 13
    OnClick = btnExcluiProdClick
  end
  object btnCancelaProd: TButton
    Left = 957
    Top = 61
    Width = 75
    Height = 31
    Caption = 'Cancelar'
    Enabled = False
    TabOrder = 14
    OnClick = btnCancelaProdClick
  end
  object BtnConfirmaProd: TButton
    Left = 876
    Top = 61
    Width = 75
    Height = 31
    Caption = 'Confirmar'
    Enabled = False
    TabOrder = 15
    OnClick = BtnConfirmaProdClick
  end
  object txtId: TDBEdit
    Left = 25
    Top = 89
    Width = 32
    Height = 29
    DataField = 'ID'
    DataSource = DM.dsMovimentacoes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
  object DBEdit2: TDBEdit
    Left = 616
    Top = 48
    Width = 41
    Height = 23
    DataField = 'ID'
    DataSource = DM.dsProdutos
    TabOrder = 17
  end
end
