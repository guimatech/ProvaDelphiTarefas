unit uspGeradorSQL;

interface

type
  TspGeradorSQL = class
  public
    class function Executar(const psTabelas: string;
      const psColunas: string = '*'; const psCondicoes: string = ''): string; static;
  end;

implementation

uses
  System.SysUtils;

{ TspGeradorSQL }

class function TspGeradorSQL.Executar(const psTabelas, psColunas,
  psCondicoes: string): string;
const
  sSELECT = 'SELECT %s FROM %s WHERE %s';
begin
  Result := Format(sSELECT, [psColunas, psTabelas, psCondicoes]);
end;

end.
