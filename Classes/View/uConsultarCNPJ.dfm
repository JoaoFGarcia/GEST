object frmConsultarCNPJ: TfrmConsultarCNPJ
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consultar CNPJ'
  ClientHeight = 102
  ClientWidth = 288
  Color = clBtnFace
  Constraints.MaxHeight = 141
  Constraints.MaxWidth = 304
  Constraints.MinHeight = 141
  Constraints.MinWidth = 304
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 101
    Top = 18
    Width = 85
    Height = 13
    Caption = 'CNPJ a consultar:'
  end
  object edtCGC: TMaskEdit
    Left = 76
    Top = 43
    Width = 134
    Height = 21
    Alignment = taCenter
    EditMask = '99.999.999/9999-99;1;_'
    MaxLength = 18
    TabOrder = 0
    Text = '  .   .   /    -  '
    OnKeyPress = ge
  end
  object btnConsultar: TButton
    Left = 76
    Top = 68
    Width = 136
    Height = 25
    Caption = 'Consultar'
    TabOrder = 1
    OnClick = btnConsultarClick
  end
  object rstRequest: TRESTRequest
    AssignedValues = [rvAccept, rvHandleRedirects, rvAcceptCharset, rvAcceptEncoding, rvAllowCookies]
    Accept = 
      'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif' +
      ',image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b' +
      '3;q=0.9'
    AcceptCharset = 'utf-8, *;q=0.8'
    AcceptEncoding = ''
    Client = rstClient
    Params = <
      item
        Kind = pkURLSEGMENT
        Name = 'cnpj'
        Options = [poAutoCreated]
      end>
    Resource = 'cnpj/{cnpj}'
    Response = rstResponse
    Left = 32
    Top = 8
  end
  object rstClient: TRESTClient
    Accept = 
      'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif' +
      ',image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b' +
      '3;q=0.9'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://www.receitaws.com.br/v1'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <
      item
        Kind = pkURLSEGMENT
      end>
    SecureProtocols = [SSL2, SSL3, TLS1, TLS11, TLS12, TLS13]
    Left = 32
    Top = 48
  end
  object rstResponse: TRESTResponse
    ContentType = 'application/json'
    Left = 176
    Top = 8
  end
end
