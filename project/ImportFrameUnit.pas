unit ImportFrameUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls,
  Vcl.ExtCtrls;

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
    procedure btnLoadNewEmailsClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tmrFrameShowTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.dfm}

uses
  System.JSON, System.IOUtils, UnitMockData;

// ---------------------------------------------------------
// TDBGrid with DBCheckBox. Solution copied form:
// https://www.thoughtco.com/place-a-checkbox-into-dbgrid-4077440
// found in StackOverflow issue:
// https://stackoverflow.com/questions/9019819/checkbox-in-a-dbgrid
// 2017-10-16 (c) Zarko Gajic
// ---------------------------------------------------------

procedure TFrameImport.btnLoadNewEmailsClick(Sender: TObject);
var
  fn: String;
  jData: TJSONArray;
  s: string;
  i: Integer;
  jObj: TJSONObject;
begin
  if FileOpenDialog1.Execute then
  begin
    fn := FileOpenDialog1.FileName;
    s := System.IOUtils.TFile.ReadAllText(fn, TEncoding.UTF8);
    jData := TJSONObject.ParseJSONValue(s) as TJSONArray;
    mtabEmails.Open;
    mtabEmails.EmptyDataSet;
    mtabEmailsImport.DisplayValues := ';';
    for i := 0 to jData.Count - 1 do
    begin
      jObj := jData.Items[i] as TJSONObject;
      mtabEmails.Append;
      mtabEmailsImport.Value := True;
      mtabEmailsEmail.Value := jObj.Values['email'].Value;
      if Assigned(jObj.Values['firstname']) then
        mtabEmailsFirstName.Value := jObj.Values['firstname'].Value;
      if Assigned(jObj.Values['lastname']) then
        mtabEmailsLastName.Value := jObj.Values['lastname'].Value;
      if Assigned(jObj.Values['company']) then
        mtabEmailsCompany.Value := jObj.Values['company'].Value;
      mtabEmails.Post;
    end;
  end;
end;

constructor TFrameImport.Create(AOwner: TComponent);
begin
  inherited;
  // Mimic: Frame OnCreate Event
end;

procedure TFrameImport.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
const
  IsChecked: array [Boolean] of Integer = (DFCS_BUTTONCHECK,
    DFCS_BUTTONCHECK + DFCS_CHECKED);
var
  DrawState: Integer;
  DrawRect: TRect;
begin
  if (Column.Field.FieldName = 'Import') then
  begin
    DrawRect := Rect;
    InflateRect(DrawRect, -1, -1);
    DrawState := IsChecked[Column.Field.AsBoolean];
    DBGrid1.Canvas.FillRect(Rect);
    DrawFrameControl(DBGrid1.Canvas.Handle, DrawRect, DFC_BUTTON, DrawState);
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
  jObj: TJSONObject;
begin
  tmrFrameShow.Enabled := False;
  sProjFileName := ChangeFileExt(ExtractFileName(Application.ExeName), '.dpr');
  isDeveloperMode := FileExists('..\..\' + sProjFileName);
  if isDeveloperMode and chkAutoLoadJSON.Checked then
  begin
    jData := TJSONObject.ParseJSONValue(sSampleImportEmailJSON) as TJSONArray;
    mtabEmails.Open;
    mtabEmails.EmptyDataSet;
    mtabEmailsImport.DisplayValues := ';';
    for i := 0 to jData.Count - 1 do
    begin
      jObj := jData.Items[i] as TJSONObject;
      mtabEmails.Append;
      mtabEmailsImport.Value := True;
      mtabEmailsEmail.Value := jObj.Values['email'].Value;
      if Assigned(jObj.Values['firstname']) then
        mtabEmailsFirstName.Value := jObj.Values['firstname'].Value;
      if Assigned(jObj.Values['lastname']) then
        mtabEmailsLastName.Value := jObj.Values['lastname'].Value;
      if Assigned(jObj.Values['company']) then
        mtabEmailsCompany.Value := jObj.Values['company'].Value;
      mtabEmails.Post;
    end;
  end;
end;

end.
