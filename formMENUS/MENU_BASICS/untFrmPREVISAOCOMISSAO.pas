unit untFrmPREVISAOCOMISSAO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniEdit, UniButtonEdit,
  uniDateTimePicker, uniLabel, uniPanel, uniPageControl, uniGUIBaseClasses,
  uniMultiItem, uniComboBox;

type
  TfrmPREVISAOCOMISSAO = class(TUniForm)
    UniPageControl: TUniPageControl;
    UniTabSheetvendas: TUniTabSheet;
    UniContainerPanel2: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    UniLabelDtIni: TUniLabel;
    edSearchDATAINIVEN: TUniDateTimePicker;
    rcBlock50: TUniContainerPanel;
    UniLabel1: TUniLabel;
    edSearchDATAFINVEN: TUniDateTimePicker;
    rcBlock60: TUniContainerPanel;
    UniLabel2: TUniLabel;
    edSearchPESSOAINIVEN: TUniButtonEdit;
    rcBlock70: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edSearchPESSOAFINVEN: TUniButtonEdit;
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    btnimpressao: TUniBitBtn;
    rcBlock30: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    rcBlock80: TUniContainerPanel;
    UniLabelFd1: TUniLabel;
    cbxtipo: TUniComboBox;
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmPREVISAOCOMISSAO: TfrmPREVISAOCOMISSAO;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, System.DateUtils, mkm_impressao,
  unReportImpressao, mkm_relatorios;

function frmPREVISAOCOMISSAO: TfrmPREVISAOCOMISSAO;
begin
  Result := TfrmPREVISAOCOMISSAO(mm.GetFormInstance(TfrmPREVISAOCOMISSAO));
end;

procedure TfrmPREVISAOCOMISSAO.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := ESCRITA_PREVISAOCOMISSAO(mm.varI_Code_Company,
                                        edSearchPESSOAINIVEN.Text,
                                        edSearchPESSOAFINVEN.Text,
                                        IntToStr(cbxtipo.ItemIndex),
                                        edSearchDATAINIVEN.DateTime,
                                        edSearchDATAFINVEN.DateTime);

  mm.varC_caminhopdf :=  RELATORIO_PREVISAOCOMISSAO(
                                        MM.varI_Code_Company,
                                        cbxtipo.ItemIndex,
                                        edSearchDATAINIVEN.DateTime,
                                        edSearchDATAFINVEN.DateTime,
                                        psql);

  unfImpressao.ShowModal();
end;

procedure TfrmPREVISAOCOMISSAO.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmPREVISAOCOMISSAO.UniFormDestroy(Sender: TObject);
begin
  mm.varC_Form_Modal := nil;
end;

procedure TfrmPREVISAOCOMISSAO.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TfrmPREVISAOCOMISSAO.UniFormShow(Sender: TObject);
begin
  edSearchDATAINIVEN.DateTime         := StartofTheMonth(date);
  edSearchDATAFINVEN.DateTime         := Date;
  cbxtipo.ItemIndex                   := 0;
end;
Initialization
   RegisterClass( TfrmPREVISAOCOMISSAO );
end.
