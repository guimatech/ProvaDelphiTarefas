unit uMatematica;

interface

uses
  Data.DB;

type
  TMatematica = class
  public
    class function Somar(const poDataSet: TDataSet; const psNomeColuna: string): Currency; overload;
    class function DividirPeloAnterior(const poDataSet: TDataSet; const psNomeColuna: string): Currency; overload;
  end;

implementation

{ TMatematica }

class function TMatematica.DividirPeloAnterior(const poDataSet: TDataSet;
  const psNomeColuna: string): Currency;
var
  nValorRegistroAtual, nValorProximoRegistro: Currency;
begin
  Result := 0;
  if not Assigned(poDataSet) or not (poDataSet.Active) then
    Exit(0);

  poDataSet.DisableControls;
  try
    poDataSet.First;
    while not poDataSet.Eof do
    begin
      nValorRegistroAtual := poDataSet.FieldByName(psNomeColuna).AsCurrency;
      poDataSet.Next;
      nValorProximoRegistro := poDataSet.FieldByName(psNomeColuna).AsCurrency;
      if poDataSet.Eof then
        Break;

      Result := Result + (nValorProximoRegistro / nValorRegistroAtual);
    end;
  finally
    poDataSet.EnableControls;
  end;
end;

class function TMatematica.Somar(const poDataSet: TDataSet;
  const psNomeColuna: string): Currency;
begin
  Result := 0;
  if not Assigned(poDataSet) or not (poDataSet.Active) then
    Exit(0);

  poDataSet.DisableControls;
  try
    poDataSet.First;
    while not poDataSet.Eof do
    begin
      Result := Result + poDataSet.FieldByName(psNomeColuna).AsCurrency;
      poDataSet.Next;
    end;
  finally
    poDataSet.EnableControls;
  end;
end;

end.
