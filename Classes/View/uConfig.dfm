object frmConfig: TfrmConfig
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Configura'#231#245'es'
  ClientHeight = 131
  ClientWidth = 399
  Color = clBtnFace
  Constraints.MaxHeight = 170
  Constraints.MaxWidth = 415
  Constraints.MinHeight = 170
  Constraints.MinWidth = 415
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 399
    Height = 131
    Align = alClient
    Caption = 'Conex'#227'o'
    TabOrder = 0
    ExplicitHeight = 129
    DesignSize = (
      399
      131)
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 26
      Height = 13
      Caption = 'Host:'
    end
    object Label2: TLabel
      Left = 144
      Top = 24
      Width = 40
      Height = 13
      Caption = 'Usu'#225'rio:'
    end
    object Label3: TLabel
      Left = 271
      Top = 24
      Width = 34
      Height = 13
      Caption = 'Senha:'
    end
    object Label4: TLabel
      Left = 16
      Top = 72
      Width = 50
      Height = 13
      Caption = 'Database:'
    end
    object edtHost: TEdit
      Left = 16
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtUsername: TEdit
      Left = 143
      Top = 43
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtPassword: TEdit
      Left = 271
      Top = 43
      Width = 119
      Height = 21
      PasswordChar = '*'
      TabOrder = 2
    end
    object edtDB: TEdit
      Left = 16
      Top = 91
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object btnTest: TButton
      Left = 143
      Top = 88
      Width = 121
      Height = 25
      Caption = 'Testar Conex'#227'o'
      TabOrder = 4
      OnClick = btnTestClick
    end
    object btnGravar: TButton
      Left = 309
      Top = 88
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Gravar'
      TabOrder = 5
      OnClick = btnGravarClick
    end
  end
end
