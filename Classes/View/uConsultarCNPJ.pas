unit uConsultarCNPJ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, REST.Types, REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, Datasnap.DSClientRest,
  System.RegularExpressions, uModel_Fornecedor;

type
  TfrmConsultarCNPJ = class(TForm)
    Label1: TLabel;
    edtCGC: TMaskEdit;
    btnConsultar: TButton;
    rstRequest: TRESTRequest;
    rstClient: TRESTClient;
    rstResponse: TRESTResponse;
    procedure btnConsultarClick(Sender: TObject);
    procedure ge(Sender: TObject; var Key: Char);
  private
     gModel   : TModelFornecedor;
  public
    { Public declarations }
  end;

function Execute(out Model : TModelFornecedor) : Boolean;

var
  frmConsultarCNPJ: TfrmConsultarCNPJ;

implementation

{$R *.dfm}

uses uCadFornecedor;

function Execute(out Model : TModelFornecedor) : Boolean;
begin
  frmConsultarCNPJ := TfrmConsultarCNPJ.Create(nil);
  try
   with frmConsultarCNPJ do
   begin
      gModel := Model;

      Result := ShowModal = mrOk;
   end;
  finally
    if Result then
      Model := frmConsultarCNPJ.gModel;
    FreeAndNil(frmConsultarCNPJ);
  end;
end;

procedure TfrmConsultarCNPJ.btnConsultarClick(Sender: TObject);
var
  rRegex  : TRegex;
  sValue  : String;
  iValue  : Integer;
  dValue  : Double;
  dtValue : TDateTime;
begin
  rstRequest.Params[0].Value := rRegex.Replace(edtCGC.Text, '\D', '');
  rstRequest.Execute;

  rstResponse.GetSimpleValue('status', sValue);
  if UpperCase(sValue) = 'ERROR' then
  begin
    rstResponse.GetSimpleValue('message', sValue);

    raise Exception.Create(sValue);
  end
  else
  if UpperCase(sValue) = 'OK' then
  begin
    gModel := TModelFornecedor.Create;

    sValue := rstResponse.JSONValue.FindValue('atividade_principal').ToString;
    gModel.ATIVIDADE_PRINCIPAL := StrToIntDef(rRegex.Replace(sValue, '\D', ''), 0);

    rstResponse.JSONValue.FindValue('data_situacao').TryGetValue<String>(sValue);
    gModel.DATA_SITUACAO := StrToDate(sValue);

    rstResponse.JSONValue.FindValue('tipo').TryGetValue<String>(sValue);
    gModel.tipo := (sValue);

    rstResponse.JSONValue.FindValue('uf').TryGetValue<String>(sValue);
    gModel.UF := (sValue);

    rstResponse.JSONValue.FindValue('telefone').TryGetValue<String>(sValue);
    gModel.TELEFONE := rRegex.Replace(sValue, '\D', '');

    rstResponse.JSONValue.FindValue('email').TryGetValue<String>(sValue);
    gModel.EMAIL := (sValue);

    rstResponse.JSONValue.FindValue('situacao').TryGetValue<String>(sValue);
    gModel.situacao := UpperCase(sValue);

    rstResponse.JSONValue.FindValue('bairro').TryGetValue<String>(sValue);
    gModel.bairro := (sValue);

    rstResponse.JSONValue.FindValue('logradouro').TryGetValue<String>(sValue);
    gModel.logradouro := (sValue);

    rstResponse.JSONValue.FindValue('numero').TryGetValue<String>(sValue);
    gModel.numero := (sValue);

    rstResponse.JSONValue.FindValue('cep').TryGetValue<String>(sValue);
    gModel.cep := rRegex.Replace(sValue, '\D', '');

    rstResponse.JSONValue.FindValue('municipio').TryGetValue<String>(sValue);
    gModel.municipio := (sValue);

    rstResponse.JSONValue.FindValue('porte').TryGetValue<String>(sValue);
    gModel.porte := (sValue);

    rstResponse.JSONValue.FindValue('abertura').TryGetValue<String>(sValue);
    gModel.abertura := StrToDate(sValue);

    rstResponse.JSONValue.FindValue('natureza_juridica').TryGetValue<String>(sValue);
    gModel.natureza_juridica := (sValue);

    rstResponse.JSONValue.FindValue('cnpj').TryGetValue<String>(sValue);
    gModel.cnpj := (sValue);

    rstResponse.JSONValue.FindValue('nome').TryGetValue<String>(sValue);
    gModel.nome := (sValue);

    rstResponse.JSONValue.FindValue('fantasia').TryGetValue<String>(sValue);
    gModel.nome_fantasia := (sValue);

    rstResponse.JSONValue.FindValue('complemento').TryGetValue<String>(sValue);
    gModel.complemento := (sValue);

    rstResponse.JSONValue.FindValue('capital_social').TryGetValue<Double>(dValue);
    gModel.capital_social := dValue;

    if uCadFornecedor.Query(gModel) then
      ModalResult := mrOk
    else
      ModalResult := mrCancel;
  end;
end;

procedure TfrmConsultarCNPJ.ge(Sender: TObject; var Key: Char);
begin
  If key = #13 then
   Begin
      Key:= #0;
      btnConsultarClick(Self);
   end;
end;

end.
