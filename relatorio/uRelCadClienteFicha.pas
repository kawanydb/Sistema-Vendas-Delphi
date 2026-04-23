unit uRelCadClienteFicha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uDTMConexao, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, RLFilters, RLPDFFilter, RLHTMLFilter, RLXLSFilter, RLXLSXFilter,
  Vcl.Imaging.pngimage, uCadCliente;

type
  TfrmRelCadClienteFicha = class(TForm)
    dtsCliente: TDataSource;
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
    rlxlsxfltr1: TRLXLSXFilter;
    rlxlsfltr1: TRLXLSFilter;
    rlhtmlfltr1: TRLHTMLFilter;
    rldbtxtNome: TRLDBText;
    rldbtxtemail: TRLDBText;
    rlbl6: TRLLabel;
    rlbl5: TRLLabel;
    rlbl7: TRLLabel;
    rlbl8: TRLLabel;
    rldbtxtclienteId: TRLDBText;
    rlbl61: TRLLabel;
    rlbl9: TRLLabel;
    rldbtxtNome1: TRLDBText;
    rlbl10: TRLLabel;
    rldbtxtNome2: TRLDBText;
    rlbl11: TRLLabel;
    rldbtxtcep: TRLDBText;
    rlbl12: TRLLabel;
    rlbl13: TRLLabel;
    rldbtxtendereco: TRLDBText;
    rlbl14: TRLLabel;
    rldbtxtemail1: TRLDBText;
    rldrw4: TRLDraw;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText9: TRLDBText;
    RLDraw1: TRLDraw;
    rldbtxtcidade: TRLDBText;
    rldbtxtestado: TRLDBText;
    rlmg1: TRLImage;
    rlnglbl1: TRLAngleLabel;
    rlnglbl2: TRLAngleLabel;
    fdqryQryClientes: TFDQuery;
    fdtncfldQryClientesclienteId: TFDAutoIncField;
    nQryClientesnome: TStringField;
    nQryClientesendereco: TStringField;
    nQryClientesbairro: TStringField;
    nQryClientescidade: TStringField;
    nQryClientesestado: TStringField;
    nQryClientescep: TStringField;
    nQryClientesemail: TStringField;
    nQryClientestelefone: TStringField;
    sqltmstmpfldQryClientesdatanascimento: TSQLTimeStampField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure nQryClientestelefoneGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure nQryClientescepGetText(Sender: TField; var Text: string; DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelCadClienteFicha: TfrmRelCadClienteFicha;

implementation

{$R *.dfm}

procedure TfrmRelCadClienteFicha.FormCreate(Sender: TObject);
begin
   fdqryQryClientes.Open;
end;

procedure TfrmRelCadClienteFicha.FormDestroy(Sender: TObject);
begin
   fdqryQryClientes.Close;

end;


procedure TfrmRelCadClienteFicha.nQryClientescepGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := frmCadCliente.FormatarCEP(Sender.AsString);
end;

procedure TfrmRelCadClienteFicha.nQryClientestelefoneGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  Text := frmCadCliente.FormatarTelefone(Sender.AsString);
end;

end.
