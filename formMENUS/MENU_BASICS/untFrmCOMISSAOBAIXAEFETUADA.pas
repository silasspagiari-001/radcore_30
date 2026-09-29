unit untFrmCOMISSAOBAIXAEFETUADA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniCheckBox, uniMultiItem,
  uniComboBox, uniEdit, UniButtonEdit, uniDateTimePicker, uniLabel, uniPanel,
  uniPageControl, uniGUIBaseClasses;

type
  TfrmCOMISSAOBAIXAEFETUADA = class(TUniForm)
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
    procedure edSearchPESSOAINIVENButtonClick(Sender: TObject);
    procedure edSearchPESSOAFINVENButtonClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmCOMISSAOBAIXAEFETUADA: TfrmCOMISSAOBAIXAEFETUADA;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untFrmPesquisa, System.DateUtils,
  mkm_impressao, mkm_relatorios, unReportImpressao;

function frmCOMISSAOBAIXAEFETUADA: TfrmCOMISSAOBAIXAEFETUADA;
begin
  Result := TfrmCOMISSAOBAIXAEFETUADA(mm.GetFormInstance(TfrmCOMISSAOBAIXAEFETUADA));
end;

procedure TfrmCOMISSAOBAIXAEFETUADA.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := ESCRITA_COMISSAOBAIXAEFETUADA(mm.varI_Code_Company,
                                        edSearchPESSOAINIVEN.Text,
                                        edSearchPESSOAFINVEN.Text,
                                        edSearchDATAINIVEN.DateTime,
                                        edSearchDATAFINVEN.DateTime);

  mm.varC_caminhopdf :=  RELATORIO_COMISSAOBAIXAEFETUADA(
                                        MM.varI_Code_Company,
                                        edSearchDATAINIVEN.DateTime,
                                        edSearchDATAFINVEN.DateTime,
                                        psql);

  unfImpressao.ShowModal();
end;

procedure TfrmCOMISSAOBAIXAEFETUADA.edSearchPESSOAFINVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('FUNCIONARIOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchPESSOAFINVEN.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmCOMISSAOBAIXAEFETUADA.edSearchPESSOAINIVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('FUNCIONARIOS');
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

procedure TfrmCOMISSAOBAIXAEFETUADA.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmCOMISSAOBAIXAEFETUADA.UniFormDestroy(Sender: TObject);
begin
  mm.varC_Form_Modal := nil;
end;

procedure TfrmCOMISSAOBAIXAEFETUADA.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TfrmCOMISSAOBAIXAEFETUADA.UniFormShow(Sender: TObject);
begin
  edSearchDATAINIVEN.DateTime         := StartofTheMonth(date);
  edSearchDATAFINVEN.DateTime         := Date;
end;
Initialization
   RegisterClass( TfrmCOMISSAOBAIXAEFETUADA );
end.
