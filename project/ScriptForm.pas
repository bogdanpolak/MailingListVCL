unit ScriptForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.UI.Intf, FireDAC.Stan.Async,
  FireDAC.Comp.ScriptCommands, FireDAC.Stan.Util, FireDAC.Stan.Intf,
  FireDAC.Comp.Script, Vcl.StdCtrls, Vcl.Buttons, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormDBScript = class(TForm)
    FDScript1: TFDScript;
    BitBtn1: TBitBtn;
    memScript: TMemo;
    Memo1: TMemo;
    FDQuery1: TFDQuery;
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

type
  TEmailRec = record
    email: string;
    listID: integer;
    firstName: string;
    lastName: string;
    comapny: string;
    reg: string;
  end;

const
  NUMBER_OF_EMAILS = 2;
  EmailTableData: array[0..NUMBER_OF_EMAILS-1] of TEmailRec = (
    (email:'bogdan.polak.no.spam@bsc.com.pl';listID:2; firstName:'Bogdan';
      lastName:'Polak'; comapny:'BSC Polska'; reg:''),
    (email:'jan.kowalski@gmail.pl';listID:2; firstName:'Jan';
      lastName:'Kowalski'; comapny:'SuperComp SA'; reg:'')
  );

procedure TFormDBScript.BitBtn1Click(Sender: TObject);
var
  isExecutedWithoutErros: Boolean;
  sc: TFDSQLScript;
  i: Integer;
  adr: string;
begin
  Memo1.Lines.Clear;
  FDScript1.SQLScripts.Clear;
  sc := FDScript1.SQLScripts.Add;
  sc.SQL.Text := memScript.Text;
  isExecutedWithoutErros := FDScript1.ExecuteAll;
  if isExecutedWithoutErros then
  begin
    Memo1.Lines.Add('OK. Skrypt wykonany poprawnie.');
  end;
  if isExecutedWithoutErros then
  begin
    Memo1.Lines.Add('- - - - - - - - - - - - - - - - -');
    Memo1.Lines.Add('Dodawanie adresów email ...');
    FDQuery1.SQL.Text := IB_INSERT_EMAIL_SQL;
    FDQuery1.Params.ArraySize := NUMBER_OF_EMAILS;
    for i := 0 to NUMBER_OF_EMAILS-1 do
    begin
      FDQuery1.ParamByName('email').AsStrings[i] := EmailTableData[i].email;
      FDQuery1.ParamByName('listid').AsIntegers[i] := EmailTableData[i].listID;
      FDQuery1.ParamByName('firstname').AsStrings[i] := EmailTableData[i].firstName;
      FDQuery1.ParamByName('lastname').AsStrings[i] := EmailTableData[i].lastName;
      FDQuery1.ParamByName('company').AsStrings[i] := EmailTableData[i].comapny;
      if EmailTableData[i].reg='' then
        FDQuery1.ParamByName('reg').AsDateTimes[i] := Now()
      else
        FDQuery1.ParamByName('reg').AsStrings[i] := EmailTableData[i].reg;
    end;
    FDQuery1.Execute(NUMBER_OF_EMAILS,0);
    case NUMBER_OF_EMAILS of
      0: adr := 'adresów';
      1: adr := 'adres';
      2..4: adr := 'adresy';
      else adr := 'adresy';
    end;
    Memo1.Lines.Add(Format('Dodano %d %s email',[FDQuery1.RowsAffected,adr]));
  end
end;

procedure TFormDBScript.FDScript1ConsolePut(AEngine: TFDScript;
  const AMessage: string; AKind: TFDScriptOutputKind);
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
