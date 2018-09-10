object FrameManageContacts: TFrameManageContacts
  Left = 0
  Top = 0
  Width = 606
  Height = 405
  TabOrder = 0
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 600
    Height = 41
    Align = alTop
    BevelOuter = bvLowered
    Caption = 'Panel1'
    Padding.Left = 3
    Padding.Top = 3
    Padding.Right = 3
    Padding.Bottom = 3
    TabOrder = 0
    ExplicitLeft = 208
    ExplicitTop = 184
    ExplicitWidth = 185
    object btnConfirmContact: TButton
      AlignWithMargins = True
      Left = 7
      Top = 7
      Width = 114
      Height = 27
      Align = alLeft
      Caption = 'Potwierd'#378' kotnakt'
      TabOrder = 0
      OnClick = btnConfirmContactClick
    end
    object btnUnregisterContact: TButton
      AlignWithMargins = True
      Left = 127
      Top = 7
      Width = 114
      Height = 27
      Align = alLeft
      Caption = 'Wyrejestruj kontakt'
      TabOrder = 1
      OnClick = btnUnregisterContactClick
    end
    object btnShowUnregistred: TButton
      AlignWithMargins = True
      Left = 247
      Top = 7
      Width = 114
      Height = 27
      Align = alLeft
      Caption = 'btnShowUnregistred'
      TabOrder = 2
    end
    object btnRegisterAgain: TButton
      AlignWithMargins = True
      Left = 367
      Top = 7
      Width = 114
      Height = 27
      Align = alLeft
      Caption = 'btnRegisterAgain'
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 50
    Width = 600
    Height = 352
    Align = alClient
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
