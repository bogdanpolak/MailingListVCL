unit Dialog.ResolveImportConflicts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Data.DB;

type
  TDialogResolveConflicts = class(TForm)
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    btnUpdateContact: TButton;
    btnIgnoreChanges: TButton;
    procedure btnIgnoreChangesClick(Sender: TObject);
    procedure btnUpdateContactClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function ShowDialog_ResolveConflicts(FrameImportContacts: TFrame): boolean;

implementation

{$R *.dfm}

uses Frame.ImportContacts;

function ShowDialog_ResolveConflicts(FrameImportContacts: TFrame): boolean;
var
  frm: TDialogResolveConflicts;
  mr: Integer;
begin
  try
    frm := TDialogResolveConflicts.Create(Application);
    frm.DataSource1.DataSet := (FrameImportContacts as TFrameImport).mtabEmails;
    mr := frm.ShowModal;
    Result := (mr = mrOK);
  finally
    frm.Free;
  end;
end;

procedure TDialogResolveConflicts.btnIgnoreChangesClick(Sender: TObject);
begin
  DataSource1.DataSet.Edit;
  DataSource1.DataSet.FieldByName('Conflicts').AsBoolean := False;
  DataSource1.DataSet.FieldByName('Import').AsBoolean := False;
  DataSource1.DataSet.Post;
  ModalResult := mrOK;
end;

procedure TDialogResolveConflicts.btnUpdateContactClick(Sender: TObject);
begin
  DataSource1.DataSet.Edit;
  DataSource1.DataSet.FieldByName('Conflicts').AsBoolean := False;
  DataSource1.DataSet.FieldByName('Import').AsBoolean := True;
  DataSource1.DataSet.Post;
  ModalResult := mrOK;
end;

end.
