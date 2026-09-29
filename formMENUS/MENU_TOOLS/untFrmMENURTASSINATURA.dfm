object frmMENURTASSINATURA: TfrmMENURTASSINATURA
  Left = 0
  Top = 0
  Hint = '[['#13#10'frm-align:right |'#13#10'height:max |'#13#10'width:fix'#13#10']]'#13#10#13#10
  ClientHeight = 680
  ClientWidth = 322
  Caption = 'frmMENURTASSINATURA'
  OnShow = UniFormShow
  BorderStyle = bsNone
  Position = poDefaultPosOnly
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  AlignmentControl = uniAlignmentClient
  OnReady = UniFormReady
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniContainerPanel1: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 680
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 0
    object paTitulo: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 322
      Height = 42
      Hint = ''
      ParentColor = False
      Color = clSilver
      Align = alTop
      TabOrder = 1
      object paSearchContent1: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 322
        Height = 42
        Hint = ''
        Margins.Top = 0
        Margins.Bottom = 0
        ParentColor = False
        Color = clGray
        Align = alClient
        TabOrder = 1
        DesignSize = (
          322
          42)
        object labbtnExit: TUniLabel
          AlignWithMargins = True
          Left = 292
          Top = 11
          Width = 30
          Height = 28
          Cursor = crHandPoint
          Hint = '[['#13#10'ico:fas-sign-out-alt |'#13#10'cls:rc-hover-zoom-1-2'#13#10']]'
          Margins.Left = 0
          Margins.Top = 13
          Margins.Right = 10
          CreateOrder = 1
          Alignment = taCenter
          TextConversion = txtHTML
          AutoSize = False
          Caption = 'Off'
          Anchors = [akTop, akRight]
          ParentFont = False
          Font.Color = 15724527
          Font.Height = -16
          TabOrder = 3
          OnClick = labbtnExitClick
        end
        object labTitleFrm: TUniLabel
          AlignWithMargins = True
          Left = 10
          Top = 5
          Width = 212
          Height = 26
          Hint = ''
          Margins.Left = 10
          Margins.Top = 5
          Caption = 'Solicita'#231#227'o de Assinatura'
          Align = alClient
          ParentFont = False
          Font.Color = clWhite
          Font.Height = -21
          Font.Name = 'Calibri'
          TabOrder = 1
        end
        object labSelectedColor: TUniLabel
          Left = 202
          Top = 8
          Width = 3
          Height = 13
          Hint = ''
          Visible = False
          Caption = ''
          TabOrder = 2
        end
      end
    end
    object UniContainerPanel20: TUniContainerPanel
      Left = 0
      Top = 42
      Width = 6
      Height = 638
      Hint = ''
      ParentColor = False
      Color = clGray
      Align = alLeft
      TabOrder = 2
    end
    object UniScrollBox: TUniScrollBox
      Left = 6
      Top = 42
      Width = 316
      Height = 638
      Hint = ''
      Align = alClient
      TabOrder = 3
    end
  end
end
