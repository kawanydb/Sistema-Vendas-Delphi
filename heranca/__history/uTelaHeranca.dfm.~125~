object frmTelaHeranca: TfrmTelaHeranca
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'INFORME AQUI O T'#205'TULO'
  ClientHeight = 369
  ClientWidth = 597
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 597
    Height = 328
    ActivePage = tabListagem
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 16249591
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object tabListagem: TTabSheet
      Caption = 'Listagem'
      object pnlListagemTopo: TPanel
        Left = 0
        Top = 0
        Width = 589
        Height = 47
        Align = alTop
        BiDiMode = bdRightToLeft
        Color = 16446715
        ParentBiDiMode = False
        ParentBackground = False
        TabOrder = 0
        object lbl1: TLabel
          Left = 15
          Top = 3
          Width = 93
          Height = 13
          Caption = 'Campo de Pesquisa'
        end
        object mskPesquisar: TMaskEdit
          Left = 15
          Top = 16
          Width = 122
          Height = 21
          Cursor = crIBeam
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = ''
          TextHint = 'Digite sua Pesquisa'
          OnChange = mskPesquisarChange
        end
        object btnPesquisar: TBitBtn
          Tag = 99
          Left = 146
          Top = 16
          Width = 58
          Height = 21
          Cursor = crHandPoint
          Caption = '&Pesquisar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Margin = 2
          ParentFont = False
          TabOrder = 1
          OnClick = btnPesquisarClick
        end
      end
      object grddListagem: TDBGrid
        Left = 0
        Top = 47
        Width = 589
        Height = 253
        Align = alClient
        Color = 16446715
        DataSource = dtsListagem
        DrawingStyle = gdsClassic
        FixedColor = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWhite
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = grddListagemDrawColumnCell
        OnDblClick = grddListagemDblClick
        OnKeyDown = grddListagemKeyDown
        OnTitleClick = grddListagemTitleClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Title.Alignment = taCenter
            Visible = True
          end>
      end
    end
    object tabManutencao: TTabSheet
      Caption = 'Manuten'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 328
    Width = 597
    Height = 41
    Align = alBottom
    Color = 16446715
    ParentBackground = False
    TabOrder = 1
    DesignSize = (
      597
      41)
    object btnNovo: TBitBtn
      Tag = 99
      Left = 15
      Top = 6
      Width = 62
      Height = 23
      Cursor = crHandPoint
      Caption = '&NOVO'
      TabOrder = 1
      OnClick = btnNovoClick
    end
    object btnNavigator: TDBNavigator
      Left = 377
      Top = 6
      Width = 112
      Height = 23
      Cursor = crHandPoint
      DataSource = dtsListagem
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 2
    end
    object btnAlterar: TBitBtn
      Tag = 99
      Left = 83
      Top = 6
      Width = 62
      Height = 23
      Cursor = crHandPoint
      Caption = '&ALTERAR'
      TabOrder = 0
      OnClick = btnAlterarClick
    end
    object btnCancelar: TBitBtn
      Left = 152
      Top = 6
      Width = 70
      Height = 23
      Cursor = crHandPoint
      Caption = '&CANCELAR'
      TabOrder = 3
      OnClick = btnCancelarClick
    end
    object btnGravar: TBitBtn
      Tag = 99
      Left = 228
      Top = 6
      Width = 62
      Height = 23
      Cursor = crHandPoint
      Caption = '&GRAVAR'
      TabOrder = 4
      OnClick = btnGravarClick
    end
    object btnApagar: TBitBtn
      Tag = 99
      Left = 296
      Top = 6
      Width = 62
      Height = 23
      Cursor = crHandPoint
      Caption = 'APAGA&R'
      TabOrder = 5
      OnClick = btnApagarClick
    end
    object btnnFechar: TBitBtn
      Left = 529
      Top = 6
      Width = 62
      Height = 23
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      Caption = '&FECHAR'
      TabOrder = 6
      OnClick = btnnFecharClick
    end
  end
  object dtsListagem: TDataSource
    DataSet = QryListagem
    Left = 392
    Top = 25
  end
  object QryListagem: TFDQuery
    Connection = dtmConexao.conexaoDB
    Left = 324
    Top = 25
  end
end
