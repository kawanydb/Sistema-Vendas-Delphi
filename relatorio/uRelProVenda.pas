unit uRelProVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMConexao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLReport, RLFilters, RLPDFFilter;

type
  TfrmRelProVenda = class(TForm)
    QryVendas: TFDQuery;
    dtsVenda: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    QryVendasItens: TFDQuery;
    dtsVendasItens: TDataSource;
    Relatorio: TRLReport;
    rlbndCabecalho: TRLBand;
    rlbl1: TRLLabel;
    rldrw2: TRLDraw;
    rldbtxt1: TRLDBText;
    rlbndRodape: TRLBand;
    rldrw3: TRLDraw;
    rlsystmnf1: TRLSystemInfo;
    rlsystmnf2: TRLSystemInfo;
    rlsystmnf3: TRLSystemInfo;
    rlbl2: TRLLabel;
    rlbl3: TRLLabel;
    rlbnd6: TRLBand;
    rldbrsltTotalVenda: TRLDBResult;
    rlbl10: TRLLabel;
    rldrw6: TRLDraw;
    rldrw7: TRLDraw;
    rlgrpBandaDoGrupo: TRLGroup;
    rlbnd3: TRLBand;
    rlbl13: TRLLabel;
    rldbtxtDescricaoCategoria: TRLDBText;
    rlbnd1: TRLBand;
    rldbtxtcategoriaId1: TRLDBText;
    rlbnd4: TRLBand;
    rldrw4: TRLDraw;
    fdtncfldQryVendasvendaId: TFDAutoIncField;
    intgrfldQryVendasclienteId: TIntegerField;
    nQryVendasnome: TStringField;
    sqltmstmpfldQryVendasdataVenda: TSQLTimeStampField;
    bcdfldQryVendastotalVenda: TBCDField;
    intgrfldQryVendasItensvendaId: TIntegerField;
    intgrfldQryVendasItensprodutoId: TIntegerField;
    nQryVendasItensnome: TStringField;
    fmtbcdfldQryVendasItensquantidade: TFMTBCDField;
    fmtbcdfldQryVendasItensvalorUnitario: TFMTBCDField;
    fmtbcdfldQryVendasItenstotalProduto: TFMTBCDField;
    rlbl5: TRLLabel;
    rldbtxtcategoriaId: TRLDBText;
    rlsbdtl1: TRLSubDetail;
    rlbnd2: TRLBand;
    rlbnd5: TRLBand;
    rldbtxtclienteId: TRLDBText;
    rldbtxtprodutoId: TRLDBText;
    rlbl14: TRLLabel;
    rldbtxtnome: TRLDBText;
    rldbtxtquantidade: TRLDBText;
    rldbtxtvalorUnitario: TRLDBText;
    rlbl15: TRLLabel;
    rlbl16: TRLLabel;
    rlbl17: TRLLabel;
    rlbl18: TRLLabel;
    rldbtxtvendaId: TRLDBText;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelProVenda: TfrmRelProVenda;

implementation


{$R *.dfm}


procedure TfrmRelProVenda.FormDestroy(Sender: TObject);
begin
  QryVendas.Close;
  QryVendasItens.Close;
end;

end.

