unit untFrmRELATORIO_VENDASDETALHES;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniCheckBox, uniMultiItem,
  uniComboBox, uniEdit, UniButtonEdit, uniDateTimePicker, uniLabel, uniPanel,
  uniPageControl, uniGUIBaseClasses;

type
  TfrmRELATORIO_VENDASDETALHADA = class(TUniForm)
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
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure edSearchDATAINIVENExit(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure edSearchPESSOAINIVENButtonClick(Sender: TObject);
    procedure edSearchPESSOAFINVENButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmRELATORIO_VENDASDETALHADA: TfrmRELATORIO_VENDASDETALHADA;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, System.DateUtils, mkm_func_web,
  unReportImpressao, mkm_impressao, mkm_relatorios, untFrmPesquisa;

function frmRELATORIO_VENDASDETALHADA: TfrmRELATORIO_VENDASDETALHADA;
begin
  Result := TfrmRELATORIO_VENDASDETALHADA(mm.GetFormInstance(TfrmRELATORIO_VENDASDETALHADA));
end;

procedure TfrmRELATORIO_VENDASDETALHADA.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := ESCRITA_RELATORIOVENDASDETALHADA(mm.varI_Code_Company,
                                  edSearchDATAINIVEN.Text,
                                  edSearchDATAFINVEN.text,
                                  edSearchPESSOAINIVEN.Text,
                                  edSearchPESSOAFINVEN.Text,
                                  IntToStr(cbxtipo.ItemIndex),
                                  variif(UniCheckBoxVENDAS.Checked      = True,'T','F'),
                                  variif(UniCheckBoxDEVOLUCAO.Checked   = True,'T','F'),
                                  variif(UniCheckBoxVENDASEF.Checked    = True,'T','F'),
                                  variif(UniCheckBoxBONIFICACAO.Checked = True,'T','F'),
                                  variif(UniCheckBoxTROCA.Checked       = True,'T','F'),
                                  variif(UniCheckBoxTROCA.Checked       = True,'T','F'));

  mm.varC_caminhopdf :=  RELATORIO_RELATORIOVENDASDETALHADA(
                         MM.varI_Code_Company,
                         edSearchDATAINIVEN.Text,
                         edSearchDATAFINVEN.text,
                         psql);

  unfImpressao.ShowModal();
end;

procedure TfrmRELATORIO_VENDASDETALHADA.edSearchDATAINIVENExit(Sender: TObject);
begin
  edSearchDATAFINVEN.DateTime   := EndofTheMonth(edSearchDATAINIVEN.DateTime);
end;

procedure TfrmRELATORIO_VENDASDETALHADA.edSearchPESSOAFINVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PESSOAS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchPESSOAFINVEN.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmRELATORIO_VENDASDETALHADA.edSearchPESSOAINIVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PESSOAS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchPESSOAINIVEN.Text := MM.varC_codigo_busca;
       edSearchPESSOAFINVEN.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmRELATORIO_VENDASDETALHADA.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmRELATORIO_VENDASDETALHADA.UniFormDestroy(Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TfrmRELATORIO_VENDASDETALHADA.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TfrmRELATORIO_VENDASDETALHADA.UniFormShow(Sender: TObject);
begin
  edSearchDATAINIVEN.DateTime         := StartofTheMonth(date);
  edSearchDATAFINVEN.DateTime         := Date;

  cbxtipo.ItemIndex     := 0;

  UniCheckBoxVENDAS.Checked    := True;
  UniCheckBoxVENDASEF.Checked  := True;
end;
Initialization
   RegisterClass( TfrmRELATORIO_VENDASDETALHADA );
end.
