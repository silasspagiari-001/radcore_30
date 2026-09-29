unit untFrmSALDOPRODUTONOTAS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniDateTimePicker, uniLabel,
  uniPanel, uniPageControl, uniGUIBaseClasses;

type
  TfrmSALDOPRODUTONOTAS = class(TUniForm)
    UniPageControl1: TUniPageControl;
    UniTabSheet1: TUniTabSheet;
    rcBlock10: TUniContainerPanel;
    UniLabelDtIni: TUniLabel;
    edSearchDATAINI: TUniDateTimePicker;
    rcBlock20: TUniContainerPanel;
    UniLabel1: TUniLabel;
    edSearchDATAFIN: TUniDateTimePicker;
    rcBlock60: TUniContainerPanel;
    UniContainerPanel3: TUniContainerPanel;
    btnimpressao: TUniBitBtn;
    UniContainerPanel4: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure edSearchDATAINIExit(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmSALDOPRODUTONOTAS: TfrmSALDOPRODUTONOTAS;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, mkm_impressao, mkm_relatorios,
  unReportImpressao, System.DateUtils;

function frmSALDOPRODUTONOTAS: TfrmSALDOPRODUTONOTAS;
begin
  Result := TfrmSALDOPRODUTONOTAS(MM.GetFormInstance(TfrmSALDOPRODUTONOTAS));
end;
procedure TfrmSALDOPRODUTONOTAS.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := RELATORIO_SALDOPRODUTONOTA(mm.varI_Code_Company,
                                 edSearchDATAINI.Text,
                                 edSearchDATAFIN.Text);

  mm.varC_caminhopdf :=  IMPRESSAO_SALDOPRODUTONOTA(mm.varI_Code_Company,
                                                    psql,
                                                    edSearchDATAINI.Text,
                                                    edSearchDATAFIN.Text);

  unfImpressao.ShowModal();
end;

procedure TfrmSALDOPRODUTONOTAS.edSearchDATAINIExit(Sender: TObject);
begin
  edSearchDATAFIN.DateTime   := EndofTheMonth(edSearchDATAINI.DateTime);
end;

procedure TfrmSALDOPRODUTONOTAS.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmSALDOPRODUTONOTAS.UniFormDestroy(Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TfrmSALDOPRODUTONOTAS.UniFormShow(Sender: TObject);
begin
  edSearchDATAINI.DateTime         := StartofTheMonth(date);
  edSearchDATAFIN.DateTime         := Date;
end;

Initialization
   RegisterClass( TfrmSALDOPRODUTONOTAS );
end.
