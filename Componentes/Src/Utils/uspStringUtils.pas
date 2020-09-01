unit uspStringUtils;

interface

type
  TspStringUtils = class
  public
    class function ContarPalavras(const psTexto: string): Integer; static;
  end;

implementation

class function TspStringUtils.ContarPalavras(const psTexto: string): Integer;
const
  sESPACO = #32;
  sTAB = #9;
var
  nContador, nIndex, nTamanho: Integer;
begin
  nTamanho := length(psTexto);
  nContador := 0;
  nIndex := 1;
  while nIndex <= nTamanho do
  begin
    while ((nIndex <= nTamanho) and ((psTexto[nIndex] = sESPACO) or (psTexto[nIndex] = sTAB) or
      (psTexto[nIndex] = ';'))) do
      Inc(nIndex);
    if nIndex <= nTamanho then
      inc(nContador);
    while ((nIndex <= nTamanho) and ((psTexto[nIndex] <> sESPACO) and (psTexto[nIndex] <> sTAB) and
      (psTexto[nIndex] <> ';'))) do
      Inc(nIndex);
  end;
  Result := nContador;
end;

end.
