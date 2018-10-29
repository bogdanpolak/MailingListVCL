unit Frame.ImportContacts;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls,
  Vcl.ExtCtrls, FireDAC.Stan.Async, FireDAC.DApt, System.JSON;

type
  TFrameImport = class(TFrame)
    btnLoadNewEmails: TButton;
    DBGrid1: TDBGrid;
    FileOpenDialog1: TFileOpenDialog;
    mtabEmails: TFDMemTable;
    DataSource1: TDataSource;
    mtabEmailsEmail: TWideStringField;
    mtabEmailsFirstName: TWideStringField;
    mtabEmailsLastName: TWideStringField;
    mtabEmailsCompany: TWideStringField;
    mtabEmailsCurFirstName: TWideStringField;
    mtabEmailsCurLastName: TWideStringField;
    mtabEmailsCurCompany: TWideStringField;
    mtabEmailsImport: TBooleanField;
    tmrFrameShow: TTimer;
    chkAutoLoadJSON: TCheckBox;
    grBoxFrameConfiguration: TGroupBox;
    dsQueryCurrEmails: TFDQuery;
    dsQueryCurrEmailsEMAIL: TWideStringField;
    dsQueryCurrEmailsFIRSTNAME: TWideStringField;
    dsQueryCurrEmailsLASTNAME: TWideStringField;
    dsQueryCurrEmailsCOMPANY: TWideStringField;
    mtabEmailsConflicts: TBooleanField;
    mtabEmailsDuplicated: TBooleanField;
    btnImportSelected: TButton;
    FDQuery1: TFDQuery;
    FDQuery2: TFDQuery;
    procedure btnImportSelectedClick(Sender: TObject);
    procedure btnLoadNewEmailsClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tmrFrameShowTimer(Sender: TObject);
  private
    procedure myAddRowToImportTable(joEmailRow: TJSONObject);
  public
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses
  System.IOUtils, Dialog.ResolveImportConflicts, Consts.ContactsJson,
  Data.Main;

procedure TFrameImport.btnLoadNewEmailsClick(Sender: TObject);
var
  fn: String;
  jData: TJSONArray;
  s: string;
  i: Integer;
  jObj: TJSONObject;
  email: string;
begin
  if FileOpenDialog1.Execute then
  begin
    fn := FileOpenDialog1.FileName;
    s := System.IOUtils.TFile.ReadAllText(fn, TEncoding.UTF8);
    jData := TJSONObject.ParseJSONValue(s) as TJSONArray;
    mtabEmails.Open;
    mtabEmails.EmptyDataSet;
    mtabEmailsImport.DisplayValues := ';';
    // { TODO: Zapytanie ukryte w atrybucie *.SQL.Text - code review }
    // przypisano treść zapytania w kodzie
    dsQueryCurrEmails.SQL.Text :=
      'select email, firstname, lastname, company from Contacts ';
    dsQueryCurrEmails.Open();
    for i := 0 to jData.Count - 1 do
      myAddRowToImportTable(jData.Items[i] as TJSONObject);
  end;
end;

constructor TFrameImport.Create(AOwner: TComponent);
begin
  inherited;
  // Mimic: Frame OnCreate Event
end;

procedure TFrameImport.btnImportSelectedClick(Sender: TObject);
var
  email: string;
  id: Integer;
begin
  { TODO: Błąd: jeśli lista do importu nie została wcześniej załadowana }
  { TODO: Zamiana zwykłych INSERT-ów i UPADTE-ów do bazy na ArrayDML }
  // github: #5
  try
    mtabEmails.First;
    while not mtabEmails.Eof do
    begin
      if mtabEmailsImport.Value then
      begin
        email := mtabEmailsEmail.Value;
        if mtabEmailsDuplicated.Value then
        begin
          FDQuery2.SQL.Text := 'SELECT contactid FROM Contacts WHERE email=''' +
            email + '''';
          FDQuery2.Open;
          if FDQuery2.Eof then
            raise Exception.Create
              ('Error! (FrameImport->btnImportSelected.OnClick) Email ' + email
              + ' not found during import');
          id := FDQuery2.Fields[0].AsInteger;
          FDQuery2.SQL.Text := 'UPDATE Contacts' + ' SET firstname = ''' +
            mtabEmailsFirstName.Value + ''',lastname = ''' +
            mtabEmailsLastName.Value + ''',company = ''' +
            mtabEmailsCompany.Value + ''' WHERE contactid = ' + IntToStr(id);
          FDQuery2.ExecSQL;
        end
        else
        begin
          { TODO: Użyj stałej: UnitInterbaseCreateDB.IB_INSERT_CONTACTS_SQL }
          FDQuery2.SQL.Text := 'INSERT INTO Contacts' +
            ' (email, firstname, lastname, company, create_timestamp)' +
            'VALUES (''' + email + ''',' + '''' + mtabEmailsFirstName.Value +
            ''', ' + '''' + mtabEmailsLastName.Value + ''',' + '''' +
            mtabEmailsCompany.Value + ''', ''' + DateTimeToStr(Now()) + ''')';
          FDQuery2.ExecSQL;
        end;
      end;
      mtabEmails.Next;
    end;
    mtabEmails.First;
    while not mtabEmails.Eof do
    begin
      if mtabEmailsImport.Value then
        mtabEmails.Delete
      else
        mtabEmails.Next;
    end;
  except
    on E: Exception do
      { TODO: Brzydko pachnie! Wyciszam wszystkie wyjątki }
      // Potrzebny jest refaktoring metody powyżej  aby przeanalizować
      ShowMessage
        ('Teraz tego nie mogę zrobić! Zaimportuj najpierw listę kontaktów');
  end;
