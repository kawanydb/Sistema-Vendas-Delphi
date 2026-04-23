inherited frmConCategoria: TfrmConCategoria
  Caption = 'Consulta de Categorias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl1: TPanel
    inherited lblIndice: TLabel
      Width = 142
      Caption = 'Consulta de Categorias'
      Font.Color = 9276395
      ExplicitWidth = 142
    end
    inherited mskPesquisa: TMaskEdit
      AlignWithMargins = True
      Left = 4
      Top = 24
      Width = 619
      Text = ''
      TextHint = 'Digite sua Pesquisa'
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 619
    end
  end
  inherited pnl3: TPanel
    inherited grdPesquisa: TDBGrid
      Color = 16249591
      Font.Color = clBlack
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWhite
      TitleFont.Name = 'Segoe UI Black'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = grdPesquisaDrawColumnCell
      Columns = <
        item
          Expanded = False
          FieldName = 'categoriaId'
          Width = 106
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 476
          Visible = True
        end>
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT categoriaId,'
      '   descricao'
      ' FROM categorias')
    Left = 516
    Top = 177
    object fdtncfldQryListagemcategoriaId: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'categoriaId'
      ReadOnly = True
    end
    object strngfldQryListagemdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 30
    end
  end
  inherited dtsListagem: TDataSource
    Left = 560
    Top = 177
  end
end
