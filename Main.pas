unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, System.TypInfo,
  Controls,
  // feedback: Mesut from Turkey
  {$ifdef LINUX}
  System.UIConsts,
  {$endif}
  Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniPanel,
  uniGUIFrame, uniGUIJSUtils , StrUtils, IniFiles, uconsts,   str_func,
  //uconsts_msgs_portuguese,
  uniHTMLFrame, uniTreeView, uniTreeMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.Dialogs, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,
  //----------[[RESTDATAWARE
//  uDWConstsData,
//  uRESTDWPoolerDB,
  //----------RESTDATAWARE]]
  IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdExplicitTLSClientServerBase,
  IdFTP, uniMultiItem, uniListBox, uniImageList, uniImage, Vcl.Imaging.pngimage,
  uniLabel, uniComboBox, uniEdit, uniPageControl, uniChart, uniScrollBox,
  uniButton, uniThreadTimer, uniURLFrame, uniBitBtn, uniBasicGrid,
  uniDBGrid, uniCanvas, uniMemo, Vcl.Menus, uniMainMenu, acPNG, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, uniTimer, UniFSGoogleChart, uniSpeedButton;
  //ACBrMail, ACBrConsultaCNPJ, ACBrSocket,
  //ACBrCEP, ACBrBase, ACBrPosPrinter, uniCalendarPanel  ;

