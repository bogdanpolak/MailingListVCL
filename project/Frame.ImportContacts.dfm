object FrameImport: TFrameImport
  Left = 0
  Top = 0
  Width = 738
  Height = 389
  Color = clBtnFace
  ParentBackground = False
  ParentColor = False
  TabOrder = 0
  DesignSize = (
    738
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
    OnClick = btnLoadNewEmailsClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 40
    Width = 722
    Height = 341
    Margins.Left = 8
    Margins.Top = 8
    Margins.Right = 8
    Margins.Bottom = 8
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnDblClick = DBGrid1DblClick
    OnKeyPress = DBGrid1KeyPress
    OnMouseUp = DBGrid1MouseUp
    Columns = <
      item
        Expanded = False
        FieldName = 'Import'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Email'
        Width = 248
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FirstName'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LastName'
        Width = 107
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Company'
        Width = 147
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CurFirstName'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CurLastName'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'CurComapny'
        Visible = False
      end>
  end
  object grBoxFrameConfiguration: TGroupBox
    Left = 392
    Top = 88
    Width = 185
    Height = 73
    Caption = 'grBoxFrameConfiguration'
    Padding.Left = 4
    Padding.Top = 5
    Padding.Right = 4
    TabOrder = 2
    Visible = False
    object chkAutoLoadJSON: TCheckBox
      AlignWithMargins = True
      Left = 9
      Top = 23
      Width = 167
      Height = 17
      Align = alTop
      Caption = 'chkAutoLoadJSON'
      TabOrder = 0
      Visible = False
    end
  end
  object btnImportSelected: TButton
    Left = 195
    Top = 8
    Width = 158
    Height = 25
    Caption = 'Zaimportuj zaznaczone'
    TabOrder = 3
    OnClick = btnImportSelectedClick
  end
  object FileOpenDialog1: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Plik JSON (*.json)'
        FileMask = '*.json'
      end
      item
        DisplayName = 'Dowolny plki (*.*)'
        FileMask = '*.*'
      end>
    Options = []
    Left = 40
    Top = 152
  end
  object mtabEmails: TFDMemTable
    FieldDefs = <>
    IndexDefs = <>
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired]
    UpdateOptions.CheckRequired = False
    StoreDefs = True
    Left = 136
    Top = 104
    object mtabEmailsImport: TBooleanField
      FieldName = 'Import'
    end
    object mtabEmailsEmail: TWideStringField
      FieldName = 'Email'
      Size = 50
    end
    object mtabEmailsFirstName: TWideStringField
      FieldName = 'FirstName'
      Size = 100
    end
    object mtabEmailsLastName: TWideStringField
      FieldName = 'LastName'
      Size = 100
    end
    object mtabEmailsCompany: TWideStringField
      FieldName = 'Company'
      Size = 100
    end
    object mtabEmailsDuplicated: TBooleanField
      FieldName = 'Duplicated'
    end
    object mtabEmailsConflicts: TBooleanField
      FieldName = 'Conflicts'
    end
    object mtabEmailsCurFirstName: TWideStringField
      FieldName = 'CurFirstName'
      Size = 100
    end
    object mtabEmailsCurLastName: TWideStringField
      FieldName = 'CurLastName'
      Size = 100
    end
    object mtabEmailsCurCompany: TWideStringField
      FieldName = 'CurCompany'
      Size = 100
    end
  end
  object DataSource1: TDataSource
    DataSet = mtabEmails
    Left = 136
    Top = 152
  end
  object tmrFrameShow: TTimer
    Interval = 1
    OnTimer = tmrFrameShowTimer
    Left = 40
    Top = 104
  end
  object dsQueryCurrEmails: TFDQuery
    Connection = MainDM.FDConnection1
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    Left = 224
    Top = 104
    object dsQueryCurrEmailsEMAIL: TWideStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Required = True
      Size = 100
    end
    object dsQueryCurrEmailsFIRSTNAME: TWideStringField
      FieldName = 'FIRSTNAME'
      Origin = '"FIRSTNAME"'
      Size = 50
    end
    object dsQueryCurrEmailsLASTNAME: TWideStringField
      FieldName = 'LASTNAME'
      Origin = '"LASTNAME"'
      Size = 50
    end
    object dsQueryCurrEmailsCOMPANY: TWideStringField
      FieldName = 'COMPANY'
      Origin = 'COMPANY'
      Size = 100
    end
  end
  object FDQuery1: TFDQuery
    Left = 224
    Top = 160
  end
  object FDQuery2: TFDQuery
    Connection = MainDM.FDConnection1
    Left = 224
    Top = 208
  end
end
