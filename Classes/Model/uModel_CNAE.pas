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
    [TDBField('Código CNAE', [dbUpdate])]
    property CODIGO_CNAE: Integer read FCODIGO_CNAE write FCODIGO_CNAE;
    [TDBField('Descrição', [dbUpdate])]
    property DESCRICAO: String read FDESCRICAO write FDESCRICAO;
  end;

implementation

end.