type
  TMainForm = class(TUniForm)
    sboxMain: TUniScrollBox;
    paBackGround: TUniContainerPanel;
    pgGeneral: TUniPageControl;
    tabDashBoard: TUniTabSheet;
    paGeral: TUniContainerPanel;
    sboxGridBlock: TUniScrollBox;
    paLayoutTopo: TUniContainerPanel;
    btnMenu: TUniLabel;
    labbtnExit: TUniLabel;
    btnCfg: TUniLabel;
    btnNotifications: TUniLabel;
    labCompanyName: TUniLabel;
    paBS_Tabs: TUniContainerPanel;
    bsTabs_Main: TUniLabel;
    paLayoutMainMenu: TUniContainerPanel;
    paLayoutMenuCfgVersion: TUniContainerPanel;
    paLayoutLogo: TUniContainerPanel;
    imgAppIcon: TUniImage;
    labAppName: TUniLabel;
    paLayoutBottom: TUniContainerPanel;
    labAppVersion: TUniLabel;
    labFullScr: TUniLabel;
    labFullScrExit: TUniLabel;
    paSearchTop: TUniContainerPanel;
    btnSearch: TUniLabel;
    paSearchEdit: TUniContainerPanel;
    SearchEdit: TUniEdit;
    paLayoutBgUser: TUniPanel;
    labUser: TUniLabel;
    paImgUser: TUniContainerPanel;
    imgUser: TUniLabel;
    UniTreeMainMenu: TUniTreeMenu;
    paTourTransp: TUniContainerPanel;
    labImgRight: TUniLabel;
    labImgUp: TUniLabel;
    labImgDown: TUniLabel;
    labImgLeft: TUniLabel;
    paObjFeatured: TUniContainerPanel;
    paMessage: TUniContainerPanel;
    UniContainerPanel1: TUniContainerPanel;
    btnNext: TUniBitBtn;
    btnPrior: TUniBitBtn;
    labTourTit1: TUniLabel;
    memoTour: TUniMemo;
    labTour1: TUniLabel;
    OpenImageDialog: TOpenDialog;
    btnFloatingFAB: TUniHTMLFrame;
    htmlFrame: TUniHTMLFrame;
    paNotifications: TUniPanel;
    rcBlock300: TUniContainerPanel;
    paCalendar: TUniContainerPanel;
    UniLabel21: TUniLabel;
    UniLabel15: TUniLabel;
    rcBlock310: TUniContainerPanel;
    paEmail: TUniContainerPanel;
    UniLabel22: TUniLabel;
    UniLabel16: TUniLabel;
    rcBlock320: TUniContainerPanel;
    paPayments: TUniContainerPanel;
    UniLabel23: TUniLabel;
    UniLabel17: TUniLabel;
    rcBlock350: TUniContainerPanel;
    paTodo: TUniContainerPanel;
    UniLabel26: TUniLabel;
    UniLabel20: TUniLabel;
    rcBlock330: TUniContainerPanel;
    paMessages: TUniContainerPanel;
    UniLabel24: TUniLabel;
    UniLabel18: TUniLabel;
    rcBlock340: TUniContainerPanel;
    paTickets: TUniContainerPanel;
    UniLabel25: TUniLabel;
    UniLabel19: TUniLabel;
    rcBlock150: TUniContainerPanel;
    rcBlock360: TUniContainerPanel;
    rcBlockPRINCIPAL: TUniContainerPanel;
    UniScrollBoxprincipal: TUniScrollBox;
    UniTimerdashboard: TUniTimer;
    rcBlockFINANCEIRO: TUniContainerPanel;
    rcBlock450: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    UniLabel4: TUniLabel;
    UniDBGrid2: TUniDBGrid;
    rcBlock440: TUniContainerPanel;
    rcBlock460: TUniContainerPanel;
    UniLabelvencendosemana: TUniLabel;
    UniDBGrid1: TUniDBGrid;
    rcBlock430: TUniContainerPanel;
    labIcoNewCustomers430: TUniLabel;
    labDashCustomers430: TUniLabel;
    labNewCustomers430atrasados: TUniLabel;
    rcBlock420: TUniContainerPanel;
    labIcoSales420: TUniLabel;
    labSales420vencendosemana: TUniLabel;
    UniLabelvencendocard: TUniLabel;
    rcBlock390: TUniContainerPanel;
    labIcoSales390: TUniLabel;
    labSales390receber: TUniLabel;
    UniLabel2: TUniLabel;
    rcBlock400: TUniContainerPanel;
    labIcoNewCustomers400: TUniLabel;
    labDashCustomers400: TUniLabel;
    labNewCustomers400pagar: TUniLabel;
    rcBlock410: TUniContainerPanel;
    labIcoInService410: TUniLabel;
    labDashInService410: TUniLabel;
    labInService390saldo: TUniLabel;
    rcBlockFATURAMENTO: TUniContainerPanel;
    rcBlock480: TUniContainerPanel;
    labIcoNewCustomers480: TUniLabel;
    labDashCustomers480: TUniLabel;
    labNewCustomers480qtdenotas: TUniLabel;
    rcBlock470: TUniContainerPanel;
    labIcoSales470: TUniLabel;
    labSales470totalnotas: TUniLabel;
    rcBlock490: TUniContainerPanel;
    labIcoInService490: TUniLabel;
    labDashInService490: TUniLabel;
    labInService470qtdemani: TUniLabel;
    rcBlock500: TUniContainerPanel;
    labIcoGiveUp500: TUniLabel;
    labDashGiveUp500: TUniLabel;
    labGiveUp500valoricms: TUniLabel;
    UniLabel1: TUniLabel;
    rcBlock510: TUniContainerPanel;
    rcBlock530: TUniContainerPanel;
    UniLabel3: TUniLabel;
    UniTimerverificaweb: TUniTimer;
    UniLabelassinaturaRT: TUniLabel;
    TimerVerificassinaturaRT: TUniTimer;
    UniDBGridlistamanifesto: TUniDBGrid;
    UniContainerPanel3: TUniContainerPanel;
    UniLabel6: TUniLabel;
    UniLabel5: TUniLabel;
    procedure UniFormCreate(Sender: TObject);
    procedure UniTreeMainMenuClick(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure TabSheetClose(Sender: TObject; var AllowClose: Boolean);
    procedure labbtnExitClick(Sender: TObject);
    procedure paLayoutMainMenuResize(Sender: TUniControl; OldWidth,
      OldHeight: Integer);
    procedure htmlFrameAjaxEvent(Sender: TComponent; EventName: string;
      Params: TUniStrings);
    procedure btnGMapsClick(Sender: TObject);
    procedure btnMenuClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure btnPriorClick(Sender: TObject);
    procedure SearchEditChange(Sender: TObject);
    procedure SearchEditKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnCfgClick(Sender: TObject);
    procedure btnNotificationsClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure SearchEditExit(Sender: TObject);
    procedure pgGeneralChangeValue(Sender: TObject);
    procedure UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure labFullScrClick(Sender: TObject);
    procedure UniFormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure UniFormReady(Sender: TObject);
    procedure labAppVersionClick(Sender: TObject);
    procedure paCalendarClick(Sender: TObject);
    procedure paEmailClick(Sender: TObject);
    procedure paPaymentsClick(Sender: TObject);
    procedure paMessagesClick(Sender: TObject);
    procedure paTicketsClick(Sender: TObject);
    procedure paTodoClick(Sender: TObject);
    procedure UniTimerdashboardTimer(Sender: TObject);
    procedure UniDBGrid1CellClick(Column: TUniDBGridColumn);
    procedure UniDBGrid2CellClick(Column: TUniDBGridColumn);
    procedure UniTimerverificawebTimer(Sender: TObject);
    procedure UniLabelassinaturaRTClick(Sender: TObject);
    procedure TimerVerificassinaturaRTTimer(Sender: TObject);
    procedure UniDBGridlistamanifestoCellClick(Column: TUniDBGridColumn);
    procedure UniFormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    // v. 3.2.0..7
//    FileNames : TStrings;
//    PSString, FHomeUrl : string;
    PSString : string;
    procedure rc_SearchTree(const AText: string);
    procedure verificapendencia();

  public
    cLatitude, cLongitude : string;

    { Public declarations }
    procedure rc_TrimAppMemorySize;

    // se for a partir do CLICK do MENU PRINCIPAL, apenas o parametro "pMenu" deve ser passado,
    procedure rc_AddFormFrameInTab( pMenu           : TUniTreeMenu ;
                                    pFormFrameTitle : string = '';
                                    pTableName      : string = '';
                                    pFormFrameName  : string = '';
                                    pIsMenuReport   : Boolean = false;
                                    pIsModal        : Boolean = false;
                                    pCallFormOp     : TRCAddFormParamType = aftNone;
                                    pRecord         : integer = 0 );

    procedure rc_GetGeoPosition;
    procedure rc_GetMyIP;


    procedure rc_UpdateCharts;
    procedure rc_UpdateNotifications;
    procedure rc_UpdateFloatButton;

    procedure rc_CloseNotifications;
    // v. 3.2.0.0
    procedure rc_UpdateMainControls;

    procedure DashboardFinanceiroMain();
    procedure DashboardFaturamentoMain();
    procedure DashboardManifestoMain();
    procedure AtualizaDashboard();

  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication,
  uMenu_BASICS, uMenu_TOOLS, uMenu_MOVEMENT, uMenu_OTHERS, uMenu_REPORTS,
  mkm_menus, untdm_rc,
  ServerModule, uVersion, mkm_func_web, //untFrmMensagemTour,
  untFrmTHEMES, untFrmLookUp_Lite, mkm_graphs,
  mkm_gridblock, mkm_layout, mkm_anim, mkm_translate, mkm_login, mkm_procedures,
  untFrmDASHBOARDFINANCEIRO, System.DateUtils, untFrmTELAGENERICA, mkm_graficos,
  mkm_relatorios, untfrmTELAAVISOSISTEMA, Vcl.Clipbrd, untFrmBLOQUEIOSISTEMA,
  untFrmCARDASSINATURART, untFrmMENURTASSINATURA, mkm_regrasnegocio,
  untfrmSEFAZMANIFESTO, untfrmTELAAVISOMSG, uMsgInfo;

function MainForm: TMainForm;
begin
  Result := TMainForm(mm.GetFormInstance(TMainForm));
end;

procedure TMainForm.btnPriorClick(Sender: TObject);
begin
   TUniLabel( Self.FindComponent( 'labimgUp') ).Visible    := False;
   TUniLabel( Self.FindComponent( 'labimgDown') ).Visible  := False;
   TUniLabel( Self.FindComponent( 'labimgLeft') ).Visible  := False;
   TUniLabel( Self.FindComponent( 'labimgRight') ).Visible := False;

   Dec( mm.varI_GuideTourSeq );
   dm_rc.rc_ShowTour( Self );
end;

procedure TMainForm.btnNextClick(Sender: TObject);
begin
   TUniLabel( Self.FindComponent( 'labimgUp') ).Visible    := False;
   TUniLabel( Self.FindComponent( 'labimgDown') ).Visible  := False;
   TUniLabel( Self.FindComponent( 'labimgLeft') ).Visible  := False;
   TUniLabel( Self.FindComponent( 'labimgRight') ).Visible := False;

   Inc( mm.varI_GuideTourSeq );
   dm_rc.rc_ShowTour( Self );
end;

procedure TMainForm.SearchEditChange(Sender: TObject);
begin
     if Trim( SearchEdit.Text ) = '' then
     begin
          dm_rc.rc_BuildMainMenu( SearchEdit.Text, UniTreeMainMenu );
     end;
end;

procedure TMainForm.btnSearchClick(Sender: TObject);
begin
    paSearchEdit.tag := btnSearch.Left;

    rc_jQueryAnimate( paSearchEdit, 'width' , '95%', '200' );
    rc_Anim( btnSearch, 'left', '-200', '0.8', gsEaseBack, '0.8', gsEaseTypeOut );

    dm_rc.rc_SetFocus( SearchEdit );
end;

procedure TMainForm.DashboardFaturamentoMain;
var
  I         : Integer;
  Val       : Double;
  Head, ano : string;
begin
  ano := FormatDateTime('yyyy', Date );

  labSales470totalnotas.Caption       := formatfloat('R$ #,##0.00',DashboardFaturamentoCard('totalnotas'         ,mm.varI_Code_Company));
  labGiveUp500valoricms.Caption       := formatfloat('R$ #,##0.00',DashboardFaturamentoCard('valoricms'          ,mm.varI_Code_Company));
  labNewCustomers480qtdenotas.Caption := formatfloat('0'          ,DashboardFaturamentoCard('qtdenotas'          ,mm.varI_Code_Company));
  labInService470qtdemani.Caption     := formatfloat('0'          ,DashboardFaturamentoCard('maniaberto'         ,mm.varI_Code_Company));
{
  if SqlGraficos(ESCRITA_GRAFICO_FATURAMENTO_MENU(mm.varI_Code_Company,ano)) then
    begin
      dm_rc.sqlgraficos.First;
      while not dm_rc.sqlgraficos.Eof do
        begin
          val  := dm_rc.sqlgraficos.FindField('TOTAL').AsFloat;
          head := dm_rc.sqlgraficos.FindField('DESCRICAO').AsString;
          barserie.Add(Val,Head);

          dm_rc.sqlgraficos.Next;
        end;
    end;
    }
end;

procedure TMainForm.DashboardFinanceiroMain();
begin
  DashboardFinanceiro('atrasado'    ,mm.varI_Code_Company);
  DashboardFinanceiro('vencendohoje',mm.varI_Code_Company);
  UniLabelvencendosemana.Caption := 'Vencendo ' + DateToStr(StartOfTheWeek(Date)-1) + ' até ' + DateToStr(StartOfTheWeek(Date)+5);
  UniLabelvencendocard.Caption   := 'Vencendo ' + DateToStr(StartOfTheWeek(Date)-1) + ' até ' + DateToStr(StartOfTheWeek(Date)+5);

  labSales390receber.Caption          := formatfloat('R$ #,##0.00',DashboardFinanceiroCard('receber'         ,mm.varI_Code_Company));
  labNewCustomers400pagar.Caption     := formatfloat('R$ #,##0.00',DashboardFinanceiroCard('pagar'           ,mm.varI_Code_Company));
  labInService390saldo.Caption        := formatfloat('R$ #,##0.00',DashboardFinanceiroCard('saldo'           ,mm.varI_Code_Company));
  labSales420vencendosemana.Caption   := formatfloat('R$ #,##0.00',DashboardFinanceiroCard('vencendosemana'  ,mm.varI_Code_Company));
  labNewCustomers430atrasados.Caption := formatfloat('R$ #,##0.00',DashboardFinanceiroCard('atrasados'       ,mm.varI_Code_Company));
end;

procedure TMainForm.DashboardManifestoMain;
begin
  dm_rc.tblistamanifestoaberto.Close;
  dm_rc.tblistamanifestoaberto.Open;

  if SqlPesquisa(' select * from mfmestre             ' +
                 ' where  empresa                   = ' + IntToStr(mm.varI_Code_Company) +
                 ' and cancelada                    = ' + QuotedStr('A')                 +
                 ' order by NUMERO asc') then
  begin
    dm_rc.sqlBuscas.First;
    while not dm_rc.sqlBuscas.Eof do
      begin
        dm_rc.tblistamanifestoaberto.Append;
        dm_rc.tblistamanifestoabertoCODIGO.AsInteger    :=  dm_rc.sqlBuscas.FindField('CODIGO').AsInteger;
        dm_rc.tblistamanifestoabertoNUMERO.AsInteger    :=  dm_rc.sqlBuscas.FindField('NUMERO').AsInteger;
        dm_rc.tblistamanifestoabertoNOME.AsString       :=  Acha_Item('TRANSPORTES',IntToStr(dm_rc.sqlBuscas.FindField('TRANSPORTADORA').AsInteger));
        dm_rc.tblistamanifestoabertoESTADOINI.AsString  :=  dm_rc.sqlBuscas.FindField('ESTADOINI').AsString;
        dm_rc.tblistamanifestoabertoESTADOFIN.AsString  :=  dm_rc.sqlBuscas.FindField('ESTADOFIN').AsString;
        dm_rc.tblistamanifestoabertoDIAS.AsInteger      :=  ABS(DaysBetween(DATE,StrToDate(dm_rc.sqlBuscas.FindField('EMISSAO').AsString)));
        dm_rc.tblistamanifestoabertoDESCARREGA.AsString :=  dm_rc.sqlBuscas.FindField('IBGEDESCARREGAMENTO').AsString;
        dm_rc.tblistamanifestoabertoEMISSAO.AsDateTime  :=  dm_rc.sqlBuscas.FindField('EMISSAO').AsDateTime;
        dm_rc.tblistamanifestoaberto.Post;

        dm_rc.sqlBuscas.Next;
      end;
  end;

end;

procedure TMainForm.SearchEditExit(Sender: TObject);
begin
     rc_jQueryAnimate( paSearchEdit, 'width' , '', '250' );
     rc_Anim( btnSearch, 'left', inttostr( paSearchEdit.tag ), '0.8', gsEaseBack, '0.8', gsEaseTypeOut );

     UniTreeMainMenu.SingleExpand := True;
end;

procedure TMainForm.SearchEditKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     if key = 13 then
     begin
          // para versoes antigas do uniGUI, comente a linha abaixo
          // caso sua pesquisa esteja duplicando os itens
          UniTreeMainMenu.SingleExpand := False;

          dm_rc.rc_BuildMainMenu( SearchEdit.Text, UniTreeMainMenu );
     end;
end;

procedure TMainForm.labAppVersionClick(Sender: TObject);
begin
     rc_RemoveCssClass( labAppVersion, 'rc-pulse' );
end;

procedure TMainForm.labbtnExitClick(Sender: TObject);
begin
    Close;
    UniApplication.Restart;
end;

procedure TMainForm.labFullScrClick(Sender: TObject);
begin
     Self.Tag := varIIF( Self.Tag = 0, 1, 0 );

     if Self.Tag = 1 then
     begin
          labFullScr.Visible := false;
          labFullScrExit.Left := labFullScr.Left;
          labFullScrExit.Visible := true;
     end
     else
     begin
          labFullScrExit.Visible := false;
          labFullScr.Visible := true;
     end;
end;

procedure TMainForm.rc_SearchTree(const AText: string);
var
  S, SString : string;
  I : Integer;
  aExpand : Boolean;
begin
  SString := Trim(AText);

  if SString<>PSString then
  begin
    PSString := LowerCase(SString);

    if (Length(PSString) > 1) or (PSString = '') then
    begin
      aExpand := PSString<>'';
      UniTreeMainMenu.BeginUpdate;

      try
        UniTreeMainMenu.ResetData;

        for I := 0 to UniTreeMainMenu.Items.Count - 1 do
        begin
          S := LowerCase( UniTreeMainMenu.Items[I].Text);

          UniTreeMainMenu.Items[I].Visible := (Length(PSString) = 0) or (Pos(PSString, S)>0);
          UniTreeMainMenu.Items[I].Expanded := aExpand;
        end;
      finally
        UniTreeMainMenu.EndUpdate;
      end;
    end;
  end;
end;

procedure TMainForm.btnGMapsClick(Sender: TObject);
var
   pLink : String;
begin
     //https://maps.google.com/?q=-3.7626815568369025,-38.54677452224053
     pLink := 'window.open(''https://maps.google.com/?q=%s,%s'', ''_blank'');';
     pLink := format( pLink, [ cLatitude , cLongitude ] );

     UniSession.AddJS( pLink );
end;

procedure TMainForm.UniDBGrid1CellClick(Column: TUniDBGridColumn);
begin
  if DM_RC.tbvencendohoje.RecordCount > 0 then
    begin
      if Column.FieldName = 'lista' then
        begin
          mm.varI_Code_Pessoa_historico := dm_rc.tbvencendohoje.FindField('PESSOA').AsInteger;
          mm.VarC_Atelagenerica         := 'HISTORICOFATURAMENTO';
          frmTELAGENERICA.ShowModal();
        end;
    end;
end;

procedure TMainForm.UniDBGrid2CellClick(Column: TUniDBGridColumn);
begin
  if DM_RC.tbvencendohoje.RecordCount > 0 then
    begin
      if Column.FieldName = 'lista' then
        begin
          mm.varI_Code_Pessoa_historico := dm_rc.tbvencendohoje.FindField('PESSOA').AsInteger;
          mm.VarC_Atelagenerica         := 'HISTORICOFATURAMENTO';
          frmTELAGENERICA.ShowModal();
        end;
    end;
end;

procedure TMainForm.UniDBGridlistamanifestoCellClick(Column: TUniDBGridColumn);
begin
  if Column.FieldName = 'opcao' then
    begin
      mm.varI_Code_Documento_Controle := DM_RC.tblistamanifestoabertoCODIGO.AsInteger;
      frmSEFAZMANIFESTO.ShowModal();
      DashboardManifestoMain();
    end;
end;

procedure TMainForm.UniFormClose(Sender: TObject; var Action: TCloseAction);
begin
UniSession.Terminate;
end;

procedure TMainForm.UniFormCreate(Sender: TObject);
begin
  inherited;
  // v. 3.2.0.4
  // Descomente as linhas abaixo para gerar o arquivo de informações dos blocos do formulário/frame informado( self )
  // Uncomment the lines below to generate the block information file of the informed form/frame ( self )
  //if DebugHook <> 0 then
  //   rc_GenerateRuntimeDebugBlocksFile( Self );

  RTL:= mm.RTL; // v. 3.1.0.63
  {$IFDEF RELEASE}
  dm_rc.rc_ProtectForm( Self );
  {$ENDIF}
  // pgGeneral controls Frames/Forms Opened in Tabs
  mm.oPgGeneral := TUnipagecontrol( FindComponent( 'pgGeneral' ) );
  // v. 3.2.0.4
  if FindComponent( 'paBS_Tabs' ) <> nil then
     if FindComponent( 'paBS_Tabs' ) <> nil then
        TUniControl( FindComponent( 'paBS_Tabs' ) ).Visible := ( mm.CONFIG_LAYOUT_TAB_OFF = 'OFF' ) ;

  // Controls the border focus
  mm.varC_JSNAME_HTMLFRAME := htmlFrame.JSName;

  mm.varI_ScreenWidth := UniApplication.ScreenWidth;
  mm.varI_ScreenHeight := UniApplication.ScreenHeight;
  dm_rc.rc_GetDeviceType;

  labAppName.Caption     := APP_NAME;//'<span class="hint--right" aria-label="Thank you!">' + APP_NAME + '</span>';// //<span class="hint--right" aria-label="Thank you!">RadCORE WEB</span>
  labAppVersion.Caption  := 'v.' + FileVersion + ' [ ' + mm.CONFIG_APP_TYPE + ' ]';
  labUser.Caption        := mm.vUserName ;
  labCompanyName.Caption := mm.varC_CompanyName;
  // v. 3.2.0.0
  //labCompanyName.JSInterface.JSCall('addCls', ['align-label-left-center']);
  if mm.RTL then
     labCompanyName.JSInterface.JSCall('addCls', ['align-label-right-center'])
  else
     labCompanyName.JSInterface.JSCall('addCls', ['align-label-left-center']);

  rc_AddCssClass( labAppVersion, 'rc-pulse' );

  Script.Text :=
      'Ext.QuickTips.init();' +
      'function launchIntoFullscreen(element) {' +
      '    if (element.requestFullscreen) {' +
      '        element.requestFullscreen();' +
      '    } else if (element.mozRequestFullScreen) {' +
      '        element.mozRequestFullScreen();' +
      '    } else if (element.webkitRequestFullscreen) {' +
      '        element.webkitRequestFullscreen();' +
      '    } else if (element.msRequestFullscreen) {' +
      '        element.msRequestFullscreen();' +
      '    }' +
      '    screen.orientation.lock("portrait");' + // v. 3.2.0.0
      '}' +
      'function exitFullscreen() {' +
      '    if (document.exitFullscreen) {' +
      '        document.exitFullscreen();' +
      '    } else if (document.mozCancelFullScreen) {' +
      '        document.mozCancelFullScreen();' +
      '    } else if (document.webkitExitFullscreen) {' +
      '        document.webkitExitFullscreen();' +
      '    }' +
      '}' ;

     // controlar o fluxo de abas pra nao estourar os linmites da tela
     mm.varI_TabIni := 0;
     mm.varI_TabEnd := 1;

     // ajustar os quadros de notificacao no topo
     paNotifications.Visible := False;
     paNotifications.Left := btnNotifications.Left - paNotifications.width + 20;
     paNotifications.top  := btnNotifications.Top + btnNotifications.Height;

     UniTreeMainMenu.JSInterface.JSCall( 'addCls' , ['treemenufullwidth']);

     btnFloatingFAB.JSInterface.JSCall( 'addCls' , ['bringtofront']);

     paNotifications.JSInterface.JSCall( 'addCls' , ['bringtofront']);
     paNotifications.JSInterface.JSCall( 'addCls' , ['transp-obj-0']);
     paNotifications.JSInterface.JSCall( 'addCls' , ['shadow-obj-tour']);

     //ScreenMask.Message := sm.ServerMessages.LoadingMessage;
     if mm.CONFIG_LAYOUT_USER_BG = 'ON' then
     begin
       paLayoutBgUser.Margins.Top := 0;
     end
     else
     begin
       paLayoutBgUser.Background.Picture.Bitmap := nil;
       paLayoutBgUser.Margins.Top := 20;
     end;

     rc_RenderLayout( Self );

     // v. 3.2.0.0
     //bsTabs_Main.JSInterface.JSCall('addCls', ['align-label-left-center']);
     if mm.RTL then
        bsTabs_Main.JSInterface.JSCall('addCls', ['align-label-right-center'])
     else
        bsTabs_Main.JSInterface.JSCall('addCls', ['align-label-left-center']);

     // geolocalization
     try
        // descomente a linha pra capturar posicao gps
//         rc_GetGeoPosition;
     except
     end;

     // o componente img padrao não consegui deixa-lo arredondado( algum conflito com CSS, talvez )
     // então usei uma forma alternativa com html
     try
        //carregar imagens
        imgAppIcon.Picture.LoadFromFile( sm.FilesFolderPath +  'images' + BACKSLASH + 'icon_mainmenu.png' );
        imgUSer.Caption := '<img id="userimg" class="avatar img-thumbnail" src="uploads/usuarios/' + ExtractFileName( mm.varC_User_Avatar ) + '" alt="User Img">';
     except

     end;

     labUser.JSInterface.JSCall( 'addCls' , ['shadow-text']);
     labAppName.JSInterface.JSCall( 'addCls' , ['shadow-text']);
     // remove BOLD
     labAppName.JSInterface.JSCall( 'addCls' , ['rc-font-light']);

     // Variaveis de controle do menu lateral - PODEM MUDAR SE A ATUACAO FOR ALTERADA em TEMPO DE EXECUCAO
     // DECLARAR VARIAVEIS DOS MENU BASICOS, MOVIMENTO, RELATORIOS e FERRAMENTAS
     //------------------------------------------------------------------------------------------------------------------------------
     // para zerar o ARRAY de itens de menu a cada exibição do menu lateral
     SetLength( mm.varA_FSideMenu , 200 );

     mm.varA_FSideMenu[ 0 ].option     := '';
     mm.varA_FSideMenu[ 0 ].table      := '';
     mm.varA_FSideMenu[ 0 ].image      := '';
     mm.varA_FSideMenu[ 0 ].permission := '';
     mm.varA_FSideMenu[ 0 ].Hidden     := false;
     mm.varA_FSideMenu[ 0 ].AskNew     := false;
     mm.varA_FSideMenu[ 0 ].GenID      := false;
     // v. 3.2.0.0
     rc_Translate( Self, nil , '' , mm.CONFIG_LANGUAGE );
     rc_ConfigTranslateMessages;
     mm.varI_NumMenu    := 1;
     // v. 3.2.0.7
     try
        dm_rc.rc_BuildMainMenu( '', UniTreeMainMenu );
     except on e:exception do
            begin
              dm_rc.rc_ShowError( 'Failed to create menus:' + e.Message );
            end;
     end;
     dm_rc.rc_ShowToaster( 'info', mm.MSG_WELCOME + mm.vUserName + ' !', false, 'pinItUp' );

     Color                 := StringToColor( mm.CONFIG_LAYOUT_BG_COLOR ); // v. 3.2.0.6 //Self.Color            := StringToColor( mm.CONFIG_LAYOUT_BG_COLOR );
     paBS_Tabs.Color       := Self.Color ;
     sboxGridBlock.Color   := Self.Color ;
     paLayoutLogo.Color    := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_BG_COLOR );
     labAppName.font.Color := StringToColor( mm.CONFIG_LAYOUT_MENU_LOGO_FONT_COLOR );

     rc_UpdateNotifications;
     rc_UpdateFloatButton;
