unit untFrmRELATORIOHISTORICOSEMENTESINTETICO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniEdit, UniButtonEdit,
  uniDateTimePicker, uniLabel, uniPanel, uniPageControl, uniGUIBaseClasses,
  uniMultiItem, uniComboBox;

type
  TFrmRELATORIOHISTORICOSEMENTESINTETICO = class(TUniForm)
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
    UniContainerPanel1: TUniContainerPanel;
    cbxsafra: TUniComboBox;
    UniLabel4: TUniLabel;
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure edSearchPESSOAINIVENButtonClick(Sender: TObject);
    procedure edSearchPESSOAFINVENButtonClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function FrmRELATORIOHISTORICOSEMENTESINTETICO: TFrmRELATORIOHISTORICOSEMENTESINTETICO;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untFrmPesquisa, System.DateUtils, mkm_func_web,
  mkm_impressao, mkm_relatorios, unReportImpressao, mkm_procedures, untDM_RC;

function FrmRELATORIOHISTORICOSEMENTESINTETICO: TFrmRELATORIOHISTORICOSEMENTESINTETICO;
begin
  Result := TFrmRELATORIOHISTORICOSEMENTESINTETICO(mm.GetFormInstance(TFrmRELATORIOHISTORICOSEMENTESINTETICO));
end;

procedure TFrmRELATORIOHISTORICOSEMENTESINTETICO.btnimpressaoClick(
  Sender: TObject);
var
  psql:string;
begin
  psql := RELATORIO_HISTORICOSEMSINTETICO(mm.varI_Code_Company,
                                           edSearchDATAINIVEN.Text,
                                           edSearchDATAFINVEN.Text,
                                           edSearchPESSOAINIVEN.Text,
                                           edSearchPESSOAFINVEN.Text,
                                           Trim(cbxsafra.Text));

  mm.varC_caminhopdf :=  IMPRESSAO_HISTORICOSEMENTESINTETICA(
                         MM.varI_Code_Company,
                         edSearchDATAINIVEN.Text,
                         edSearchDATAFINVEN.Text,
                         psql);

  unfImpressao.ShowModal();
end;

procedure TFrmRELATORIOHISTORICOSEMENTESINTETICO.edSearchPESSOAFINVENButtonClick(
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

procedure TFrmRELATORIOHISTORICOSEMENTESINTETICO.edSearchPESSOAINIVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
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

procedure TFrmRELATORIOHISTORICOSEMENTESINTETICO.UniBitBtn1Click(
  Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TFrmRELATORIOHISTORICOSEMENTESINTETICO.UniFormCreate(Sender: TObject);
begin
  edSearchDATAINIVEN.Text := DateToStr(StartOfTheMonth(date));
  edSearchDATAFINVEN.Text := DateToStr(EndOfMonth(StrToDate(edSearchDATAINIVEN.Text)));
end;

procedure TFrmRELATORIOHISTORICOSEMENTESINTETICO.UniFormDestroy(
  Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TFrmRELATORIOHISTORICOSEMENTESINTETICO.UniFormShow(Sender: TObject);
begin
  SqlPesquisa(
             ' select                ' +
             '   s.safravalida       ' +
             ' from                  ' +
             ' sementes s            ' +
             ' group by 1            ' +
             ' order by 1            ');

  cbxsafra.Clear;
  cbxsafra.Items.Add('TODOS');
  dm_rc.sqlBuscas.First;
  while not dm_rc.sqlBuscas.Eof do
    begin
      cbxsafra.Items.Add(dm_rc.sqlBuscas.FindField('SAFRAVALIDA').AsString);
      dm_rc.sqlBuscas.Next;
    end;
  cbxsafra.ItemIndex := 0;
end;

Initialization
   RegisterClass( TFrmRELATORIOHISTORICOSEMENTESINTETICO );
end.
