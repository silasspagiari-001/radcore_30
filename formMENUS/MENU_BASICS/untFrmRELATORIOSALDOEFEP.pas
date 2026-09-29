unit untFrmRELATORIOSALDOEFEP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniEdit, UniButtonEdit,
  uniDateTimePicker, uniLabel, uniPanel, uniPageControl, uniGUIBaseClasses;

type
  TfrmRELATORIOSALDOEFEP = class(TUniForm)
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
    UniContainerPanel1: TUniContainerPanel;
    UniLabel4: TUniLabel;
    edSearchProdutosini: TUniButtonEdit;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel5: TUniLabel;
    edSearchProdutosfin: TUniButtonEdit;
    UniContainerPanel4: TUniContainerPanel;
    UniContainerPanel5: TUniContainerPanel;
    btnimpressao: TUniBitBtn;
    UniContainerPanel6: TUniContainerPanel;
    UniBitBtn1: TUniBitBtn;
    procedure UniBitBtn1Click(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure edSearchProdutosiniButtonClick(Sender: TObject);
    procedure edSearchProdutosfinButtonClick(Sender: TObject);
    procedure edSearchPESSOAINIVENButtonClick(Sender: TObject);
    procedure edSearchPESSOAFINVENButtonClick(Sender: TObject);
    procedure edSearchDATAINIVENExit(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure btnimpressaoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmRELATORIOSALDOEFEP: TfrmRELATORIOSALDOEFEP;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untFrmPesquisa, mkm_impressao, mkm_relatorios,
  System.DateUtils, unReportImpressao;

function frmRELATORIOSALDOEFEP: TfrmRELATORIOSALDOEFEP;
begin
  Result := TfrmRELATORIOSALDOEFEP(mm.GetFormInstance(TfrmRELATORIOSALDOEFEP));
end;

procedure TfrmRELATORIOSALDOEFEP.btnimpressaoClick(Sender: TObject);
var
  psql:string;
begin
  psql := ESCRITA_RELATORIOSALDOEFEP(mm.varI_Code_Company     ,
                                     StrToInt(edSearchPESSOAINIVEN.Text),
                                     StrToInt(edSearchPESSOAFINVEN.Text),
                                     StrToInt(edSearchProdutosini.Text) ,
                                     StrToInt(edSearchProdutosFIN.Text) ,
                                     edSearchDATAINIVEN.DateTime,
                                     edSearchDATAFINVEN.DateTime);

  mm.varC_caminhopdf :=  RELATORIO_RELATORIOSALDOEFEP(
                                                       MM.varI_Code_Company     ,
                                                       edSearchProdutosini.Text ,
                                                       edSearchProdutosFIN.Text ,
                                                       edSearchPESSOAINIVEN.Text,
                                                       edSearchPESSOAFINVEN.Text,
                                                       edSearchDATAINIVEN.Text  ,
                                                       edSearchDATAFINVEN.Text  ,
                                                       psql);

  unfImpressao.ShowModal();
end;

procedure TfrmRELATORIOSALDOEFEP.edSearchDATAINIVENExit(Sender: TObject);
begin
  edSearchDATAFINVEN.DateTime   := EndofTheMonth(edSearchDATAINIVEN.DateTime);
end;

procedure TfrmRELATORIOSALDOEFEP.edSearchPESSOAFINVENButtonClick(
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

procedure TfrmRELATORIOSALDOEFEP.edSearchPESSOAINIVENButtonClick(
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

procedure TfrmRELATORIOSALDOEFEP.edSearchProdutosfinButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchProdutosfin.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmRELATORIOSALDOEFEP.edSearchProdutosiniButtonClick(
  Sender: TObject);
begin
  mm.Seta_Busca('PRODUTOS');
  UniFfrmPesquisa.ShowModal(
  procedure(Sender: TComponent; AResult: Integer)
   begin
     if AResult = mrOK then
     begin
       edSearchProdutosini.Text := MM.varC_codigo_busca;
       edSearchProdutosfin.Text := MM.varC_codigo_busca;
     end;
   end);
end;

procedure TfrmRELATORIOSALDOEFEP.UniBitBtn1Click(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmRELATORIOSALDOEFEP.UniFormDestroy(Sender: TObject);
begin
  mm.varA_relatorio  := '';
  mm.varC_Form_Modal := nil;
end;

procedure TfrmRELATORIOSALDOEFEP.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
end;

procedure TfrmRELATORIOSALDOEFEP.UniFormShow(Sender: TObject);
begin
  edSearchDATAINIVEN.DateTime := Date;
end;
Initialization
   RegisterClass( TfrmRELATORIOSALDOEFEP );
end.
