unit uspComponentesRegistro;

interface

uses
  DesignIntf, DesignEditors;

procedure Register;

implementation

uses
  Classes, uspQuery;

const
  sORGANIZACAO = 'Softplan';
  sABA_ACESSO_A_DADOS = sORGANIZACAO + ' - Acesso a dados';

procedure RegistrarComponentesAcessoDados;
begin
  RegisterComponents(sABA_ACESSO_A_DADOS, [TspQuery]);
end;

procedure Register;
begin
  RegistrarComponentesAcessoDados;
end;

end.

