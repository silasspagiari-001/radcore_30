object FrmCRESCIMENTOFATEMPRESA: TFrmCRESCIMENTOFATEMPRESA
  Left = 0
  Top = 0
  ClientHeight = 346
  ClientWidth = 613
  Caption = 'Crescimento Empresarial'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = []
  MonitoredKeys.Keys = <>
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
      Caption = 'Relat'#243'rio de Crescimento e Tend'#234'ncia Empresarial'
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
        object rcBlock80: TUniContainerPanel
          Tag = 1
          Left = 3
          Top = 6
          Width = 150
          Height = 48
          Hint = '[[cols:xs-12 sm-12 md-4]]'
          ParentColor = False
          TabOrder = 1
          DesignSize = (
            150
            48)
          object cbxtipo: TUniComboBox
            AlignWithMargins = True
            Left = 0
            Top = 18
            Width = 150
            Height = 29
            Hint = ''
            Margins.Right = 5
            Style = csDropDownList
            Text = 'Nota'
            Items.Strings = (
              'Nota'
              'Pedidos')
            ItemIndex = 0
            Anchors = [akLeft, akTop, akRight]
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 1
            IconItems = <>
          end
          object UniLabelFd1: TUniLabel
            AlignWithMargins = True
            Left = 3
            Top = 0
            Width = 24
            Height = 15
            Hint = ''
            Margins.Top = 1
            Margins.Bottom = 2
            Caption = 'Tipo'
            ParentFont = False
            Font.Height = -13
            Font.Name = 'Calibri'
            TabOrder = 2
          end
        end
        object rcBlock110: TUniContainerPanel
          Left = 3
          Top = 60
          Width = 599
          Height = 92
          Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
          ParentColor = False
          TabOrder = 2
          object UniCheckBoxVENDAS: TUniCheckBox
            Left = 0
            Top = 3
            Width = 97
            Height = 17
            Hint = ''
            Caption = 'Vendas '
            TabOrder = 1
          end
          object UniCheckBoxDEVOLUCAO: TUniCheckBox
            Left = 111
            Top = 3
            Width = 97
            Height = 17
            Hint = ''
            Caption = 'Devolu'#231#227'o'
            TabOrder = 2
          end
          object UniCheckBoxVENDASEF: TUniCheckBox
            Left = 214
            Top = 3
            Width = 97
            Height = 17
            Hint = ''
            Caption = 'Venda E.F.'
            TabOrder = 3
          end
          object UniCheckBoxBONIFICACAO: TUniCheckBox
            Left = 1
            Top = 37
            Width = 97
            Height = 17
            Hint = ''
            Caption = 'Bonifica'#231#227'o'
            TabOrder = 4
          end
          object UniCheckBoxTROCA: TUniCheckBox
            Left = 112
            Top = 37
            Width = 97
            Height = 17
            Hint = ''
            Caption = 'Troca'
            TabOrder = 5
          end
          object UniCheckBoxOUTROS: TUniCheckBox
            Left = 215
            Top = 37
            Width = 97
            Height = 17
            Hint = ''
            Caption = 'Outros'
            TabOrder = 6
          end
        end
        object rcBlock10: TUniContainerPanel
          Left = 0
          Top = 259
          Width = 605
          Height = 59
          Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
          ParentColor = False
          Align = alBottom
          TabOrder = 3
          ExplicitTop = 287
          ExplicitWidth = 613
          object rcBlock20: TUniContainerPanel
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
          object rcBlock30: TUniContainerPanel
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
  object UniScreenMask1: TUniScreenMask
    AttachedControl = btnimpressao
    Enabled = True
    Left = 564
    Top = 32
  end
end
