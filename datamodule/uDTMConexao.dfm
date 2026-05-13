object dtmConexao: TdtmConexao
  OldCreateOrder = False
  Height = 148
  Width = 341
  object conexaoDB: TFDConnection
    Params.Strings = (
      'Server=DC-TR-03-VM\SQLEXPRESS'
      'Database=vendas'
      'OSAuthent=Yes'
      'User_Name=sa'
      'Password=domtec@10'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 112
    Top = 40
  end
end
