object frmRelProVenda: TfrmRelProVenda
  Left = 0
  Top = 0
  Caption = 'Relatorio de Venda'
  ClientHeight = 463
  ClientWidth = 805
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Relatorio: TRLReport
    Left = 3
    Top = -4
    Width = 794
    Height = 1123
    DataSource = dtsVenda
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object rlbndCabecalho: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object rlbl1: TRLLabel
        Left = 0
        Top = 14
        Width = 84
        Height = 30
        Caption = 'VENDA:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -21
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rldrw2: TRLDraw
        Left = 0
        Top = 40
        Width = 718
        Height = 27
        Align = faBottom
        DrawKind = dkLine
        Pen.Width = 2
      end
      object rldbtxt1: TRLDBText
        Left = 70
        Top = 73
        Width = 47
        Height = 16
        Text = ''
      end
    end
    object rlbndRodape: TRLBand
      Left = 38
      Top = 258
      Width = 718
      Height = 40
      BandType = btFooter
      object rldrw3: TRLDraw
        Left = 0
        Top = 0
        Width = 718
        Height = 10
        Align = faTop
        DrawKind = dkLine
        Pen.Width = 2
      end
      object rlsystmnf1: TRLSystemInfo
        Left = 3
        Top = 16
        Width = 61
        Height = 17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Info = itFullDate
        ParentFont = False
        Text = ''
      end
      object rlsystmnf2: TRLSystemInfo
        Left = 667
        Top = 15
        Width = 92
        Height = 17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Info = itPageNumber
        ParentFont = False
        Text = ''
      end
      object rlsystmnf3: TRLSystemInfo
        Left = 693
        Top = 15
        Width = 116
        Height = 17
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        Info = itLastPageNumber
        ParentFont = False
        Text = ''
      end
      object rlbl2: TRLLabel
        Left = 682
        Top = 15
        Width = 9
        Height = 17
        Caption = '/'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rlbl3: TRLLabel
        Left = 616
        Top = 16
        Width = 45
        Height = 17
        Caption = 'P'#225'gina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI Semibold'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlbnd6: TRLBand
      Left = 38
      Top = 217
      Width = 718
      Height = 41
      BandType = btSummary
      object rldbrsltTotalVenda: TRLDBResult
        Left = 611
        Top = 7
        Width = 108
        Height = 16
        Alignment = taRightJustify
        DataField = 'TotalVenda'
        DataSource = dtsVenda
        DisplayMask = 'R$#,##0.00'
        Info = riSum
        Text = ''
      end
      object rlbl10: TRLLabel
        Left = 503
        Top = 6
        Width = 102
        Height = 17
        Caption = 'Total da Venda:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
      end
      object rldrw6: TRLDraw
        Left = -7
        Top = -1
        Width = 725
        Height = 1
        DrawKind = dkLine
      end
      object rldrw7: TRLDraw
        Left = 3
        Top = -2
        Width = 725
        Height = 10
        DrawKind = dkLine
      end
    end
    object rlgrpBandaDoGrupo: TRLGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 112
      DataFields = 'clienteId'
      object rlbnd3: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 25
        BandType = btHeader
        Color = 11179205
        ParentColor = False
        Transparent = False
        object rlbl13: TRLLabel
          Left = 7
          Top = 3
          Width = 53
          Height = 17
          Caption = 'VENDA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = False
        end
        object rldbtxtDescricaoCategoria: TRLDBText
          Left = 63
          Top = 3
          Width = 47
          Height = 16
          DataField = 'vendaId'
          DataSource = dtsVenda
          Text = ''
          Transparent = False
        end
        object rlbl18: TRLLabel
          Left = 519
          Top = 3
          Width = 93
          Height = 17
          Caption = 'DATA VENDA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = False
        end
        object rldbtxtvendaId: TRLDBText
          Left = 618
          Top = 3
          Width = 66
          Height = 16
          DataField = 'dataVenda'
          DataSource = dtsVenda
          Text = ''
          Transparent = False
        end
      end
      object rlbnd1: TRLBand
        Left = 0
        Top = 25
        Width = 718
        Height = 26
        object rldbtxtcategoriaId1: TRLDBText
          Left = 81
          Top = 0
          Width = 37
          Height = 17
          DataField = 'nome'
          DataSource = dtsVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
        object rlbl5: TRLLabel
          Left = 9
          Top = 0
          Width = 47
          Height = 17
          Caption = 'Cliente'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold, fsUnderline]
          ParentFont = False
          Transparent = False
        end
        object rldbtxtcategoriaId: TRLDBText
          Left = 62
          Top = 0
          Width = 52
          Height = 17
          DataField = 'clienteId'
          DataSource = dtsVenda
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          Text = ''
        end
      end
      object rlbnd4: TRLBand
        Left = 0
        Top = 115
        Width = 718
        Height = 1
        BandType = btSummary
        object rldrw4: TRLDraw
          Left = 304
          Top = -3
          Width = 411
          Height = 17
          DrawKind = dkLine
        end
      end
      object rlsbdtl1: TRLSubDetail
        Left = 0
        Top = 51
        Width = 718
        Height = 64
        DataSource = dtsVendasItens
        object rlbnd2: TRLBand
          Left = 0
          Top = 0
          Width = 718
          Height = 24
          BandType = btHeader
          Color = 15132392
          ParentColor = False
          Transparent = False
          object rlbl14: TRLLabel
            Left = 7
            Top = 3
            Width = 78
            Height = 17
            Caption = 'PRODUTOS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
          end
          object rlbl15: TRLLabel
            Left = 387
            Top = 4
            Width = 80
            Height = 17
            Caption = 'Quantidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
          end
          object rlbl16: TRLLabel
            Left = 491
            Top = 3
            Width = 95
            Height = 17
            Caption = 'Valor Unit'#225'rio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
          end
          object rlbl17: TRLLabel
            Left = 618
            Top = 6
            Width = 94
            Height = 17
            Caption = 'Total Produto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            Transparent = False
          end
        end
        object rlbnd5: TRLBand
          Left = 0
          Top = 24
          Width = 718
          Height = 25
          object rldbtxtclienteId: TRLDBText
            Left = 12
            Top = 3
            Width = 63
            Height = 17
            DataField = 'produtoId'
            DataSource = dtsVendasItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object rldbtxtprodutoId: TRLDBText
            Left = 81
            Top = 5
            Width = 37
            Height = 17
            DataField = 'nome'
            DataSource = dtsVendasItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object rldbtxtnome: TRLDBText
            Left = 401
            Top = 3
            Width = 70
            Height = 17
            DataField = 'quantidade'
            DataSource = dtsVendasItens
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object rldbtxtquantidade: TRLDBText
            Left = 503
            Top = 2
            Width = 79
            Height = 17
            DataField = 'valorUnitario'
            DataSource = dtsVendasItens
            DisplayMask = 'R$#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
          object rldbtxtvalorUnitario: TRLDBText
            Left = 628
            Top = 3
            Width = 77
            Height = 17
            DataField = 'totalProduto'
            DataSource = dtsVendasItens
            DisplayMask = 'R$#,##0.00'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            Text = ''
          end
        end
      end
    end
  end
  object QryVendas: TFDQuery
    Active = True
    Connection = dtmConexao.conexaoDB
    SQL.Strings = (
      'select  vendas.vendaId,'
      '        vendas.clienteId,'
      '        clientes.nome,'
      '        vendas.dataVenda,'
      '        cast(vendas.totalVenda as numeric(18,3)) as totalVenda'
      
        'from vendas inner join clientes on clientes.clienteId = vendas.c' +
        'lienteId'
      'where vendas.vendaId =:vendaId')
    Left = 552
    Top = 320
    ParamData = <
      item
        Name = 'VENDAID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object fdtncfldQryVendasvendaId: TFDAutoIncField
      FieldName = 'vendaId'
      Origin = 'vendaId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object intgrfldQryVendasclienteId: TIntegerField
      FieldName = 'clienteId'
      Origin = 'clienteId'
      Required = True
    end
    object nQryVendasnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object sqltmstmpfldQryVendasdataVenda: TSQLTimeStampField
      FieldName = 'dataVenda'
      Origin = 'dataVenda'
      DisplayFormat = 'DD/MM/YYYY'
    end
    object bcdfldQryVendastotalVenda: TBCDField
      FieldName = 'totalVenda'
      Origin = 'totalVenda'
      ReadOnly = True
      DisplayFormat = 'R$#,##0.00'
      Precision = 18
      Size = 3
    end
  end
  object dtsVenda: TDataSource
    DataSet = QryVendas
    Left = 632
    Top = 328
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 
      'FortesReport Community Edition v4.0.1.2 \251 Copyright '#194#169' 1999-2' +
      '021 Fortes Inform'#195#161'tica'
    DisplayName = 'Documento PDF'
    Left = 619
    Top = 400
  end
  object QryVendasItens: TFDQuery
    Connection = dtmConexao.conexaoDB
    SQL.Strings = (
      'select '
      '    vi.vendaId, '
      '    vi.produtoId, '
      '    p.nome, '
      '    vi.quantidade, '
      '    vi.valorUnitario, '
      '    vi.totalProduto '
      'from vendas.dbo.vendasItens vi'
      'inner join vendas.dbo.produtos p'
      '    on p.produtoId = vi.produtoId'
      'where vi.vendaId =:vendaId'
      'order by vi.produtoId')
    Left = 552
    Top = 378
    ParamData = <
      item
        Name = 'VendaId'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object intgrfldQryVendasItensvendaId: TIntegerField
      FieldName = 'vendaId'
      Origin = 'vendaId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object intgrfldQryVendasItensprodutoId: TIntegerField
      FieldName = 'produtoId'
      Origin = 'produtoId'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object nQryVendasItensnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object fmtbcdfldQryVendasItensquantidade: TFMTBCDField
      FieldName = 'quantidade'
      Origin = 'quantidade'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldQryVendasItensvalorUnitario: TFMTBCDField
      FieldName = 'valorUnitario'
      Origin = 'valorUnitario'
      DisplayFormat = 'R$#,##0.00'
      Precision = 18
      Size = 5
    end
    object fmtbcdfldQryVendasItenstotalProduto: TFMTBCDField
      FieldName = 'totalProduto'
      Origin = 'totalProduto'
      DisplayFormat = 'R$#,##0.00'
      Precision = 18
      Size = 5
    end
  end
  object dtsVendasItens: TDataSource
    DataSet = QryVendasItens
    Left = 672
    Top = 370
  end
end