end;

// Este recurso está em análise.
// Quando o FOCO está em algum campo, não responde mais o KEYDOWN
procedure TMainForm.UniFormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
//var
//   fClassName : string;
//   pFrame     : TObject;
//   pBtn       : TUniButton;
begin

//  if ( ssCtrl in Shift ) and ( ssShift in Shift ) then
//  begin
//     fClassName := pgGeneral.ActivePage.Name;
//
//     pFrame     := rc_FindControl( Copy( FClassName, 5, 100 ) );
//
//     if pFrame <> nil then
//     begin
//        case Key of
//          VK_F1 : begin
//                       //pBtn := TUniButton( TComponent(pFrame).FindComponent( 'btnNewReg' ) );
//                       //if pBtn <> nil then
//                       //   pBtn.Click;
//                  end;
//          VK_F2 : begin
//                       pBtn := TUniButton( TComponent(pFrame).FindComponent( 'btnNewReg' ) );
//                       if pBtn <> nil then
//                          pBtn.Click;
//                  end;
//          VK_F3 : begin
//                       pBtn := TUniButton( TComponent(pFrame).FindComponent( 'btnEditReg' ) );
//                       if pBtn <> nil then
//                          pBtn.Click;
//                  end;
//          VK_F4 : begin
//                       pBtn := TUniButton( TComponent(pFrame).FindComponent( 'btnDeleteReg' ) );
//                       if pBtn <> nil then
//                          pBtn.Click;
//                  end;
//          VK_F5 : begin
//                       pBtn := TUniButton( TComponent(pFrame).FindComponent( 'btnSaveReg' ) );
//                       if pBtn <> nil then
//                          pBtn.Click;
//                  end;
//          VK_F6 : begin
//                       pBtn := TUniButton( TComponent(pFrame).FindComponent( 'btnCancelReg' ) );
//                       if pBtn <> nil then
//                          pBtn.Click;
//                  end;
//        end;
//     end;
//  end;

end;
// v. 3.2.0.0
procedure TMainForm.UniFormReady(Sender: TObject);
begin
  rc_RenderLayout( Self );
end;
// v. 3.2.0.7
procedure TMainForm.UniFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
var
   pMainMenu ,
   oObj : TUniControl;
begin
     oObj := nil;
     try
        if dm_rc.rc_ObjectExists('frmLookUp_Lite') then frmLookUp_Lite.Close;

        mm.varI_ScreenWidth  := AWidth;
        mm.varI_ScreenHeight := AHeight;

        pMainMenu := TUniControl( dm_rc.rc_ScreenUpdate( true ) );

        // expande a altura além do espaço físico quando dispositivo estiver deitado
        if ( mm.varB_Mobile_Screen_Landscape ) and ( mm.varI_ScreenHeight < 480 )  then
           Self.Height := 480
        else
          Self.Height := mm.varI_ScreenHeight;

        Self.Width  := mm.varI_ScreenWidth;
        Self.Left   := ( mm.varI_ScreenWidth div 2 ) - (  Self.Width div 2 );
        Self.Top    := ( mm.varI_ScreenHeight div 2 ) - (  Self.Height div 2 );
        // v. 3.2.0.0
        rc_UpdateMainControls;

        if mm.oPgGeneral <> nil then
        begin
            oObj := rc_FindControl( Copy( mm.oPgGeneral.ActivePage.Name, 5, 100 ) );

            rc_AdjustFormsSize( pMainMenu ) ;
            dm_rc.rc_ResizeBlocks( oObj );

            if ( mm.varC_Form_Detail = nil ) and ( mm.varC_Form_Modal = nil ) then
               dm_rc.rc_DBGridUpdateAll( oObj )
            else
            if ( mm.varC_Form_Modal = nil ) then
               dm_rc.rc_DBGridUpdateAll( mm.varC_Form_Detail )
            else
            if rc_FindControl( mm.varC_Form_Modal.Name ) <> nil then
               dm_rc.rc_DBGridUpdateAll( mm.varC_Form_Modal );
        end
        else
        begin
            rc_AdjustFormsSize( pMainMenu ) ;
            dm_rc.rc_ResizeBlocks( Self );

            if ( mm.varC_Form_Detail = nil ) and ( mm.varC_Form_Modal = nil ) then
               dm_rc.rc_DBGridUpdateAll( oObj )
            else
            if ( mm.varC_Form_Modal = nil ) then
               dm_rc.rc_DBGridUpdateAll( mm.varC_Form_Detail )
            else
            if rc_FindControl( mm.varC_Form_Modal.Name ) <> nil then
               dm_rc.rc_DBGridUpdateAll( mm.varC_Form_Modal );
        end;

        rc_UpdateCharts;
     except on e:exception do
            begin
                 dm_rc.rc_ShowError( 'ScreenResize ' + sLineBreak + sLineBreak + e.Message );
            end;
     end;
end;
// v. 3.2.0.0
procedure TMainForm.UniFormShow(Sender: TObject);
begin
     mm.varDW_LastTick := GetTickCount;
     // comente / descomente para ativar / desativar o GUIDE TOUR
     // comment / uncomment to activate / deactivate the GUIDE TOUR

//     dm_rc.rc_ShowTour( Self );
     mm.varI_GuideTourSeq := 0;

  TabelaEmpresas    ('select * from empresas where codigo = ' + IntToStr(mm.varI_Code_Company));
  mm.M_FASTREPORT    :=  dm_rc.tbempresas.FindField('CAMINHO_FASTREPORT').AsString;
  mm.M_PATHIMPRESSAO :=  dm_rc.tbempresas.FindField('CAMINHO_IMPRESSAO').AsString;
  mm.M_IMAGEM        :=  dm_rc.tbempresas.FindField('CAMINHO_LOGO').AsString;
  mm.M_TIPOPESO      :=  dm_rc.tbempresas.FindField('TRABALHOKGSC').AsString;
  mm.M_PATHXML       :=  'C:\Arquivos\xml\';

  if mm.vari_user_RTR = 'S' then
    begin
      UniLabelassinaturaRT.Visible   := True;
      dm_rc.varM_MENSAGEMRT_INCLUI   := 'T'
    end
  else
    UniLabelassinaturaRT.Visible := false;

  if (mm.vUserTipoDashboard = 'Financeiro') or (mm.vUserTipoDashboard = 'Diretoria') or (mm.varI_User = 9999) or (mm.vUserMaster = 'S') then
    begin
      rcBlockFINANCEIRO.Visible := True;
      DashboardFinanceiroMain;
    end;

  if (mm.vUserTipoDashboard = 'Faturamento') or (mm.vUserTipoDashboard = 'Diretoria') or (mm.varI_User = 9999) or (mm.vUserMaster = 'S') then
    begin
      rcBlockFATURAMENTO.Visible := True;
      DashboardFaturamentoMain();
      DashboardManifestoMain();
    end;
end;

procedure TMainForm.UniLabelassinaturaRTClick(Sender: TObject);
begin
  frmMENURTASSINATURA.WebForm.JSInterface.JSCall('addCls', ['form-noborder']);
  frmMENURTASSINATURA.Show(
    procedure(Sender: TComponent; Result: Integer)
    begin

    end);
end;

procedure TMainForm.btnNotificationsClick(Sender: TObject);
begin

//       if not paNotifications.Visible then
//       begin
//            paNotifications.Left := btnNotifications.Left - paNotifications.width + 40 ;
//            paNotifications.top  := btnNotifications.Top + btnNotifications.Height ;

//            paNotifications.Visible := True;

//            UniSession.AddJS( paNotifications.JSName +
//                            '.animate({ duration: ' + inttostr( 400 ) +
//                            ', to: { y:' + inttostr( btnNotifications.Top + btnNotifications.Height + 6  ) +            // vertical
//                            ', opacity: ' + inttostr( 1  ) + ' } } );');
//       end
//       else
//       begin
//            rc_CloseNotifications;
//       end;

end;

procedure TMainForm.AtualizaDashboard;
begin
  DashboardFinanceiroMain();
  DashboardFaturamentoMain();
  DashboardManifestoMain();
end;

procedure TMainForm.btnCfgClick(Sender: TObject);
begin
  if mm.varI_User = 9999 then  // login principal
    begin
     frmThemes.WebForm.JSInterface.JSCall( 'addCls' , ['form-noborder']);
     frmThemes.Show( procedure(Sender: TComponent; Result:Integer)
                            begin
                              //callback....nesse caso, não é necessário tratar o retorno
                            end
                          );
    end;
end;

procedure TMainForm.btnMenuClick(Sender: TObject);
begin
     if paLayoutMainMenu.Width > 0 then
        paLayoutMainMenu.Width := 0
     else
        paLayoutMainMenu.Width := 260;
     //clicou no MENU
     paLayoutMainMenu.tag := 1;
     // v. 3.2.0.0
     rc_UpdateMainControls;

     rc_AdjustFormsSize( paLayoutMainMenu );

     sboxMain.DoAlignControls; // Feedback from Farshad

     if mm.oPgGeneral <> nil then
        dm_rc.rc_ResizeBlocks( rc_FindControl( Copy( mm.oPgGeneral.ActivePage.Name , 5, 100 ) ) );

     rc_UpdateCharts;
end;
// v. 3.2.0..7
procedure TMainForm.htmlFrameAjaxEvent(Sender: TComponent; EventName: string;
  Params: TUniStrings);
var
   pQryMaster : TFDQuery;
   pDsMaster  : TDataSource;

   pFrame, pFrame2 : TObject;

   pLabel : TUniLabel;

   pVariacaoCep, cTemp, cTemp2, cTemp3, cDataSource, cQuery,
   FClassName: string;

   pObj : TUniControl;
   // v. 3.1.0.61
   bAbort       : boolean;
   pPageControl : TUniPageControl;

   i : integer;
begin

   if dm_rc.rc_ObjectExists('frmLookUp_Lite') then frmLookUp_Lite.Close;

   pQryMaster  := nil;
   pDsMaster   := nil;
   cDataSource := '';
   cQuery      := '';

   if (EventName = '_onFocus') then
   begin
       FClassName := Params.Values['pform'];

       pFrame := rc_FindControl( FClassName );

       if pFrame = nil then
       begin
            if mm.oPgGeneral <> nil then
            begin
              fClassName := Copy( mm.oPgGeneral.ActivePage.Name, 5, 100 );
              pFrame     := rc_FindControl( FClassName );
            end;
       end;

       if pFrame <> nil then
       begin
          pObj := TUniControl( TComponent(pFrame).FindComponent( Params.Values[ 'pobj' ] ) );

          if pObj <> nil then
          begin
              rc_RemoveCssClass( pObj , 'inputWithIcon' + varIIF( mm.RTL, '-rtl', '' ) + ' inputIconBg' + varIIF( mm.RTL, '-rtl', '' ) );
              rc_AddCssClass( pObj , 'inputWithIconFocus' + varIIF( mm.RTL, '-rtl', '' ) + ' inputIconBg' + varIIF( mm.RTL, '-rtl', '' ) );
              // v. 3.1.0.61 testing
//              if mm.varB_Mobile_Screen then
//              begin
//                   rc_MoveAnimationForm( TUniForm( pFrame ),
//                                         TUniForm( pFrame ).left,
//                                         TUniForm( pFrame ).left,
//                                         TUniForm( pFrame ).top,
//                                         TUniForm( pFrame ).top - 200, //( UniSession.UniApplication.ScreenHeight div 2 ) - ( self.Height div 2  ),
//                                         400,
//                                         1 ) ;
//              end;
          end;
       end;
   end
   else
   if (EventName = '_onBlur') then
   begin
       FClassName := Params.Values['pform'];

       pFrame := rc_FindControl( FClassName );

       if pFrame = nil then
       begin
            if mm.oPgGeneral <> nil then
            begin
              fClassName := Copy( mm.oPgGeneral.ActivePage.Name, 5, 100 );
              pFrame     := rc_FindControl( FClassName );
            end;
       end;

       if pFrame <> nil then
       begin
          pObj := TUniControl( TComponent(pFrame).FindComponent( Params.Values[ 'pobj' ] ) );

          if pObj <> nil then
          begin
              rc_RemoveCssClass( pObj , 'inputWithIconFocus' + varIIF( mm.RTL, '-rtl', '' ) + ' inputIconBg' + varIIF( mm.RTL, '-rtl', '' ) );
              rc_AddCssClass( pObj , 'inputWithIcon' + varIIF( mm.RTL, '-rtl', '' ) + ' inputIconBg' + varIIF( mm.RTL, '-rtl', '' ) );

              // v. 3.1.0.61 testing
