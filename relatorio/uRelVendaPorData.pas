unit uRelVendaPorData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMConexao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLFilters, RLPDFFilter, RLHTMLFilter, RLXLSFilter, RLXLSXFilter;

type
  TfrmRelVendaPorData = class(TForm)
    QryVenda: TFDQuery;
    dtsVenda: TDataSource;
    RLPDFFilter1: TRLPDFFilter;
    rlxlsxfltr1: TRLXLSXFilter;
    rlxlsfltr1: TRLXLSFilter;
    rlhtmlfltr1: TRLHTMLFilter;
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
    BandaDoGrupo: TRLGroup;
    rlbnd3: TRLBand;
    rlbl13: TRLLabel;
    rldbtxtDescricaoCategoria: TRLDBText;
    rlbnd2: TRLBand;
    rlbl5: TRLLabel;
    rlbl6: TRLLabel;
    rlbl8: TRLLabel;
    rlbnd1: TRLBand;
    rldbtxtcategoriaId: TRLDBText;
    rldbtxtcategoriaId1: TRLDBText;
    rlbnd4: TRLBand;
    rldrw4: TRLDraw;
    rlbnd5: TRLBand;
    rldbrsltQuantidade: TRLDBResult;
    rlbl9: TRLLabel;
    rldrw5: TRLDraw;
    rldbtxtnome: TRLDBText;
    rldrw7: TRLDraw;
    fdtncfldQryVendavendaId: TFDAutoIncField;
    intgrfldQryVendaclienteId: TIntegerField;
    strngfldQryVendanome: TStringField;
    sqltmstmpfldQryVendadataVenda: TSQLTimeStampField;
    bcdfldQryVendaTotalVenda: TBCDField;
    procedure FormDestroy(Sender: TObject);
  private
  public
  end;

var
  frmRelVendaPorData: TfrmRelVendaPorData;

implementation

{$R *.dfm}

procedure TfrmRelVendaPorData.FormDestroy(Sender: TObject);
begin
   QryVenda.Close;
end;

end.
