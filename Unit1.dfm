object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Login'
  ClientHeight = 362
  ClientWidth = 424
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Label1: TLabel
    Left = 96
    Top = 72
    Width = 212
    Height = 25
    Caption = 'Entre com seu nome e CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -18
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 96
    Top = 120
    Width = 217
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Nome'
  end
  object Edit2: TEdit
    Left = 96
    Top = 165
    Width = 217
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TextHint = 'CPF'
  end
  object Button1: TButton
    Left = 96
    Top = 218
    Width = 89
    Height = 31
    Caption = 'Entrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=delphi'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Left = 40
    Top = 280
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\pcrub\OneDrive\'#193'rea de Trabalho\delphi\projeto\libmysql' +
      '.dll'
    Left = 160
    Top = 280
  end
end