//              if mm.varB_Mobile_Screen then
//              begin
//                   rc_MoveAnimationForm( TUniForm( pFrame ),
//                                         TUniForm( pFrame ).left,
//                                         TUniForm( pFrame ).left,
//                                         TUniForm( pFrame ).top,
//                                         TUniForm( pFrame ).top + 200, //( UniSession.UniApplication.ScreenHeight div 2 ) - ( self.Height div 2  ),
//                                         400,
//                                         1 ) ;
//              end;
          end;
       end;
   end
   else
   if EventName = '_dashboard' then
   begin
        //if Params.Values['obj'] = 'produto 1' then
           dm_rc.rc_ShowMessage( Params.Values['item'] );
   end
   else
   if EventName = '_notifications' then
   begin
        //if Params.Values['obj'] = 'produto 1' then
           dm_rc.rc_ShowMessage( Params.Values['tipo'] );
   end
   else
   if EventName = '_mainFloatButton' then
   begin
        if Params.Values['tipo'] = 'off' then
           close
        else
           dm_rc.rc_ShowMessage( Params.Values['tipo'] );
   end
   else
   if EventName = '_CloseForm' then
   begin
        if Params.Values['form'] <> '' then
        begin
             FClassName := Params.Values['form'];

             pFrame := rc_FindControl( FClassName );

             if pFrame <> nil then
             begin
                  TUniForm( pFrame ).Close;
             end;
        end;
   end
   else
   if EventName = '_getXY' then
   begin
        mm.varI_PosX := StrToIntDef( Params.Values['x'] , 0 );
        mm.varI_PosY := StrToIntDef( Params.Values['y'] , 0 );
        mm.varI_PosH := StrToIntDef( Params.Values['h'] , 0 );
        mm.varI_PosW := StrToIntDef( Params.Values['w'] , 0 );
   end
   else
   if EventName = '_SetFormLeft' then
   begin
        if Params.Values['form'] <> '' then
        begin
             FClassName := Params.Values['form'];

             pFrame := rc_FindControl( FClassName );

             if pFrame <> nil then
             begin
                  TUniForm( pFrame ).Left := StrToIntDef( Params.Values['value'], TUniForm( pFrame ).Left );
             end;
        end;
   end
   else
   // EVENTOS rc_BootStrapRender
   //
   // bsPill MAINMENU hint -> [[bsPills:light cls:btn-sm pgc:pgGeneral]]
   // v. 3.1.0.61
   if ( EventName.ToLower = 'bstabs' ) or ( EventName.ToLower = 'bscardtabs' ) or ( EventName.ToLower = 'bspills' ) then
   begin
       bAbort := false; // v. 3.2.0..7
       FClassName := Params.Values['form'];

       if ( Params.Values['tab'] = 'TabLeft' ) or ( Params.Values['tab'] = 'TabRight' ) then
       begin
              mm.varI_TabIni := mm.varI_TabIni + varIIF( Params.Values['tab'] = 'TabRight', varIIF( mm.varB_Mobile_Screen, 1, 6 ), varIIF( mm.varB_Mobile_Screen, -1, -6 ) );

              if Params.Values['tab'] = 'TabRight' then
                 if ( mm.varI_TabEnd - mm.varI_TabIni > varIIF( mm.varB_Mobile_Screen, 1, 6 ) ) then
                    mm.varI_TabIni := mm.varI_TabEnd - varIIF( mm.varB_Mobile_Screen, 1, 6 );

              if mm.varI_TabIni < 0 then
                 mm.varI_TabIni := 0;
       end;


       pFrame := rc_FindControl( FClassName );

       if pFrame <> nil then
       begin
           if lowercase( TComponent(pFrame).Name ) = 'mainform' then
           begin
              pObj := TUniPageControl( FindComponent( Params.Values['pgcontrol'] ) );

              if ( Params.Values['tab'] <> '_closeTab' ) and ( Params.Values['tab'] <> '_closeAllTabs' ) then
              begin
                 TUniPageControl( FindComponent( Params.Values['pgcontrol'] ) ).ActivePage := TuniTabSheet( FindComponent( Params.Values[lowercase(EventName)] ) );
                 fClassName := TUniPageControl( FindComponent( Params.Values['pgcontrol'] ) ).ActivePage.Name;
              end
              else
              begin
                 if ( Params.Values['tab'] = '_closeTab' ) then
                    dm_rc.rc_CloseTab( MainForm, Params.Values['pgcontrol'], Params.Values[lowercase(EventName)] )
                 else
                 if ( Params.Values['tab'] = '_closeAllTabs' ) then
                 begin
                      pPageControl := TUniPageControl( FindComponent( Params.Values['pgcontrol'] ) );

                      i := pPageControl.PageCount-1;
                      while ( i > 0 ) do
                      begin
                           if pPageControl.Pages[ i ] <> nil then
                              if pPageControl.Pages[ i ].TabVisible then
                              begin
                                   cTemp := trim( TUniTabSheet( pPageControl.Pages[ i ] ).Name );
                                   // v. 3.2.0.6
                                   if ( cTemp <> 'tabDashBoard' ) then
                                   begin
                                      if ( Pos( 'closebtn:false', TUniTabSheet( pPageControl.Pages[ i ] ).Hint ) = 0 ) then
                                         bAbort := dm_rc.rc_CloseTab( MainForm, Params.Values['pgcontrol'], cTemp )
                                      else
                                         bAbort := true;
                                   end;
                              end;

                           if not bAbort then
                              i := pPageControl.PageCount-1
                           else
                              i := 0;
                      end;
                 end;
              end;
           end
           else
           begin
              pObj := TUniPageControl( TComponent(pFrame).FindComponent( Params.Values['pgcontrol'] ) );

              if Params.Values['tab'] <> '_closeTab' then
              begin
                 TUniPageControl( TComponent(pFrame).FindComponent( Params.Values['pgcontrol'] ) ).ActivePage := TuniTabSheet( TComponent(pFrame).FindComponent( Params.Values[lowercase(EventName)] ) );
                 fClassName := TUniPageControl( TComponent(pFrame).FindComponent( Params.Values['pgcontrol'] ) ).ActivePage.Name;
              end
              else
              begin
                 if ( Params.Values['tab'] = '_closeTab' ) then
                    dm_rc.rc_CloseTab( pFrame, Params.Values['pgcontrol'], Params.Values[lowercase(EventName)] )
                 else
                 if ( Params.Values['tab'] = '_closeAllTabs' ) then
                 begin
                      pPageControl := TUniPageControl( FindComponent( Params.Values['pgcontrol'] ) );

                      i := pPageControl.PageCount-1;
                      while i > 0 do
                      begin
                           if pPageControl.Pages[ i ] <> nil then
                              if pPageControl.Pages[ i ].TabVisible then
                              begin
                                   cTemp := trim( TUniTabSheet( pPageControl.Pages[ i ] ).Name );
                                   // v. 3.2.0.6
                                   if ( Pos( 'closebtn:false', TUniTabSheet( pPageControl.Pages[ i ] ).Hint ) = 0 ) then
                                      bAbort := dm_rc.rc_CloseTab( pFrame, Params.Values['pgcontrol'], cTemp )
                                   else
                                      bAbort := true;
                              end;

                           if not bAbort then
                              i := pPageControl.PageCount-1
                           else
                              i := 0;
                      end;
                 end;
              end;
           end;
           // v. 3.2.0.7
           // update TABSHEET colors
           //if UniApplication.FindComponent('MainForm' ) <> nil then
           //   dm_rc.rc_ResizeBlocks( MainForm );
           if UniApplication.FindComponent('MainForm' ) <> nil then
              if mm.oPgGeneral <> nil then
                 if mm.oPgGeneral.ActivePageIndex = 0 then
                    dm_rc.rc_ResizeBlocks( MainForm );

           pFrame2 := rc_FindControl( Copy( FClassName, 5, 100 ) );

           if pFrame2 <> nil then
           begin
              dm_rc.rc_ResizeBlocks( pFrame2 );
           end
           else // bsPill dentro de outros forms/frames
           begin
                FClassName := Params.Values['form'];
                pFrame2 := rc_FindControl( FClassName );
                if FClassName <> 'MainForm' then
                begin
                   pFrame2 := rc_FindControl( FClassName );
                   if pFrame2 <> nil then
                      dm_rc.rc_ResizeBlocks( pFrame2 );
                end;
           end;
           rc_UpdateCharts;
       end;
   end
   else
   if ( EventName = 'bsswt' ) or ( EventName = 'bschk' ) then
   begin
       EventName := Copy( EventName, 3, 3 );

       FClassName := Params.Values['form'];

       pFrame := rc_FindControl( FClassName );

       if ( pFrame <> nil ) then
       begin
           if lowercase( TComponent(pFrame).Name ) = 'mainform' then
           begin
              pObj := TUniLabel( FindComponent( Params.Values[ EventName ] ) );
              pObj.tag := varIIF( pObj.tag = 0, 1, 0 );

              cTemp := pObj.Hint;
              cTemp := rc_GetHintProperty( 'field:', cTemp );
           end
           else
           begin
              pObj := TUniLabel( TComponent(pFrame).FindComponent( Params.Values[ EventName ] ) );
              pObj.tag := varIIF( pObj.tag = 0, 1, 0 );

              cTemp := pObj.Hint;
              cTemp := rc_GetHintProperty( 'field:', cTemp , True );

              if cTemp <> '' then
              begin
                 cQuery     := Params.Values[ lowercase( 'query' ) ];
                 pQryMaster := TFDQuery( TComponent( pFrame ).FindComponent( cQuery ) );

                 if pQryMaster <> nil then
                    if ( pQryMaster.State in [dsInsert, dsEdit ] ) and ( Params.Values[ 'field' ] <> '' ) then
                    begin
                         try
                            if DataTypeIsNumber( pQryMaster.FieldByName( Params.Values[ 'field' ] ).DataType ) then
                               pQryMaster.FieldByName( Params.Values[ 'field' ] ).Value := pObj.tag
                            else
                               if pObj.tag = 0 then
                                  pQryMaster.FieldByName( Params.Values[ 'field' ] ).Value := mm.VALUE_NO
                               else
                                  pQryMaster.FieldByName( Params.Values[ 'field' ] ).Value := mm.VALUE_YES;
                         except on e:exception do
                                begin
                                     dm_rc.rc_ShowError( 'Field: ' + Params.Values[ 'field' ] + ' ' + e.Message )
                                end;
                         end;
                    end;
              end;
           end;

           if lowercase( TComponent(pFrame).Name ) = 'mainform' then
              dm_rc.rc_BootStrapRender( MainForm, ( cTemp <> '' ) , pObj )
           else
              dm_rc.rc_BootStrapRender( pFrame , ( cTemp <> '' ) , pObj ) ;

           if lowercase( pObj.name ) = 'swtcamera' then
              UniSession.AddJS( varIIF( pObj.tag = 1 , 'rc_cameraOn();' , 'rc_cameraOff();' )  );
       end;
   end
   else
   if ( EventName = 'bsrgp' ) then
   begin
       FClassName := Params.Values['form'];

       pFrame := rc_FindControl( FClassName );

       if pFrame <> nil then
       begin
           pLabel := TUniLabel( TComponent(pFrame).FindComponent( Params.Values[ EventName ] ) );
           cTemp3 := lowercase( dm_rc.rc_GetParamFromRGP( pLabel.Name, rptFIELD ) );

           // all itemn set tag = 0
           for I := 0 to TComponent(pFrame).ComponentCount - 1 do
           begin
               if TComponent(pFrame).Components[i] is TUniLabel then
               begin
                   cTemp  := lowercase( TComponent(pFrame).Components[i].Name ); // bsrgp1_M_Tipo

                   if ( Copy( cTemp, 1, 5 ) = 'bsrgp' ) then
                   begin
                      cTemp2 := lowercase( dm_rc.rc_GetParamFromRGP( cTemp, rptFIELD ) );

                      if cTemp2 = cTemp3 then
                      begin
                         TUniLabel( TComponent(pFrame).Components[i] ).Tag := 0;

                         if lowercase( TComponent(pFrame).Name ) = 'mainform' then
                            dm_rc.rc_BootStrapRender( MainForm , ( pQryMaster <> nil ), TUniLabel( TComponent(pFrame).Components[i] ) )
                         else
                            dm_rc.rc_BootStrapRender( pFrame , ( pQryMaster <> nil ) , TUniLabel( TComponent(pFrame).Components[i] ) );
                      end;
                   end;
               end;
           end;

           pLabel := TUniLabel( TComponent(pFrame).FindComponent( Params.Values[ EventName ] ) );

           // set tag = 1 to Item Selected
           pLabel.Tag := 1;

           cQuery     := Params.Values[ lowercase( 'query' ) ];
           pQryMaster := TFDQuery( TComponent( pFrame ).FindComponent( cQuery ) );

           if pQryMaster <> nil then
              if ( pQryMaster.State in [dsInsert, dsEdit ] ) and ( Params.Values[ 'field' ] <> '' ) then
              begin
                   try
                      if DataTypeIsNumber( pQryMaster.FieldByName( Params.Values[ 'field' ] ).DataType ) then
                      begin
                         pQryMaster.FieldByName( Params.Values[ 'field' ] ).Value := Params.Values[ 'value' ].ToInteger;
                      end
                      else
                      begin
                         if pLabel.tag = 0 then
                            pQryMaster.FieldByName( Params.Values[ 'field' ] ).Value := ''
                         else
                            pQryMaster.FieldByName( Params.Values[ 'field' ] ).Value := Params.Values[ 'value' ];
                      end;
                   except on e:exception do
                          begin
                               dm_rc.rc_ShowError( 'Field: ' + Params.Values[ 'field' ] + ' ' + e.Message )
                          end;
                   end;
              end;

           if lowercase( TComponent(pFrame).Name ) = 'mainform' then
              dm_rc.rc_BootStrapRender( MainForm , ( pQryMaster <> nil ), pLabel )
           else
              dm_rc.rc_BootStrapRender( pFrame , ( pQryMaster <> nil ) , pLabel );
       end;
   end
   else
   if SameText( EventName, '_GeoLocation' ) then
   begin
      if (Params.Values['lat'] <> '') then
      begin
        cLatitude  := Params.Values['lat'];
        cLongitude := Params.Values['lng'];
      end;
   end
   else
   if EventName = '_DadosCep' then   // específico para Brasil
   begin
        // pegar a referencia do FRAME ATUAL
        FClassName := Params.Values['form'];

        pVariacaoCep := Params.Values['tipocep'];

        pFrame := rc_FindControl( FClassName );

        if pFrame <> nil then
        begin
            pQryMaster := TFDQuery( TComponent( pFrame ).FindComponent( Params.Values['qry'] ) );

            if pQryMaster <> nil then
               if pQryMaster.State in [dsInsert, dsEdit ] then
               begin
                    if pQryMaster.FieldList.IndexOf ( 'endereco' + pVariacaoCep ) >= 0 then
                       pQryMaster.FieldByName( 'endereco' + pVariacaoCep ).AsString  := Params.Values['rua'];

                    if pQryMaster.FieldList.IndexOf ( 'bairro' + pVariacaoCep ) >= 0 then
                       pQryMaster.FieldByName( 'bairro' + pVariacaoCep ).AsString    := Params.Values['bairro'];

                    // no cad. que tem CEP...UF e CIDADE sao vinculadas a um CODIGO e nao a DESCRICAO LIVRE
                    if pQryMaster.FieldList.IndexOf ( 'codiuf' + pVariacaoCep ) >= 0 then
                    begin
                       dm_rc.memTemp.Close;
                       dm_rc.memTemp.Data := dm_rc.rc_GetRecord( mm.varB_Use_FireDac ,
                                                                  false,
                                                                  ' select codigo, descricao ' +
                                                                  ' from ufs ' +
                                                                  ' where descricao = ' + QuotedStr( Params.Values['uf'] ) );
                       if mm.varC_LastErrorMsg <> '' then
                       begin
                           dm_rc.rc_ShowError( mm.varC_LastErrorMsg );
                           Exit;
                       end
                       else
                           pQryMaster.FieldByName( 'codiuf' + pVariacaoCep ).AsString    := dm_rc.memTemp.FieldByName('codigo').AsString;
                    end
                    else
                       pQryMaster.FieldByName( 'uf' + pVariacaoCep ).AsString    := Params.Values['uf'];

                    if pQryMaster.FieldList.IndexOf ( 'codicidade' + pVariacaoCep ) >= 0 then
                    begin
                       dm_rc.memTemp.Close;
                       dm_rc.memTemp.Data := dm_rc.rc_GetRecord( mm.varB_Use_FireDac ,
                                                                  false,
                                                                  ' select codigo, descricao ' +
                                                                  ' from cidades ' +
                                                                  ' where descricao = ' + QuotedStr( ansiuppercase( Params.Values['cidade']  ) ) );
                       if mm.varC_LastErrorMsg <> '' then
                       begin
                           dm_rc.rc_ShowError( mm.varC_LastErrorMsg );
                           Exit;
                       end
                       else
                           pQryMaster.FieldByName( 'codicidade' + pVariacaoCep ).AsString    := dm_rc.memTemp.FieldByName('codigo').AsString;
                    end
                    else
                       pQryMaster.FieldByName( 'cidade' + pVariacaoCep ).AsString := Params.Values['cidade'];

                    // codiibge nao vai existir em todas telas q tem pesquisa de cep
                    if pQryMaster.FieldList.IndexOf ( 'codiibge' + pVariacaoCep ) >= 0 then
                       pQryMaster.FieldByName( 'codiibge' + pVariacaoCep ).AsInteger := StrToIntDef( Params.Values['ibge'], 0 );

                    dm_rc.rc_LookUpUpdateData( pFrame );
               end;
        end;
   end
   else
   if EventName = '_DadosCepErro'  then
   begin
       dm_rc.rc_ShowError( 'Falha na consulta do CEP ou CEP Inválido' );
   end
   else
   if EventName = '_PositionXY'  then
   begin
       //dm_rc.rc_ShowMessage( 'obj tour:' + Params.Values['PosX'] + ' - ' + Params.Values['PosY'] );

 //      ed_X.Text := Params.Values['PosX'];
 //      ed_Y.Text := Params.Values['PosY'];

 //      pForm     := TUniForm( Params.Values['Form'] );
 //
 //      paObjTour := TUniControl( pForm.FindComponent( Params.Values['ObjetoAtual'] ));
 //
 //      paObj2 := TUniContainerPanel( MainForm.FindComponent( 'paObjFeatured' ) );
 //      paObj2.Top    := StrToIntDef( MainForm.ed_Y.Text, 0 );
 //      paObj2.Left   := StrToIntDef( MainForm.ed_X.Text, 0 );
 //      paObj2.Width  := TUniControl( paObjTour ).Width;
 //      paObj2.Height := TUniControl( paObjTour ).Height;
 //
 //      paObj3 := TUniContainerPanel( pForm.FindComponent( 'paMessage' ) );
 //
 //      paObj3.Top  := StrToIntDef( MainForm.ed_Y.Text, 0 );
 //      paObj3.Left := StrToIntDef( MainForm.ed_X.Text, 0 );
   end;

