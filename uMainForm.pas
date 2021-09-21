unit uMainForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls,
  Vcl.BaseImageCollection, Vcl.ImageCollection, System.ImageList, Vcl.ImgList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Tabs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, Datasnap.DBClient;

type
  TformMain = class(TForm)
    pnlTop: TPanel;
    btnEdit: TBitBtn;
    imgBtns: TImageList;
    btnInsert: TBitBtn;
    btnDelete: TBitBtn;
    btnCancel: TBitBtn;
    btnSave: TBitBtn;
    BitBtn1: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pnlSearch: TPanel;
    DBGrid1: TDBGrid;
    btnSearch: TBitBtn;
    cboFilterType: TComboBox;
    edtSearchValue: TEdit;
    FDQuery1: TFDQuery;
    FDUpdateSQL1: TFDUpdateSQL;
    FDConnection1: TFDConnection;
    ClientDataSet1: TClientDataSet;
    FDQuery1DESCRICAO: TStringField;
    FDQuery1ID: TIntegerField;
    FDQuery1ATIVIDADE_PRINCIPAL: TIntegerField;
    FDQuery1DATA_SITUACAO: TDateField;
    FDQuery1TIPO: TStringField;
    FDQuery1NOME: TStringField;
    FDQuery1UF: TStringField;
    FDQuery1TELEFONE: TIntegerField;
    FDQuery1EMAIL: TStringField;
    FDQuery1SITUACAO: TStringField;
    FDQuery1BAIRRO: TStringField;
    FDQuery1LOGRADOURO: TStringField;
    FDQuery1NUMERO: TStringField;
    FDQuery1CEP: TIntegerField;
    FDQuery1MUNICIPIO: TStringField;
    FDQuery1PORTE: TStringField;
    FDQuery1ABERTURA: TDateField;
    FDQuery1NATUREZA_JURIDICA: TStringField;
    FDQuery1CNPJ: TIntegerField;
    FDQuery1NOME_FANTASIA: TStringField;
    FDQuery1COMPLEMENTO: TWideStringField;
    FDQuery1ENTE_FEDERATIVO: TStringField;
    FDQuery1SITUACAO_ESPECIAL: TStringField;
    FDQuery1MOTIVO_SITUACAOESP: TStringField;
    FDQuery1DATA_SITUACAOESP: TDateField;
    FDQuery1CAPITAL_SOCIAL: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;

implementation

uses
  uAbstract_Model,
  uClient_Fornecedor;

{$R *.dfm}

procedure TformMain.BitBtn1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TformMain.btnInsertClick(Sender: TObject);
var
  cliente : TClientFornecedor;
begin
  cliente := TClientFornecedor.Create;
end;

end.
