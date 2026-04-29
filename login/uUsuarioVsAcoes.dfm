object frmUsuarioVsAcoes: TfrmUsuarioVsAcoes
  Left = 0
  Top = 0
  Caption = 'Usu'#225'rio VS A'#231#245'es'
  ClientHeight = 410
  ClientWidth = 591
  Color = clBtnFace
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
  object spl1: TSplitter
    Left = 201
    Top = 0
    Height = 369
    ExplicitLeft = 256
    ExplicitTop = 184
    ExplicitHeight = 100
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 201
    Height = 369
    Align = alLeft
    TabOrder = 0
    object dbgrdUsuarios: TDBGrid
      Left = 1
      Top = 1
      Width = 199
      Height = 367
      Align = alClient
      DataSource = dtsUsuario
      DrawingStyle = gdsClassic
      FixedColor = clGray
      GradientStartColor = clMedGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = dbgrdUsuariosDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'usuarioid'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Width = 119
          Visible = True
        end>
    end
  end
  object pnl2: TPanel
    Left = 204
    Top = 0
    Width = 387
    Height = 369
    Align = alClient
    TabOrder = 1
    object dbgrdACoes: TDBGrid
      Left = 1
      Top = 1
      Width = 385
      Height = 367
      Align = alClient
      DataSource = dtsAcoes
      DrawingStyle = gdsClassic
      FixedColor = clGray
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = dbgrdACoesDrawColumnCell
      OnDblClick = dbgrdACoesDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'usuarioId'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'acaoAcessoId'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 272
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ativo'
          Visible = False
        end>
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 369
    Width = 591
    Height = 41
    Align = alBottom
    TabOrder = 2
    DesignSize = (
      591
      41)
    object btnnFechar: TBitBtn
      Left = 521
      Top = 6
      Width = 62
      Height = 23
      Anchors = [akTop, akRight]
      Caption = '&FECHAR'
      TabOrder = 0
      OnClick = btnnFecharClick
    end
  end
  object QryUsuario: TFDQuery
    Connection = dtmConexao.conexaoDB
    SQL.Strings = (
      'SELECT usuarioid,'
      '       Nome'
      'FROM usuarios')
    Left = 104
    Top = 200
    object fdtncfldQryUsuariousuarioid: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'usuarioid'
      Origin = 'usuarioid'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryUsuarioNome: TStringField
      FieldName = 'Nome'
      Origin = 'Nome'
      Required = True
      Size = 50
    end
  end
  object QryAcoes: TFDQuery
    Connection = dtmConexao.conexaoDB
    SQL.Strings = (
      'SELECT ua.usuarioId,'
      '       ua.acaoAcessoId,'
      '       a.descricao,'
      '       ua.ativo'
      '  FROM usuariosAcaoAcesso As ua'
      
        '     INNER JOIN acaoAcesso AS a ON a.acaoAcessoId = ua.acaoAcess' +
        'oId'
      'WHERE ua.usuarioId=:usuarioId')
    Left = 318
    Top = 112
    ParamData = <
      item
        Name = 'USUARIOID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object intgrfldQryAcoesusuarioId: TIntegerField
      FieldName = 'usuarioId'
      Origin = 'usuarioId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object intgrfldQryAcoesacaoAcessoId: TIntegerField
      FieldName = 'acaoAcessoId'
      Origin = 'acaoAcessoId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object strngfldQryAcoesdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 100
    end
    object blnfldQryAcoesativo: TBooleanField
      FieldName = 'ativo'
      Origin = 'ativo'
      Required = True
    end
  end
  object dtsUsuario: TDataSource
    DataSet = QryUsuario
    Left = 104
    Top = 136
  end
  object dtsAcoes: TDataSource
    DataSet = QryAcoes
    Left = 454
    Top = 184
  end
end
