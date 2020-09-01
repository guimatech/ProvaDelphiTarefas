unit ufBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TfBase = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TfBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(Self);
end;

procedure TfBase.FormCreate(Sender: TObject);
begin
  Constraints.MinHeight := Height;
  Constraints.MinWidth := Width;
end;

initialization
  RegisterClass(TfBase);

end.
