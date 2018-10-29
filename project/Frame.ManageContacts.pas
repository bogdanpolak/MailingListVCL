unit Frame.ManageContacts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFrameManageContacts = class(TFrame)
    Panel1: TPanel;
    btnConfirmContact: TButton;
    btnUnregisterContact: TButton;
    DBGrid1: TDBGrid;
    btnShowUnregistred: TButton;
    btnRegisterAgain: TButton;
    procedure btnConfirmContactClick(Sender: TObject);
    procedure btnUnregisterContactClick(Sender: TObject);
  private
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses Data.ManageContacts;

{ TFrameManageContacts }

constructor TFrameManageContacts.Create(AOwner: TComponent);
begin
  inherited;
  Panel1.Caption := '';
end;

procedure TFrameManageContacts.btnConfirmContactClick(Sender: TObject);
begin
  { TODO: Implementacja powtwierdzania kontaktu }
end;

procedure TFrameManageContacts.btnUnregisterContactClick(Sender: TObject);
begin
  { TODO: Wyrejestrowanie kontaktu }
end;

end.
