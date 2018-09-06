unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, ChromeTabs;

type
  TFormMain = class(TForm)
    Timer1: TTimer;
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
    procedure FlowPanel1Resize(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

uses ScriptForm;

procedure TFormMain.btnCreateDatabaseStructuresClick(Sender: TObject);
begin
  FormDBScript.Show;
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

end.
