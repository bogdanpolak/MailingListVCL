object FrameWelcome: TFrameWelcome
  Left = 0
  Top = 0
  Width = 593
  Height = 533
  Padding.Left = 8
  Padding.Top = 10
  Padding.Right = 8
  TabOrder = 0
  object Label1: TLabel
    AlignWithMargins = True
    Left = 11
    Top = 13
    Width = 571
    Height = 40
    Align = alTop
    Alignment = taCenter
    Caption = 'Mailing Manager'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -33
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 236
  end
  object lblAppVersion: TLabel
    AlignWithMargins = True
    Left = 11
    Top = 56
    Width = 571
    Height = 16
    Margins.Top = 0
    Align = alTop
    Alignment = taCenter
    Caption = 'wersja: ....'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 64
  end
  object Image1: TImage
    AlignWithMargins = True
    Left = 11
    Top = 90
    Width = 571
    Height = 160
    Margins.Top = 15
    Align = alTop
    Center = True
  end
  object Label2: TLabel
    AlignWithMargins = True
    Left = 11
    Top = 259
    Width = 571
    Height = 13
    Margins.Top = 6
    Margins.Bottom = 0
    Align = alTop
    Caption = 'Informacje programu:'
    ExplicitTop = 375
    ExplicitWidth = 105
  end
  object lbxAppLog: TListBox
    AlignWithMargins = True
    Left = 11
    Top = 275
    Width = 571
    Height = 133
    Align = alTop
    BevelKind = bkFlat
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object tmrFirstShow: TTimer
    Interval = 1
    OnTimer = tmrFirstShowTimer
    Left = 24
    Top = 16
  end
end
