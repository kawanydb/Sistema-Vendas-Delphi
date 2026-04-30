unit uCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uTelaHeranca, Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons, Vcl.Mask,
  Vcl.ExtCtrls, Vcl.ComCtrls, cCadUsuario, uEnum, uDTMConexao, cAcaoAcesso;

type
  TfrmCadUsuario = class(TfrmTelaHeranca)
    edtUsuarioId: TLabeledEdit;
    edtNome: TLabeledEdit;
    edtSenha: TLabeledEdit;
    fdtncfldQryListagemusuarioId: TFDAutoIncField;
    strngfldQryListagemnome: TStringField;
    strngfldQryListagemsenha: TStringField;
    lbl15: TLabel;
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
    oUsuario:TUsuario;
    function Gravar(estadoDoCadastro:TEstadoDoCadastro):boolean; override;
    function Apagar:Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadUsuario: TfrmCadUsuario;

implementation

{$R *.dfm}

{ TfrmCadUsuario }

function TfrmCadUsuario.Apagar: Boolean;
begin
  result:= False;

//quando apertar em apagar, ele vai procurar no banco se o id existe e se existir apaga
  if oUsuario.Selecionar(QryListagem.FieldByName('usuarioId').AsInteger) then begin
    Result:=oUsuario.Apagar;
  end;
end;



procedure TfrmCadUsuario.btnAlterarClick(Sender: TObject);
begin
  inherited;
  if oUsuario.Selecionar(QryListagem.FieldByName('usuarioId').AsInteger) then
  begin
    edtUsuarioId.Text := IntToStr(oUsuario.codigo);
    edtNome.Text      := oUsuario.nome;

    edtSenha.Clear;
    edtSenha.Enabled := False;

  end
  else
  begin
    btnCancelar.Click;
    Abort;
  end;
end;

procedure TfrmCadUsuario.btnGravarClick(Sender: TObject);
begin
  // verifica se o usuário já existe
  if oUsuario.UsuarioExiste(edtNome.Text) and (edtUsuarioId.Text = '') then
  begin
    MessageDlg('Usuário já cadastrado', mtInformation, [mbOK], 0);
    edtNome.SetFocus;
    Abort;
  end;

  if edtUsuarioId.Text <> EmptyStr then
    oUsuario.codigo := StrToInt(edtUsuarioId.Text)
  else
    oUsuario.codigo := 0;

  oUsuario.nome := edtNome.Text;

  // só envia senha se realmente foi digitada
  if edtSenha.Enabled and (Trim(edtSenha.Text) <> '') then
    oUsuario.senha := edtSenha.Text;

  inherited;
end;

procedure TfrmCadUsuario.btnNovoClick(Sender: TObject);
begin
  inherited;
  edtNome.SetFocus;
  edtSenha.Enabled := True;
  edtSenha.Clear;
end;

procedure TfrmCadUsuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Assigned(oUsuario) then
     FreeAndNil(oUsuario);
end;

procedure TfrmCadUsuario.FormCreate(Sender: TObject);
begin
  inherited;
  oUsuario:=TUsuario.Create(dtmConexao.conexaoDB);
  IndiceAtual:='nome';
end;

function TfrmCadUsuario.Gravar(estadoDoCadastro: TEstadoDoCadastro): boolean;
begin
//inclui com base na classe criada, inserindo ou alterando
  if estadoDoCadastro=ecInserir then
     Result:= oUsuario.Inserir
  else if estadoDoCadastro=ecAlterar then
    Result:= oUsuario.Atualizar;

  TACaoAcesso.PreencherUsuariosVsAcoes(dtmConexao.conexaoDB)
end;



end.
