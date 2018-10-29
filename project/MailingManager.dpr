program MailingManager;





uses
  Vcl.Forms,
  Form.Main in 'Form.Main.pas' {FormMain},
  Data.Main in 'Data.Main.pas' {MainDM: TDataModule},
  Data.ManageContacts in 'Data.ManageContacts.pas' {DataModuleManageContacts: TDataModule},
  Dialog.RunSQLScript in 'Dialog.RunSQLScript.pas' {FormDBScript},
  MySQL.SQL.Main in 'MySQL.SQL.Main.pas',
  Interbase.SQL.Main in 'Interbase.SQL.Main.pas',
  Frame.ImportContacts in 'Frame.ImportContacts.pas' {FrameImport: TFrame},
  Mock.JSON.ImportContacts in 'Mock.JSON.ImportContacts.pas',
  Dialog.ResolveImportConflicts in 'Dialog.ResolveImportConflicts.pas' {DialogResolveConflicts},
  Frame.ManageContacts in 'Frame.ManageContacts.pas' {FrameManageContacts: TFrame},
  Frame.Welcome in 'Frame.Welcome.pas' {FrameWelcome: TFrame};

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
