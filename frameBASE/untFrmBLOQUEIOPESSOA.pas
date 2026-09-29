unit untFrmBLOQUEIOPESSOA;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIForm, uniButton, uniBitBtn, uniLabel, acPNG, uniImage,
  uniGUIBaseClasses, uniPanel;

type
  TfrmBLOQUEIOPESSOA = class(TUniForm)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    UniImage1: TUniImage;
    rcBlock40: TUniContainerPanel;
    UniLabel1: TUniLabel;
    btnLkpClear: TUniBitBtn;
    procedure btnLkpClearClick(Sender: TObject);
    procedure UniFormDestroy(Sender: TObject);
    procedure UniFormReady(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function frmBLOQUEIOPESSOA: TfrmBLOQUEIOPESSOA;

implementation

{$R *.dfm}

uses
  MainModule, uniGUIApplication, untDM_RC;

function frmBLOQUEIOPESSOA: TfrmBLOQUEIOPESSOA;
begin
  Result := TfrmBLOQUEIOPESSOA(mm.GetFormInstance(TfrmBLOQUEIOPESSOA));
end;

procedure TfrmBLOQUEIOPESSOA.btnLkpClearClick(Sender: TObject);
begin
  ModalResult := mrOK;
end;

procedure TfrmBLOQUEIOPESSOA.UniFormDestroy(Sender: TObject);
begin
  mm.varC_Form_Modal := nil;
end;

procedure TfrmBLOQUEIOPESSOA.UniFormReady(Sender: TObject);
begin
  Self.Top := ( UniSession.UniApplication.ScreenHeight  div 2 ) - ( self.Height div 2  );
  dm_rc.rc_ResizeBlocks( Self, true, true );
end;

end.
