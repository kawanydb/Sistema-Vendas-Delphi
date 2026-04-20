unit uCriptografia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCriptografia = class(TForm)
    edtCriptografia: TEdit;
    edtDesCriptografia: TEdit;
    btn1: TButton;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Criptografia: TCriptografia;

implementation

{$R *.dfm}

function Criptografar(const aEntrada:string): string;
var i, iQtdeEnt, iIntervalo:Integer;
    sSaida:string;
    sProximoCaracter :string;
    begin
      iIntervalo:=6;
      i         :=0;
      iQtdeEnt  :=0;

      if (aEntrada <>EmptyStr) then begin
        iQtdeEnt   := Length(aEntrada);
        for i := iQtdeEnt downto 1 do //Faz o loop contrário
        begin
          sProximoCaracter := Copy(aEntrada, i, 1);
          sSaida := sSaida + (char(ord(sProximoCaracter[1])+iIntervalo));
        end;
      end;

      Result:= sSaida;
    end;

function Descriptografar(const aEntrada:string): string;
var i, iQtdeEnt, iIntervalo:Integer;
    sSaida:string;
    sProximoCaracter :string;
    begin
      iIntervalo := 6;
      i          := 0;
      iQtdeEnt   := 0;

      if (aEntrada <>EmptyStr) then begin
        iQtdeEnt   := Length(aEntrada);
        for i := iQtdeEnt downto 1 do
        begin
          sProximoCaracter := Copy(aEntrada, i, 1);
          sSaida := sSaida + (char(ord(sProximoCaracter[1])-iIntervalo));
        end;
      end;

      Result:= sSaida;
    end;
procedure TCriptografia.btn1Click(Sender: TObject);
begin
   edtCriptografia.Text:= Criptografar(edtCriptografia.Text);
   edtDesCriptografia.Text:= Descriptografar(edtCriptografia.Text);
end;

end.
