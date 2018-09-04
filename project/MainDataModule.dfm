object MainDM: TMainDM
  OldCreateOrder = False
  Height = 150
  Width = 225
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=IB_Mailing')
    Left = 40
    Top = 16
  end
  object FDPhysIBDriverLink1: TFDPhysIBDriverLink
    Left = 144
    Top = 16
  end
end
