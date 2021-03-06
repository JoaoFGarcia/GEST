unit uGlobal;

interface

uses
  uController,
  Vcl.DBGrids,
  Datasnap.DBClient;

type
  TRotine = (rtInsert, rtEdit);
  TGlobal = class
  class var
    Controller: TController;
  end;

procedure UpdateGridTitles(Grid: TDBGrid; DataSet : TClientDataSet);

implementation

procedure UpdateGridTitles(Grid: TDBGrid; DataSet : TClientDataSet);
var
  i       : Integer;
begin
  for i := 0 to Grid.Columns.Count - 1 do
  begin
    try
      Grid.Columns[i].Title.Caption := DataSet.FindField(Grid.Columns[i].FieldName).DisplayLabel;
    except
    end;
  end;
end;

end.
