unit uClient_CNAE;

interface

uses
  uAbstract_Client,
  uModel_Cnae,
  System.Generics.Collections,
  System.SysUtils;

type
  TClientCnae = class(TClient<TModelCnae>)
  private

  published

  public
    constructor Create(); overload;
  end;

implementation

{ TClientCnae }

constructor TClientCnae.Create;
begin
  inherited Create;
end;

end.