end;

procedure TMainForm.rc_GetMyIP;
Begin
  //Reference: https://www.ipify.org/
  UniSession.AddJS(
    '$(function() {'+
    '  $.getJSON("https://api.ipify.org?format=jsonp&callback=?",'+
    '    function(json) {'+
    '      ajaxRequest(' + self.WebForm.JSName + ', "ClientIPAddr", ["ip="+json.ip]);'+
    '    }'+
    '  );'+
    '});'
    );
End;

procedure TMainForm.rc_GetGeoPosition;
begin
   UniSession.AddJS(
                 'navigator.geolocation.getCurrentPosition'+
                 '( '+
                   'function(position)'+
                   '{ '+
                   '    ajaxRequest( MainForm.htmlFrame, "_GeoLocation" ,' +
                   '      ["lat=" + position.coords.latitude, ' +
                   '       "lng=" + position.coords.longitude, ' +
                   '       "acc=" + position.coords.accuracy, ' +
                   '       "alt=" + position.coords.altitude, ' +
                   '       "altacc=" + position.coords.altitudeAccuracy, ' +
                   '       "head=" + position.coords.heading, ' +
                   '       "ts=" + position.coords.timestamp ' +
                   '      ]);' +
                   '} '+
                   ', '+

                   'function(error)'+
                   '{ '+
                  '  switch(error.code) '+
                  '  { '+
                '    case 0: '+ // UnKnown
                    '      alert(error.message); '+
                '      break; '+
                '    case 1: '+ // Denied
                    '      alert(error.message); '+
                    '      break; '+
                '    case 2: '+ // UnAvailable
                    '      alert(error.message); '+
                    '      break; '+
                '    case 3: '+ // TimeOut
                    '      alert(error.message); '+
                    '      break; '+
                    '  } '+
                    '} '+
                 ') '
                );
end;

procedure TMainForm.paLayoutMainMenuResize(Sender: TUniControl; OldWidth,
  OldHeight: Integer);
begin
     if mm.oPgGeneral <> nil then
        dm_rc.rc_ResizeBlocks( rc_FindControl( Copy( mm.oPgGeneral.ActivePage.Name , 5, 100 ) ) );

     rc_UpdateCharts;
end;

procedure TMainForm.paCalendarClick(Sender: TObject);
begin

     rc_CloseNotifications;
end;

procedure TMainForm.paEmailClick(Sender: TObject);
begin
     rc_CloseNotifications;
end;

procedure TMainForm.paMessagesClick(Sender: TObject);
begin
     rc_CloseNotifications;
end;

procedure TMainForm.paPaymentsClick(Sender: TObject);
begin
     rc_CloseNotifications;
end;

procedure TMainForm.paTicketsClick(Sender: TObject);
begin
     rc_CloseNotifications;
end;

procedure TMainForm.paTodoClick(Sender: TObject);
begin
     rc_CloseNotifications;
end;

procedure TMainForm.pgGeneralChangeValue(Sender: TObject);
var
  Ts : TUniTabSheet;
  Nd : TUniTreeNode;
begin
  Ts := mm.oPgGeneral.ActivePage;

  if Ts.Tag > 0 then
  begin
     Nd := Pointer(Ts.Tag);
     UniTreeMainMenu.Selected := Nd;
  end;

  paBackGround.Color := StringToColor( mm.CONFIG_LAYOUT_BG_COLOR ) ;
end;

procedure TMainForm.TabSheetClose(Sender: TObject; var AllowClose: Boolean);
var
  Ts : TUniTabSheet;
  Nd : TUniTreeNode;
begin

  Ts := Sender as TUniTabSheet;
  Nd := Pointer(Ts.Tag);

  if Assigned(Nd) then
  begin
    if Ts.Tag > 0 then
       Nd.Data := nil;

    // para o rc_BootStrapRender não exibir( podia usar o .Data, mas o VISIBLE´já usado pras ABAS que são
    // específicas a determinadas atuações...
    //
    Ts.TabVisible := false;

    if UniTreeMainMenu.Selected = Nd then
       UniTreeMainMenu.Selected := nil;
  end;

  if mm.oPgGeneral <> nil then
     dm_rc.rc_ResizeBlocks( rc_FindControl( Copy( mm.oPgGeneral.ActivePage.Name , 5, 100 ) ) );
end;

procedure TMainForm.TimerVerificassinaturaRTTimer(Sender: TObject);
begin
  if mm.vari_user_RTR = 'S' then
    begin
      if dm_rc.varM_MENSAGEMRT_INCLUI   = 'T' then
        begin
          verificapendencia();
          dm_rc.varM_MENSAGEMRT_INCLUI := 'F';
          dm_rc.rc_ShowToasterRT('info', 'Chegou uma Solicitação de Assinatura - Verifique!', True,'pinItUp');
        end;

      if dm_rc.varM_MENSAGEMRT_UPDATEDELETE = 'T' then
        begin
          verificapendencia();
          dm_rc.varM_MENSAGEMRT_UPDATEDELETE := 'F';
        end;
    end;
end;

// feedback: Mesut from Turkey
{$ifdef MSWINDOWS}
procedure TMainForm.rc_TrimAppMemorySize;
var
  MainHandle : THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID) ;
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF) ;
    CloseHandle(MainHandle) ;
  except
  end;
  Application.ProcessMessages;
end;
{$endif}
{$ifdef LINUX}
procedure TMainForm.rc_TrimAppMemorySize;
begin
  //mesut
end;
{$endif}

procedure TMainForm.UniTimerdashboardTimer(Sender: TObject);
begin
  AtualizaDashboard();
//  dm_rc.rc_ShowToaster( 'info', 'atualizao', false, 'pinItUp' );
end;

procedure TMainForm.UniTimerverificawebTimer(Sender: TObject);
var
  Mensagem  : TMsgInfo;
  Resposta  : string;
begin

  if mm.varI_User <> 9999 then
    begin
      try

        Mensagem := HttpGetMSG(caminho('HTTPGETFINANCEIRO=')+'mensagemaviso/'+mm.varC_Doc_Customer);

        if Mensagem.Registro = 1 then
          begin
            FrmTELAAVISOMSG.UniLabeltitulo.Caption := Mensagem.Titulo;
//            FrmTELAAVISOMSG.UniMemocorpo.text      := Mensagem.Corpo;
            FrmTELAAVISOMSG.showmodal();
          end;

        Mensagem.Free;

        if StrAllTrim(HttpGet(caminho('HTTPGETFINANCEIRO=')+'financeirosistema/'+mm.varC_Doc_Customer)) = 'Aviso' then
          frmTELAAVISOSISTEMA.ShowModal()
        else
        if StrAllTrim(HttpGet(caminho('HTTPGETFINANCEIRO=')+'financeirosistema/'+mm.varC_Doc_Customer)) = 'Bloqueia Total' then
          frmBLOQUEIOSISTEMA.ShowModal();

      except
         on e:exception do
          gera_log(e.message);
      end;
    end;
end;

procedure TMainForm.UniTreeMainMenuClick(Sender: TObject);
begin
     rc_AddFormFrameInTab( UniTreeMainMenu );
end;
procedure TMainForm.verificapendencia;
var
  qtependencia:integer;
begin
  //**************************************************//
  // CARD
  //**************************************************//
  qtependencia              := 0;
  qtependencia              := AssinaturaPendente(MM.varI_Code_Company,mm.vari_User_RT);
  UniLabelassinaturaRT.Caption := '<i class="fas fa-file-signature fa 2x"></i><span class="badge bg-warning">'+IntToStr(qtependencia)+'</span>';
  //**************************************************//
end;

