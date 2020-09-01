unit uspQuery;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, System.Classes;

type
  EspQuery = Exception;

  TspQuery = class(TFDQuery)
  private
    FspCondicoes: TStringList;
    FspColunas: TStringList;
    FspTabelas: TStringList;
    procedure AtualizarLista(const poEntrada: TStringList; out poSaida: TStringList);
    procedure AtualizarSQL;
    procedure SetspCondicoes(const Value: TStringList);
    procedure SetspColunas(const Value: TStringList);
    procedure SetspTabelas(const Value: TStringList);
    procedure DoChangeProperties(Sender: TObject);
    procedure DoChangeTabelas(Sender: TObject);
    function GerarSQL: string;
    procedure ValidarSpTabelas;
  public
    constructor Create(AOwner : TComponent); override;
    destructor Destroy; override;
  published
    property spCondicoes: TStringList read FspCondicoes write SetspCondicoes;
    property spColunas: TStringList read FspColunas write SetspColunas;
    property spTabelas: TStringList read FspTabelas write SetspTabelas;
  end;

implementation

uses
  uspGeradorSQL, uspStringUtils;

{ TspQuery }

procedure TspQuery.AtualizarSQL;
begin
  SQL.Text := GerarSQL;
end;

constructor TspQuery.Create(AOwner: TComponent);
begin
  inherited;

  FspCondicoes := TStringList.Create;
  FspColunas := TStringList.Create;
  FspTabelas := TStringList.Create;

  FspCondicoes.OnChange := DoChangeProperties;
  FspColunas.OnChange := DoChangeProperties;
  FspTabelas.OnChange := DoChangeTabelas;
end;

destructor TspQuery.Destroy;
begin
  FreeAndNil(FspCondicoes);
  FreeAndNil(FspColunas);
  FreeAndNil(FspTabelas);

  inherited;
end;

procedure TspQuery.ValidarSpTabelas;
begin
  if (FspTabelas.Count > 1) or (TspStringUtils.ContarPalavras(FspTabelas.Text) > 1) then
    raise EspQuery.Create('Só é permitido informar uma tabela');
end;

procedure TspQuery.DoChangeProperties(Sender: TObject);
begin
  AtualizarSQL;
end;

procedure TspQuery.DoChangeTabelas(Sender: TObject);
begin
  ValidarSpTabelas;

  DoChangeProperties(Sender);
end;

function TspQuery.GerarSQL: string;
begin
  Result := TspGeradorSQL.Executar(FspTabelas.Text, FspColunas.Text,
    FspCondicoes.Text);
end;

procedure TspQuery.SetspColunas(const Value: TStringList);
begin
  AtualizarLista(Value, FspColunas);
end;

procedure TspQuery.SetspCondicoes(const Value: TStringList);
begin
  AtualizarLista(Value, FspCondicoes);
end;

procedure TspQuery.SetspTabelas(const Value: TStringList);
begin
  AtualizarLista(Value, FspTabelas);
end;

procedure TspQuery.AtualizarLista(const poEntrada: TStringList;
  out poSaida: TStringList);
begin
  if poSaida.Text.Equals(poEntrada.Text) then
    Exit;

  poSaida.BeginUpdate;
  try
    poSaida.Assign(poEntrada);
  finally
    poSaida.EndUpdate;
  end;
end;

end.
