object frmTELAAVISOMSG: TfrmTELAAVISOMSG
  Left = 0
  Top = 0
  ClientHeight = 580
  ClientWidth = 740
  Caption = 'Comunicado Oficial'
  OnShow = UniFormShow
  OnResize = UniFormResize
  BorderStyle = bsDialog
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object paContainer: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 740
    Height = 580
    Hint = ''
    ParentColor = False
    Color = clWhite
    Align = alClient
    TabOrder = 0
    object paHeader: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 740
      Height = 72
      Hint = ''
      ParentColor = False
      Color = 16316664
      Align = alTop
      TabOrder = 0
      object labBadge: TUniLabel
        Left = 20
        Top = 12
        Width = 71
        Height = 13
        Hint = ''
        Caption = ' COMUNICADO '
        ParentFont = False
        Font.Color = 2781440
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentColor = False
        Color = 14483164
        TabOrder = 1
      end
      object UniLabeltitulo: TUniLabel
        Left = 20
        Top = 36
        Width = 700
        Height = 26
        Hint = ''
        AutoSize = False
        Caption = 'TITULO DO COMUNICADO'
        ParentFont = False
        Font.Color = 1052688
        Font.Height = -16
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        TabOrder = 2
      end
    end
    object paBody: TUniContainerPanel
      Left = 0
      Top = 72
      Width = 740
      Height = 448
      Hint = ''
      ParentColor = False
      Color = clWhite
      Align = alClient
      TabOrder = 1
      object htmlCorpo: TUniHTMLFrame
        Left = 0
        Top = 0
        Width = 740
        Height = 448
        Hint = ''
        Align = alClient
      end
    end
    object paFooter: TUniContainerPanel
      Left = 0
      Top = 520
      Width = 740
      Height = 60
      Hint = ''
      ParentColor = False
      Color = 16579836
      Align = alBottom
      TabOrder = 2
      DesignSize = (
        740
        60)
      object btnConfirmar: TUniBitBtn
        Left = 380
        Top = 12
        Width = 240
        Height = 36
        Hint = ''
        Caption = 'Confirmar Leitura'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = clWhite
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        TabOrder = 1
        OnClick = btnConfirmarClick
      end
      object btnFechar: TUniBitBtn
        Left = 630
        Top = 12
        Width = 90
        Height = 36
        Hint = ''
        Caption = 'Fechar'
        Anchors = [akTop, akRight]
        ParentFont = False
        Font.Color = 4605510
        Font.Height = -12
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        TabOrder = 2
        OnClick = btnFecharClick
      end
    end
  end
end