// v. 3.2.0..7
procedure TMainForm.rc_AddFormFrameInTab( pMenu : TUniTreeMenu ; pFormFrameTitle, pTableName, pFormFrameName : string ; pIsMenuReport, pIsModal : Boolean ; pCallFormOp : TRCAddFormParamType ; pRecord : integer );
var
   oObj : TUniControl;
   nodeMenu : TUniTreeNode;
   nodeMenuItem : string;

   pNewIndex, iMenuItemIndex,
   f, i, t :  integer;

   Nd  : TUniTreeNode;
   Ts  : TUniTabSheet;

   FrC : TUniFrameClass;
   Fr  : TUniFrame;

   fClass : TClass;

   FrmC : TUniFormClass;
   Frm  : TUniForm;

   cTmp1, cTmp2, cFormName,
   FClassName, Path: string;

   sAccessControl : string;

   bFormDoNotExists,
   bFormWithoutCRUD,
   bAddBtn,
   bModal : Boolean;
   // v. 3.2.0.7
   procedure rc_SetOptionParams( pOption, pTable, pRestrictionField : string ); overload;
   begin
        bModal                                    := false;

        mm.varC_Table_Search           := ' ' + pTable + ' ';
        mm.varC_SelectedItem_FSideMenu := pOption;

        // montar NOME DO FORM baseado no nome da TABELA contida no item do menu SELECIONADO
        // mount FORM NAME based on the TABLE name contained in the SELECTED menu item
        FClassName := '';

        path := pFormFrameTitle;

        if trim( pTable ) <> '' then
        begin
           // Ex. opcao do Menu: Imagens | cli_imagens__imagens
           //
           if Pos( '__' , mm.varC_Table_Search ) = 0 then
           begin
              mm.varC_LinkedFormFrame := Trim(mm.varC_Table_Search);

              FClassName              := FRM_CLASS_CRUD_PREFIX + mm.varC_LinkedFormFrame;
              sAccessControl          := mm.varC_LinkedFormFrame;//mm.varC_Table_Search; // v. 3.1.0.60
           end
           else
           //
           // it´s a report ?
           //
           if Pos( '__report' , mm.varC_Table_Search ) > 0 then
           begin
              // it´s a report ?
              //
              bFormWithoutCRUD        := ( Pos( '__report' , Trim( mm.varC_Table_Search ) ) > 0 );

              mm.varC_LinkedFormFrame := Trim(Copy( mm.varC_Table_Search, Pos( '__' , mm.varC_Table_Search ) + 2, 100 ));

              FClassName              := FRM_CLASS_PREFIX + mm.varC_LinkedFormFrame;
              sAccessControl          := mm.varC_LinkedFormFrame;//mm.varC_Table_Search; // v. 3.1.0.60
           end
           else
           //
           // FORM name <> table name or
           // FORM without CRUD ( inherited of frmBaseCRUD )
           //
           begin
              bModal                  := ( Pos( '__modal_' , mm.varC_Table_Search ) > 0 );

              mm.varC_LinkedFormFrame := Trim(Copy( mm.varC_Table_Search, Pos( '__' , mm.varC_Table_Search ) + 2, 100 ));
              mm.varC_Table_Search    := Trim(Copy( mm.varC_Table_Search, 1, Pos( '__' , mm.varC_Table_Search ) - 1 ));

              // FORM name <> table name
              if mm.varC_Table_Search <> '' then
              begin
                   FClassName        := FRM_CLASS_CRUD_PREFIX + mm.varC_LinkedFormFrame;
                   sAccessControl    := mm.varC_LinkedFormFrame;//mm.varC_Table_Search; // v. 3.1.0.60
              end
              else
              // FORM without CRUD ( inherited of frmBaseCRUD )
              begin
                 if bModal then
                    mm.varC_LinkedFormFrame := StringReplace( pTable, '__modal_' , '' , [rfReplaceAll] );

                 bFormWithoutCRUD  := True;

                 FClassName        := FRM_CLASS_PREFIX + mm.varC_LinkedFormFrame;
                 sAccessControl    := mm.varC_LinkedFormFrame;//mm.varC_Table_Search; // v. 3.1.0.60
              end;
           end;
           // v. 3.2.0.7
           if pRestrictionField <> '' then
              sAccessControl    := pRestrictionField;
           // captura chave dinamica( PK )
           // o duplo '__' indica q a opcao não tem vinculo com Banco de Dados, ou seja,
           // só capturar PK se for opção vinculada a Banco de Dados
           //
           // dynamic key capture (PK)
           // the double '__' indicates that the option is not linked to a database, that is,
           // only capture PK if option linked to Database
           if ( Pos( '__' , mm.varC_Table_Search ) = 0 ) and ( mm.varC_Table_Search <> '' ) then
           begin
                 mm.varC_PK_MasterTable := dm_rc.rc_GetPrimaryKey( mm.varC_Table_Search.ToLower );
           end;
        end;
   end;

   procedure rc_SetOptionParams; overload;
   var
      cT, nodeMenuItemGeneric,
      cMenuOpt : string;
   begin
        bModal                                    := pIsModal;

        // Free Frame ico:fa-circle tbl: frm:FreeFrame

        cMenuOpt := mm.varC_SelectedItem_FSideMenu;

        if trim( pTableName ) <> '' then
           mm.varC_Table_Search           := ' ' + pTableName + ' ';

        if ( trim( pTableName ) <> '' ) and ( pFormFrameTitle = '' ) then
        begin
           mm.varC_SelectedItem_FSideMenu := rc_StrCaptalize( pTableName );

           mm.varC_LinkedFormFrame        := ansilowercase( mm.varC_SelectedItem_FSideMenu );
        end
        else
           mm.varC_SelectedItem_FSideMenu := pFormFrameTitle;

        // montar NOME DO FORM baseado no nome da TABELA contida no item do menu SELECIONADO
        // mount FORM NAME based on the TABLE name contained in the SELECTED menu item
        FClassName := '';

        // Ex. opcao do Menu: Imagens | cli_imagens__imagens
        //
        if pFormFrameName = '' then
        begin
           mm.varC_LinkedFormFrame := Trim( mm.varC_Table_Search );

           FClassName              := FRM_CLASS_CRUD_PREFIX + mm.varC_LinkedFormFrame;
           sAccessControl          := mm.varC_LinkedFormFrame;//mm.varC_Table_Search; // v. 3.1.0.60
        end
        else
        //
        // it´s a report ?
        //
        if pIsMenuReport then
        begin
           // it´s a report ?
           //
           bFormWithoutCRUD                       := false;

           mm.varC_LinkedFormFrame := Trim( Copy( mm.varC_Table_Search, Pos( '__' , mm.varC_Table_Search ) + 2, 100 ));


           FClassName              := FRM_CLASS_PREFIX + mm.varC_LinkedFormFrame;
           sAccessControl          := mm.varC_LinkedFormFrame;//mm.varC_Table_Search; // v. 3.1.0.60
        end
        else
        //
        // FORM name <> table name or
        // FORM without CRUD ( inherited of frmBaseCRUD )
        //
        begin
           cT := mm.varC_Table_Search;

           mm.varC_LinkedFormFrame := Trim(Copy( mm.varC_Table_Search, Pos( '__' , mm.varC_Table_Search ) + 2, 100 ));
           mm.varC_Table_Search    := Trim(Copy( mm.varC_Table_Search, 1, Pos( '__' , mm.varC_Table_Search ) - 1 ));

           // FORM name <> table name
           if pFormFrameName = '' then
           begin
                FClassName        := FRM_CLASS_CRUD_PREFIX + mm.varC_LinkedFormFrame;
                sAccessControl    := mm.varC_LinkedFormFrame;//mm.varC_Table_Search; // v. 3.1.0.60
           end
           else
           // FORM without CRUD ( inherited of frmBaseCRUD )
           begin
              cT := pTableName;

              if ( bModal ) then
              begin
                 mm.varC_LinkedFormFrame := pFormFrameName;
                 FClassName        := FRM_CLASS_PREFIX + mm.varC_LinkedFormFrame;
              end
              else
              if ( pFormFrameName <> '' ) then
              begin
                 mm.varC_LinkedFormFrame := pFormFrameName;

                 FClassName        := FRM_CLASS_CRUD_PREFIX + mm.varC_LinkedFormFrame;
                 fClass            := FindAnyClass( FClassName );

                 if fClass = nil then
                 begin
                    FClassName     := FRM_CLASS_PREFIX + mm.varC_LinkedFormFrame;

                    fClass := FindAnyClass( FClassName );
                    if fClass = nil then
                    begin
                       FClassName     := FRM_CLASS_PREFIX + mm.varC_LinkedFormFrame;

                       if fClass = nil then
                       begin
                            fClass     := FindAnyClass( FClassName );
                       end;
                    end;
                 end;

                 mm.varC_Table_Search := cT;
                 mm.varC_SelectedItem_FSideMenu := cMenuOpt;
              end;

              bFormWithoutCRUD      := True;

              sAccessControl := mm.varC_LinkedFormFrame;

              nodeMenuItem      := pFormFrameTitle;
              nodeMenuItemGeneric := nodeMenuItem;
              cTmp1             := pFormFrameTitle;
           end;
        end;

        // captura chave dinamica( PK )
        // o duplo '__' indica q a opcao não tem vinculo com Banco de Dados, ou seja,
        // só capturar PK se for opção vinculada a Banco de Dados
        //
        // dynamic key capture (PK)
        // the double '__' indicates that the option is not linked to a database, that is,
        // only capture PK if option linked to Database
        if ( Pos( '__' , mm.varC_Table_Search ) = 0 ) and ( mm.varC_Table_Search <> '' ) then
        begin
              mm.varC_PK_MasterTable := dm_rc.rc_GetPrimaryKey( mm.varC_Table_Search.ToLower );
        end;
   end;
