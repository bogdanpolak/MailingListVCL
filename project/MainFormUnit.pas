unit MainFormUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type
  TFormMain = class(TForm)
    Timer1: TTimer;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
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

procedure TFormMain.FormShow(Sender: TObject);
begin
  FormDBScript.Show;
end;

procedure TFormMain.Timer1Timer(Sender: TObject);
begin
  if not FormDBScript.Visible then
    Close;
end;

end.
