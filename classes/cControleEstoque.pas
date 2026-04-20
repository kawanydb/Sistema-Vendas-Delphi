unit cControleEstoque;

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
  TControleEstoque = class
  private
    ConexaoDB:TFDConnection;
    F_ProdutoId:Integer;
    F_Quantidade:Double;
  public
    constructor Create(aConexao:TFDConnection);
    destructor Destroy; override;
    function BaixarEstoque: Boolean;
    function RetornarEstoque: Boolean;
  published
    property ProdutoId:Integer  read F_ProdutoId   write F_ProdutoId;
    property Quantidade:Double  read F_Quantidade  write F_Quantidade;
  end;

implementation

{$REGION 'Constructor and Destructor'}
constructor TControleEstoque.Create(aConexao:TFDConnection);
begin
  ConexaoDB:=aConexao;
end;

destructor TControleEstoque.Destroy;
begin
  inherited;
end;
{$ENDREGION}

//função para mostrar o controle de quando vende e "baixar" o número dos que tem no estoque
function TControleEstoque.BaixarEstoque: Boolean;
var Qry:TFDQuery;
begin
  try
    Result:=True;
    Qry:=TFDQuery.Create(nil);
    Qry.Connection:=ConexaoDB;

    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE produtos'+
                '   SET quantidade = quantidade - :qtdeBaixa '+
                ' WHERE produtoId=:produtoId ');
    Qry.ParamByName('produtoId').AsInteger :=ProdutoId;
    Qry.ParamByName('qtdeBaixa').AsFloat   :=Quantidade;
    try
      conexaoDB.StartTransaction;
      Qry.ExecSQL;
      conexaoDB.Commit;
    except
      conexaoDB.Rollback;
      Result:=False;
    end;

  finally
    if Assigned(Qry) then
    FreeAndNil(Qry);
  end;
end;

//essa função retorna(adiciona) um produto no estoque, somando
function TControleEstoque.RetornarEstoque: Boolean;
var Qry:TFDQuery;
begin
  try
    Result:=True;
    Qry:=TFDQuery.Create(nil);
    Qry.Connection:=ConexaoDB;

    Qry.SQL.Clear;
    Qry.SQL.Add('UPDATE produtos'+
                '   SET quantidade = quantidade + :qtdeRetorno '+
                ' WHERE produtoId=:produtoId ');
    Qry.ParamByName('produtoId').AsInteger :=ProdutoId;
    Qry.ParamByName('qtdeRetorno').AsFloat :=Quantidade;
    try
      conexaoDB.StartTransaction;
      Qry.ExecSQL;
      conexaoDB.Commit;
    except
      conexaoDB.Rollback;
      Result:=False;
    end;

  finally
    if Assigned(Qry) then
    FreeAndNil(Qry);
  end;
end;
end.
