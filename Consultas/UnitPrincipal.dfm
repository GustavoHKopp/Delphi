object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Sistema Consulta'
  ClientHeight = 450
  ClientWidth = 629
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblConsulta: TLabel
    Left = 184
    Top = 16
    Width = 75
    Height = 15
    Caption = 'Digite o nome'
  end
  object rgOpcoes: TRadioGroup
    Left = 8
    Top = 8
    Width = 153
    Height = 49
    Caption = 'Op'#231#245'es de consulta'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Bairro')
    TabOrder = 0
    OnClick = rgOpcoesClick
  end
  object txtConsulta: TEdit
    Left = 184
    Top = 37
    Width = 435
    Height = 23
    TabOrder = 1
  end
  object btnRealizarConsulta: TButton
    Left = 8
    Top = 66
    Width = 611
    Height = 47
    Caption = 'Realizar Consulta'
    TabOrder = 2
    OnClick = btnRealizarConsultaClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 119
    Width = 611
    Height = 322
    DataSource = DM.dsSqlConsulta
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -12
        Title.Font.Name = 'Segoe UI'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
end
