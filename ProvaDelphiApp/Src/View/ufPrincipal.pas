unit ufPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Menus, System.Actions,
  Vcl.ActnList;

type
  TfPrincipal = class(TForm)
    mnuPrincipal: TMainMenu;
    mniTarefas: TMenuItem;
    mniTarefa1: TMenuItem;
    mniTarefa2: TMenuItem;
    mniTarefa3: TMenuItem;
    lstAcoes: TActionList;
    actTarefa1: TAction;
    actTarefa2: TAction;
    actTarefa3: TAction;
    procedure FormCreate(Sender: TObject);
    procedure actTarefa1Execute(Sender: TObject);
    procedure actTarefa2Execute(Sender: TObject);
    procedure actTarefa3Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPrincipal: TfPrincipal;

implementation

{$R *.dfm}

procedure TfPrincipal.actTarefa1Execute(Sender: TObject);
begin
  TFormClass(FindClass('TfTarefa1'))
    .Create(Self)
    .Show;
end;

procedure TfPrincipal.actTarefa2Execute(Sender: TObject);
begin
  TFormClass(FindClass('TfTarefa2'))
    .Create(Self)
    .Show;
end;

procedure TfPrincipal.actTarefa3Execute(Sender: TObject);
begin
  TFormClass(FindClass('TfTarefa3'))
    .Create(Self)
    .Show;
end;

procedure TfPrincipal.FormCreate(Sender: TObject);
begin
  Constraints.MinHeight := 600;
  Constraints.MinWidth := 800;
end;

initialization
  RegisterClass(TfPrincipal);

end.
