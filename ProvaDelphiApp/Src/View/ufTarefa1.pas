unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, uspQuery, Vcl.StdCtrls,
  Vcl.ExtCtrls, FireDAC.Phys.TDataDef, FireDAC.Phys, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.TData;

type
  TfTarefa1 = class(TfBase)
    qryTarefa1: TspQuery;
    pnlTopo: TPanel;
    pnlSQLGerado: TPanel;
    pnlControles: TPanel;
    pnlCondicoes: TPanel;
    pnlTabelas: TPanel;
    pnlColunas: TPanel;
    lblColunas: TLabel;
    mmoColunas: TMemo;
    mmoTabelas: TMemo;
    lblTabelas: TLabel;
    mmoCodicoes: TMemo;
    lblCondicoes: TLabel;
    mmoSQLGerado: TMemo;
    lblSQLGerado: TLabel;
    btnGerarSQL: TButton;
    procedure btnGerarSQLClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfTarefa1.btnGerarSQLClick(Sender: TObject);
begin
  inherited;
  try
    qryTarefa1.spColunas.Text := mmoColunas.Text;
    qryTarefa1.spTabelas.Text := mmoTabelas.Text;
    qryTarefa1.spCondicoes.Text := mmoCodicoes.Text;

    mmoSQLGerado.Text := qryTarefa1.SQL.Text;
  except
    on E: EspQuery do
      ShowMessage('Atenção!' + sLineBreak + sLineBreak + E.Message);
  end;
end;

initialization
  RegisterClass(TfTarefa1);

end.
