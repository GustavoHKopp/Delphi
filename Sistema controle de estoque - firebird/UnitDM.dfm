object DM: TDM
  OnCreate = DataModuleCreate
  Height = 480
  Width = 640
  object tbProdutos: TFDTable
    IndexFieldNames = 'ID'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque.produtos'
    Left = 104
    Top = 120
    object tbProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object tbProdutosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object tbProdutosFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTE'
      Required = True
      Size = 50
    end
    object tbProdutosVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'VALIDADE'
      Required = True
    end
    object tbProdutosESTOQUEATUAL: TIntegerField
      FieldName = 'ESTOQUEATUAL'
      Origin = 'ESTOQUEATUAL'
    end
  end
  object tbMovProdutos: TFDTable
    AfterPost = tbMovProdutosAfterPost
    BeforeDelete = tbMovProdutosBeforeDelete
    AfterDelete = tbMovProdutosAfterDelete
    IndexName = 'RDB$FOREIGN7'
    MasterSource = dsMovimentacoes
    MasterFields = 'ID'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque.movimentacoes_produto'
    Left = 104
    Top = 200
    object tbMovProdutosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object tbMovProdutosIDMOVIMENTACAO: TIntegerField
      FieldName = 'IDMOVIMENTACAO'
      Origin = 'IDMOVIMENTACAO'
      Required = True
    end
    object tbMovProdutosIDPRODUTO: TIntegerField
      FieldName = 'IDPRODUTO'
      Origin = 'IDPRODUTO'
      Required = True
    end
    object tbMovProdutosQTD: TIntegerField
      FieldName = 'QTD'
      Origin = 'QTD'
      Required = True
    end
    object tbMovProdutosNOMEPRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMEPRODUTO'
      LookupDataSet = tbProdutos
      LookupKeyFields = 'id'
      LookupResultField = 'nome'
      KeyFields = 'IDPRODUTO'
      Size = 50
      Lookup = True
    end
  end
  object dsProdutos: TDataSource
    DataSet = tbProdutos
    Left = 224
    Top = 120
  end
  object dsMovProdutos: TDataSource
    DataSet = tbMovProdutos
    Left = 224
    Top = 192
  end
  object tbMovimentacoes: TFDTable
    AfterScroll = tbMovimentacoesAfterScroll
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'estoque.movimentacoes'
    Left = 104
    Top = 272
    object tbMovimentacoesID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbMovimentacoesTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
    end
    object tbMovimentacoesDATAHORA: TSQLTimeStampField
      FieldName = 'DATAHORA'
      Origin = 'DATAHORA'
      Required = True
    end
    object tbMovimentacoesRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Origin = 'RESPONSAVEL'
      Required = True
      Size = 30
    end
    object tbMovimentacoesOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Required = True
      Size = 255
    end
  end
  object dsMovimentacoes: TDataSource
    DataSet = tbMovimentacoes
    Left = 224
    Top = 264
  end
  object sqlMovimentacoes: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM movimentacoes')
    Left = 384
    Top = 248
  end
  object dsSqlMovimentacoes: TDataSource
    DataSet = sqlMovimentacoes
    Left = 504
    Top = 248
  end
  object sqlValidaEstoque: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 384
    Top = 320
    ParamData = <
      item
        Name = 'id'
        ParamType = ptInput
      end>
  end
  object dsValidaEstoque: TDataSource
    DataSet = sqlValidaEstoque
    Left = 496
    Top = 320
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    Left = 64
    Top = 48
  end
  object sqlAumentaEstoque: TFDCommand
    Connection = Conexao
    CommandText.Strings = (
      
        'UPDATE produtos SET estoqueAtual = estoqueAtual + :pQtd where id' +
        ' = :pId')
    ParamData = <
      item
        Name = 'pQtd'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'pId'
        DataType = ftInteger
        ParamType = ptInput
      end>
    Left = 496
    Top = 40
  end
  object sqlDiminuiEstoque: TFDCommand
    Connection = Conexao
    CommandText.Strings = (
      
        'UPDATE produtos SET estoqueAtual = estoqueAtual - :pQtd where id' +
        ' = :pId')
    ParamData = <
      item
        Name = 'pQtd'
        DataType = ftInteger
        ParamType = ptInput
      end
      item
        Name = 'pId'
        DataType = ftInteger
        ParamType = ptInput
      end>
    Left = 496
    Top = 112
  end
end
