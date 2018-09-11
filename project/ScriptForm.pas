unit ScriptForm;
{ TODO : Poprawiæ nazwê unitu: DialogCreateDatabaseStructure }

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

uses MainDataModule, UnitInterbaseCreateDB;

{ TODO : Nowczeœniejsza struktura danych lub wyrzucenie danych na zwn¹trz }
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
    { TODO : Poprawiæ: Formatowanie daty i czasu zale¿ne od ustawieñ regionalnych }
    lastName: 'Polak'; comapny: 'BSC Polska'; regDate: '15.08.2018 19:30'),
    (email: 'jan.kowalski@gmail.pl'; firstName: 'Jan';
    lastName: 'Kowalski'; comapny: 'Motife Sp. z o.o.'; regDate: ''),
    (email: 'jarzabek@poczta.onet.pl'; firstName: 'Kazimierz';
    lastName: 'Jarz¹b'; comapny: 'SuperComp SA'; regDate: ''),
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
    { TODO : Zanieniæ: na FireDAC Array DML }
    FDQuery1.SQL.Text := IB_INSERT_CONTACTS_SQL;
    FDQuery2.SQL.Text := IB_INSERT_CONTCT2LIST_SQL;
    { TODO : Zamieniæ na FireDAC ArrayDML }
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
          StrToDateTime(EmailTableData[i].regDate);
      FDQuery1.ExecSQL;
      // ----
      FDQuery2.ParamByName('contactid').Value := i+1;
      FDQuery2.ParamByName('listid').Value := 2;
      FDQuery2.ExecSQL;
    end;
    FDQuery1.Connection.Commit;
    { TODO : Zamieniæ na funckjê: ChangeWordByNumeralsPL }
    { TODO : U¿yæ metodyki TDD na zakodowanie tej funkcji }
    { ChangeWordByNumeralsPL (liczba, s³owo, formaMnoga, mnogaDopelniacz) }
    { *
      * Ÿród³o: https://polszczyzna.pl/5-zloty-czy-5-zlotych/
      *
      * Dla liczb z zakresu 5–14 lub gdy ostatnia cyfra liczby wynosi:
      * 1, 5, 6, 7, 8, 9, 0 mówi i pisze siê „z³otych”
      * (np. 18 z³otych, 85 z³otych).
      * Te liczby ³¹cz¹ siê z dope³niaczem. Ostatnia cyfra 2, 3, 4 – mówi i
      * pisze siê „z³ote” (np. 42 z³ote, 104 z³ote). Liczby te z kolei podaje
      * siê w formie mianownika.
      *
      * Formê z³oty zastosujemy, gdy ³¹czy siê z liczebnikiem jeden, np.
      * To kosztuje jeden z³oty. Inaczej bêdzie ju¿ w wypadku wyra¿eñ
      * 21 z³, 61 z³, 151 z³, 1001 z³ itp., które równie¿ maj¹ ostatni cz³on
      * jeden. Mówi siê zawsze dwadzieœcia jeden z³otych, szeœædziesi¹t jeden
      * z³otych, sto piêædziesi¹t jeden z³otych, tysi¹c jeden z³otych
      * (a nie: z³oty).
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
