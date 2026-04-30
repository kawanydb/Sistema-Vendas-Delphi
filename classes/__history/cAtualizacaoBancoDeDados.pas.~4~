unit cAtualizacaoBancoDeDados;

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
     Data.DB,
     Datasnap.DBClient;

type
  TAtualizaBancoDados = class

  private

  public
    conexaoDB:TFDConnection;
    constructor Create(aConexao: TFDConnection);
    procedure ExecutaDiretoBancoDeDados(aScript: String);
  end;

type
  TAtualizaBancoDadosMSSQL = class
  private
    conexaoDB:TFDConnection;
  public
    function AtualizaBancoDadosMSSQL: Boolean;
    constructor Create(aConexao: TFDConnection);
  end;

implementation
uses cAtualizacaoTabelaMSSQL;

{ TAtualizaBancoDados }

constructor TAtualizaBancoDados.Create(aConexao: TFDConnection);
begin
  conexaoDB:=aConexao;
end;

procedure TAtualizaBancoDados.ExecutaDiretoBancoDeDados(aScript: String);
var Qry:TFDQuery;
begin
  try
    Qry:=TFDQuery.Create(nil);
    Qry.Connection:=conexaoDB;
    Qry.SQL.Clear;
    Qry.SQL.Add(aScript);
    try
      conexaoDB.StartTransaction;
      Qry.ExecSQL;
      conexaoDB.Commit;
    except
    conexaoDB.Rollback
    end;
  finally
    Qry.Close;
    if Assigned(Qry) then
       FreeAndNil(Qry);
  end;

end;

{ TAtualizaBancoDadosMSSQL }
function TAtualizaBancoDadosMSSQL.AtualizaBancoDadosMSSQL: Boolean;
var oAtualizarDB:TAtualizaBancoDados;
    OTabela: TAtualizacaoTabelaMSSQL;
begin
  try
    //Classe Principal de atualização
    oAtualizarDB :=TAtualizaBancoDados.Create(conexaoDB);

    //Classe Filha(Herança) de Atualização
    OTabela := TAtualizacaoTabelaMSSQL.Create(conexaoDB);
  finally
    if Assigned(oAtualizarDB)  then
       FreeAndNil(oAtualizarDB);
  end;

end;

constructor TAtualizaBancoDadosMSSQL.Create(aConexao: TFDConnection);
begin
  conexaoDB:=aConexao;
end;

end.
