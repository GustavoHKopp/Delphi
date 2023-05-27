object FormCadPacientes: TFormCadPacientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Pacientes'
  ClientHeight = 355
  ClientWidth = 725
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label2: TLabel
    Left = 27
    Top = 92
    Width = 3
    Height = 15
    Caption = 'ID'
  end
  object Label3: TLabel
    Left = 80
    Top = 92
    Width = 21
    Height = 15
    Caption = 'CPF'
  end
  object Label4: TLabel
    Left = 27
    Top = 160
    Width = 81
    Height = 15
    Caption = 'Nome Completo'
  end
  object Label5: TLabel
    Left = 27
    Top = 217
    Width = 37
    Height = 15
    Caption = 'Celular'
  end
  object Label6: TLabel
    Left = 200
    Top = 217
    Width = 90
    Height = 15
    Caption = 'Data de Cadastro'
  end
  object Label7: TLabel
    Left = 352
    Top = 92
    Width = 83
    Height = 15
    Caption = 'Buscar Paciente'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 725
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 80
    ExplicitTop = 102
    ExplicitWidth = 839
    object Label1: TLabel
      Left = 24
      Top = 17
      Width = 213
      Height = 30
      Caption = 'Cadastro de Pacientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 324
      Top = 16
      Width = 390
      Height = 41
      DataSource = DM.dsPaciente
      VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
    end
  end
  object txtId: TDBEdit
    Left = 24
    Top = 113
    Width = 25
    Height = 23
    DataField = 'id'
    DataSource = DM.dsPaciente
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object txtNome: TDBEdit
    Left = 24
    Top = 181
    Width = 289
    Height = 23
    DataField = 'nome'
    DataSource = DM.dsPaciente
    TabOrder = 3
  end
  object txtCelular: TDBEdit
    Left = 24
    Top = 238
    Width = 153
    Height = 23
    DataField = 'celular'
    DataSource = DM.dsPaciente
    MaxLength = 15
    TabOrder = 4
  end
  object txtDataCad: TDBEdit
    Left = 200
    Top = 238
    Width = 121
    Height = 23
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    Enabled = False
    MaxLength = 10
    TabOrder = 5
  end
  object txtCpf: TDBEdit
    Left = 80
    Top = 113
    Width = 233
    Height = 23
    DataField = 'cpf'
    DataSource = DM.dsPaciente
    MaxLength = 14
    TabOrder = 2
  end
  object GridPacientes: TDBGrid
    Left = 352
    Top = 141
    Width = 362
    Height = 196
    DataSource = DM.dsPaciente
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Pacientes Cadastrados'
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 352
    Top = 113
    Width = 362
    Height = 23
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
