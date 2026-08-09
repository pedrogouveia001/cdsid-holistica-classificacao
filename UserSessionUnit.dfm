object IWUserSession: TIWUserSession
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    HostName = 'localhost'
    Port = 3306
    Database = 'fitradeoff_data'
    User = 'root'
    Password = ''
    Protocol = 'mysql'
    Left = 144
    Top = 56
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 40
    Top = 40
  end
  object ZQuery2: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 40
    Top = 40
  end
end
