unit untFrmRELATORIO_IMPOSTOCONTABILIDADE;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniDateTimePicker, uniButton, uniBitBtn, uniLabel,
  uniPanel, uniPageControl, uniGUIBaseClasses;

type
  TfrmRELATORIO_IMPOSTOCONTABILIDADE = class(TUniForm)
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
    procedure UniFormReady(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
    procedure edSearchDATAINIExit(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmRELATORIO_IMPOSTOCONTABILIDADE: TfrmRELATORIO_IMPOSTOCONTABILIDADE;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, mkm_impressao, mkm_relatorios,
  unReportImpressao, System.DateUtils;

function frmRELATORIO_IMPOSTOCONTABILIDADE: TfrmRELATORIO_IMPOSTOCONTABILIDADE;
begin
  Result := TfrmRELATORIO_IMPOSTOCONTABILIDADE(MM.GetFormInstance(TfrmRELATORIO_IMPOSTOCONTABILIDADE));
end;

procedure TfrmRELATORIO_IMPOSTOCONTABILIDADE.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := ESCRITA_APURACAOICMS(mm.varI_Code_Company,
                               edSearchDATAINI.Text,
                               edSearchDATAFIN.Text);

  mm.varC_caminhopdf :=  RELATORIO_ALIQUOTAICMS(mm.varI_Code_Company,
                                                edSearchDATAINI.Text,
                                                edSearchDATAFIN.Text,
                                                psql);

  unfImpressao.ShowModal();
end;

procedure TfrmRELATORIO_IMPOSTOCONTABILIDADE.edSearchDATAINIExit(
  Sender: TObject);
begin
  edSearchDATAFIN.DateTime   := EndofTheMonth(edSearchDATAINI.DateTime);
end;

procedure TfrmRELATORIO_IMPOSTOCONTABILIDADE.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmRELATORIO_IMPOSTOCONTABILIDADE.UniFormDestroy(Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TfrmRELATORIO_IMPOSTOCONTABILIDADE.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;
procedure TfrmRELATORIO_IMPOSTOCONTABILIDADE.UniFormShow(Sender: TObject);
begin
  edSearchDATAINI.DateTime         := StartofTheMonth(date);
  edSearchDATAFIN.DateTime         := Date;
end;

Initialization
   RegisterClass( TfrmRELATORIO_IMPOSTOCONTABILIDADE );
end.
