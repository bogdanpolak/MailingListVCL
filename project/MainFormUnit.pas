unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ChromeTabs,
  ChromeTabsClasses, ChromeTabsTypes;

type
  TFrameClass = class of TFrame;

  TFormMain = class(TForm)
    tmrIdle: TTimer;
    grboxCommands: TGroupBox;
    ChromeTabs1: TChromeTabs;
    pnMain: TPanel;
    FlowPanel1: TFlowPanel;
    btnCreateDatabaseStructures: TButton;
    btnManageContacts: TButton;
    btnImportContacts: TButton;
    btnListManager: TButton;
    ScrollBox1: TScrollBox;
    btnImportUnregistered: TButton;
    Button5: TButton;
    grboxAutoOpen: TGroupBox;
    rbtnDialogCreateDB: TRadioButton;
    rbtnFrameImportContacts: TRadioButton;
    rbtFrameManageContacts: TRadioButton;
    rbtnWelcome: TRadioButton;
    grboxConfiguration: TGroupBox;
    edtAppVersion: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edtDBVersion: TEdit;
    procedure btnCreateDatabaseStructuresClick(Sender: TObject);
    procedure btnImportContactsClick(Sender: TObject);
    procedure btnManageContactsClick(Sender: TObject);
    procedure ChromeTabs1ButtonCloseTabClick(Sender: TObject; ATab: TChromeTab;
      var Close: Boolean);
    procedure ChromeTabs1Change(Sender: TObject; ATab: TChromeTab;
      TabChangeType: TTabChangeType);
    procedure FlowPanel1Resize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrIdleTimer(Sender: TObject);
  private
    isDeveloperMode: Boolean;
    procedure HideAllChildFrames(AParenControl: TWinControl);
    function OpenFrameAsChromeTab(Frame:TFrameClass;Sender: TObject):TChromeTab;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses
  FireDAC.Stan.Error, ScriptForm, ImportFrameUnit, ManageContactsFrameUnit,
  MainDataModule, WelcomeFrameUnit;

const
  SQL_SELECT_DatabaseVersion = 'SELECT versionnr FROM DBInfo';

resourcestring
  SWelcomeScreen = 'Ekran powitalny';
  SDatabaseRequireUpgrade =
    'Proszê najpierw uruchomiæ skrypt buduj¹cy strukturê bazy danych.';

procedure TFormMain.btnCreateDatabaseStructuresClick(Sender: TObject);
begin
  FormDBScript.Show;
end;

procedure TFormMain.HideAllChildFrames(AParenControl: TWinControl);
var
  i: Integer;
begin
  for i := AParenControl.ControlCount - 1 downto 0 do
    if AParenControl.Controls[i] is TFrame then
      (AParenControl.Controls[i] as TFrame).Visible := False;
end;

function TFormMain.OpenFrameAsChromeTab(Frame: TFrameClass;Sender: TObject):TChromeTab;
var
  frm: TFrame;
begin
  Result := nil;
  { TODO: Dodaæ kontrolê otwierania tej samej zak³adki po raz drugi }
  // B³¹d zg³oszony. github #2
  { DONE: Powtórka: COPY-PASTE }
  { DONE : Wydziel metodê OpenFrameAsChromeTab (TFrame) }

  HideAllChildFrames(pnMain);

  frm := Frame.Create(pnMain);
  frm.Parent := pnMain;
  frm.Visible := True;
  frm.Align := alClient;

  Result := ChromeTabs1.Tabs.Add;
  Result.Data := frm;

  if (Sender is TButton) then
     Result.Caption := (Sender as TButton).Caption;

end;

procedure TFormMain.btnImportContactsClick(Sender: TObject);
begin
  { DONE: Powtórka: COPY-PASTE }
  OpenFrameAsChromeTab(TFrameImport,Sender);
end;

procedure TFormMain.btnManageContactsClick(Sender: TObject);
begin
  { DONE: Powtórka: COPY-PASTE }
  OpenFrameAsChromeTab(TFrameManageContacts,Sender);
end;

procedure TFormMain.ChromeTabs1ButtonCloseTabClick(Sender: TObject;
  ATab: TChromeTab; var Close: Boolean);
var
  obj: TObject;
begin
  obj := TObject(ATab.Data);
  (obj as TFrame).Free;
end;

