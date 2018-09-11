object MainDM: TMainDM
  OldCreateOrder = False
  Height = 150
  Width = 371
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=IB_MailingDB')
    Left = 40
    Top = 16
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 256
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 264
    Top = 32
  end
end
