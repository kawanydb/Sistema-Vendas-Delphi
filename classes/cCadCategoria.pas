unit cCadCategoria;

interface

uses System.Classes,
     Vcl.Controls,
     Vcl.ExtCtrls,
     Vcl.Dialogs, //lista de Units
     FireDAC.Comp.Client,
     FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, System.SysUtils,FireDAC.Stan.Param;

type
  TCategoria = class //Declaração do tipo da Classe
  private
  //Variaveis Privada somente dentro da classe
  F_categoriaId: Integer;  //int
  F_descricao: String;     //varchar
  conexaoDB: TFDConnection;
  function getCodigo: Integer;
  function getDescricao: string;
  procedure setCodigo(const Value: Integer);
  procedure setDescricao(const Value: string);

  public
    constructor Create(aConexao:TFDConnection); //Construtor da Classe
    destructor Destroy; override; //Destroi a Classe usar o Override por causa
                                  //de Sobrescrever
    //Variaveis Publicas que pode ser trabalhada fora da classe
    function Inserir:Boolean;
    function Atualizar:Boolean;
    function Apagar:Boolean;
    function Selecionar(id:Integer):Boolean;
  published
    //Variaveis Publicas utilizadas para propriedas da classe
    //para fornecer informações em runtime
    property codigo:Integer read getCodigo write setCodigo;
    property descricao:string read getDescricao write setDescricao;
  end;


implementation

{Tcategoria}

{$REGION 'Constructor and Destructor'}
constructor TCategoria.Create(aConexao: TFDConnection);
begin
  Self.conexaoDB := aConexao;  // salva a conexão
end;

destructor TCategoria.Destroy;
begin
  inherited
end;
{$ENDREGION}

{$REGION 'GETS'}
function TCategoria.getCodigo: Integer;
begin
  Result:= Self.F_categoriaId;
end;

function TCategoria.getDescricao: string;
begin
  Result:= Self.F_descricao;
end;

{$ENDREGION}


{$REGION 'SETS'}
 procedure TCategoria.setCodigo(const Value: Integer);
begin
  Self.F_categoriaId := Value;
end;

procedure TCategoria.setDescricao(const Value: string);
begin
  Self.F_descricao := Value;
end;
{$ENDREGION}

{$REGION 'CRUD'}

function TCategoria.Apagar: Boolean;
var Qry:TFDQuery;
begin
  if MessageDlg('Apagar o Registro: ' + #13+#13 + // quebrou a linha e pulou a linha
                'Código: ' + IntToStr(F_categoriaId) + #13 +
                'Descrição: ' + F_descricao, mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin  // da um clique no sim e no não, se clicar não ele retorna como falso
    Result := False;
    Abort;
  end;
  // caso ele responda sim, ele vem pra esse código
  try
    Result := True;
    Qry := TFDQuery.Create(nil);
    Qry.Connection := conexaoDB;
    conexaoDB.StartTransaction;
    Qry.SQL.Clear;
    Qry.SQL.Add('DELETE FROM categorias ' +
                'WHERE categoriaId =:categoriaId');
    Qry.ParamByName('categoriaId').AsInteger := F_categoriaId;
    try
      conexaoDB.StartTransaction;
      Qry.ExecSQL;
      conexaoDB.Commit;
    except
  on E: Exception do begin
    conexaoDB.Rollback;
    Result := False;
  end;
end;
  finally
    if Assigned(Qry) then
      FreeAndNil(Qry);
  end;
end;

function TCategoria.Atualizar: Boolean; // declara uma função e retorna ela como verdadeira ou falsa (boolean)
var Qry:TFDQuery;
begin
   try  // Inicia um bloco protegido. Se algo der errado dentro dele, cai no finally.
     Result:=True;  // se não der erros a função retorna true
     Qry:=TFDQuery.Create(nil); // cria o objeto e o nil significa que não tem dono (será destruído manualmente)
     Qry.Connection:=conexaoDB; // conexão com o banco
     Qry.SQL.Clear; //  Limpa qualquer SQL que possa estar guardado no objeto antes de adicionar o novo.
     Qry.SQL.Add('UPDATE categorias ' +
                 ' SET descricao=:descricao ' +
                 'WHERE categoriaId=:categoriaId'); //Monta o comando SQL de atualização. Os :descricao e :categoriaId são parâmetros (serão preenchidos depois).
     Qry.ParamByName('categoriaId').AsInteger:=Self.F_categoriaId;
     Qry.ParamByName('descricao').AsString:=Self.F_descricao;

     try
        conexaoDB.StartTransaction;
        Qry.ExecSQL;   //executa o sql no banco de dados e faz o update
        conexaoDB.Commit; // teste da ia com fire dac; confirma a transação no banco
      except
        conexaoDB.Rollback;
        Result:=False;  // se der qualquer erro ele define como falso = falhou
     end;
   finally // sempre executa com erro ou sem
    if Assigned(Qry) then // verfifica se o objeto foi criado
    FreeAndNil(Qry); // libera memória e define como nil

   end;
end;

function TCategoria.Inserir: Boolean;
var Qry:TFDQuery;
begin
   try
   result:=True;
     Qry:=TFDQuery.Create(nil);
     Qry.Connection:=conexaoDB;
     Qry.SQL.Clear;
     Qry.SQL.Add('insert into categorias (descricao) values (:descricao)');
     Qry.ParamByName('descricao').AsString:=Self.F_descricao;
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

function TCategoria.Selecionar(id: Integer): Boolean;
var Qry:TFDQuery;
begin
   try
     Result:=True;
     Qry := TFDQuery.Create(nil);
     Qry.Connection := conexaoDB;
     Qry.SQL.Clear;
     Qry.SQL.Add('SELECT categoriaId, descricao ' +
            'FROM categorias ' +
            'WHERE categoriaId = :categoriaId');
     Qry.ParamByName('categoriaId').Value:=id;
     try
      Qry.Open;
      Self.F_categoriaId := Qry.FieldByName('categoriaId').AsInteger;
      Self.F_descricao   := Qry.FieldByName('descricao').AsString;
     except
      Result := False;
      end;
  finally
    if Assigned(Qry) then
    FreeAndNil(Qry);
  end;
end;

{$ENDREGION}

end.
