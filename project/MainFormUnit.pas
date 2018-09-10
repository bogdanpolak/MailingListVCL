unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ChromeTabs,
  ChromeTabsClasses, ChromeTabsTypes;

type
  TFormMain = class(TForm)
    tmrIdle: TTimer;
    grboxCommands: TGroupBox;
    ChromeTabs1: TChromeTabs;
    pnMain: TPanel;
    FlowPanel1: TFlowPanel;
    btnCreateDatabaseStructures: TButton;
    btnManageContacts: TButton;
    btnImportContacts: TButton;
    Button3: TButton;
    ScrollBox1: TScrollBox;
    Button4: TButton;
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

procedure TFormMain.btnCreateDatabaseStructuresClick(Sender: TObject);
begin
  FormDBScript.Show;
end;

procedure TFormMain.btnImportContactsClick(Sender: TObject);
var
  frm: TFrameImport;
  tab: TChromeTab;
begin
  { TODO: Dodaæ kontrolê otiwrania tej samej zak³¹dki po raz drugi (wyj¹tek) }
  frm := TFrameImport.Create(pnMain);
  frm.Parent := pnMain;
  frm.Visible := True;
  frm.Align := alClient;
  tab := ChromeTabs1.Tabs.Add;
  tab.Data := frm;
  tab.Caption := (Sender as TButton).Caption;
end;

procedure TFormMain.btnManageContactsClick(Sender: TObject);
var
  frm: TFrameManageContacts;
  tab: TChromeTab;
begin
  // Miejsce na  stworzenie i otwarcie ramki: FrameManageContacts
  { TODO: Powtórka: COPY-PASTE }
  frm := TFrameManageContacts.Create(pnMain);
  frm.Parent := pnMain;
  frm.Visible := True;
  frm.Align := alClient;
  tab := ChromeTabs1.Tabs.Add;
  tab.Data := frm;
  tab.Caption := (Sender as TButton).Caption;
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
      if (pnMain.ControlCount=1) and (pnMain.Controls[0] is TFrame) then
        (pnMain.Controls[0] as TFrame).Visible := False;
      (obj as TFrame).Parent := pnMain;
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
begin
  FlowPanel1.Caption := '';
  pnMain.Caption := '';
  { TODO: Powtórka: COPY-PASTE }
  { TODO: Poprawiæ rozpoznawanie projektu: dpr w bie¿¹cym folderze }
{$IFDEF DEBUG}
  sProjFileName := ChangeFileExt(ExtractFileName(Application.ExeName), '.dpr');
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
begin
  tmr1 := (Sender as TTimer);
  isFirstTime := (tmr1.Tag = 0);
  tmr1.Tag := tmr1.Tag + 1;
  if isFirstTime then
  begin
    { TODO: Powtórka: COPY-PASTE }
    frm := TFrameWelcome.Create(pnMain);
    frm.Parent := pnMain;
    frm.Visible := True;
    frm.Align := alClient;
    tab := ChromeTabs1.Tabs.Add;
    tab.Data := frm;
    // w poni¿ej linii  jest ró¿nica w porównaniu do innych kopii
    tab.Caption := 'Ekran powitalny';
    { TODO: Verify AppVersion with resorces }
    // edtAppVersion.Text
    self.Caption := self.Caption + ' - ' + edtAppVersion.Text;
    DatabaseNumber := StrToInt(edtDBVersion.Text);
    { TODO: Wy³¹cz metodê: Po³aczenie z baz¹ i porównanie DatabaseNumber z VersionNr }
    { TODO: Dodaj okno logowania i autentykacjê }
    try
      MainDM.FDConnection1.Open();
    except
      on E: EFDDBEngineException do
      begin
        if E.kind = ekObjNotExists then
        begin
          { TODO: Wy³¹cz jako sta³a resourcestring }
          tmr1.Enabled := False;
          { TODO: Zamieñ ShowMessage na informacje na ekranie powitalnym }
          ShowMessage
            ('Proszê najpierw uruchomiæ skrypt buduj¹cy strukturê bazy danych.');
          tmr1.Enabled := True;
        end;
      end;
    end;
    res := MainDM.FDConnection1.ExecSQLScalar('SELECT versionnr FROM DBInfo');
    VersionNr := res;
    if VersionNr <> DatabaseNumber then
    begin
      tmr1.Enabled := False;
      { TODO: Zamieñ ShowMessage na informacje na ekranie powitalnym }
      ShowMessage
        (Format('B³êdna wersja bazy danych. Proszê zaktualizowaæ strukturê bazy. '
        + 'Oczekiwana wersja bazy: %d, aktualna wersja bazy: %d',
        [DatabaseNumber, VersionNr]));
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
