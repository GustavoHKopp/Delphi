object FormEditorSql: TFormEditorSql
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Editor Sql'
  ClientHeight = 741
  ClientWidth = 1546
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  TextHeight = 15
  object mmSql: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 52
    Width = 1540
    Height = 274
    Align = alTop
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Arial'
    Font.Style = []
    Lines.Strings = (
      'mmSql')
    ParentFont = False
    TabOrder = 0
    OnKeyDown = mmSqlKeyDown
    ExplicitLeft = 8
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 332
    Width = 1540
    Height = 306
    Align = alTop
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = dsSql
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1546
    Height = 49
    Align = alTop
    TabOrder = 2
    object Label1: TLabel
      Left = 23
      Top = 9
      Width = 104
      Height = 30
      Caption = 'Editor SQL'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnConsulta: TButton
      Left = 487
      Top = 6
      Width = 81
      Height = 37
      Caption = 'F9 - Consultar'
      TabOrder = 0
      OnClick = btnConsultaClick
    end
    object btnSair: TButton
      Left = 657
      Top = 6
      Width = 75
      Height = 37
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = btnSairClick
    end
    object btnExecuta: TButton
      Left = 574
      Top = 6
      Width = 77
      Height = 37
      Caption = 'F6 - Executar'
      TabOrder = 2
      OnClick = btnExecutaClick
    end
  end
  object QrySql: TFDQuery
    Connection = DM.Conexao
    SQL.Strings = (
      '')
    Left = 336
    Top = 640
  end
  object dsSql: TDataSource
    DataSet = QrySql
    Left = 392
    Top = 640
  end
end
