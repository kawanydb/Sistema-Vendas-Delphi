object frmAlterarSenha: TfrmAlterarSenha
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Altera'#231#227'o de Senha Para Usu'#225'rio Logado'
  ClientHeight = 310
  ClientWidth = 348
  Color = 15921906
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
  object lbl1: TLabel
    Left = 68
    Top = 95
    Width = 78
    Height = 17
    Caption = 'Senha Atual:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 68
    Top = 152
    Width = 77
    Height = 17
    Caption = 'Nova Senha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 342
    Height = 25
    Align = alTop
    Alignment = taCenter
    Caption = 'Alterar Senha'
    Color = 9276395
    Font.Charset = ANSI_CHARSET
    Font.Color = 9401556
    Font.Height = -19
    Font.Name = 'Segoe UI Black'
    Font.Style = [fsBold, fsUnderline]
    ParentColor = False
    ParentFont = False
    ExplicitWidth = 128
  end
  object lbl4: TLabel
    Left = 68
    Top = 208
    Width = 117
    Height = 17
    Caption = 'Digite Novamente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblUsuarioLogado: TLabel
    AlignWithMargins = True
    Left = 141
    Top = 44
    Width = 36
    Height = 17
    Alignment = taCenter
    Caption = 'XXXX'
    Font.Charset = ANSI_CHARSET
    Font.Color = 11179205
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 132
    Top = 28
    Width = 73
    Height = 17
    Caption = 'Bem-Vindo!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl6: TLabel
    Left = 101
    Top = 62
    Width = 135
    Height = 17
    Caption = 'altere aqui sua senha!'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object btnFechar: TBitBtn
    Left = 89
    Top = 277
    Width = 75
    Height = 25
    Caption = 'Fechar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnFecharClick
  end
  object btnAlterar: TBitBtn
    Left = 185
    Top = 277
    Width = 75
    Height = 25
    Caption = 'Alterar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnAlterarClick
  end
  object edtSenhaAtual: TEdit
    Left = 67
    Top = 119
    Width = 225
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
    Text = 'mudar@1234'
  end
  object edtSenhaNova: TEdit
    Left = 68
    Top = 171
    Width = 224
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 2
    Text = 'mudar@123'
  end
  object edtRepetirNovaSenha: TEdit
    Left = 68
    Top = 231
    Width = 223
    Height = 21
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 3
    Text = 'mudar@123'
  end
end
