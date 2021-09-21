unit uModel_CNAE;

interface

uses uAbstract_Model;

type
  [TTable('CNAE')]
  TModelCNAE = class(TModel)
  private
    FID: Integer;
    FDESCRICAO: String;
    FCODIGO_CNAE: Integer;
  published
    [TDBField('IDentificador', [dbKey])]
    property ID: Integer read FID write FID;
    [TDBField('C�digo CNAE', [dbUpdate])]
    property CODIGO_CNAE: Integer read FCODIGO_CNAE write FCODIGO_CNAE;
    [TDBField('Descri��o', [dbUpdate])]
    property DESCRICAO: String read FDESCRICAO write FDESCRICAO;
  end;

implementation

end.
