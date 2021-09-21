program GestaoFornecedores;

uses
  Vcl.Forms,
  uMainForm in 'Classes\View\uMainForm.pas' {formMain},
  uAbstract_Model in 'Classes\Base\uAbstract_Model.pas',
  uModel_Fornecedor in 'Classes\Model\uModel_Fornecedor.pas',
  uModel_QSA in 'Classes\Model\uModel_QSA.pas',
  uAbstract_Client in 'Classes\Base\uAbstract_Client.pas',
  uClient_Fornecedor in 'Classes\Client\uClient_Fornecedor.pas',
  uController in 'Classes\uController.pas',
  uGlobal in 'Classes\uGlobal.pas',
  uConfig in 'Classes\View\uConfig.pas' {frmConfig},
  uModel_CNAE in 'Classes\Model\uModel_CNAE.pas',
  uClient_CNAE in 'Classes\Client\uClient_CNAE.pas',
  uCadFornecedor in 'Classes\View\uCadFornecedor.pas' {frmCadFornecedor},
  uClient_Estado in 'Classes\Client\uClient_Estado.pas',
  uModel_Estado in 'Classes\Model\uModel_Estado.pas',
  Validate in 'Classes\Validate.pas';

{$R *.res}

begin
  TGlobal.Controller := TController.Create();
  TGlobal.Controller.Populate();
  TGlobal.Controller.LoadConnection;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'GEST - Gestão de Fornecedores';
  Application.CreateForm(TformMain, formMain);
  Application.Run;
end.
