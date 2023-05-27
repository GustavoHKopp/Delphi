object DM: TDM
  Height = 480
  Width = 640
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=aula'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 88
    Top = 120
  end
  object sqlConsulta: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 184
    Top = 120
    ParamData = <
      item
        Name = 'pConsulta'
      end>
  end
  object dsSqlConsulta: TDataSource
    DataSet = sqlConsulta
    Left = 280
    Top = 120
  end
end
