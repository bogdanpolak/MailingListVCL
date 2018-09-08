unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ChromeTabs,
  ChromeTabsClasses;

type
  TFormMain = class(TForm)
    tmrIdle200: TTimer;
    grboxCommands: TGroupBox;
    ChromeTabs1: TChromeTabs;
    pnMain: TPanel;
    FlowPanel1: TFlowPanel;
    btnCreateDatabaseStructures: TButton;
    btnImportEmails: TButton;
    Button2: TButton;
    Button3: TButton;
    ScrollBox1: TScrollBox;
    Button4: TButton;
    Button5: TButton;
    procedure btnCreateDatabaseStructuresClick(Sender: TObject);
    procedure btnImportEmailsClick(Sender: TObject);
    procedure ChromeTabs1ButtonCloseTabClick(Sender: TObject; ATab: TChromeTab;
      var Close: Boolean);
    procedure FlowPanel1Resize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmrIdle200Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses ScriptForm, ImportFrameUnit;

procedure TFormMain.btnCreateDatabaseStructuresClick(Sender: TObject);
begin
  FormDBScript.Show;
end;

procedure TFormMain.btnImportEmailsClick(Sender: TObject);
var
  frm: TFrameImport;
  tab: TChromeTab;
begin
  frm := TFrameImport.Create(pnMain);
  frm.Parent := pnMain;
  frm.Visible := True;
  frm.Align := alClient;
  tab := ChromeTabs1.Tabs.Add;
  tab.Data := frm;
  tab.Caption := btnImportEmails.Caption;
end;

procedure TFormMain.ChromeTabs1ButtonCloseTabClick(Sender: TObject;
  ATab: TChromeTab; var Close: Boolean);
var
  obj: TObject;
begin
  obj := TObject(ATab.Data);
  (obj as TFrame).Free;
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
begin
  FlowPanel1.Caption := '';
  pnMain.Caption := '';
end;

procedure TFormMain.tmrIdle200Timer(Sender: TObject);
var
  tmr: TTimer;
begin
  tmr := (Sender as TTimer);
  if tmr.Tag=0 then
    btnCreateDatabaseStructures.Click
  else if not FormDBScript.Visible then Close;
  tmr.Tag := tmr.Tag + 1;
end;

end.
