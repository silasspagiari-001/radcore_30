unit untFrmRELATORIOPERIODOPRODUTO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniCheckBox, uniMultiItem, uniComboBox, uniEdit,
  UniButtonEdit, uniDateTimePicker, uniLabel, uniPanel, uniPageControl,
  uniGUIBaseClasses, uniButton, uniBitBtn;

type
  TFrmRELATORIOPERIODOPRODUTO = class(TUniForm)
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
    rcBlock80: TUniContainerPanel;
    cbxtipo: TUniComboBox;
    UniLabelFd1: TUniLabel;
    rcBlock90: TUniContainerPanel;
    cbxordem: TUniComboBox;
    UniLabel4: TUniLabel;
    rcBlock100: TUniContainerPanel;
    cbxstatus: TUniComboBox;
    UniLabel5: TUniLabel;
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
    UniContainerPanelprofinal: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edSearchPESSOAFINVEN: TUniButtonEdit;
    rcBlock120: TUniContainerPanel;
    UniCheckBoxresumo: TUniCheckBox;
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure edSearchDATAINIVENExit(Sender: TObject);
    procedure edSearchPESSOAINIVENButtonClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
    procedure edSearchPESSOAFINVENButtonClick(Sender: TObject);
    procedure UniCheckBoxresumoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmRELATORIOPERIODOPRODUTO: TFrmRELATORIOPERIODOPRODUTO;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, System.DateUtils, untFrmPesquisa,
  mkm_impressao, mkm_relatorios, unReportImpressao, mkm_func_web;

function FrmRELATORIOPERIODOPRODUTO: TFrmRELATORIOPERIODOPRODUTO;
begin
  Result := TFrmRELATORIOPERIODOPRODUTO(mm.GetFormInstance(TFrmRELATORIOPERIODOPRODUTO));
end;

procedure TFrmRELATORIOPERIODOPRODUTO.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := RELATORIO_VENDASPERIODO_PRODUTOS(mm.varI_Code_Company,
                                            edSearchDATAINIVEN.Text,
                                            edSearchDATAFINVEN.text,
                                            edSearchPESSOAINIVEN.Text,
                                            edSearchPESSOAFINVEN.Text,
                                            variif(UniCheckBoxresumo.Checked      = True,'T','F'),
                                            IntToStr(cbxtipo.ItemIndex),
                                            IntToStr(cbxordem.ItemIndex),
                                            IntToStr(cbxstatus.ItemIndex),
                                            variif(UniCheckBoxVENDAS.Checked      = True,'T','F'),
                                            variif(UniCheckBoxDEVOLUCAO.Checked   = True,'T','F'),
                                            variif(UniCheckBoxVENDASEF.Checked    = True,'T','F'),
                                            variif(UniCheckBoxBONIFICACAO.Checked = True,'T','F'),
                                            variif(UniCheckBoxTROCA.Checked       = True,'T','F'),
                                            variif(UniCheckBoxTROCA.Checked       = True,'T','F'));

  mm.varC_caminhopdf :=  RELATORIO_Vendasporperiodoprodutos(
                         MM.varI_Code_Company,
                         psql,
                         variif(UniCheckBoxresumo.Checked      = True,'T','F'),
                         edSearchDATAINIVEN.Text,
                         edSearchDATAFINVEN.text,
                         IntToStr(cbxstatus.ItemIndex));

  unfImpressao.ShowModal();
end;

procedure TFrmRELATORIOPERIODOPRODUTO.edSearchDATAINIVENExit(Sender: TObject);
begin
  edSearchDATAFINVEN.DateTime   := EndofTheMonth(edSearchDATAINIVEN.DateTime);
end;

procedure TFrmRELATORIOPERIODOPRODUTO.edSearchPESSOAFINVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchPESSOAFINVEN.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TFrmRELATORIOPERIODOPRODUTO.edSearchPESSOAINIVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchPESSOAINIVEN.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TFrmRELATORIOPERIODOPRODUTO.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFrmRELATORIOPERIODOPRODUTO.UniCheckBoxresumoChange(Sender: TObject);
begin
  if UniCheckBoxresumo.Checked then
    UniContainerPanelprofinal.Visible := true
  else
    UniContainerPanelprofinal.Visible := False;
end;

procedure TFrmRELATORIOPERIODOPRODUTO.UniFormDestroy(Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TFrmRELATORIOPERIODOPRODUTO.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TFrmRELATORIOPERIODOPRODUTO.UniFormShow(Sender: TObject);
begin
  edSearchDATAINIVEN.DateTime         := StartofTheMonth(date);
  edSearchDATAFINVEN.DateTime         := Date;

  cbxtipo.ItemIndex     := 0;
  cbxordem.ItemIndex    := 2;
  cbxstatus.ItemIndex   := 0;

  UniCheckBoxVENDAS.Checked    := True;
end;
Initialization
   RegisterClass( TFrmRELATORIOPERIODOPRODUTO );
end.
