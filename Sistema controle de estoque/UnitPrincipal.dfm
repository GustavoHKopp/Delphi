object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Sistema de Controle de Estoque'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  WindowState = wsMaximized
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 176
    Top = 24
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Sistema2: TMenuItem
        Caption = 'Sair'
        OnClick = Sistema2Click
      end
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object Produto1: TMenuItem
        Caption = 'Produto'
        OnClick = Produto1Click
      end
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object GerenciarMovimentaes1: TMenuItem
        Caption = 'Gerenciar Movimenta'#231#245'es'
        OnClick = GerenciarMovimentaes1Click
      end
      object ConsultarMovimentaes1: TMenuItem
        Caption = 'Consultar Movimenta'#231#245'es'
        OnClick = ConsultarMovimentaes1Click
      end
    end
  end
end
