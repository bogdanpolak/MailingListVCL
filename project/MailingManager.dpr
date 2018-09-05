program MailingManager;

uses
  Vcl.Forms,
  MainFormUnit in 'MainFormUnit.pas' {FormMain},
  MainDataModule in 'MainDataModule.pas' {MainDM: TDataModule},
  ScriptForm in 'ScriptForm.pas' {FormDBScript},
  UnitDatabaseScriptsDDL in 'UnitDatabaseScriptsDDL.pas',
  UnitMySQLCreateDB in 'UnitMySQLCreateDB.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormMain, FormMain);
  Application.CreateForm(TMainDM, MainDM);
  Application.CreateForm(TFormDBScript, FormDBScript);
  Application.Run;
end.
