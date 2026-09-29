unit untFrmMENURTASSINATURA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniLabel, uniGUIBaseClasses,
  uniPanel, uniScrollBox, untFrmCARDASSINATURART;

type
  TfrmMENURTASSINATURA = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    paTitulo: TUniContainerPanel;
    paSearchContent1: TUniContainerPanel;
    labTitleFrm: TUniLabel;
    labSelectedColor: TUniLabel;
    UniContainerPanel20: TUniContainerPanel;
    labbtnExit: TUniLabel;
    UniScrollBox: TUniScrollBox;
    procedure UniFormShow(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure labbtnExitClick(Sender: TObject);
  private
    { Private declarations }
    loopcard : integer;
  public
    { Public declarations }
  procedure removeramostra(const icard:integer);
  end;

function frmMENURTASSINATURA: TfrmMENURTASSINATURA;

var
  CardRT : TfrmCARDASSINATURART;
  R      : Integer;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, mkm_layout, mkm_anim, mkm_funcoes,
  mkm_func_web, Main, untDM_RC, mkm_procedures;

function frmMENURTASSINATURA: TfrmMENURTASSINATURA;
begin
  Result := TfrmMENURTASSINATURA(mm.GetFormInstance(TfrmMENURTASSINATURA));
end;

procedure TfrmMENURTASSINATURA.labbtnExitClick(Sender: TObject);
begin
  mm.varB_Yes := False;
  mm.varB_No := True;
  Self.ModalResult := mrNone;

  rc_jQueryAnimate( Self, 'left' ,
                         varIIF( mm.RTL , IntTostr( Self.Width*(-1) ), IntTostr( UniSession.UniApplication.ScreenWidth ) ),
                         '200', '', '', '', '', '',
                         'ajaxRequest( ' + MainForm.htmlFrame.JSName + ' , "_CloseForm", ["form=" + ' + QuotedStr( Self.Name ) + '] );' );
end;

procedure TfrmMENURTASSINATURA.removeramostra(const icard: integer);
var
  i : Integer;
begin
  if icard > 0 then
    begin
      for I := 1 to icard do
        begin
          FindComponent('CardA' + I.ToString).Destroy;
        end;
    end;
end;

procedure TfrmMENURTASSINATURA.UniFormCreate(Sender: TObject);
begin
  // para formulários, deve-se efetuar o ResizeBlocks
  rc_RenderLayout( Self, true, true, true );

  // ammar feedback
  Self.Left := mm.varI_ScreenWidth + 600;
  if mm.RTL then
     Self.Left := 0
  else
     Self.Left := mm.varI_ScreenWidth + 600;
end;

procedure TfrmMENURTASSINATURA.UniFormReady(Sender: TObject);
begin
  dm_rc.rc_ResizeBlocks( Self, true, true );
end;

procedure TfrmMENURTASSINATURA.UniFormShow(Sender: TObject);
var
  ct, left, top : integer;
  sql           : string;
begin

 //***************************************************************************//
  Self.Height := mm.varI_ScreenHeight;
  Self.Top    := 0;
  rc_jQueryAnimate( Self, 'right' , IntTostr( Self.Left + self.Width ), '200' );
 //***************************************************************************//
  ct := 0; left := 1; top := 1;loopcard :=0;
  removeramostra(loopcard);
 //***************************************************************//
 // construindo CARD
 //***************************************************************//
 if SqlPesquisa(' select * from RESPONSAVEL_ASSINATURA where empresa = ' + IntToStr(mm.varI_Code_Company) +
                ' and assinado                                       = ' + QuotedStr('N')                 +
                ' and rt                                             = ' + IntToStr(mm.vari_user_RT)      +
                ' order by data_solicitada, hora_solicitada') then
 begin
   dm_rc.sqlBuscas.First;
   while not dm_rc.sqlBuscas.Eof do
     begin

       sql  := ' select                                                  ' +
               ' s.codigo,                                               ' +
               ' s.emissao,                                              ' +
               ' s.NOME_LABORATORIO,                                     ' +
               ' case when s.ana_pureza      = ' + QuotedStr('T')+' then ' + QuotedStr('PU')+'    end PUREZA,    ' +
               ' case when s.ana_tz          = ' + QuotedStr('T')+' then ' + QuotedStr('TZ')+'    end TZ,        ' +
               ' case when s.ana_dson        = ' + QuotedStr('T')+' then ' + QuotedStr('DOSN')+'  end DOSN,      ' +
               ' case when s.ana_ger         = ' + QuotedStr('T')+' then ' + QuotedStr('GE')+'    end GE,        ' +
               ' case when s.ana_umi         = ' + QuotedStr('T')+' then ' + QuotedStr('UM')+'    end UM,        ' +
               ' case when s.ana_ve          = ' + QuotedStr('T')+' then ' + QuotedStr('VE')+'    end VE,        ' +
               ' case when s.ana_pms         = ' + QuotedStr('T')+' then ' + QuotedStr('PMS')+'   end PMS,       ' +
               ' case when s.ana_si          = ' + QuotedStr('T')+' then ' + QuotedStr('SI')+'    end SI,        ' +
               ' case when s.ana_voc         = ' + QuotedStr('T')+' then ' + QuotedStr('VOC')+'   end VOC,       ' +
               ' case when s.ana_vigor       = ' + QuotedStr('T')+' then ' + QuotedStr('VIGOR')+' end VIGOR      ' +
               ' from solicitacao s            ' +
               ' where s.codigo              = ' + IntToStr(dm_rc.sqlBuscas.FindField('solicitacao').AsInteger);

       TabelaSolicitacao(sql);

       Inc(loopcard);
       CardRT                    := TfrmCARDASSINATURART.Create(self);
       CardRT.Name               := 'CardA'+loopcard.ToString;
       CardRT.Parent             := UniScrollBox;

       CardRT.Left   := left;
       CardRT.Top    := top;
       left          := left;
       left          := left + 310;

       ct := ct + 1;
       if (ct = 1)
          then begin
                 left := 1;
                 top  := top + 125;
                 ct   := 0;
               end;

       //***************************************************************//
       // alimenta campos
       //***************************************************************//
        CardRT.labNUMEROSOLICITACAO.Caption  := 'Solicitação de Análise..: ' + StrZeroS(dm_rc.fdqrysolicitacao.FindField('CODIGO').AsString,5) + '/' + FormatDateTime('YYYY',dm_rc.fdqrysolicitacao.FindField('EMISSAO').AsDateTime);
        CardRT.labDATAHORA.Caption           := 'Data/Hora Solicitada....: ' + dm_rc.sqlBuscas.FindField('DATA_SOLICITADA').AsString + ' ' +
                                                                               dm_rc.sqlBuscas.FindField('HORA_SOLICITADA').AsString;

//        CardRT.labMENSAGEM.Caption            := dm_rc.sqlBuscas.FindField('MENSAGEM').AsString;
        CardRT.labLABORATORIO.Caption         := tratanome(dm_rc.fdqrysolicitacao.FindField('NOME_LABORATORIO').AsString);
        CardRT.UniLabelcodigo.Caption         := dm_rc.fdqrysolicitacao.FindField('CODIGO').AsString;
        CardRT.labSERVICO.Caption             := dm_rc.fdqrysolicitacao.FindField('PUREZA').AsString      + ' ' +
                                                 dm_rc.fdqrysolicitacao.FindField('TZ').AsString          + ' ' +
                                                 dm_rc.fdqrysolicitacao.FindField('DOSN').AsString        + ' ' +
                                                 dm_rc.fdqrysolicitacao.FindField('GE').AsString          + ' ' +
                                                 dm_rc.fdqrysolicitacao.FindField('UM').AsString          + ' ' +
                                                 dm_rc.fdqrysolicitacao.FindField('VE').AsString          + ' ' +
                                                 dm_rc.fdqrysolicitacao.FindField('PMS').AsString         + ' ' +
                                                 dm_rc.fdqrysolicitacao.FindField('SI').AsString          + ' ' +
                                                 dm_rc.fdqrysolicitacao.FindField('VOC').AsString         + ' ' +
                                                 dm_rc.fdqrysolicitacao.FindField('VIGOR').AsString;
       //***************************************************************//
       dm_rc.sqlBuscas.Next;
     end;
 end;
end;

end.
