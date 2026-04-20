object Criptografia: TCriptografia
  Left = 0
  Top = 0
  Caption = 'Criptografia'
  ClientHeight = 183
  ClientWidth = 312
  Color = 16241399
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtCriptografia: TEdit
    Left = 80
    Top = 29
    Width = 153
    Height = 28
    TabOrder = 0
    Text = 'edt1'
  end
  object edtDesCriptografia: TEdit
    Left = 80
    Top = 81
    Width = 153
    Height = 28
    TabOrder = 1
    Text = 'edt1'
  end
  object btn1: TButton
    Left = 112
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Executar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
end
