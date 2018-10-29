unit Dialog.RunSQLScript;
{ TODO : Poprawić nazwę unitu: DialogCreateDatabaseStructure }

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
    FDQuery2: TFDQuery;
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

uses Data.Main, Interbase.SQL.Main;

{ TODO : Nowocześniejsza struktura danych lub wyrzucenie danych na zewnątrz }
type
  TEmailRec = record
    email: string;
    firstName: string;
    lastName: string;
    comapny: string;
    regDate: string;
  end;

const
  NUMBER_OF_EMAILS = 5;
  EmailTableData: array [0 .. NUMBER_OF_EMAILS - 1] of TEmailRec =
    ((email: 'bogdan.polak.no.spam@bsc.com.pl'; firstName: 'Bogdan';
    { TODO : Poprawić: Formatowanie daty i czasu zależne od ustawień regionalnych }
    lastName: 'Polak'; comapny: 'BSC Polska'; regDate: '15.08.2018 19:30'),
    (email: 'jan.kowalski@gmail.pl'; firstName: 'Jan';
    lastName: 'Kowalski'; comapny: 'Motife Sp. z o.o.'; regDate: ''),
    (email: 'jarzabek@poczta.onet.pl'; firstName: 'Kazimierz';
    lastName: 'Jarząb'; comapny: 'SuperComp SA'; regDate: ''),
    (email: 'adam.adamowski.waswaw@marriot.com'; firstName: 'Adam';
    lastName: 'Adamowski'; comapny: 'Marriott Hotel Warszawa'; regDate: ''),
    (email: 'ajankowska@pekao.com.pl'; firstName: 'Anna';
    lastName: 'Jankowska'; comapny: 'Bank Pekao SA Warszawa'; regDate: ''));

procedure TFormDBScript.BitBtn1Click(Sender: TObject);
var
  isExecutedWithoutErros: Boolean;
  sc: TFDSQLScript;
  i: integer;
  adr: string;
  ALocale: TFormatSettings;
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
    Memo1.Lines.Add('Dodawanie kontaktów ...');
    { TODO : Zanienić: na FireDAC Array DML }
    FDQuery1.SQL.Text := IB_INSERT_CONTACTS_SQL;
    FDQuery2.SQL.Text := IB_INSERT_CONTCT2LIST_SQL;
    { TODO : Zamienić na FireDAC ArrayDML }
    ALocale := TFormatSettings.Create;
    ALocale.ShortDateFormat := 'dd mm yyyy';
    ALocale.DateSeparator := '.';
    for i := 0 to NUMBER_OF_EMAILS - 1 do
    begin
      FDQuery1.ParamByName('email').AsString := EmailTableData[i].email;
      FDQuery1.ParamByName('firstname').AsString := EmailTableData[i].firstName;
      FDQuery1.ParamByName('lastname').AsString := EmailTableData[i].lastName;
      FDQuery1.ParamByName('company').AsString := EmailTableData[i].comapny;
      if EmailTableData[i].regDate = '' then
        FDQuery1.ParamByName('reg').AsDateTime := Now()
      else
        FDQuery1.ParamByName('reg').AsDateTime :=
          StrToDateTime(EmailTableData[i].regDate,ALocale);
      FDQuery1.ExecSQL;
      // ----
      FDQuery2.ParamByName('contactid').Value := i+1;
      FDQuery2.ParamByName('listid').Value := 2;
      FDQuery2.ExecSQL;
    end;
    FDQuery1.Connection.Commit;
    { TODO : Zamienić na funckję: ChangeWordByNumeralsPL }
    { TODO : Użyć metodyki TDD na zakodowanie tej funkcji }
    { ChangeWordByNumeralsPL (liczba, słowo, formaMnoga, mnogaDopelniacz) }
    { *
      * źródło: https://polszczyzna.pl/5-zloty-czy-5-zlotych/
      *
      * Dla liczb z zakresu 5-14 lub gdy ostatnia cyfra liczby
      * wynosi 1, 5, 6, 7, 8, 9, 0 mówi i pisze się „złotych”
      * (np. 18 złotych, 85 złotych). Te liczby łączą się z dopełniaczem.
      *
      * Ostatnia cyfra 2, 3, 4 – mówi i pisze się „złote”
      * (np. 42 złote, 104 złote). Liczby te z kolei podaje się w formie
      * mianownika.
      *
      * Formę złoty zastosujemy, gdy łączy się z liczebnikiem jeden,
      * np. To kosztuje jeden złoty. Inaczej będzie już w wypadku
      * wyrażeń 21 zł, 61 zł, 151 zł, 1001 zł itp., które również mają
      * ostatni człon jeden. Mówi się zawsze dwadzieścia jeden złotych,
      * sześćdziesiąt jeden złotych, sto pięćdziesiąt jeden złotych,
      * tysiąc jeden złotych (a nie: złoty).
      * }
    case NUMBER_OF_EMAILS of
      0:
        adr := 'adresów';
      1:
        adr := 'adres';
      2 .. 4:
        adr := 'adresy';
    else
      adr := 'adresy';
    end;
    Memo1.Lines.Add(Format('Dodano %d %s email', [NUMBER_OF_EMAILS, adr]));
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
