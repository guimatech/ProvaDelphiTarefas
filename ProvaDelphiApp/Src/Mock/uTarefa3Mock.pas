unit uTarefa3Mock;

interface

uses
  Data.DB;

type
  TTarefa3Mock = class
  public
    class procedure Preencher(const poDataSet: TDataSet); overload;
  end;

implementation

uses
  System.SysUtils;

{ TTarefa3Mock }

class procedure TTarefa3Mock.Preencher(const poDataSet: TDataSet);
var
  nIdRegistro: Integer;
  nValor: Currency;
begin
  if not Assigned(poDataSet) then
    Exit;

  if not poDataSet.Active then
    poDataSet.Open;

  nValor := 0;

  for nIdRegistro := 1 to 10 do
  begin
    poDataSet.Append;
    poDataSet.FieldByName('IdProjeto').AsInteger := nIdRegistro;
    poDataSet.FieldByName('NomeProjeto').AsString := 'Projeto ' + nIdRegistro.ToString;
    nValor := nValor + 10;
    poDataSet.FieldByName('Valor').AsCurrency := nValor;
    poDataSet.Post;
  end;
end;

end.
