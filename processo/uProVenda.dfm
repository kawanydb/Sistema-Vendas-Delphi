inherited frmProVenda: TfrmProVenda
  Caption = 'Vendas'
  ClientHeight = 387
  ClientWidth = 680
  ExplicitWidth = 686
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 680
    Height = 346
    ActivePage = tabManutencao
    ExplicitWidth = 680
    ExplicitHeight = 346
    inherited tabListagem: TTabSheet
      ExplicitWidth = 672
      ExplicitHeight = 318
      inherited pnlListagemTopo: TPanel
        Width = 672
        ExplicitWidth = 672
      end
      inherited grddListagem: TDBGrid
        Width = 672
        Height = 271
        Font.Charset = ANSI_CHARSET
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        Columns = <
          item
            Expanded = False
            FieldName = 'vendaId'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataVenda'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'totalVenda'
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      OnShow = tabManutencaoShow
      ExplicitWidth = 672
      ExplicitHeight = 318
      object lbl2: TLabel
        Left = 139
        Top = 21
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object lbl4: TLabel
        Left = 488
        Top = 20
        Width = 56
        Height = 13
        Caption = 'Data Venda'
      end
      object lbl7: TLabel
        Left = 405
        Top = 18
        Width = 67
        Height = 12
        Caption = 'Dados do Cliente'
        Font.Charset = ANSI_CHARSET
        Font.Color = 4737096
        Font.Height = -9
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
      end
      object edtVendaId: TLabeledEdit
        Tag = 1
        Left = 13
        Top = 37
        Width = 116
        Height = 21
        EditLabel.Width = 70
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#250'mero Venda'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object lkpCliente: TDBLookupComboBox
        Left = 139
        Top = 37
        Width = 257
        Height = 21
        Cursor = crHandPoint
        KeyField = 'clienteId'
        ListField = 'nome'
        ListSource = dtmVenda.dtsCliente
        TabOrder = 1
        OnCloseUp = lkpClienteCloseUp
        OnEnter = lkpClienteEnter
      end
      object edtDataVenda: TDateEdit
        Left = 488
        Top = 37
        Width = 161
        Height = 21
        Cursor = crHandPoint
        ClickKey = 114
        Color = 16711422
        DialogTitle = 'Selecione a data'
        NumGlyphs = 2
        TabOrder = 3
      end
      object pnl1: TPanel
        Left = 0
        Top = 82
        Width = 672
        Height = 236
        Align = alBottom
        TabOrder = 4
        object pnl2: TPanel
          Left = 1
          Top = 1
          Width = 670
          Height = 56
          Align = alTop
          Color = 15855351
          ParentBackground = False
          TabOrder = 0
          object lbl21: TLabel
            Left = 11
            Top = 4
            Width = 38
            Height = 13
            Caption = 'Produto'
          end
          object lbl41: TLabel
            Left = 281
            Top = 3
            Width = 64
            Height = 13
            Caption = 'Valor Unit'#225'rio'
          end
          object lbl5: TLabel
            Left = 187
            Top = 4
            Width = 56
            Height = 13
            Caption = 'Quantidade'
          end
          object lbl6: TLabel
            Left = 373
            Top = 4
            Width = 80
            Height = 13
            Caption = 'Total do Produto'
          end
          object lkpProduto: TDBLookupComboBox
            Left = 11
            Top = 20
            Width = 169
            Height = 22
            Cursor = crHandPoint
            DataField = 'produtoId'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'lkpProduto'
            Font.Style = []
            KeyField = 'produtoId'
            ListField = 'nome'
            ListSource = dtmVenda.dtsProdutos
            ParentFont = False
            TabOrder = 0
            OnExit = lkpProdutoExit
          end
          object edtValorUnitario: TCurrencyEdit
            Left = 281
            Top = 19
            Width = 84
            Height = 22
            Color = clBtnFace
            DisplayFormat = '#,##0.00'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'edtValorUnitario'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edtQuantidade: TCurrencyEdit
            Left = 187
            Top = 20
            Width = 84
            Height = 22
            Cursor = crIBeam
            DisplayFormat = ' ,0.00; ,0.00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'edtQuantidade'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnExit = edtQuantidadeExit
          end
          object edtTotalProduto: TCurrencyEdit
            Left = 376
            Top = 19
            Width = 84
            Height = 21
            Color = clBtnFace
            DisplayFormat = ' ,0.00; ,0.00'
            Enabled = False
            ReadOnly = True
            TabOrder = 3
          end
          object btnAdicionarItem: TBitBtn
            Left = 470
            Top = 18
            Width = 81
            Height = 23
            Cursor = crHandPoint
            Caption = 'AD&ICIONAR'
            TabOrder = 4
            OnClick = btnAdicionarItemClick
          end
          object btnApagarItem: TBitBtn
            Left = 566
            Top = 18
            Width = 79
            Height = 23
            Cursor = crHandPoint
            Caption = 'RE&MOVER'
            TabOrder = 5
            TabStop = False
            OnClick = btnApagarItemClick
          end
        end
        object pnl3: TPanel
          Left = 1
          Top = 57
          Width = 670
          Height = 137
          Align = alClient
          TabOrder = 1
          object dbGridItens: TDBGrid
            Left = 1
            Top = 1
            Width = 668
            Height = 135
            Align = alClient
            Color = 15855351
            DataSource = dtmVenda.dtsItensVenda
            DrawingStyle = gdsClassic
            FixedColor = clGray
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWhite
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = dbGridItensDrawColumnCell
            OnDblClick = dbGridItensDblClick
            OnKeyDown = dbGridItensKeyDown
            Columns = <
              item
                Expanded = False
                FieldName = 'produtoId'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NomeProduto'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'quantidade'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valorUnitario'
                Width = 64
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'valorTotalProduto'
                Width = 173
                Visible = True
              end>
          end
        end
        object pnl4: TPanel
          Left = 1
          Top = 194
          Width = 670
          Height = 41
          Align = alBottom
          Color = 15855351
          ParentBackground = False
          TabOrder = 2
          object lbl3: TLabel
            Left = 502
            Top = 19
            Width = 87
            Height = 13
            Caption = 'Valor da Venda:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edtValorTotal: TCurrencyEdit
            Left = 590
            Top = 14
            Width = 72
            Height = 21
            Color = clBtnFace
            DisplayFormat = ' R$ ,0.00;R$,0.00'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
        end
      end
      object btnAlterarCliente: TBitBtn
        Left = 408
        Top = 34
        Width = 68
        Height = 25
        Cursor = crHandPoint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E000000000000000000007F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7FF4FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7FDCF6FF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFDDF7FF7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F
          F3FCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFF4FCFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7FF3FCFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4FCFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDF7FF7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
          7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F}
        TabOrder = 2
        OnClick = btnAlterarClienteClick
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 346
    Width = 680
    Color = 15855351
    ExplicitTop = 346
    ExplicitWidth = 680
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnnFechar: TBitBtn
      Left = 612
      ExplicitLeft = 612
    end
  end
  inherited dtsListagem: TDataSource
    Left = 272
    Top = 33
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT vendas.vendaId'
      '      ,vendas.clienteId'
      '      ,clientes.nome'
      '      ,clientes.statusId'
      '      ,vendas.DataVenda'
      '      ,vendas.totalVenda'
      '  FROM vendas'
      '  INNER JOIN clientes ON clientes.clienteId = vendas.clienteId')
    Left = 580
    object fdtncfldQryListagemvendaId: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'vendaId'
      Origin = 'vendaId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Origin = 'nome'
      Size = 60
    end
    object intgrfldQryListagemstatusId: TIntegerField
      DisplayLabel = 'Status'
      FieldName = 'statusId'
      Origin = 'statusId'
    end
    object sqltmstmpfldQryListagemDataVenda: TSQLTimeStampField
      DisplayLabel = 'Data Venda'
      FieldName = 'DataVenda'
      Origin = 'DataVenda'
    end
    object fmtbcdfldQryListagemtotalVenda: TFMTBCDField
      DisplayLabel = 'Total Venda'
      FieldName = 'totalVenda'
      Origin = 'totalVenda'
      DisplayFormat = 'R$#,##0.00'
      Precision = 18
      Size = 5
    end
  end
end
