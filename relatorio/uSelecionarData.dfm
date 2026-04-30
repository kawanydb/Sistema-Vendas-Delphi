object frmSelecionarData: TfrmSelecionarData
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Selecionar Data'
  ClientHeight = 121
  ClientWidth = 244
  Color = 15855351
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl4: TLabel
    Left = 8
    Top = 17
    Width = 64
    Height = 13
    Caption = 'Data Inicial'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl41: TLabel
    Left = 128
    Top = 17
    Width = 56
    Height = 13
    Caption = 'Data Final'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edtDataInicio: TDateEdit
    Left = 8
    Top = 36
    Width = 105
    Height = 21
    ClickKey = 114
    DialogTitle = 'Selecione a data'
    NumGlyphs = 2
    CalendarStyle = csDialog
    TabOrder = 0
  end
  object edtDataFinal: TDateEdit
    Left = 128
    Top = 36
    Width = 105
    Height = 21
    ClickKey = 114
    DialogTitle = 'Selecione a data'
    NumGlyphs = 2
    CalendarStyle = csDialog
    TabOrder = 1
  end
  object btn1: TBitBtn
    Left = 34
    Top = 72
    Width = 166
    Height = 25
    Caption = 'OK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
end
