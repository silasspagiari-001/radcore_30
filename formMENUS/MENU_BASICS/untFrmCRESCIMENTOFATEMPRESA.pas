unit untFrmCRESCIMENTOFATEMPRESA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniCheckBox, uniLabel, uniMultiItem, uniComboBox,
  uniPanel, uniPageControl, uniGUIBaseClasses, uniButton, uniBitBtn,
  uniScreenMask;

type
  TFrmCRESCIMENTOFATEMPRESA = class(TUniForm)
    UniPageControl: TUniPageControl;
    UniTabSheetvendas: TUniTabSheet;
    UniContainerPanel2: TUniContainerPanel;
    rcBlock80: TUniContainerPanel;
    cbxtipo: TUniComboBox;
    UniLabelFd1: TUniLabel;
    rcBlock110: TUniContainerPanel;
    UniCheckBoxVENDAS: TUniCheckBox;
    UniCheckBoxDEVOLUCAO: TUniCheckBox;
    UniCheckBoxVENDASEF: TUniCheckBox;
    UniCheckBoxBONIFICACAO: TUniCheckBox;
    UniCheckBoxTROCA: TUniCheckBox;
    UniCheckBoxOUTROS: TUniCheckBox;
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    btnimpressao: TUniBitBtn;
    rcBlock30: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    UniScreenMask1: TUniScreenMask;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmCRESCIMENTOFATEMPRESA: TFrmCRESCIMENTOFATEMPRESA;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, mkm_impressao, unReportImpressao, mkm_func_web,
  mkm_relatorios;

function FrmCRESCIMENTOFATEMPRESA: TFrmCRESCIMENTOFATEMPRESA;
begin
  Result := TFrmCRESCIMENTOFATEMPRESA(mm.GetFormInstance(TFrmCRESCIMENTOFATEMPRESA));
end;
procedure TFrmCRESCIMENTOFATEMPRESA.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := ESCRITA_CRESCIMENTOTENDECIA(mm.varI_Code_Company,
                                  IntToStr(cbxtipo.ItemIndex),
                                  variif(UniCheckBoxVENDAS.Checked      = True,'T','F'),
                                  variif(UniCheckBoxDEVOLUCAO.Checked   = True,'T','F'),
                                  variif(UniCheckBoxVENDASEF.Checked    = True,'T','F'),
                                  variif(UniCheckBoxBONIFICACAO.Checked = True,'T','F'),
                                  variif(UniCheckBoxTROCA.Checked       = True,'T','F'),
                                  variif(UniCheckBoxTROCA.Checked       = True,'T','F'));

  mm.varC_caminhopdf :=  RELATORIO_CRESCIMENTOTENDECIA(
                         MM.varI_Code_Company,
                         cbxtipo.Text,
                         psql);

  unfImpressao.ShowModal();
end;

procedure TFrmCRESCIMENTOFATEMPRESA.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFrmCRESCIMENTOFATEMPRESA.UniFormShow(Sender: TObject);
begin
  cbxtipo.ItemIndex            := 0;
  UniCheckBoxVENDAS.Checked    := True;
  UniCheckBoxVENDASEF.Checked  := True;
end;

Initialization
   RegisterClass( TFrmCRESCIMENTOFATEMPRESA );
end.