begin
     // v. 3.2.0.8
     if dm_rc.rc_ObjectExists('frmLookUp_Lite') then frmLookUp_Lite.Close;

     Fr       := nil;
     FrC      := nil;
     FrmC     := nil;
     nodeMenu := nil;
     Ts       := nil; // Linux Issue ( feedback by mesut )
     f        := 0;   // Linux Issue ( feedback by mesut )

     mm.varC_FieldMasks             := '';
     mm.varC_SelectedItem_FSideMenu := '';
     mm.varC_PK_MasterTable         := '';
     mm.varC_LinkedFormFrame        := '';
     cTmp1                                     := '';

     // chamada externa, não veio do uniTreeMenu
     // external call, not from uniTreeMenu
     bAddBtn := Pos( '_ADD' , pTableName ) > 0;
     if ( bAddBtn ) or ( pRecord > 0 ) then
     begin
          pTableName := StringReplace( pTableName , '_ADD' , '' , [rfReplaceAll] );

          // Veio de um LookUp com Apelido adicional
          if Pos( '__' , pTableName ) > 0 then
          begin
             pTableName := Copy( pTableName , 1, Pos( '__' , pTableName ) -1 );
             cTmp1 := pTableName;
          end;

          cTmp1 := pTableName;

          cFormName := '';
          if Pos( '-' , pTableName ) > 0 then
          begin
             cFormName  := Copy( pTableName , Pos( '-' , pTableName ) +1, 100 );
             pTableName := Copy( pTableName , 1, Pos( '-' , pTableName ) -1 );
             // v. 3.1.0.60
             // chamada dinâmica
             if cFormName <> '' then
                cTmp1      := pTableName + '__' + cFormName
             else
                cTmp1 := StringReplace( cTmp1, '-', '', [rfReplaceAll] );

          end;

          mm.varI_NumMenu      := Length( mm.varA_FSideMenu );
          mm.varC_Table_Search := pTableName;

          // procurar se foi definido uma opção na(s) unit(s) de formação de MENU DINAMICO( uMenu_BASICS, uMenu_MOVEMENT... )
          // search if an option has been defined in the DYNAMIC MENU training unit (s) (uMenu_BASICS, uMenu_MOVEMENT ...)
          mm.varB_Processed := False;

          for f  := 1 to mm.varI_NumMenu - 1 do
          begin
               if ansilowercase( mm.varA_FSideMenu[ f ].Table ) = Trim( cTmp1 ) then
               begin
                    mm.varC_SelectedItem_FSideMenu := mm.varA_FSideMenu[ f ].option;
                    mm.varB_Processed := True;
                    Break;
               end;
          end;
     end;

     iMenuItemIndex := -1;
     if pMenu <> nil then
     begin
        nodeMenu     := pMenu.Selected;
        nodeMenuItem := Ansilowercase( Trim( nodeMenu.Text ) );

        if Pos( '<span>', nodeMenuItem ) > 0 then
        begin
           cTmp1 := Copy( nodeMenuItem, Pos( '<span>', nodeMenuItem ) + 6 );
           cTmp1 := Trim( Copy( cTmp1, 1, Pos( '<', cTmp1 ) -1 ) );
        end;

        // O Nome da maioria dos FORMs coincide com o nome da TABELA, criticar apenas os que não coincidem
        // The name of most FORMs matches the TABLE name, criticize only those that do not match
        mm.varI_NumMenu      := Length( mm.varA_FSideMenu );
        mm.varC_Table_Search := '';

        // procurar se foi definido uma opção na(s) unit(s) de formação de MENU DINAMICO( uMenu_BASICS, uMenu_MOVEMENT... )
        // search if an option has been defined in the DYNAMIC MENU training unit (s) (uMenu_BASICS, uMenu_MOVEMENT ...)
        mm.varB_Processed := False;
        for f  := 1 to mm.varI_NumMenu - 1 do
        begin
             // v. 3.1.0.63
             try
                if ansilowercase( mm.varA_FSideMenu[ f ].option ) = Trim( nodeMenuItem ) then
                begin
                     rc_SetOptionParams( mm.varA_FSideMenu[ f ].option, mm.varA_FSideMenu[ f ].table, mm.varA_FSideMenu[ f ].RestrictionField ); // v. 3.2.0.7
                     iMenuItemIndex := f;
                     mm.varB_Processed := True;
                     Break;
                end;
             except on e:exception do
                    begin
                         mm.varC_LastErrorMsg := mm.varC_LastErrorMsg + ' ' + mm.MSG_ERROR + ': ' + e.Message;
                         dm_rc.rc_ShowError( '<h2 style="color: gray;text-align: center;">Failed to trigger option in menu( index:' + f.ToString + ') !</h2><br>' +
                                             mm.varC_LastErrorMsg + '<br><br>' +
                                             mm.MSG_CONTACT_SUPPORT);
                         Abort;
                    end;
             end;
        end;

        Ts := nodeMenu.Data;
     end
     else
     // se não encontrou uma opção definida na(s) unit(s) de formação de MENU DINAMICO..então é um FORM ISOLADO
     // if you did not find an option defined in the DYNAMIC MENU training unit (s) ... then it is an ISOLATED FORM
     begin
         cTmp1 := '';
         if mm.varB_Processed  then
            cTmp1 := mm.varC_SelectedItem_FSideMenu;

         //  nil, pFormFrameTitle, pTableName, pFormFrameName, pIsMenuReport, pIsModal
         rc_SetOptionParams;

         nodeMenuItem := Ansilowercase( Trim( mm.varC_SelectedItem_FSideMenu ) );
         // issue feedback by JOSAURO
         if ( cTmp1 <> '' ) and ( ( mm.varC_SelectedItem_FSideMenu = '' ) or ( mm.varB_Processed ) )then //if ( cTmp1 <> '' ) and ( mm.varC_SelectedItem_FSideMenu = '' ) then
         begin
            mm.varC_SelectedItem_FSideMenu := cTmp1;
            nodeMenuItem := cTmp1;
         end
         else
            cTmp1 := mm.varC_SelectedItem_FSideMenu;
     end;

     // se nao tem uma CLASSE de FORM/FRAME associada, clicou num submenu, então não tem o q processar
     // if you don't have an FORM / FRAME CLASS associated, clicked on a submenu, then you don't have to process it
     if FClassName <> '' then
     begin
         if UniApplication.FindComponent('MainForm' ) <> nil then
         begin
            MainForm.ShowMask;
            UniSession.Synchronize();
         end;

         mm.varC_FormSource_Search     := FClassName;

         // v. 3.1.0.63 ini
         // FORMs que sao BASICOS( apenas campos CODIGO e DESCRICAO ) - herdados de "frmCadBASICS"
         // FORMs that are BASIC (only CODE and DESCRIPTION fields) - inherited from "frmCadBASICS"
         if AnsiMatchStr( mm.varC_LinkedFormFrame , ARRAY_BASICS ) then
            FClassName := 'TfrmCadBasics';
         //else
         // v. 3.1.0.63 end
         begin
            if mm.oPgGeneral <> nil then
            begin
               for I := 0 to mm.oPgGeneral.PageCount - 1 do
               begin
                   with mm.oPgGeneral do
                   begin
                       // v. 3.2.0.7
                       if Pos( '<span>', cTmp1 ) > 0 then
                       begin
                          cTmp1 := Copy( cTmp1, Pos( '<span>', cTmp1 ) + 6 );
                          cTmp1 := Trim( Copy( cTmp1, 1, Pos( '<', cTmp1 ) -1 ) );
                       end;

                       cTmp2 := Trim( mm.oPgGeneral.Pages[I].Caption );

                       if Pos( '<span>', Pages[I].Caption ) > 0 then
                       begin
                          cTmp2 := Copy( Pages[I].Caption, Pos( '<span>', Pages[I].Caption ) + 6 );
                          cTmp2 := Trim( Copy( cTmp2, 1, Pos( '<', cTmp2 ) -1 ) );
                       end;

                       if ansilowercase(cTmp1) = ansilowercase(cTmp2) then // nodeMenu.Text then
                       begin
                         mm.oPgGeneral.ActivePageIndex := I;
                         dm_rc.rc_BootStrapRender( self );  // feedback by CENK VAROL( Turkey )
                         // v. 3.2.0.7
                         // EXIBIÇÃO / EDIÇÃO DINÂMICA DE REGISTRO  /   DISPLAY / DYNAMIC REGISTRATION EDITION
                         //( Requested by GUS from Italy )
                         //
                         // este trecho de código está relacionado com a abertura/edição dinâmica de formulários/frames
                         // this code snippet is related to opening / editing dynamics of forms / frames
                         //
                         // Ex: MainForm.rc_AddFormFrameInTab( nil, '', 'clientes', '' , false, false, 569, true );
                         //
                         // Assumi como padrão que o primeiro campo de pesquisa definido deverá ser o campo usado para efetuar a pesquisa dinâmica, ou seja,
                         // se vamos pesquisar pelo CODIGO DO CLIENTE( por exemplo ) deve existir uma opção de pesquisa pelo CODIGO DO CLIENTE no ON CREATE do CADASTRO DE CLIENTES.
                         //
                         // I assumed ( by default ) that the first defined search field should be the field used to perform the dynamic search, that is,
                         // if we are going to search for the CUSTOMER CODE (for example) there must be an option to search for the CUSTOMER CODE in the ON CREATE of the CUSTOMER REGISTRATION.
                         //
                         if pCallFormOp <> aftNone then
                         begin
                            FClassName := Copy( trim( TUniTabSheet( mm.oPgGeneral.Pages[ i ] ).Name ), 5, 100 ); //tabTFRMCADclientes__2
                            Fr := TUniFrame( rc_FindControl( FClassName ) );
                            oObj := TUniControl( Fr.FindComponent('ed_codmaster') );
                            if oObj <> nil then
                            begin
                                 //TUniEdit( Fr.FindComponent('ed_codmaster') ).Hint := intToStr( pRecord );
                                 oObj.Hint := intToStr( pRecord );
                                 case pCallFormOp of
                                   aftNone  : oObj.Tag  := 0;
                                   aftShow  : oObj.Tag  := -1;
                                   aftEdit  : oObj.Tag  := -2;
                                   aftInsert: Fr.Tag := 1;
                                 end;
                                 t := StrToIntDef( oObj.Hint, 0 );
                                 if t <> 0 then
                                 begin
                                      if TUniComboBox( Fr.FindComponent('cbxSearchCRUDField1') ) <> nil then
                                         TUniComboBox( Fr.FindComponent('cbxSearchCRUDField1') ).ItemIndex := 0;
                                      if TUniEdit( Fr.FindComponent('edSearchCRUD1') ) <> nil then
                                         TUniEdit( Fr.FindComponent('edSearchCRUD1') ).Text := IntToStr( t );
                                      if TUniBitBtn( Fr.FindComponent('btnSearchCRUD') ) <> nil then
                                         TUniBitBtn( Fr.FindComponent('btnSearchCRUD') ).Click;

                                      //case oObj.Tag of
                                           //-1 : dbgSearchCRUDDblClick( dbgSearchCRUD );
                                           //-2 : btnEditRegClick( btnEditReg );
                                           //-3 : btnNewRegClick( btnNewReg );
                                      //end;
                                      if TUniEdit( Fr.FindComponent('edSearchCRUD1') ) <> nil then
                                         TUniEdit( Fr.FindComponent('edSearchCRUD1') ).Text := '';
                                 end
                                 else
                                 begin
                                      if TUniBitBtn( Fr.FindComponent('btnSearchCRUD') ) <> nil then
                                         TUniBitBtn( Fr.FindComponent('btnSearchCRUD') ).Click;
                                    // contar quantos campos tem pra ativar ou nao o FORCEFIT
                                    // FORCEFIT fica melhor com poucos campos, mas nao funciona bem quando o LOCKED está ativo
                                    dm_rc.rc_DBGridUpdateAll( Fr , false);
                                 end;
                            end;
                         end;

                         if UniApplication.FindComponent('MainForm' ) <> nil then MainForm.HideMask;

                         Exit;
                       end;
                   end;
               end;
            end;
         end;

         if not Assigned(Ts) then
         begin
            if mm.oPgGeneral <> nil then
               pNewIndex  := mm.oPgGeneral.PageCount;

            mm.varC_SearchWhere        := '';
            mm.varC_SearchOrder        := '';
            mm.varC_Selected_FormFrame := nodeMenuItem;
            mm.varC_StatusSearch       := '';
            mm.varC_FieldMasks         := '';

            bFormDoNotExists                        := True;

            if ( mm.CONFIG_LAYOUT_TAB_OFF = 'ON' ) then
            begin
               if mm.oPgGeneral <> nil then
                  if mm.oPgGeneral.ActivePage.PageIndex > 0 then
                     mm.oPgGeneral.ActivePage.Close;
            end;

            // v. 3.1.0.61
            // verifica restricao do usuário - ACESSO
            If not dm_rc.rc_PermissionVerify( mm.varC_Selected_FormFrame ,
                                              Trim( sAccessControl ) ,
                                              PT_ACCESS ) then
            begin
               FrC := nil;
               if UniApplication.FindComponent('MainForm' ) <> nil then MainForm.HideMask;
               Abort;
            end
            else
            if ( mm.oPgGeneral.PageCount.ToString = mm.CONFIG_LAYOUT_TAB_MAX_OPENED ) then
            begin
               FrC := nil;
               if UniApplication.FindComponent('MainForm' ) <> nil then MainForm.HideMask;
               dm_rc.rc_ShowSweetAlertSimple( 'Max Tabs opened!' );
               Abort;
            end
            else
            // end 3.1.0.61
            begin
                 mm.varC_LastErrorMsg := mm.MSG_BUGERROR_MENU_DO_NOT_EXIST;
                 try
                   // evitar mensagem ANTES da EXCEPTION ( block showmodal ... )
                   fClass := FindAnyClass( FClassName );
                   bFormDoNotExists := False;
                   if fClass <> nil then
                   begin
                         FrC  := TUniFrameClass( FindAnyClass( FClassName ) );
                         FrmC := TUniFormClass( FindAnyClass( FClassName ) );
                   end
                   else  // link:
                   begin
                        If Pos( 'link:' , FClassName ) > 0 then
                        begin
                             bFormDoNotExists := False;
                             cTmp1 := trim( Copy( FClassName, Pos( 'link:' , FClassName ) + 5 , 200 ) );
                             dm_rc.rc_OpenLink( cTmp1 );
                        end
                        else
                        begin
                           bFormDoNotExists := True;
                        end;
                   end;

                   if FrC <> nil then
                   begin
                      bFormDoNotExists     := False;

                      //UniSession.SuspendLayouts;
                      if not bModal then
                      begin
                         Ts               := TUniTabSheet.Create(Self);

                         if mm.oPgGeneral <> nil then
                            Ts.PageControl   := mm.oPgGeneral;
                         // v. 3.2.0.6 //closebtn
                         Ts.Closable      := True;
                         if not mm.varA_FSideMenu[ iMenuItemIndex ].CloseBtn then
                            Ts.Hint := '[[closebtn:false]]';

                         Ts.OnClose       := TabSheetClose;

                         if pMenu <> nil then
                         begin
                            Ts.Tag        := NativeInt( nodeMenu );
                            Ts.ImageIndex := nodeMenu.ImageIndex;
                         end
                         else
                            Ts.Tag        := (-1) * ( ( Random( 100 ) + 1 ) + ( Random( 200 ) + 1 ) );

                         Ts.Caption := rc_CamelCase( dm_rc.rc_StripHtmlTags( nodeMenuItem ) );
                         Ts.Name    := 'tab' + mm.varC_FormSource_Search + '__' + pNewIndex.ToString;

                         if mm.oPgGeneral <> nil then
                            mm.oPgGeneral.ActivePage := Ts;

                         rc_AddCssClass( ts, 'slide_in' ); // v. 3.2.0.0

                      end;

                      dm_rc.rc_ScreenUpdate;

                      if fClass.InheritsFrom(TUniFrame) then
                      begin
                         try
                            Fr                 := FrC.Create( self );
                         except on e:exception do
                                begin
                                   if Pos( 'Unregistered', e.Message ) > 0 then
                                      mm.varC_LastErrorMsg := mm.MSG_BUGERROR_MENU_DO_NOT_EXIST + ' ' + mm.MSG_ERROR + ': ' + e.Message
                                   else
                                      mm.varC_LastErrorMsg := mm.MSG_ERROR + ': ' + e.Message;
                                end;
                         end;

                         if fClassName.ToLower = 'tfrmcadbasics' then
                            Fr.Name  := 'frmCad' + mm.varC_LinkedFormFrame
                         else
                            Fr.Name            := Fr.Name ;

                         Fr.Name            := Fr.Name + '__' + pNewIndex.ToString;
                         Fr.Align           := alClient;
                         Fr.Parent          := Ts;
                         Fr.Tag             := varIIF( bAddBtn , 1, 0 );

                         mm.varC_FormSource_Search := fr.Name;

                         // EXIBIÇÃO / EDIÇÃO DINÂMICA DE REGISTRO  /   DISPLAY / DYNAMIC REGISTRATION EDITION
                         //( Requested by GUS from Italy )
                         //
                         // este trecho de código está relacionado com a abertura/edição dinâmica de formulários/frames
                         // this code snippet is related to opening / editing dynamics of forms / frames
                         //
                         // Ex: MainForm.rc_AddFormFrameInTab( nil, '', 'clientes', '' , false, false, 569, true );
                         //
                         // Assumi como padrão que o primeiro campo de pesquisa definido deverá ser o campo usado para efetuar a pesquisa dinâmica, ou seja,
                         // se vamos pesquisar pelo CODIGO DO CLIENTE( por exemplo ) deve existir uma opção de pesquisa pelo CODIGO DO CLIENTE no ON CREATE do CADASTRO DE CLIENTES.
                         //
                         // I assumed ( by default ) that the first defined search field should be the field used to perform the dynamic search, that is,
                         // if we are going to search for the CUSTOMER CODE (for example) there must be an option to search for the CUSTOMER CODE in the ON CREATE of the CUSTOMER REGISTRATION.
                         if pCallFormOp <> aftNone then
                         begin
                            oObj := TUniControl( Fr.FindComponent('ed_codmaster') );
                            if oObj <> nil then
                            begin
                                 oObj.Hint := intToStr( pRecord );
                                 case pCallFormOp of
                                   aftNone  : oObj.Tag  := 0;
                                   aftShow  : oObj.Tag  := -1;
                                   aftEdit  : oObj.Tag  := -2;
                                   aftInsert: Fr.Tag := 1;
                                 end;
                            end;
                         end;

                         if ( iMenuItemIndex >= 0 ) and ( Fr.FindComponent('ed_GenNextID_OnNew') <> nil ) then
                         begin
                              TUniEdit( Fr.FindComponent('ed_GenNextID_OnNew') ).Text := varIIF( mm.varA_FSideMenu[ iMenuItemIndex ].GenID, 'true', 'false' );
                         end;
                         if ( iMenuItemIndex >= 0 ) and ( Fr.FindComponent('ed_AskNewRec_AfterPost') <> nil ) then
                         begin
                              TUniEdit( Fr.FindComponent('ed_AskNewRec_AfterPost') ).Text := varIIF( mm.varA_FSideMenu[ iMenuItemIndex ].AskNew, 'true', 'false' );
                         end;
                         // v. 3.2.0.5
                         if ( bAddBtn ) and ( Fr.FindComponent('ed_Table_ItemSel') <> nil ) then
                         begin
                              TUniEdit( Fr.FindComponent('ed_Table_ItemSel') ).Hint := 'add;';
                         end;
                      end
                      else
                      if not bModal then
                      begin
                         Frm                 := FrmC.Create( uniSession.uniapplication );
                         Frm.Name            := Frm.Name + '__' + pNewIndex.ToString;
                         Frm.Parent          := Ts;
                         Frm.Align           := alClient;

                         mm.varC_FormSource_Search := frm.Name;
                      end
                      else
                      begin
                           // para usar MODAL centralizado, adicione o atributo [[modal:]] no seu formulário.
                           // o evento OnCreate é chamado antes de atribuir dinamicamente( usando bModal )
                           Frm                 := FrmC.Create( uniSession.uniapplication );
                           Frm.Name            := Frm.Name ;
                           mm.varC_FormSource_Search := frm.Name;

                           if rc_GetHintProperty( 'modal:', Frm.Hint ) = '' then
                              Frm.Hint := rc_SetHintProperty( '' , 'modal:', Frm.Hint, True );

                           Frm.ShowModal( procedure(Sender: TComponent; Result:Integer)
                                          begin
                                             // para quando um FORM MODAL estiver ativo, não executar o "dbGridUpdate" no
                                             // que estiver "abaixo" do MODAL
                                             mm.varC_Form_Modal := nil;
                                          end
                                        );
                      end;

                      // para exibir a ultima aba adicionada
                      if mm.oPgGeneral <> nil then
                         mm.varI_TabIni := ( mm.oPgGeneral.PageCount - 1 ) - varIIF( mm.varB_Mobile_Screen, 1, 6 )
                      else
                         mm.varI_TabIni := -1;

                      if mm.varI_TabIni < 0 then
                         mm.varI_TabIni := 0;

                      if ( not bFormWithoutCRUD ) or ( Pos( '__report' , Trim( mm.varC_Table_Search ) ) > 0 ) then
                      begin
                         if TUniLabel( Fr.FindComponent( 'labTitleForm' ) ) <> nil then
                            TUniLabel( Fr.FindComponent( 'labTitleForm' ) ).Caption   := dm_rc.rc_StripHtmlTags( mm.varC_SelectedItem_FSideMenu );
                      end;

                      if pMenu <> nil then
                         nodeMenu.Data := Ts;
                      // v. 3.2.0.0
                      // 'fechar' o menu pra liberar espaço horizontal
                      if mm.varB_Mobile_Screen_Portrait then
                         if rc_FindControl( 'paLayoutMainMenu' ) <> nil then
                         begin
                            TUniControl( rc_FindControl( 'paLayoutMainMenu' ) ).Width := 0;
                            rc_UpdateMainControls;
                         end;

                      rc_UpdateCharts;
                      mm.varC_LastErrorMsg := ''; // v. 3.2.0.7r
                      //UniSession.ResumeLayouts;
                   end;
                 except on e:exception do
                        begin
                             //UniSession.ResumeLayouts;
                             //bFormDoNotExists := True;
                             mm.varC_LastErrorMsg := mm.varC_LastErrorMsg + ' ' + mm.MSG_ERROR + ': ' + e.Message;
                        end;
                 end;

                 if UniApplication.FindComponent('MainForm' ) <> nil then MainForm.HideMask;
            end;
            // v. 3.2.0.7                     r
            if mm.varC_LastErrorMsg <> '' then
            begin
                 if ( bFormDoNotExists ) then
                    mm.varC_LastErrorMsg := '<h2 style="color: gray;text-align: center;">Failed to trigger option in menu !</h2><br>' +
                                            '<strong>MESSAGE</strong><br><hr>Unregistered Class<strong>' + FClassName + '</strong><br><br>' + mm.varC_LastErrorMsg;

                    dm_rc.rc_ShowError( mm.varC_LastErrorMsg + '<br><br>' +
                                        mm.MSG_CONTACT_SUPPORT)
            end;
         end;
     end
     else
     begin
          if Pos( '<span>', nodeMenuItem ) > 0 then
          begin
             nodeMenuItem := Copy( nodeMenuItem, Pos( '<span>', nodeMenuItem ) + 6 );
             nodeMenuItem := Trim( Copy( nodeMenuItem, 1, Pos( '<', nodeMenuItem ) -1 ) );
             nodeMenuItem := nodeMenuItem;
          end;
          // verificar se é uma opção que não está vinculada a um form e executá-la...
          // esta opção foi adicionada no novo parâmetro "link:" mas foi mantida aqui
          // a título de demonstração
          if nodeMenuItem = ansilowercase( mm.MNU_OTHERS_OPEN_TICKET ) then
          begin
               dm_rc.rc_OpenLink( 'https://app.radticket.com.br' );
          end;
     end;
