unit uContadorProgressBar;

interface

uses
  System.Classes, Vcl.ComCtrls, System.SysUtils;

type
  EContadorProgressBar = Exception;

  TContadorProgressBar = class(TThread)
  private
    FnIntervaloEmMilisegundos: Integer;
    FnInicio: Integer;
    FnFim: Integer;
    FnContador: Integer;
    FoProgressBar: TProgressBar;
    procedure Contar;
    procedure SetFim(const Value: Integer);
    procedure SetInicio(const Value: Integer);
  protected
    procedure Execute; override;
  public
    property Inicio: Integer read FnInicio write SetInicio default 0;
    property Fim: Integer read FnFim write SetFim default 1;
    property IntervaloEmMilisegundos: Integer read FnIntervaloEmMilisegundos
      write FnIntervaloEmMilisegundos default 0;
    constructor Create(const poProgressBar: TProgressBar;
      const pnInicio, pnFim, IntervaloEmMilisegundos: Integer);
  end;

implementation

{ TThreadContador }

procedure TContadorProgressBar.Contar;
begin
  Inc(FnContador);
  FoProgressBar.Position := FnContador;
  if FnContador >= FnFim then
    Terminate;
end;

constructor TContadorProgressBar.Create(const poProgressBar: TProgressBar;
  const pnInicio, pnFim, IntervaloEmMilisegundos: Integer);
begin
  if not Assigned(poProgressBar) then
    raise EContadorProgressBar.Create('A barra de progresso precisa estar criada');

  inherited Create(True);
  FreeOnTerminate := True;
  FoProgressBar := poProgressBar;
  SetFim(pnFim);
  SetInicio(pnInicio);
  FnIntervaloEmMilisegundos := IntervaloEmMilisegundos;
end;

procedure TContadorProgressBar.Execute;
begin
  inherited;
  while not Terminated do
  begin
    Synchronize(Contar);
    Sleep(FnIntervaloEmMilisegundos);
  end;
end;


procedure TContadorProgressBar.SetFim(const Value: Integer);
begin
  if Value <= FnInicio then
    raise EContadorProgressBar.Create('O valor do fim deve ser maior que o do início');

  FnFim := Value;
end;

procedure TContadorProgressBar.SetInicio(const Value: Integer);
begin
  if Value >= FnFim then
    raise EContadorProgressBar.Create('O valor do início deve ser menor que o do fim');

  FnInicio := Value;
end;

end.
