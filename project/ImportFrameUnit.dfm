object FrameImport: TFrameImport
  Left = 0
  Top = 0
  Width = 559
  Height = 389
  Color = clYellow
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  DesignSize = (
    559
    389)
  object btnLoadNewEmails: TButton
    Left = 8
    Top = 8
    Width = 176
    Height = 25
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Caption = 'Wczytaj nowe e-mail'#39'e'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 543
    Height = 341
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
