object FormDBScript: TFormDBScript
  Left = 0
  Top = 0
  Caption = 'FormDBScript'
  ClientHeight = 370
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    592
    370)
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 8
    Top = 8
    Width = 129
    Height = 25
    Caption = '&Uruchom skrypt'
    Kind = bkYes
    NumGlyphs = 2
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object memScript: TMemo
    Left = 8
    Top = 39
    Width = 386
    Height = 323
    Anchors = [akLeft, akTop, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'memScript')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object Memo1: TMemo
    Left = 400
    Top = 39
    Width = 185
    Height = 323
    Anchors = [akLeft, akTop, akRight, akBottom]
    Lines.Strings = (
      'Memo1')
    ScrollBars = ssVertical
    TabOrder = 2
  end
  object FDScript1: TFDScript
    SQLScripts = <>
    Connection = MainDM.FDConnection1
    Params = <>
    Macros = <>
    FetchOptions.AssignedValues = [evItems, evAutoClose, evAutoFetchAll]
    FetchOptions.AutoClose = False
    FetchOptions.Items = [fiBlobs, fiDetails]
    ResourceOptions.AssignedValues = [rvMacroCreate, rvMacroExpand, rvDirectExecute, rvPersistent]
    ResourceOptions.MacroCreate = False
    ResourceOptions.DirectExecute = True
    OnConsolePut = FDScript1ConsolePut
    Left = 248
    Top = 48
  end
  object FDQuery1: TFDQuery
    Connection = MainDM.FDConnection1
    Left = 248
    Top = 96
  end
  object FDQuery2: TFDQuery
    Connection = MainDM.FDConnection1
    Left = 248
    Top = 144
  end
end
