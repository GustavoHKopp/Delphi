object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda de contatos'
  ClientHeight = 378
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 700
    Height = 378
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = -2
    ExplicitWidth = 753
    ExplicitHeight = 407
    object TabSheet1: TTabSheet
      Caption = 'Acesso'
      object Label6: TLabel
        Left = 18
        Top = 18
        Width = 35
        Height = 15
        Caption = 'Buscar'
      end
      object Label7: TLabel
        Left = 348
        Top = 19
        Width = 96
        Height = 15
        Caption = 'Nome do Contato'
      end
      object Label8: TLabel
        Left = 348
        Top = 75
        Width = 100
        Height = 15
        Caption = 'Celular do Contato'
      end
      object Label9: TLabel
        Left = 348
        Top = 126
        Width = 67
        Height = 15
        Caption = 'Observa'#231#245'es'
      end
      object Label10: TLabel
        Left = 350
        Top = 269
        Width = 125
        Height = 15
        Caption = 'Data e hora do cadastro'
      end
      object DBText2: TDBText
        Left = 481
        Top = 269
        Width = 125
        Height = 17
        DataField = 'data'
        DataSource = DM.dsContatos
      end
      object DBGrid1: TDBGrid
        Left = 18
        Top = 68
        Width = 315
        Height = 218
        DataSource = DM.dsContatos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            Title.Caption = 'Contatos Cadastrados'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -12
            Title.Font.Name = 'Segoe UI'
            Title.Font.Style = []
            Width = 163
            Visible = True
          end>
      end
      object txtBusca: TEdit
        Left = 18
        Top = 39
        Width = 315
        Height = 23
        TabOrder = 1
        OnChange = txtBuscaChange
      end
      object DBEdit1: TDBEdit
        Left = 348
        Top = 40
        Width = 297
        Height = 23
        DataField = 'nome'
        DataSource = DM.dsContatos
        Enabled = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 350
        Top = 96
        Width = 169
        Height = 23
        DataField = 'celular'
        DataSource = DM.dsContatos
        Enabled = False
        TabOrder = 3
      end
      object DBCheckBox1: TDBCheckBox
        Left = 548
        Top = 99
        Width = 97
        Height = 17
        Caption = 'Bloqueado'
        Ctl3D = True
        DataField = 'bloqueado'
        DataSource = DM.dsContatos
        Enabled = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 4
      end
      object DBMemo1: TDBMemo
        Left = 350
        Top = 142
        Width = 297
        Height = 121
        DataField = 'observacoes'
        DataSource = DM.dsContatos
        Enabled = False
        TabOrder = 5
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Label2: TLabel
        Left = 40
        Top = 115
        Width = 96
        Height = 15
        Caption = 'Nome do Contato'
      end
      object Label3: TLabel
        Left = 40
        Top = 171
        Width = 100
        Height = 15
        Caption = 'Celular do Contato'
      end
      object Label4: TLabel
        Left = 368
        Top = 53
        Width = 67
        Height = 15
        Caption = 'Observa'#231#245'es'
      end
      object Label5: TLabel
        Left = 370
        Top = 205
        Width = 125
        Height = 15
        Caption = 'Data e hora do cadastro'
      end
      object DBText1: TDBText
        Left = 372
        Top = 226
        Width = 123
        Height = 17
        DataField = 'data'
        DataSource = DM.dsContatos
      end
      object Label1: TLabel
        Left = 40
        Top = 24
        Width = 232
        Height = 32
        Caption = 'Agenda de Contatos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -24
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object EdtName: TDBEdit
        Left = 40
        Top = 136
        Width = 297
        Height = 23
        DataField = 'nome'
        DataSource = DM.dsContatos
        TabOrder = 0
      end
      object EdtCelular: TDBEdit
        Left = 42
        Top = 192
        Width = 169
        Height = 23
        DataField = 'celular'
        DataSource = DM.dsContatos
        TabOrder = 1
      end
      object cbBloq: TDBCheckBox
        Left = 240
        Top = 195
        Width = 97
        Height = 17
        Caption = 'Bloquear'
        Ctl3D = True
        DataField = 'bloqueado'
        DataSource = DM.dsContatos
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = False
        TabOrder = 2
      end
      object mmObs: TDBMemo
        Left = 372
        Top = 74
        Width = 297
        Height = 121
        DataField = 'observacoes'
        DataSource = DM.dsContatos
        TabOrder = 3
      end
      object DBNavigator1: TDBNavigator
        Left = 40
        Top = 72
        Width = 280
        Height = 25
        DataSource = DM.dsContatos
        VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 4
      end
    end
  end
end