procedure TFormMain.ChromeTabs1Change(Sender: TObject; ATab: TChromeTab;
  TabChangeType: TTabChangeType);
var
  obj: TObject;
begin
  if Assigned(ATab) then
  begin
    obj := TObject(ATab.Data);
    if (TabChangeType = tcActivated) and Assigned(obj) then
    begin
      HideAllChildFrames(pnMain);
      (obj as TFrame).Visible := True;
    end;
  end;
end;

procedure TFormMain.FlowPanel1Resize(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to FlowPanel1.ControlCount - 1 do
  begin
    if FlowPanel1.Controls[i].Top + FlowPanel1.Controls[i].Height + 6 >
      FlowPanel1.ClientHeight then
      FlowPanel1.ClientHeight := FlowPanel1.Controls[i].Top +
        FlowPanel1.Controls[i].Height + 6;
  end;
end;

procedure TFormMain.FormCreate(Sender: TObject);
var
  sProjFileName: string;
  ext: string;
begin
  FlowPanel1.Caption := '';
  pnMain.Caption := '';
  { TODO: Powtórka: COPY-PASTE }
  { TODO: Poprawiæ rozpoznawanie projektu: dpr w bie¿¹cym folderze }
{$IFDEF DEBUG}
  ext := '.dpr'; // do not localize
  sProjFileName := ChangeFileExt(ExtractFileName(Application.ExeName), ext);
  isDeveloperMode := FileExists('..\..\' + sProjFileName);
{$ELSE}
  isDeveloperMode := False;
{$ENDIF}
end;

procedure TFormMain.tmrIdleTimer(Sender: TObject);
var
  tmr1: TTimer;
  DatabaseNumber: Integer;
  res: Variant;
  VersionNr: Integer;
  kind: TFDCommandExceptionKind;
  isFirstTime: Boolean;
  tab: TChromeTab;
  frm: TFrameWelcome;
  msg1: string;
begin
  { TODO: Przebudowaæ logikê metody. Jest zbyt skomplikowana i ma³o czytelna }
  tmr1 := (Sender as TTimer);
  isFirstTime := (tmr1.Tag = 0);
  tmr1.Tag := tmr1.Tag + 1;
  if isFirstTime then
  begin
    { DONE: Powtórka: COPY-PASTE }
    tab := OpenFrameAsChromeTab(TFrameWelcome,Sender);
    tab.Caption := SWelcomeScreen;
    // -- koniec bloku powótki
    self.Caption := self.Caption + ' - ' + edtAppVersion.Text;
    { DONE: SprawdŸ wersjê bazy danych czy pasuje do aplikacji }
    DatabaseNumber := StrToInt(edtDBVersion.Text);
    { TODO: Wydziel metodê: verifyDatabaseVersion(expectedVersionNr) }
    // Po³¹czenie z baz¹ i porównanie DatabaseNumber z VersionNr
    try
      MainDM.FDConnection1.Open();
    except
      on E: EFDDBEngineException do
      begin
        if E.kind = ekObjNotExists then
        begin
          tmr1.Enabled := False;
          { TODO: Zamieñ [ShowMessage] na informacje na ekranie powitalnym }
          ShowMessage(SDatabaseRequireUpgrade);
          tmr1.Enabled := True;
        end;
      end;
    end;
    res := MainDM.FDConnection1.ExecSQLScalar(SQL_SELECT_DatabaseVersion);
    VersionNr := res;
    if VersionNr <> DatabaseNumber then
    begin
      tmr1.Enabled := False;
      { TODO: Wy³¹cz jako sta³a resourcestring }
      { TODO: Zamieñ ShowMessage na informacje na ekranie powitalnym }
      msg1 := 'B³êdna wersja bazy danych. Proszê zaktualizowaæ strukturê ' +
        'bazy. Oczekiwana wersja bazy: %d, aktualna wersja bazy: %d';
      ShowMessage(Format(msg1, [DatabaseNumber, VersionNr]));
      tmr1.Enabled := True;
    end;
  end;
  if isDeveloperMode and isFirstTime then
  begin
    if rbtnDialogCreateDB.Checked then
      btnCreateDatabaseStructures.Click;
    if rbtnFrameImportContacts.Checked then
      btnImportContacts.Click;
    if rbtFrameManageContacts.Checked then
      btnManageContacts.Click;
  end;
end;

end.
