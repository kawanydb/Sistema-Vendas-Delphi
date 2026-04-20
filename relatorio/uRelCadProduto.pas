unit uRelCadProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMConexao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLFilters, RLPDFFilter, RLHTMLFilter, RLXLSFilter, RLXLSXFilter;

type
  TfrmRelCadProduto = class(TForm)
    QryProdutos: TFDQuery;
    dtsProdutos: TDataSource;
    Relatorio: TRLReport;
    Cabecalho: TRLBand;
    rlbl1: TRLLabel;
    RLPDFFilter1: TRLPDFFilter;
    Rodape: TRLBand;
    rldrw2: TRLDraw;
    rldrw3: TRLDraw;
    rlsystmnf1: TRLSystemInfo;
    rlsystmnf2: TRLSystemInfo;
    rlsystmnf3: TRLSystemInfo;
    rlbl2: TRLLabel;
    rlbl3: TRLLabel;
    rldbtxt1: TRLDBText;
    rlbnd1: TRLBand;
    rldbtxtcategoriaId: TRLDBText;
    rldbtxtcategoriaId1: TRLDBText;
    rlbnd2: TRLBand;
    rlpnl1: TRLPanel;
    rlbl5: TRLLabel;
    rlbl6: TRLLabel;
    rlxlsxfltr1: TRLXLSXFilter;
    rlxlsfltr1: TRLXLSFilter;
    rlhtmlfltr1: TRLHTMLFilter;
    rlbl7: TRLLabel;
    rldbtxtNome: TRLDBText;
    rlbl8: TRLLabel;
    rldbtxtQuantidade: TRLDBText;
    rlbl9: TRLLabel;
    rldbtxtNome1: TRLDBText;
    fdtncfldQryProdutosprodutoId: TFDAutoIncField;
    nQryProdutosnome: TStringField;
    fmtbcdfldQryProdutosvalor: TFMTBCDField;
    intgrfldQryProdutosquantidade: TIntegerField;
    nQryProdutosnomeFornecedor: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadProduto: TfrmRelCadProduto;

implementation

{$R *.dfm}

procedure TfrmRelCadProduto.FormCreate(Sender: TObject);
begin
   QryProdutos.Open;
end;

procedure TfrmRelCadProduto.FormDestroy(Sender: TObject);
begin
   QryProdutos.Close;
end;

end.
