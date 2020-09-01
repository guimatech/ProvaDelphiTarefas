unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  ufBase, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  uTarefa3Gestor;

type
  TfTarefa3 = class(TfBase)
    lblTotal: TLabel;
    grdTarefa3: TDBGrid;
    lblTotalDivisoes: TLabel;
    lblTituloGrid: TLabel;
    btnObterTotal: TButton;
    btnObterTotalDivisoes: TButton;
    edtTotal: TEdit;
    edtTotalDivisoes: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnObterTotalClick(Sender: TObject);
    procedure btnObterTotalDivisoesClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FoGestor: TTarefa3Gestor;
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfTarefa3.btnObterTotalClick(Sender: TObject);
begin
  inherited;
  edtTotal.Text := FoGestor.ObterTotalFormatado;
end;

procedure TfTarefa3.btnObterTotalDivisoesClick(Sender: TObject);
begin
  inherited;
  edtTotalDivisoes.Text := FoGestor.ObterTotalDivisoesFormatado;
end;

procedure TfTarefa3.FormCreate(Sender: TObject);
begin
  inherited;
  FoGestor := TTarefa3Gestor.Create;
  grdTarefa3.DataSource := FoGestor.DataSource;
end;

procedure TfTarefa3.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(FoGestor);
end;

initialization
  RegisterClass(TfTarefa3);

end.
