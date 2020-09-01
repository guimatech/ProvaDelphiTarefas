unit uTestspQuery;

interface
uses
  DUnitX.TestFramework, uspQuery, FireDAC.DApt, FireDAC.Phys.TDataDef,
  FireDAC.Phys, FireDAC.Phys.ODBCBase, FireDAC.Phys.TData;

type
  [TestFixture]
  TTestspQuery = class(TObject)
  private
    FoQuery: TspQuery;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TestGeracaoSQLSimples;
    [Test]
    [TestCase('TestTabelasNaMesmaLinha','TabelaA, TabelaB', '|')]
    [TestCase('TestTabelasComQubraDeLinha','TabelaC'#$D#$A'TabelaD', '|')]
    procedure TestExcecaoQuantoTemMaisDeUmaTabela(const psTabelas: string);
    [Test]
    [TestCase('TestColunasNumericas','TabelaA|2, 3|1=2', '|')]
    [TestCase('TestColunasComFuncao','TabelaB|TOP(10) nome, telefone, cpf|1=1', '|')]
    [TestCase('TestSomenteTabelaComTodasColunas','TabelaC,*')]
    procedure TestGeracaoSQLComplexo(const psTabelas, psColunas, psCondicoes: string);
  end;

implementation

uses
  System.SysUtils;

procedure TTestspQuery.Setup;
begin
  FoQuery := TspQuery.Create(nil);
end;

procedure TTestspQuery.TearDown;
begin
  FreeAndNil(FoQuery);
end;

procedure TTestspQuery.TestGeracaoSQLSimples;
const
  sRETORNO_ESPERADO = 'SELECT *'#$D#$A' FROM Tabela1'#$D#$A' WHERE 1=2';
begin
  FoQuery.spColunas.Text := '*';
  FoQuery.spTabelas.Text := 'Tabela1';
  FoQuery.spCondicoes.Text := '1=2';

  Assert.AreEqual(sRETORNO_ESPERADO, FoQuery.SQL.Text);
end;

procedure TTestspQuery.TestExcecaoQuantoTemMaisDeUmaTabela(
  const psTabelas: string);
begin
  Assert.WillRaise(procedure
    begin
      FoQuery.spTabelas.Text := psTabelas
    end, EspQuery, 'Só é permitido informar uma tabela');
end;

procedure TTestspQuery.TestGeracaoSQLComplexo(const psTabelas, psColunas, psCondicoes: string);
const
  sSELECT = 'SELECT %s'#$D#$A' FROM %s'#$D#$A' WHERE %s';
var
  sSelectEsperado: string;
begin
  FoQuery.spColunas.Text := psColunas;
  FoQuery.spTabelas.Text := psTabelas;
  FoQuery.spCondicoes.Text := psCondicoes;

  sSelectEsperado := Format(sSELECT, [psColunas, psTabelas, psCondicoes]);
  Assert.AreEqual(sSelectEsperado, FoQuery.SQL.Text);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestspQuery);
end.
