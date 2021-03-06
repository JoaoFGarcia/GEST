unit uAbstract_Model;

interface

uses
  Classes,
  SysUtils;

type
  TTable = class(TCustomAttribute)
  private
    FName : String;
  published
    property Name : String read FName write FName;
  public
    constructor Create(const Name: string);
  end;

type
  TDBType    = (dbKey, dbUpdate, dbForeign, dbForeignWhere, dbForeignList, dbVirtual);
  TDBTypes   = set of TDBType;
  TDBField = class(TCustomAttribute)
  private
    FDescription  : string;
    FCanBeEmpty   : Boolean;
    FTypes        : TDBTypes;
    FForeignTable : String;
    FLocalField   : String;
    FForeignField : String;
    FForeignAlias : String;
  public
    constructor Create(const Description: string; Types: TDBTypes; const CanBeEmpty: Boolean = True; const ForeignAlias : String = ''; const ForeignTable : String = ''; const LocalField: String = ''; const ForeignField : String = '');
    destructor  Destroy();

    property Description : string   read FDescription;
    property CanBeEmpty  : boolean  read FCanBeEmpty;
    property Types       : TDBTypes read FTypes;
    property ForeignAlias: string   read FForeignAlias;
    property LocalField  : string   read FLocalField;
    property ForeignTable: string   read FForeignTable;
    property ForeignField: string   read FForeignField;
  end;

type
  TModel = class(TObject)
  end;

implementation

constructor TDBField.Create(const Description: string; Types: TDBTypes; const CanBeEmpty: Boolean = True; const ForeignAlias : String = ''; const ForeignTable : String = ''; const LocalField: String = ''; const ForeignField : String = '');
begin
  FDescription  := Description;
  FTypes        := Types;
  FCanBeEmpty   := CanBeEmpty;
  FForeignAlias := ForeignAlias;
  FForeignTable := ForeignTable;
  FForeignField := ForeignField;
  FLocalField   := LocalField;
end;

destructor TDBField.Destroy();
begin

end;

{ TTable }

constructor TTable.Create(const Name: string);
begin
  FName := Name;
end;

end.
