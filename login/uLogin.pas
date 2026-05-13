unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, cCadUsuario, uDTMConexao, uPrincipal, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, cUsuarioLogado;

type
  TfrmLogin = class(TForm)
    lbl3: TLabel;
    edtUsuario: TEdit;
    lbl5: TLabel;
    edtSenha: TEdit;
    btnFechar: TBitBtn;
    btnAcessar: TBitBtn;
    lbl4: TLabel;
    pnl1: TPanel;
    Image1: TImage;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAcessarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    bFechar:Boolean;
    procedure FecharAplicacao;
    procedure FecharFormulario;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.btnAcessarClick(Sender: TObject);
var
  oUsuario: TUsuario;
begin
  try
    oUsuario := TUsuario.Create(dtmConexao.conexaoDB);

    if oUsuario.Logar(edtUsuario.Text, edtSenha.Text) then
    begin
      // Cria oUsuarioLogado apenas se ainda não existe
      if not Assigned(oUsuarioLogado) then
        oUsuarioLogado := TUsuarioLogado.Create;

      // Preenche os dados do usuário logado
      oUsuarioLogado.codigo := oUsuario.codigo;
      oUsuarioLogado.nome   := oUsuario.nome;
      oUsuarioLogado.senha  := oUsuario.senha;

      FecharFormulario;
    end
    else
    begin
      MessageDlg('Usuário Inválido', mtInformation, [mbOK], 0);
      edtUsuario.SetFocus;
    end;

  finally
    if Assigned(oUsuario) then
      FreeAndNil(oUsuario);
  end;
end;

procedure TfrmLogin.FecharAplicacao;
begin
  bFechar := True;
  Application.Terminate;
end;

procedure TfrmLogin.FecharFormulario;
begin
  bFechar := True;
  Close;
end;

procedure TfrmLogin.btnFecharClick(Sender: TObject);
begin
  FecharAplicacao; //Fecha a aplicação
end;

procedure TfrmLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose:=bFechar;
end;

procedure TfrmLogin.FormCreate(Sender: TObject);
begin
  Left := (Screen.Width - Width) div 2;
  Top := (Screen.Height - Height) div 2;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  bFechar:=False;
end;
end.
