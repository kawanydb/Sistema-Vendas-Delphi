inherited frmCadAcaoAcesso: TfrmCadAcaoAcesso
  Caption = 'Cadastro de A'#231#227'o de Acesso'
  ClientHeight = 400
  ClientWidth = 673
  ExplicitWidth = 679
  ExplicitHeight = 429
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcPrincipal: TPageControl
    Width = 673
    Height = 359
    ActivePage = tabManutencao
    ExplicitWidth = 574
    ExplicitHeight = 331
    inherited tabListagem: TTabSheet
      ExplicitWidth = 566
      ExplicitHeight = 303
      inherited pnlListagemTopo: TPanel
        Width = 665
        ExplicitWidth = 566
      end
      inherited grddListagem: TDBGrid
        Width = 665
        Height = 284
        Columns = <
          item
            Expanded = False
            FieldName = 'acaoAcessoId'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 283
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chave'
            Width = 192
            Visible = True
          end>
      end
    end
    inherited tabManutencao: TTabSheet
      ExplicitWidth = 665
      ExplicitHeight = 331
      object lbl15: TLabel
        Left = 13
        Top = 11
        Width = 157
        Height = 21
        Caption = 'Criar A'#231#227'o de Acesso'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
      end
      object edtAcaoAcessoId: TLabeledEdit
        Tag = 1
        Left = 13
        Top = 56
        Width = 138
        Height = 21
        EditLabel.Width = 33
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo'
        MaxLength = 10
        NumbersOnly = True
        TabOrder = 0
      end
      object edtDescricao: TLabeledEdit
        Tag = 2
        Left = 13
        Top = 105
        Width = 444
        Height = 21
        EditLabel.Width = 88
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o da A'#231#227'o'
        MaxLength = 100
        TabOrder = 1
      end
      object edtChave: TLabeledEdit
        Tag = 2
        Left = 13
        Top = 157
        Width = 444
        Height = 21
        EditLabel.Width = 31
        EditLabel.Height = 13
        EditLabel.Caption = 'Chave'
        MaxLength = 60
        TabOrder = 2
      end
    end
  end
  inherited pnlRodape: TPanel
    Top = 359
    Width = 673
    ExplicitTop = 331
    ExplicitWidth = 574
    inherited btnNavigator: TDBNavigator
      Hints.Strings = ()
    end
    inherited btnnFechar: TBitBtn
      Left = 605
      ExplicitLeft = 506
    end
  end
  inherited QryListagem: TFDQuery
    SQL.Strings = (
      'SELECT acaoAcessoId,'
      '       descricao,'
      '       chave'
      '  FROM acaoAcesso')
    object fdtncfldQryListagemacaoAcessoId: TFDAutoIncField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'acaoAcessoId'
      Origin = 'acaoAcessoId'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object strngfldQryListagemdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 100
    end
    object strngfldQryListagemchave: TStringField
      DisplayLabel = 'Chave'
      FieldName = 'chave'
      Origin = 'chave'
      Required = True
      Size = 60
    end
  end
end
