unit UnitForMetrics;

interface

uses
  System.Classes;

type
  TMyClass1 = class(TComponent)
  private
    FPrivateField: string;
  public
    FMainField: string;
    procedure DoEnything;
  end;

type
  TMyClass2 = class(TMyClass1)
  private
  protected
  public
    FField: string;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

type
  TMyClass3 = class(TMyClass2)
  private
  public
    FField: string;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

  TMyClass4 = class(TMyClass3)
  end;

type
  TOtherClass = class
  strict private
    FField: string;
    procedure OperationPrivate1;
    procedure OperationPrivate2;
  protected
    procedure OperationProtected1;
    procedure OperationProtected2WithManyParameters(Param1: integer;
      Param2: string; Param3: boolean; Param4: TShiftState; Param5: TBiDiMode;
      Param6: string);
  public
    property Field: string read FField write FField;
  end;

implementation

function ConstructOtherObj: TOtherClass;
begin
  Result := TOtherClass.Create;
end;

{ TMyClass1 }

procedure TMyClass1.DoEnything;
begin
  Self.FPrivateField := ConstructOtherObj.Field;
end;

{ TMyClass }

constructor TMyClass2.Create;
begin
  inherited;

end;

destructor TMyClass2.Destroy;
begin

  inherited;
end;

{ TMyClass3 }

constructor TMyClass3.Create;
begin
  inherited;

end;

destructor TMyClass3.Destroy;
begin

  inherited;
end;

{ TOtherClass }

procedure TOtherClass.OperationPrivate1;
begin

end;

procedure TOtherClass.OperationPrivate2;
begin

end;

procedure TOtherClass.OperationProtected1;
begin

end;

procedure TOtherClass.OperationProtected2WithManyParameters(Param1: integer;
  Param2: string; Param3: boolean; Param4: TShiftState; Param5: TBiDiMode;
  Param6: string);
begin
end;

end.
