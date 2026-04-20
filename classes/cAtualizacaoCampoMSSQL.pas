unit cAtualizacaoCampoMSSQL;

interface

uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs,
     FireDAC.Comp.Client,
     FireDAC.Stan.Error,
     FireDAC.DatS,
     FireDAC.Phys.Intf,
     FireDAC.DApt.Intf,
     FireDAC.Stan.Async,
     FireDAC.DApt,
     FireDAC.Comp.DataSet,
     System.SysUtils,
     FireDAC.Stan.Param,
     cAtualizacaoBancoDeDados;

type
  TAtualizacaoCampoMSSQL = class(TatualizaBancoDados)

  private
    function CampoExisteNaTabela(aNomeTabela, aCampo: String): Boolean;
    procedure Versao1;
  protected

  public
    constructor Create(aConexao:TFDConnection);
    destructor Destroy; override;
  end;

implementation

{ TAtualizacaoCampoMSSQL }

function TAtualizacaoCampoMSSQL.CampoExisteNaTabela(aNomeTabela, aCampo: String): Boolean;
var Qry:TFDQuery;
begin
  try
    Result:=False;
    Qry:=TFDQuery.Create(nil);
    Qry.Connection:=conexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(' SELECT COUNT(COLUMN_NAME) AS Qtde ');
    Qry.SQL.Add('   FROM INFORMATION_SCHEMA.COLUMNS ');
    Qry.SQL.Add('  WHERE TABLE_NAME:=Tabela ');
    Qry.SQL.Add('     AND COLUMN_NAME:=Campo ');
    Qry.ParamByName('Tabela').AsString:=aNomeTabela;
    Qry.ParamByName('Campo').AsString :=aCampo;
    Qry.Open;

    if Qry.FieldByName('Qtde').AsInteger>0 then
       Result:=True;
  finally
    Qry.Close;
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;
end;

constructor TAtualizacaoCampoMSSQL.Create(aConexao: TFDConnection);
begin
  conexaoDB := aConexao;
  Versao1;
end;

destructor TAtualizacaoCampoMSSQL.Destroy;
begin

  inherited;
end;

procedure TAtualizacaoCampoMSSQL.Versao1;
begin
  if not CampoExisteNaTabela('categorias', 'teste') then
  begin
    ExecutaDiretoBancoDeDados('ALTER TABLE categorias ADD teste varchar(30) NULL');
  end;

  if CampoExisteNaTabela('categorias', 'teste') then
  begin
    ExecutaDiretoBancoDeDados('ALTER TABLE categorias DROP COLUMN teste');
  end;

  if not CampoExisteNaTabela('produtos', 'foto') then
  begin
    ExecutaDiretoBancoDeDados('ALTER TABLE produtos ADD foto VarBinary(MAX) ');
  end;

end;



end.
