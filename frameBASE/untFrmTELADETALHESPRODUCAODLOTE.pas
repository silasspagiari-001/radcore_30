unit untFrmTELADETALHESPRODUCAODLOTE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniEdit, uniLabel, uniButton, uniBitBtn,
  uniGUIBaseClasses, uniPanel;

type
  TFrmTELADETALHESPRODUCAODLOTE = class(TUniForm)
    rcBlock10: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    btnLkpClear: TUniBitBtn;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniFormattedNumberEdittotalponto: TUniFormattedNumberEdit;
    UniFormattedNumberEditcustoponto: TUniFormattedNumberEdit;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniFormattedNumberEdittotalkg: TUniFormattedNumberEdit;
    UniFormattedNumberEditcustokg: TUniFormattedNumberEdit;
    procedure UniFormShow(Sender: TObject);
    procedure btnLkpClearClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmTELADETALHESPRODUCAODLOTE: TFrmTELADETALHESPRODUCAODLOTE;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication;

function FrmTELADETALHESPRODUCAODLOTE: TFrmTELADETALHESPRODUCAODLOTE;
begin
  Result := TFrmTELADETALHESPRODUCAODLOTE(mm.GetFormInstance(TFrmTELADETALHESPRODUCAODLOTE));
end;

procedure TFrmTELADETALHESPRODUCAODLOTE.btnLkpClearClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFrmTELADETALHESPRODUCAODLOTE.UniFormShow(Sender: TObject);
begin
  UniFormattedNumberEdittotalkg.Value    := mm.varV_totalkg;
  UniFormattedNumberEditcustokg.Value    := mm.varV_custokg;
  UniFormattedNumberEdittotalponto.Value := mm.varV_totalponto;
  UniFormattedNumberEditcustoponto.Value := mm.varV_custoponto;
end;

end.
