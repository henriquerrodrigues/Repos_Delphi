object DM: TDM
  Height = 750
  Width = 1000
  PixelsPerInch = 120
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 64
  end
  object tbContatos: TFDTable
    Active = True
    AfterInsert = tbContatosAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    ResourceOptions.AssignedValues = [rvEscapeExpand]
    TableName = 'agenda.contatos'
    Left = 176
    Top = 64
    object tbContatosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = False
    end
    object tbContatosnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object tbContatoscelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 255
    end
    object tbContatosbloqueado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object tbContatosdata: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object tbContatosobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
  end
  object dsContatos: TDataSource
    DataSet = tbContatos
    Left = 176
    Top = 152
  end
end
