unit untfrmRELATORIOVENVENDEDOR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniMultiItem, uniComboBox,
  uniEdit, UniButtonEdit, uniDateTimePicker, uniLabel, uniPanel, uniPageControl,
  uniGUIBaseClasses;

type
  TfrmRELATORIOVENVENDEDOR = class(TUniForm)
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
    edSearchVENDEDORINIVEN: TUniButtonEdit;
    rcBlock70: TUniContainerPanel;
    UniLabel3: TUniLabel;
    edSearchVENDEDORFINVEN: TUniButtonEdit;
    rcBlock80: TUniContainerPanel;
    cbxtipo: TUniComboBox;
    UniLabelFd1: TUniLabel;
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    btnimpressao: TUniBitBtn;
    rcBlock30: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    UniContainerPanel1: TUniContainerPanel;
    cbxordem: TUniComboBox;
    UniLabel4: TUniLabel;
    procedure edSearchVENDEDORINIVENButtonClick(Sender: TObject);
    procedure edSearchVENDEDORFINVENButtonClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
    procedure UniBitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmRELATORIOVENVENDEDOR: TfrmRELATORIOVENVENDEDOR;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, System.DateUtils, untFrmPesquisa,
  mkm_relatorios, mkm_impressao, unReportImpressao;

function frmRELATORIOVENVENDEDOR: TfrmRELATORIOVENVENDEDOR;
begin
  Result := TfrmRELATORIOVENVENDEDOR(mm.GetFormInstance(TfrmRELATORIOVENVENDEDOR));
end;

procedure TfrmRELATORIOVENVENDEDOR.btnimpressaoClick(Sender: TObject);
var
  psql : string;
begin
  psql := ESCRITA_VENDASVENDEDOR(mm.varI_Code_Company,
                                  StrToInt(edSearchVENDEDORINIVEN.Text),
                                  StrToInt(edSearchVENDEDORFINVEN.text),
                                  IntToStr(cbxordem.ItemIndex),
                                  IntToStr(cbxtipo.ItemIndex),
                                  edSearchDATAINIVEN.Text,
                                  edSearchDATAFINVEN.Text);

  mm.varC_caminhopdf :=  RELATORIO_VENDASVENDEDOR(
                         MM.varI_Code_Company,
                         psql,
                         edSearchDATAINIVEN.DateTime,
                         edSearchDATAFINVEN.DateTime);

  unfImpressao.ShowModal();

end;

procedure TfrmRELATORIOVENVENDEDOR.edSearchVENDEDORFINVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('FUNCIONARIOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchVENDEDORFINVEN.Text :=  MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmRELATORIOVENVENDEDOR.edSearchVENDEDORINIVENButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('FUNCIONARIOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchVENDEDORINIVEN.Text :=  MM.varC_codigo_busca;
       edSearchVENDEDORFINVEN.Text :=  MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmRELATORIOVENVENDEDOR.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmRELATORIOVENVENDEDOR.UniFormDestroy(Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TfrmRELATORIOVENVENDEDOR.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TfrmRELATORIOVENVENDEDOR.UniFormShow(Sender: TObject);
begin
  edSearchDATAINIVEN.DateTime         := StartofTheMonth(date);
  edSearchDATAFINVEN.DateTime         := Date;

  cbxtipo.ItemIndex                   := 0;
  cbxordem.ItemIndex                  := 0;

end;
Initialization
   RegisterClass( TfrmRELATORIOVENVENDEDOR );
end.
