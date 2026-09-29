object frmRELATORIOSALDOEFEP: TfrmRELATORIOSALDOEFEP
  Left = 0
  Top = 0
  ClientHeight = 346
  ClientWidth = 613
  Caption = 'Relat'#243'rio de Saldo E.F./E.P'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  OnReady = UniFormReady
  OnDestroy = UniFormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl: TUniPageControl
    Left = 0
    Top = 0
    Width = 613
    Height = 346
    Hint = ''
    ActivePage = UniTabSheetvendas
    Align = alClient
    TabOrder = 0
    ExplicitTop = 8
    ExplicitHeight = 287
    object UniTabSheetvendas: TUniTabSheet
      Hint = ''
      Caption = 'Relat'#243'rio Detalhado'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 256
      ExplicitHeight = 128
      object UniContainerPanel2: TUniContainerPanel
        Left = 0
        Top = 0
        Width = 605
        Height = 318
        Hint = ''
        ParentColor = False
        Align = alClient
        TabOrder = 0
        ExplicitHeight = 259
        object rcBlock40: TUniContainerPanel
          Left = 3
          Top = 3
          Width = 150
          Height = 48
          Hint = '[[cols:xs-12 sm-12 md-6]]'
          ParentColor = False
          TabOrder = 1
          DesignSize = (
            150
            48)
          object UniLabelDtIni: TUniLabel
            AlignWithMargins = True
            Left = 1
            Top = 0
            Width = 65
            Height = 15
            Hint = ''
            Margins.Top = 1
            Margins.Bottom = 2
            Caption = 'Data Inicial'
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 1
          end
          object edSearchDATAINIVEN: TUniDateTimePicker
            AlignWithMargins = True
            Left = 1
            Top = 18
            Width = 149
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
            OnExit = edSearchDATAINIVENExit
          end
        end
        object rcBlock50: TUniContainerPanel
          Left = 196
          Top = 3
          Width = 150
          Height = 48
          Hint = '[[cols:xs-12 sm-12 md-6]]'
          ParentColor = False
          TabOrder = 2
          DesignSize = (
            150
            48)
          object UniLabel1: TUniLabel
            AlignWithMargins = True
            Left = 2
            Top = 0
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
          object edSearchDATAFINVEN: TUniDateTimePicker
            AlignWithMargins = True
            Left = 2
            Top = 18
            Width = 148
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
          Left = 3
          Top = 57
          Width = 150
          Height = 48
          Hint = '[[cols:xs-12 sm-12 md-6]]'
          ParentColor = False
          TabOrder = 3
          DesignSize = (
            150
            48)
          object UniLabel2: TUniLabel
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 84
            Height = 15
            Hint = ''
            Margins.Top = 1
            Margins.Bottom = 2
            Caption = 'Pessoas Inicial'
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 1
          end
          object edSearchPESSOAINIVEN: TUniButtonEdit
            AlignWithMargins = True
            Left = 1
            Top = 21
            Width = 149
            Height = 26
            Hint = ''
            Text = '00001'
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            OnButtonClick = edSearchPESSOAINIVENButtonClick
            IconCls = 'search'
          end
        end
        object rcBlock70: TUniContainerPanel
          Left = 196
          Top = 57
          Width = 150
          Height = 48
          Hint = '[[cols:xs-12 sm-12 md-6]]'
          ParentColor = False
          TabOrder = 4
          DesignSize = (
            150
            48)
          object UniLabel3: TUniLabel
            AlignWithMargins = True
            Left = 2
            Top = 1
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
          object edSearchPESSOAFINVEN: TUniButtonEdit
            AlignWithMargins = True
            Left = 2
            Top = 21
            Width = 148
            Height = 26
            Hint = ''
            Text = '9999999'
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            OnButtonClick = edSearchPESSOAFINVENButtonClick
            IconCls = 'search'
          end
        end
        object UniContainerPanel1: TUniContainerPanel
          Left = 3
          Top = 110
          Width = 150
          Height = 48
          Hint = '[[cols:xs-12 sm-12 md-6]]'
          ParentColor = False
          TabOrder = 5
          DesignSize = (
            150
            48)
          object UniLabel4: TUniLabel
            AlignWithMargins = True
            Left = 1
            Top = 1
            Width = 89
            Height = 15
            Hint = ''
            Margins.Top = 1
            Margins.Bottom = 2
            Caption = 'Produtos Inicial'
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 1
          end
          object edSearchProdutosini: TUniButtonEdit
            AlignWithMargins = True
            Left = 1
            Top = 21
            Width = 149
            Height = 26
            Hint = ''
            Text = '00001'
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            OnButtonClick = edSearchProdutosiniButtonClick
            IconCls = 'search'
          end
        end
        object UniContainerPanel3: TUniContainerPanel
          Left = 196
          Top = 110
          Width = 150
          Height = 48
          Hint = '[[cols:xs-12 sm-12 md-6]]'
          ParentColor = False
          TabOrder = 6
          DesignSize = (
            150
            48)
          object UniLabel5: TUniLabel
            AlignWithMargins = True
            Left = 2
            Top = 1
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
          object edSearchProdutosfin: TUniButtonEdit
            AlignWithMargins = True
            Left = 2
            Top = 21
            Width = 148
            Height = 26
            Hint = ''
            Text = '9999999'
            Anchors = [akLeft, akTop, akRight]
            TabOrder = 2
            OnButtonClick = edSearchProdutosfinButtonClick
            IconCls = 'search'
          end
        end
        object UniContainerPanel4: TUniContainerPanel
          Left = 0
          Top = 259
          Width = 605
          Height = 59
          Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
          ParentColor = False
          Align = alBottom
          TabOrder = 7
          object UniContainerPanel5: TUniContainerPanel
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
          object UniContainerPanel6: TUniContainerPanel
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
end
