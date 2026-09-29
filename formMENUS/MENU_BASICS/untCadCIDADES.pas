unit untCadCIDADES;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, untFormCRUDPROPRIO, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  uniGUIBaseClasses, uniGUIClasses, uniScreenMask, FireDAC.Comp.Client, Data.DB,
  FireDAC.Comp.DataSet, uniHTMLFrame, uniBasicGrid, uniDBGrid, uniMultiItem,
  uniComboBox, uniEdit, uniLabel, uniScrollBox, uniPanel, uniPageControl,
  uniButton, uniBitBtn, uniMemo, UniButtonDbEdit, uniDBComboBox, uniCheckBox,
  uniDBCheckBox, uniDBEdit;

type
  TfrmcadCIDADES = class(TfrmCRUDPROPRIO)
    rcBlock10: TUniContainerPanel;
    rcBlock20: TUniContainerPanel;
    rcBlock30: TUniContainerPanel;
    rcBlock40: TUniContainerPanel;
    edCodigo: TUniDBEdit;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniDBCheckBox1: TUniDBCheckBox;
    UniLabel5: TUniLabel;
    UniDBEdit1: TUniDBEdit;
    UniLabel20: TUniLabel;
    UniDBComboBoxestado: TUniDBComboBox;
    rcBlock50: TUniContainerPanel;
    rcBlock60: TUniContainerPanel;
    UniButtonDbEditCEPP: TUniButtonDbEdit;
    UniLabel15: TUniLabel;
    UniDBEdit2: TUniDBEdit;
    UniLabel6: TUniLabel;
    labExit: TUniLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadCIDADES: TfrmcadCIDADES;

implementation

{$R *.dfm}
initialization
  RegisterClass(TfrmcadCIDADES);
end.