end;

procedure TMainForm.rc_CloseNotifications;
begin
    UniSession.AddJS( paNotifications.JSName +
                      '.animate({ duration: ' + inttostr( 10 ) +
                      ', to: { y:' + inttostr( -20  ) +            // vertical
                      ', opacity: ' + inttostr( 0  ) + ' } } );');
    paNotifications.Visible := False;
end;

procedure TMainForm.rc_UpdateCharts;
begin

end;

procedure TMainForm.rc_UpdateFloatButton;
begin
    // voce pode carregar o arq. html ok... deixei dentro do fonte mas não é regra
    // ou ainda por direto no HTMLFRAME
    btnFloatingFAB.Width := 0;
    btnFloatingFAB.HTML.Text :=
    '<div id="btnmain" class="fab">' +
    '  <button class="main">' +
    '  </button>' +
    '  <ul>' +
    '    <li>' +
    '      <label for="opcao1">Pedido</label>' +
    '      <button onclick="ajaxRequest( MainForm.htmlFrame , ''_mainFloatButton'', [''tipo=pedido'' ]);" id="opcao1"><span class="fa fa-plus"></span>' +
    '      </button>' +
    '    </li>' +
    '    <li>' +
    '      <label for="opcao2">Email</label>' +
    '      <button onclick="ajaxRequest( MainForm.htmlFrame , ''_mainFloatButton'', [''tipo=email'' ]);" id="opcao2"><span class="fa fa-envelope"></span>' +
    '      </button>' +
    '    </li>' +
    '    <li>' +
    '      <label for="opcao3">Sair</label>' +
    '      <button onclick="ajaxRequest( MainForm.htmlFrame , ''_mainFloatButton'', [''tipo=off'' ]);" id="opcao3"><span class="fa fa-power-off"></span>' +
    '      </button>' +
    '    </li>' +
    '  </ul>' +
    '</div>' +

    '<script>' +

    'function toggleFAB(fab){' +
    '	if(document.querySelector(fab).classList.contains(''show'')){' +
    '  	document.querySelector(fab).classList.remove(''show'');' +
    '  }else{' +
    '  	document.querySelector(fab).classList.add(''show'');' +
    '  }' +
    '}' +

    'document.querySelector(''.fab .main'').addEventListener(''click'', function(){' +
    '	toggleFAB(''.fab'');' +
    '});' +

    'document.querySelectorAll(''.fab ul li button'').forEach((item)=>{' +
    '	item.addEventListener(''click'', function(){' +
    '		toggleFAB(''.fab'');' +
    '	});' +
    '});' +
    '</script>' ;
end;
// v. 3.2.0.3
// resolver o conflito com "DELPHI align" e "UNIGUI alignClient"
// to solve a conflict with "DELPHI align" and "UNIGUI alignClient"
procedure TMainForm.rc_UpdateMainControls;
var
   oObj1, oObj2 : TObject;
begin
    oObj1 := rc_FindControl( 'paLayoutMainMenu' );
    if oObj1 <> nil then
    begin
       TUnicontrol( oObj1 ).Left  := 0;
       TUnicontrol( oObj1 ).Height:= Self.Height;
       oObj2 := rc_FindControl( 'paBackGround' );
       if oObj2 <> nil then
       begin
          TUnicontrol( oObj2 ).Left      := TUnicontrol( oObj1 ).Width;
          TUnicontrol( oObj2 ).Height    := Self.Height;
          TUnicontrol( oObj2 ).Width     := Self.Width - TUnicontrol( oObj1 ).Width;
       end;
    end
    else
    begin
       oObj1 := rc_FindControl( 'paBackGround' );
       if oObj1 <> nil then
       begin
          TUnicontrol( oObj1 ).Left      := 0;
          TUnicontrol( oObj1 ).Top       := 0;
          TUnicontrol( oObj1 ).Height    := Self.Height;
          TUnicontrol( oObj1 ).Width     := Self.Width;
       end;
    end;
end;

procedure TMainForm.rc_UpdateNotifications;
begin
//    htmlNotifications.HTML.Text :=
//    '        <div>' +
//    '          <span class="dropdown-item dropdown-header">15 Notificações</span>' +
//    '          <div class="dropdown-divider"></div>' +
//    '          <a href="#" onclick="ajaxRequest( MainForm.htmlFrame , ''_notifications'', [''tipo=mensagens'' ]);" class="dropdown-item">' +
//    '            <i class="fa fa-envelope mr-2"></i> 3 Novas Mensagens' +
//    '            <span class="float-right text-muted text-sm">3 mins</span>' +
//    '          </a>' +
//    '          <div class="dropdown-divider"></div>' +
//    '          <a id="_tickects" href="#" onclick="ajaxRequest( MainForm.htmlFrame , ''_notifications'', [''tipo=tickets'' ]);" class="dropdown-item">' +
//    '            <i class="fa fa-users mr-2"></i> 8 novos tickets' +
//    '            <span class="float-right text-muted text-sm">5 mins</span>' +
//    '          </a>' +
//    '          <div class="dropdown-divider"></div>' +
//    '          <a href="#" onclick="ajaxRequest( MainForm.htmlFrame , ''_notifications'', [''tipo=alertas'' ]);" class="dropdown-item">' +
//    '            <i class="fa fa-file mr-2"></i> 3 novos alertas' +
//    '            <span class="float-right text-muted text-sm">2 dias</span>' +
//    '          </a>' +
//    '          <div class="dropdown-divider"></div>' +
//    '          <a href="#" class="dropdown-item dropdown-footer">Abrir todas</a>' +
//    '        </div>' ;
end;

initialization
  RegisterAppFormClass(TMainForm);

  UniAddCSSLibrary( 'css/flags/flags.css', False, [upoFolderFiles, upoPlatformBoth]);

  UniAddCSSLibrary( 'bootstrap-4.6.0/dist/css/bootstrap.min.css', False, [upoFolderFiles, upoPlatformBoth]);
  UniAddJSLibrary( 'bootstrap-4.6.0/dist/js/bootstrap.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);

//  UniAddJSLibrary( 'js/jquery-3.5.1/jquery.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
//  UniAddJSLibrary( 'js/jquery-3.5.1/jquery-3.5.1.min.map', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);

//  UniAddCSSLibrary( 'js/jquery-ui-1.12.1/jquery-ui.min.css', False, [upoFolderFiles, upoPlatformBoth]);
//  UniAddJSLibrary( 'js/jquery-ui-1.12.1/jquery-ui.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
//  UniAddJSLibrary( 'js/jquery-inputmask/jquery.inputmask.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
//  UniAddJSLibrary( 'js/jquery-inputmask/jquery.mask.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);

//  UniAddJSLibrary( 'js/SweetAlert2/sweetalert2.min.css', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
//  UniAddJSLibrary( 'js/SweetAlert2/sweetalert2.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);

  // gauges and graphs
  UniAddJSLibrary( 'js/tarefas/raphael-2.1.4.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/tarefas/justgage.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);

  UniAddCSSLibrary( 'js/chart-js/dist/Chart.min.css', False, [upoFolderFiles, upoPlatformBoth]);
  UniAddJSLibrary( 'js/chart-js/dist/Chart.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/chart-js/dist/utils.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);

  UniAddCSSLibrary( 'js/toasty/dist/toasty.css', False, [upoFolderFiles, upoPlatformBoth]);
  UniAddJSLibrary( 'js/toasty/dist/toasty.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);


  UniAddCSSLibrary( 'js/chart-apex/dist/apexcharts.css', False, [upoFolderFiles, upoPlatformBoth]);
  UniAddJSLibrary( 'js/chart-apex/dist/apexcharts.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/chart-apex/samples/assets/stock-prices.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  //( qrcode bug fix to solve )
//  UniAddJSLibrary( 'js/rc_qrcode/qrcode.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
//  UniAddJSLibrary( 'js/rc_qrcode/html5-qrcode.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
//  UniAddJSLibrary( 'js/rc_qrcode/rc-qrcode.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);

  // GSAP está em fase de testes pra testar a total compatibilidade.
  // Como cada usuário pode ter uma versão do uniGUI diferente, não tem como eu realizar todos os testes.
  //
  // GSAP is in the testing phase to test full compatibility.
  // As each user can have a different version of uniGUI, there is no way for me to perform all the tests.
  UniAddJSLibrary( 'js/gsap/gsap.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/CSSRulePlugin.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/CSSRulePlugin.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/Draggable.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/EaselPlugin.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/EasePack.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/MotionPathPlugin.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/PixiPlugin.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/ScrollToPlugin.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/ScrollTrigger.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  UniAddJSLibrary( 'js/gsap/TextPlugin.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);

  //UniAddJSLibrary( 'js/rc_barcode/zxing.min.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
  //UniAddJSLibrary( 'js/rc_barcode/rc_barcode.js', False, [upoFolderFiles, upoPlatformBoth, upoDefer]);
end.
