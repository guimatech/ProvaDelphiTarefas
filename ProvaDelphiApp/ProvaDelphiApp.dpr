program ProvaDelphiApp;

uses
  Vcl.Forms,
  Winapi.Windows,
  ufPrincipal in 'Src\View\ufPrincipal.pas' {fPrincipal},
  ufBase in 'Src\View\ufBase.pas' {fBase},
  ufTarefa3 in 'Src\View\ufTarefa3.pas' {fTarefa3},
  ufTarefa2 in 'Src\View\ufTarefa2.pas' {fTarefa2},
  ufTarefa1 in 'Src\View\ufTarefa1.pas' {fTarefa1},
  uContadorProgressBar in 'Src\Domain\uContadorProgressBar.pas',
  uTarefa3Mock in 'Src\Mock\uTarefa3Mock.pas',
  uMatematica in 'Src\Utils\uMatematica.pas',
  uTarefa3Gestor in 'Src\Gestor\uTarefa3Gestor.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := IsDebuggerPresent;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfPrincipal, fPrincipal);
  Application.Run;
end.