end;

procedure TFrameImport.DBGrid1DblClick(Sender: TObject);
begin
  ShowDialog_ResolveConflicts(self);
end;

procedure TFrameImport.myAddRowToImportTable(joEmailRow: TJSONObject);
var
  email: string;
begin
  mtabEmails.Append;
  mtabEmailsImport.Value := True;
  email := joEmailRow.Values['email'].Value;
  mtabEmailsEmail.Value := email;
  if Assigned(joEmailRow.Values['firstname']) then
    mtabEmailsFirstName.Value := joEmailRow.Values['firstname'].Value;
  if Assigned(joEmailRow.Values['lastname']) then
    mtabEmailsLastName.Value := joEmailRow.Values['lastname'].Value;
  if Assigned(joEmailRow.Values['company']) then
    mtabEmailsCompany.Value := joEmailRow.Values['company'].Value;
  { TODO: Dataset dsQueryCurrEmails ukryty w kodzie metody. Wyłączyć }
  { *** Metoda zależna od JSON-a oraz od DataSet-u. }
  mtabEmailsDuplicated.Value := dsQueryCurrEmails.Locate('email', email, []);
  mtabEmailsImport.Value := not mtabEmailsDuplicated.Value;
  mtabEmailsConflicts.Value := False;
  if mtabEmailsDuplicated.Value then
  begin
    mtabEmailsCurFirstName.Value := dsQueryCurrEmailsFIRSTNAME.Value;
    mtabEmailsCurLastName.Value := dsQueryCurrEmailsLASTNAME.Value;
    mtabEmailsCurCompany.Value := dsQueryCurrEmailsCOMPANY.Value;
    mtabEmailsConflicts.Value :=
      (mtabEmailsFirstName.Value <> dsQueryCurrEmailsFIRSTNAME.Value) or
      (mtabEmailsLastName.Value <> dsQueryCurrEmailsLASTNAME.Value) or
      (mtabEmailsCompany.Value <> dsQueryCurrEmailsCOMPANY.Value);
  end;
  mtabEmails.Post;
end;

procedure TFrameImport.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  DrawRect: TRect;
begin
  if mtabEmailsConflicts.Value then
  begin
    DBGrid1.Canvas.Font.Style := [fsStrikeOut];
    DBGrid1.Canvas.Font.Color := RGB(130, 60, 0);
  end
  else if not mtabEmailsImport.Value then
  begin
    DBGrid1.Canvas.Font.Style := DBGrid1.Font.Style;
    DBGrid1.Canvas.Font.Color := clGrayText;
  end
  else
  begin
    DBGrid1.Canvas.Font.Style := DBGrid1.Font.Style;
    DBGrid1.Canvas.Font.Color := clWindowText;
  end;
  DBGrid1.DefaultDrawColumnCell(Rect, DataCol, Column, State);
  if (Column.Field.FieldName = 'Import') then
  begin
    DrawRect := Rect;
    InflateRect(DrawRect, -2, -2);
    if Column.Field.AsBoolean then
      DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect, DFC_BUTTON,
        DFCS_BUTTONCHECK + DFCS_CHECKED)
    else
      DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect, DFC_BUTTON,
        DFCS_BUTTONCHECK);
  end;
end;

procedure TFrameImport.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = ' ') then
  begin
    mtabEmails.Edit;
    mtabEmailsImport.Value := not mtabEmailsImport.Value;
  end;
end;

procedure TFrameImport.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  if DBGrid1.MouseCoord(X, Y).X = 1 then
  begin
    mtabEmails.Edit;
    mtabEmailsImport.Value := not mtabEmailsImport.Value;
  end;
end;

procedure TFrameImport.tmrFrameShowTimer(Sender: TObject);
var
  sProjFileName: string;
  isDeveloperMode: Boolean;
  jData: TJSONArray;
  i: Integer;
  joEmailRow: TJSONObject;
begin
  tmrFrameShow.Enabled := False;
{$IFDEF DEBUG}
  sProjFileName := ChangeFileExt(ExtractFileName(Application.ExeName), '.dpr');
  isDeveloperMode := FileExists('..\..\' + sProjFileName);
{$ELSE}
  isDeveloperMode := False;
{$ENDIF}
  if isDeveloperMode and chkAutoLoadJSON.Checked then
  begin
    jData := TJSONObject.ParseJSONValue(sSampleImportEmailJSON) as TJSONArray;
    { TODO : Powtórzony kod: COPY-PASTE }
    mtabEmails.Open;
    mtabEmails.EmptyDataSet;
    mtabEmailsImport.DisplayValues := ';';
    dsQueryCurrEmails.Open();
    for i := 0 to jData.Count - 1 do
      myAddRowToImportTable(jData.Items[i] as TJSONObject);
  end;
end;

end.
