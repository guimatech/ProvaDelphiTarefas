unit uTestTarefa3Gestor;

interface
uses
  DUnitX.TestFramework, uTarefa3Gestor;

type
  [TestFixture]
  TTestTarefa3Gestor = class(TObject)
  private
    FoGestor: TTarefa3Gestor;
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
    [Test]
    procedure TestCalculoTotal;
    [Test]
    procedure TestCalculoTotalDivisoes;
  end;

implementation

uses
  System.SysUtils;

{ TTestTarefa3Gestor }

procedure TTestTarefa3Gestor.Setup;
begin
  FoGestor := TTarefa3Gestor.Create;
end;

procedure TTestTarefa3Gestor.TearDown;
begin
  FreeAndNil(FoGestor);
end;

procedure TTestTarefa3Gestor.TestCalculoTotal;
const
  sRESULTADO_ESPERADO = '550,00';
begin
  Assert.AreEqual(sRESULTADO_ESPERADO, FoGestor.ObterTotalFormatado);
end;

procedure TTestTarefa3Gestor.TestCalculoTotalDivisoes;
const
  sRESULTADO_ESPERADO = '11,83';
begin
  Assert.AreEqual(sRESULTADO_ESPERADO, FoGestor.ObterTotalDivisoesFormatado);
end;

initialization
  TDUnitX.RegisterTestFixture(TTestTarefa3Gestor);
end.
