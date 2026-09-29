unit untFrmPRODUTOSFOTOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniGUIBaseClasses, uniPanel,
  Vcl.Imaging.jpeg, uniImage, acPNG, Vcl.Menus, uniMainMenu, uniFileUpload;

type
  TfrmPRODUTOSFOTO = class(TUniForm)
    UniContainerPanel1: TUniContainerPanel;
    UniContainerPanel2: TUniContainerPanel;
    img_1: TUniImage;
    img_2: TUniImage;
    img_3: TUniImage;
    img_4: TUniImage;
    rcBlock10: TUniContainerPanel;
    UniPopupMenu_img: TUniPopupMenu;
    E1: TUniMenuItem;
    N1: TUniMenuItem;
    D1: TUniMenuItem;
    N2: TUniMenuItem;
    V1: TUniMenuItem;
    btnLkpClear: TUniBitBtn;
    img_visualiza: TUniImage;
    uniFile_1: TUniFileUpload;
    uniFile_2: TUniFileUpload;
    uniFile_3: TUniFileUpload;
    uniFile_4: TUniFileUpload;
    procedure img_1Click(Sender: TObject);
    procedure btnLkpClearClick(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
    procedure UniFormCreate(Sender: TObject);
    procedure img_2Click(Sender: TObject);
    procedure img_3Click(Sender: TObject);
    procedure img_4Click(Sender: TObject);
    procedure UniFormShow(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure uniFile_1Completed(Sender: TObject; AStream: TFileStream);
    procedure uniFile_2Completed(Sender: TObject; AStream: TFileStream);
    procedure uniFile_3Completed(Sender: TObject; AStream: TFileStream);
    procedure uniFile_4Completed(Sender: TObject; AStream: TFileStream);
    procedure D1Click(Sender: TObject);
    procedure V1Click(Sender: TObject);
  private
    { Private declarations }
  seqfotos:integer;
  public
    { Public declarations }
    cMSG_BUGERROR_RECORDS_SELECTION,
    cMSG_RECORDS_FOUND : string ;
    cFormModal         : TUniForm;
    procedure carregadados(const pproduto:integer);
    procedure crudfotos(const acao :string;seq:integer;AStream: TFileStream);
  end;

function frmPRODUTOSFOTO: TfrmPRODUTOSFOTO;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untDM_RC, mkm_procedures, uconsts,
  mkm_func_web, mkm_funcoes, Vcl.Clipbrd;

function frmPRODUTOSFOTO: TfrmPRODUTOSFOTO;
begin
  Result := TfrmPRODUTOSFOTO(mm.GetFormInstance(TfrmPRODUTOSFOTO));
end;

procedure TfrmPRODUTOSFOTO.btnLkpClearClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmPRODUTOSFOTO.carregadados(const pproduto:integer);
begin
  TabelaFotosProduto(' select * from PRODUTOS_FOTOS where produto = ' + IntToStr(pproduto)             +
                     ' and empresa                                = ' + IntToStr(mm.varI_Code_Company) +
                     ' order by sequencia                           ');

  dm_rc.FDQryprodutosfotos.First;
  while not dm_rc.FDQryprodutosfotos.Eof do
    begin

      if dm_rc.FDQryprodutosfotos.FindField('SEQUENCIA').AsInteger = 1 then
        img_1.Picture.LoadFromFile(dm_rc.FDQryprodutosfotos.FindField('caminho').AsString);
      if dm_rc.FDQryprodutosfotos.FindField('SEQUENCIA').AsInteger = 2 then
        img_2.Picture.LoadFromFile(dm_rc.FDQryprodutosfotos.FindField('caminho').AsString);
      if dm_rc.FDQryprodutosfotos.FindField('SEQUENCIA').AsInteger = 3 then
        img_3.Picture.LoadFromFile(dm_rc.FDQryprodutosfotos.FindField('caminho').AsString);
      if dm_rc.FDQryprodutosfotos.FindField('SEQUENCIA').AsInteger = 4 then
        img_4.Picture.LoadFromFile(dm_rc.FDQryprodutosfotos.FindField('caminho').AsString);

      dm_rc.FDQryprodutosfotos.Next;
    end;

end;

procedure TfrmPRODUTOSFOTO.crudfotos(const acao :string;seq:integer;AStream: TFileStream);
var
  pathimg:string;
begin
  if acao = 'inclui' then
    begin
      executasql(' delete from PRODUTOS_FOTOS where produto = ' + IntToStr(mm.varC_cadastro_produto) +
                 ' and sequencia                            = ' + IntToStr(seq));

      TabelaFotosProduto('select * from produtos_fotos where codigo = 0');

      dm_rc.FDQryprodutosfotos.Append;
      dm_rc.FDQryprodutosfotos.FindField('KEY').AsString        := Gera_Guid;
      dm_rc.FDQryprodutosfotos.FindField('CODIGO').AsInteger    := Ultimo_Codigo('PRODUTOS_FOTOS','CODIGO',True);
      dm_rc.FDQryprodutosfotos.FindField('PRODUTO').AsInteger   := MM.varC_cadastro_produto;
      dm_rc.FDQryprodutosfotos.FindField('EMPRESA').AsInteger   := MM.varI_Code_Company;
      dm_rc.FDQryprodutosfotos.FindField('SEQUENCIA').AsInteger := seq;
      dm_rc.FDQryprodutosfotos.FindField('CAMINHO').AsString    := AStream.FileName;
      dm_rc.FDQryprodutosfotos.Post;
    end;

  if acao = 'exclui' then
    begin
      SqlPesquisa('select * from PRODUTOS_FOTOS where produto = ' + IntToStr(mm.varC_cadastro_produto) +
                 ' and sequencia                            = ' + IntToStr(seq));
      try
        DeleteFile(dm_rc.sqlBuscas.FindField('CAMINHO').AsString);
        executasql(' delete from PRODUTOS_FOTOS where produto = ' + IntToStr(mm.varC_cadastro_produto) +
                   ' and sequencia                            = ' + IntToStr(seq));
      except
      end;

      pathimg :=  ExtractFilePath(Application.ExeName) + 'uploads' + BACKSLASH +  'semfoto.jpg';

      if seq = 1 then
        img_1.Picture.LoadFromFile(pathimg);
      if seq = 2 then
        img_2.Picture.LoadFromFile(pathimg);
      if seq = 3 then
        img_3.Picture.LoadFromFile(pathimg);
      if seq = 4 then
        img_4.Picture.LoadFromFile(pathimg);

      img_visualiza.Picture.LoadFromFile(pathimg);
    end;

  if acao = 'carrega' then
    begin
      SqlPesquisa('select * from PRODUTOS_FOTOS where produto = ' + IntToStr(mm.varC_cadastro_produto) +
                 ' and sequencia                              = ' + IntToStr(seq));

      img_visualiza.Picture := nil;
      img_visualiza.Picture.LoadFromFile(dm_rc.sqlBuscas.FindField('CAMINHO').AsString);
    end;

end;

procedure TfrmPRODUTOSFOTO.D1Click(Sender: TObject);
var
  va : TFileStream;
begin
  crudfotos('exclui',seqfotos,va);
end;

procedure TfrmPRODUTOSFOTO.E1Click(Sender: TObject);
begin
  if seqfotos = 1 then
    begin
      uniFile_1.CleanupInstance;
      uniFile_1.Filter       := '*.png;*.jpg';
      uniFile_1.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos';

      if dm_rc.rc_ForceDirectories( uniFile_1.TargetFolder ) then
         uniFile_1.Execute;
    end;
  if seqfotos = 2 then
    begin
      uniFile_2.CleanupInstance;
      uniFile_2.Filter       := '*.png;*.jpg';
      uniFile_2.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos';

      if dm_rc.rc_ForceDirectories( uniFile_2.TargetFolder ) then
         uniFile_2.Execute;
    end;
  if seqfotos = 3 then
    begin
      uniFile_3.CleanupInstance;
      uniFile_3.Filter       := '*.png;*.jpg';
      uniFile_3.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos';

      if dm_rc.rc_ForceDirectories( uniFile_3.TargetFolder ) then
         uniFile_3.Execute;

    end;
  if seqfotos = 4 then
    begin
      uniFile_4.CleanupInstance;
      uniFile_4.Filter       := '*.png;*.jpg';
      uniFile_4.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos';

      if dm_rc.rc_ForceDirectories( uniFile_4.TargetFolder ) then
         uniFile_4.Execute;
    end;

end;

procedure TfrmPRODUTOSFOTO.img_1Click(Sender: TObject);
begin
  seqfotos := 1;
  UniPopupMenu_img.PopupBy( TUniButton( sender ) );
end;

procedure TfrmPRODUTOSFOTO.UniFormCreate(Sender: TObject);
begin
  cFormModal := mm.varC_Form_Modal;
end;

procedure TfrmPRODUTOSFOTO.UniFormDestroy(Sender: TObject);
begin
  mm.varC_Form_Modal := nil;
end;

procedure TfrmPRODUTOSFOTO.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
  dm_rc.rc_ResizeBlocks( Self, true, true );
end;

procedure TfrmPRODUTOSFOTO.UniFormShow(Sender: TObject);
begin
  carregadados(mm.varC_cadastro_produto);
end;

procedure TfrmPRODUTOSFOTO.V1Click(Sender: TObject);
var
  va : TFileStream;
begin
  crudfotos('carrega',seqfotos,va);
end;

procedure TfrmPRODUTOSFOTO.img_2Click(Sender: TObject);
begin
  seqfotos := 2;
  UniPopupMenu_img.PopupBy( TUniButton( sender ) );
end;

procedure TfrmPRODUTOSFOTO.img_3Click(Sender: TObject);
begin
  seqfotos := 3;
  UniPopupMenu_img.PopupBy( TUniButton( sender ) );
end;

procedure TfrmPRODUTOSFOTO.img_4Click(Sender: TObject);
begin
  seqfotos := 4;
  UniPopupMenu_img.PopupBy( TUniButton( sender ) );
end;

procedure TfrmPRODUTOSFOTO.uniFile_1Completed(Sender: TObject;
  AStream: TFileStream);
begin
  uniFile_1.Filter       := '*.jpg';
  uniFile_1.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos' ;

  if seqfotos = 1 then
    img_1.Picture.LoadFromFile(AStream.FileName);

  img_visualiza.Picture.LoadFromFile(AStream.FileName);

  crudfotos('inclui',seqfotos,AStream);
end;

procedure TfrmPRODUTOSFOTO.uniFile_2Completed(Sender: TObject;
  AStream: TFileStream);
begin
  uniFile_2.Filter       := '*.jpg';
  uniFile_2.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos' ;

  if seqfotos = 2 then
    img_2.Picture.LoadFromFile(AStream.FileName);


  img_visualiza.Picture.LoadFromFile(AStream.FileName);

  crudfotos('inclui',seqfotos,AStream);
end;

procedure TfrmPRODUTOSFOTO.uniFile_3Completed(Sender: TObject;
  AStream: TFileStream);
begin
  uniFile_3.Filter       := '*.jpg';
  uniFile_3.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos' ;

  if seqfotos = 3 then
    img_3.Picture.LoadFromFile(AStream.FileName);

  img_visualiza.Picture.LoadFromFile(AStream.FileName);

  crudfotos('inclui',seqfotos,AStream);
end;

procedure TfrmPRODUTOSFOTO.uniFile_4Completed(Sender: TObject;
  AStream: TFileStream);
begin
  uniFile_4.Filter       := '*.jpg';
  uniFile_4.TargetFolder := 'uploads' + BACKSLASH + 'produtofotos' ;

  if seqfotos = 4 then
    img_4.Picture.LoadFromFile(AStream.FileName);

  img_visualiza.Picture.LoadFromFile(AStream.FileName);

  crudfotos('inclui',seqfotos,AStream);
end;

end.
