unit uFuncaoCriptografia;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
     System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
     uDTMConexao;
{$REGION 'Declaração das funções'}
function Criptografar(const aEntrada:string): string;
function Descriptografar(const aEntrada:string): string;
{$ENDREGION}

implementation

{$REGION 'Criptografar'}
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
{$ENDREGION}

{$REGION 'Descriptografar'}
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
{$ENDREGION}

end.
