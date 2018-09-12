program MailingManager;



{$R *.dres}

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {FormMain},
  MainDataModule in 'MainDataModule.pas' {MainDM: TDataModule},
  ScriptForm in 'ScriptForm.pas' {FormDBScript},
  UnitMySQLCreateDB in 'UnitMySQLCreateDB.pas',
  UnitInterbaseCreateDB in 'UnitInterbaseCreateDB.pas',
  ImportFrameUnit in 'ImportFrameUnit.pas' {FrameImport: TFrame},
  UnitMockData in 'UnitMockData.pas',
  ResolveConflictsDialogUnit in 'ResolveConflictsDialogUnit.pas' {DialogResolveConflicts},
  ManageContactsFrameUnit in 'ManageContactsFrameUnit.pas' {FrameManageContacts: TFrame},
  WelcomeFrameUnit in 'WelcomeFrameUnit.pas' {FrameWelcome: TFrame},
  ManageContactsDataModule in 'ManageContactsDataModule.pas' {DataModuleManageContacts: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TMainDM, MainDM);
  Application.CreateForm(TFormDBScript, FormDBScript);
  Application.CreateForm(TDataModuleManageContacts, DataModuleManageContacts);
  Application.Run;
end.
