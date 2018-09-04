unit ScriptForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.UI.Intf, FireDAC.Stan.Async,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Stan.Intf,
  FireDAC.Comp.Script, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormDBScript = class(TForm)
    FDScript1: TFDScript;
    BitBtn1: TBitBtn;
    memScript: TMemo;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
    procedure FDScript1ConsolePut(AEngine: TFDScript; const AMessage: string;
        AKind: TFDScriptOutputKind);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormDBScript: TFormDBScript;

implementation

{$R *.dfm}

uses MainDataModule, UnitDatabaseScriptsDDL;

procedure TFormDBScript.BitBtn1Click(Sender: TObject);
var
  isExecutedWithoutErros: Boolean;
  sc: TFDSQLScript;
begin
  Memo1.Lines.Clear;
  FDScript1.SQLScripts.Clear;
  sc := FDScript1.SQLScripts.Add;
  sc.SQL.Text := memScript.Text;
  MainDM.FDConnection1.StartTransaction;
  try
    isExecutedWithoutErros := FDScript1.ExecuteAll;
    MainDM.FDConnection1.Commit;
    Memo1.Lines.Add('- - - - - - - - - - - - - - - - -');
    if isExecutedWithoutErros then begin
      Memo1.Lines.Add('OK. Skrypt wykonany poprawnie.');
      FDScript1.SQLScripts.Clear;
      FDScript1.SQLScripts.Add.SQL.Text := FILL_SAMPLE_DATA;
      Memo1.Lines.Add('- - - - - - - - - - - - - - - - -');
      Memo1.Lines.Add('Wype³nianie danych');
      Memo1.Lines.Add('- - - - - - - - - - - - - - - - -');
      isExecutedWithoutErros := FDScript1.ExecuteAll;
      if isExecutedWithoutErros then
        Memo1.Lines.Add('OK. Zrobione!');
    end
    else
      Memo1.Lines.Add('Uwaga! Wyst¹pi³ b³¹d podczas uruchomienia skryptu.');
  except
    MainDM.FDConnection1.Rollback;
    raise;
  end;
end;

procedure TFormDBScript.FDScript1ConsolePut(AEngine: TFDScript; const AMessage:
    string; AKind: TFDScriptOutputKind);
begin
  Memo1.Lines.Add(AMessage);
end;

procedure TFormDBScript.FormCreate(Sender: TObject);
var
  isMSSQL: Boolean;
  isORACLE: Boolean;
  isMySQL: Boolean;
  sc: TFDSQLScript;
begin
  memScript.Lines.Text := IB_SCRIPT;
  MainDM.FDConnection1.Open();
  Memo1.Clear;
  Memo1.Lines.Add('Connected using: ' + MainDM.FDConnection1.ConnectionDefName);
  Memo1.Lines.Add('driver: ' + MainDM.FDConnection1.DriverName);
  isMSSQL := (MainDM.FDConnection1.RDBMSKind = TFDRDBMSKinds.MSSQL);
  isORACLE := (MainDM.FDConnection1.RDBMSKind = TFDRDBMSKinds.Oracle);
  isMySQL := (MainDM.FDConnection1.RDBMSKind = TFDRDBMSKinds.MySQL);
end;

end.
