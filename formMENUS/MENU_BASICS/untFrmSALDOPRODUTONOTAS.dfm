object frmSALDOPRODUTONOTAS: TfrmSALDOPRODUTONOTAS
  Left = 0
  Top = 0
  ClientHeight = 346
  ClientWidth = 613
  Caption = 'Saldo de Produtos com Base em Notas'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  OnDestroy = UniFormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 613
    Height = 346
    Hint = ''
    ActivePage = UniTabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -10
    ExplicitTop = -10
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'Saldo Notas'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object rcBlock10: TUniContainerPanel
        Left = 3
        Top = 7
        Width = 150
        Height = 49
        Hint = '[[cols:xs-12 sm-12 md-6]]'
        ParentColor = False
        TabOrder = 0
        DesignSize = (
          150
          49)
        object UniLabelDtIni: TUniLabel
          AlignWithMargins = True
          Left = 3
          Top = 2
          Width = 81
          Height = 15
          Hint = ''
          Margins.Top = 1
          Margins.Bottom = 2
          Caption = 'Emiss'#227'o Inicio'
          ParentFont = False
          Font.Height = -13
          Font.Name = 'Calibri'
          TabOrder = 1
        end
        object edSearchDATAINI: TUniDateTimePicker
          AlignWithMargins = True
          Left = 3
          Top = 18
          Width = 145
          Height = 29
          Hint = ''
          Margins.Right = 5
          DateTime = 43232.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          ParentFont = False
          Font.Height = -13
          Font.Name = 'Calibri'
          ClientEvents.ExtEvents.Strings = (
            
              'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
              '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
              '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
              ':"  /  /   "});'#13#10'}')
          OnExit = edSearchDATAINIExit
        end
      end
      object rcBlock20: TUniContainerPanel
        Left = 196
        Top = 7
        Width = 150
        Height = 49
        Hint = '[[cols:xs-12 sm-12 md-6]]'
        ParentColor = False
        TabOrder = 1
        DesignSize = (
          150
          49)
        object UniLabel1: TUniLabel
          AlignWithMargins = True
          Left = 3
          Top = 2
          Width = 17
          Height = 15
          Hint = ''
          Margins.Top = 1
          Margins.Bottom = 2
          Caption = 'at'#233
          ParentFont = False
          Font.Height = -13
          Font.Name = 'Calibri'
          TabOrder = 1
        end
        object edSearchDATAFIN: TUniDateTimePicker
          AlignWithMargins = True
          Left = 2
          Top = 18
          Width = 146
          Height = 29
          Hint = ''
          Margins.Right = 5
          DateTime = 43232.000000000000000000
          DateFormat = 'dd/MM/yyyy'
          TimeFormat = 'HH:mm:ss'
          Anchors = [akLeft, akTop, akRight]
          TabOrder = 2
          ParentFont = False
          Font.Height = -13
          Font.Name = 'Calibri'
          ClientEvents.ExtEvents.Strings = (
            
              'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
              '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
              '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
              ':"  /  /   "});'#13#10'}')
        end
      end
      object rcBlock60: TUniContainerPanel
        Left = 0
        Top = 259
        Width = 605
        Height = 59
        Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
        ParentColor = False
        Align = alBottom
        TabOrder = 2
        object UniContainerPanel3: TUniContainerPanel
          Left = 3
          Top = 5
          Width = 150
          Height = 48
          Hint = '[[cols:xs-12 sm-12 md-6]]'
          ParentColor = False
          TabOrder = 1
          DesignSize = (
            150
            48)
          object btnimpressao: TUniBitBtn
            Left = 11
            Top = 13
            Width = 119
            Height = 29
            Hint = '[[cls:ButtonThemeCrud]]'
            Margins.Top = 28
            Margins.Bottom = 12
            Caption = '<i class="fas fa-file-pdf"> Impress'#227'o</i>'
            Anchors = [akLeft, akRight, akBottom]
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 1
            OnClick = btnimpressaoClick
          end
        end
        object UniContainerPanel4: TUniContainerPanel
          Left = 196
          Top = 5
          Width = 150
          Height = 48
          Hint = '[[cols:xs-12 sm-12 md-6]]'
          ParentColor = False
          TabOrder = 2
          DesignSize = (
            150
            48)
          object UniBitBtn1: TUniBitBtn
            Left = 17
            Top = 13
            Width = 119
            Height = 29
            Hint = '[[cls:ButtonThemeCrud]]'
            Margins.Top = 28
            Margins.Bottom = 12
            Caption = 'Sair'
            Anchors = [akLeft, akRight, akBottom]
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 1
            OnClick = UniBitBtn1Click
          end
        end
      end
    end
  end
end
