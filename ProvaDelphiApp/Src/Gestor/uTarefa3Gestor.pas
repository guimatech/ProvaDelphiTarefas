unit uTarefa3Gestor;

interface

uses
  Data.DB, Datasnap.DBClient;

type
  TTarefa3Gestor = class
  private
    FoClientDataSet: TClientDataSet;
    FoDataSource: TDataSource;
    function CriarClientDataSet: TClientDataSet;
  public
    function ObterTotalFormatado: string;
    function ObterTotalDivisoesFormatado: string;
    property DataSource: TDataSource read FoDataSource write FoDataSource;
    constructor Create; reintroduce;
    destructor Destroy; override;
  end;

implementation

uses
  uTarefa3Mock, uMatematica, System.SysUtils;

const
  sNOME_CAMPO_ID_PROJETO = 'IdProjeto';
  sNOME_CAMPO_NOME_PROJETO = 'NomeProjeto';
  sNOME_CAMPO_VALOR = 'Valor';
  sFORMATACAO_VALOR = '%0.2f';

{ TfTarefa3 }

constructor TTarefa3Gestor.Create;
begin
  FoClientDataSet := CriarClientDataSet;
  FoDataSource := TDataSource.Create(nil);

  FoDataSource.DataSet := FoClientDataSet;

  TTarefa3Mock.Preencher(FoClientDataSet);
end;

function TTarefa3Gestor.CriarClientDataSet: TClientDataSet;
begin
  Result := TClientDataSet.Create(nil);
  with Result.FieldDefs do
  begin
    Add(sNOME_CAMPO_ID_PROJETO, ftInteger);
    Add(sNOME_CAMPO_NOME_PROJETO, ftString, 50);
    Add(sNOME_CAMPO_VALOR, ftCurrency);
  end;
  Result.CreateDataSet;
end;

destructor TTarefa3Gestor.Destroy;
begin
  FreeAndNil(FoDataSource);
  FreeAndNil(FoClientDataSet);
  inherited;
end;

function TTarefa3Gestor.ObterTotalDivisoesFormatado: string;
begin
  Result := Format(sFORMATACAO_VALOR,
    [TMatematica.DividirPeloAnterior(FoDataSource.DataSet, sNOME_CAMPO_VALOR)]);
end;

function TTarefa3Gestor.ObterTotalFormatado: string;
begin
  Result := Format(sFORMATACAO_VALOR,
    [TMatematica.Somar(FoDataSource.DataSet, sNOME_CAMPO_VALOR)]);
end;

end.
