unit uMsgInfo;

interface

type
  TMsgInfo = class
  public
    Codigo    : Integer;
    Registro  : Integer;
    Titulo    : string;
    Corpo     : string;
    ImagemUrl : string;
    Data      : string;
    DataInicio: string;
    DataFinal : string;
    Prioridade: string;
    Lido      : Boolean;
    Tipo      : string;
  end;

implementation

end.
