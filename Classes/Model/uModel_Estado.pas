unit uModel_Estado;

interface

uses uAbstract_Model;

type
  [TTable('ESTADO')]
  TModelEstado = class(TModel)
  private
    FID: String;
    FNOME: String;
    FCODIGO: Integer;
  published
    [TDBField('IDentificador', [dbKey])]
    property ID: String read FID write FID;
    [TDBField('C�digo CNAE', [dbUpdate])]
    property NOME: String read FNOME write FNOME;
    [TDBField('Descri��o', [dbUpdate])]
    property CODIGO: Integer read FCODIGO write FCODIGO;
  end;

implementation

end.
