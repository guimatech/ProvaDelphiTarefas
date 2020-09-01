unit ufTarefa2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufBase, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfTarefa2 = class(TfBase)
    btnDispararThreads: TButton;
    edtIntervalo: TEdit;
    lblIntervalo: TLabel;
    barThread1: TProgressBar;
    lblThread1: TLabel;
    barThread2: TProgressBar;
    lblThread2: TLabel;
    procedure btnDispararThreadsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

uses
  uContadorProgressBar;

{$R *.dfm}

procedure TfTarefa2.btnDispararThreadsClick(Sender: TObject);
const
  nINICIO_CONTAGEM = 0;
  nFIM_CONTAGEM = 100;
var
  nIntervaloEmMilisegundos: Integer;
  oContador1, oContador2: TContadorProgressBar;
begin
  inherited;
  nIntervaloEmMilisegundos := StrToIntDef(edtIntervalo.Text, 0);

  oContador1 := TContadorProgressBar.Create(barThread1, nINICIO_CONTAGEM,
    nFIM_CONTAGEM, nIntervaloEmMilisegundos);
  oContador2 := TContadorProgressBar.Create(barThread2, nINICIO_CONTAGEM,
    nFIM_CONTAGEM, nIntervaloEmMilisegundos);

  oContador1.Start;
  oContador2.Start;
end;

initialization
  RegisterClass(TfTarefa2);

end.
