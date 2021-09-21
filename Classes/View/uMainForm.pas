unit uMainForm;

interface

uses
  uGlobal, Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Tabs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Datasnap.DBClient,
  FireDAC.Phys.PG, FireDAC.Phys.PGDef;

type
  TformMain = class(TForm)
    pnlTop: TPanel;
    btnEdit: TBitBtn;
    imgBtns: TImageList;
    btnInsert: TBitBtn;
    btnDelete: TBitBtn;
    btnClose: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pnlSearch: TPanel;
    btnSearch: TBitBtn;
    cboFilterType: TComboBox;
    edtSearchValue: TEdit;
    cdsMain: TClientDataSet;
    dsMain: TDataSource;
    btnDefinitions: TBitBtn;
    cdsMainid: TIntegerField;
    cdsMainatividade_principal: TIntegerField;
    cdsMaindescatividade_principal: TWideStringField;
    cdsMaindata_situacao: TDateField;
    cdsMaintipo: TWideStringField;
    cdsMainnome: TWideStringField;
    cdsMainnome_fantasia: TWideStringField;
    cdsMainuf: TWideStringField;
    cdsMainuf_descricao: TWideStringField;
    cdsMainemail: TWideStringField;
    cdsMainsituacao: TWideStringField;
    cdsMainbairro: TWideStringField;
    cdsMainlogradouro: TWideStringField;
    cdsMaincomplemento: TWideStringField;
    cdsMainnumero: TWideStringField;
    cdsMainmunicipio: TWideStringField;
    cdsMainporte: TWideStringField;
    cdsMainabertura: TDateField;
    cdsMainnatureza_juridica: TWideStringField;
    cdsMainente_federativo: TWideStringField;
    cdsMainsituacao_especial: TWideStringField;
    cdsMainmotivo_situacaoesp: TWideStringField;
    cdsMaindata_situacaoesp: TDateField;
    cdsMaincapital_social: TFMTBCDField;
    btnUpdate: TBitBtn;
    cdsMaintelefone: TStringField;
    cdsMaincnpj: TStringField;
    Panel1: TPanel;
    dbgMain: TDBGrid;
    cdsMaincep: TStringField;
    procedure btnCloseClick(Sender: TObject);
    procedure btnDefinitionsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dsMainStateChange(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    procedure SetButtons;
    procedure Maintenance(Rotina: TRotine);
    procedure LoadData;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;

implementation

uses
  uAbstract_Model,
  uClient_Fornecedor,
  uClient_CNAE,
  uConfig, uCadFornecedor;

{$R *.dfm}

procedure TformMain.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformMain.btnDefinitionsClick(Sender: TObject);
begin
  frmConfig := TFrmConfig.Create(nil);
  try
    frmConfig.ShowModal;
  finally
    FreeAndNil(frmConfig);
  end;
  TGlobal.Controller.LoadConnection;
  SetButtons();
end;

procedure TformMain.btnEditClick(Sender: TObject);
begin
  Maintenance(rtEdit);
end;

procedure TformMain.btnInsertClick(Sender: TObject);
begin
  Maintenance(rtInsert);
end;

procedure TformMain.Maintenance(Rotina : TRotine);
begin
  uCadFornecedor.Execute(Rotina, cdsMain.FieldByName('ID').AsInteger);
  LoadData();
end;

procedure TformMain.btnSearchClick(Sender: TObject);
var
  vsSearchField : String;
begin
  case cboFilterType.ItemIndex of
    0: vsSearchField := 'NOME';
    1: vsSearchField := 'NOME_FANTASIA';
    2: vsSearchField := 'ATIVIDADE_PRINCIPAL';
  end;

  cdsMain.Filter   := 'UPPER(' + vsSearchField + ') LIKE UPPER(''%' + edtSearchValue.Text + '%'')';
  cdsMain.Filtered := True;
end;

procedure TformMain.btnUpdateClick(Sender: TObject);
begin
  LoadData();
end;

procedure TformMain.dsMainStateChange(Sender: TObject);
begin
  SetButtons();
end;

procedure TformMain.FormCreate(Sender: TObject);
begin
  LoadData;
end;

procedure TformMain.LoadData();
var
  Client: TClientFornecedor;
begin
  if not(cdsMain.Active) and (cdsMain.Fields.Count > 0) then
    cdsMain.CreateDataSet;

  Client := TClientFornecedor.Create;
  Client.LoadData([], []);
  Client.ToClientDataSet(cdsMain);
  UpdateGridTitles(dbgMain, cdsMain);

  btnSearchClick(Self);

  SetButtons();
end;

procedure TformMain.SetButtons();
var
  bConnected: Boolean;
begin
  bConnected := (TGlobal.Controller.Connection.Connected) and (cdsMain.Active);

  btnInsert.Enabled := (bConnected);
  btnEdit.Enabled := (bConnected) and (cdsMain.RecordCount > 0);
  btnDelete.Enabled := (bConnected) and (cdsMain.RecordCount > 0);
end;

end.
