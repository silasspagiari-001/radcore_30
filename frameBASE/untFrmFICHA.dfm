object frmFICHA: TfrmFICHA
  Left = 0
  Top = 0
  Hint = '[['#13#10'modal:'#13#10']]'
  ClientHeight = 393
  ClientWidth = 734
  Caption = 'FICHA T'#201'CNICA DE CONTROLE DE ESTOQUE'
  OnShow = UniFormShow
  OnResize = UniFormResize
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  OnReady = UniFormReady
  PixelsPerInch = 96
  TextHeight = 13
  object paBaseButtons: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 37
    Height = 393
    Hint = ''
    Margins.Left = 4
    Margins.Top = 2
    Margins.Right = 6
    ParentColor = False
    Color = clWhite
    Align = alLeft
    AlignmentControl = uniAlignmentClient
    ParentAlignmentControl = False
    AutoScroll = True
    TabOrder = 0
    ScrollHeight = 393
    ScrollWidth = 37
    object paOF: TUniContainerPanel
      AlignWithMargins = True
      Left = 0
      Top = 294
      Width = 37
      Height = 59
      Hint = ''
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 0
      Margins.Bottom = 0
      ParentColor = False
      Align = alTop
      TabOrder = 4
      object btnCloseForm: TUniBitBtn
        AlignWithMargins = True
        Left = 2
        Top = 20
        Width = 33
        Height = 32
        Hint = 
          '[['#13#10'cls:ButtonWhite | '#13#10'ico:fas-sign-out-alt rc-mirror-h | '#13#10'cls' +
          '-ico:font-black'#13#10']]'
        Margins.Left = 2
        Margins.Top = 20
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = '<i class="fas fa-sign-out-alt"></i>'
        Align = alTop
        ParentFont = False
        Font.Height = -19
        Font.Name = 'Calibri'
        TabOrder = 1
        ScaleButton = False
        LayoutConfig.Padding = '0 2 0 0'
        OnClick = btnCloseFormClick
      end
    end
    object paP: TUniContainerPanel
      Left = 0
      Top = 0
      Width = 37
      Height = 39
      Hint = ''
      Margins.Top = 6
      ParentColor = False
      Align = alTop
      TabOrder = 0
    end
    object paNAE: TUniContainerPanel
      AlignWithMargins = True
      Left = 0
      Top = 59
      Width = 37
      Height = 78
      Hint = ''
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 0
      Margins.Bottom = 0
      ParentColor = False
      Align = alTop
      TabOrder = 2
      object btnEditReg: TUniBitBtn
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 33
        Height = 32
        Hint = 
          '[['#13#10'cls:ButtonWhite |'#13#10'ico:fas-pencil-alt | '#13#10'cls-ico:font-black' +
          #13#10']]'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = '<i class="fas fa-pencil-alt"></i>'
        Align = alTop
        ParentFont = False
        Font.Height = -19
        Font.Name = 'Calibri'
        TabOrder = 1
        ScaleButton = False
        LayoutConfig.Padding = '0 2 0 0'
        OnClick = btnEditRegClick
      end
      object btnDeleteReg: TUniBitBtn
        AlignWithMargins = True
        Left = 2
        Top = 38
        Width = 33
        Height = 32
        Hint = 
          '[['#13#10'cls:ButtonWhite | '#13#10'ico:fas-trash-alt | '#13#10'cls-ico:font-black' +
          #13#10']]'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 0
        Caption = '<i class="fas fa-trash-alt"></i>'
        Align = alTop
        ParentFont = False
        Font.Height = -19
        Font.Name = 'Calibri'
        TabOrder = 2
        ScaleButton = False
        LayoutConfig.Padding = '0 2 0 0'
        OnClick = btnDeleteRegClick
      end
    end
    object paGC: TUniContainerPanel
      AlignWithMargins = True
      Left = 0
      Top = 157
      Width = 37
      Height = 117
      Hint = ''
      Margins.Left = 0
      Margins.Top = 20
      Margins.Right = 0
      Margins.Bottom = 0
      ParentColor = False
      Align = alTop
      TabOrder = 3
      object btnSaveReg: TUniBitBtn
        AlignWithMargins = True
        Left = 2
        Top = 38
        Width = 33
        Height = 32
        Hint = '[['#13#10'cls:ButtonWhite | '#13#10'ico:fas-save | '#13#10'cls-ico:font-black'#13#10']]'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = '<i class="fas fa-save"></i>'
        Align = alTop
        ParentFont = False
        Font.Height = -19
        Font.Name = 'Calibri'
        TabOrder = 1
        ScaleButton = False
        LayoutConfig.Padding = '0 2 0 0'
        OnClick = btnSaveRegClick
      end
      object btnCancelReg: TUniBitBtn
        AlignWithMargins = True
        Left = 2
        Top = 2
        Width = 33
        Height = 32
        Hint = '[['#13#10'cls:ButtonWhite | '#13#10'ico:fa-ban | '#13#10'cls-ico:font-black'#13#10']]'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = '<i class="fas fa-ban"></i>'
        Align = alTop
        ParentFont = False
        Font.Height = -19
        Font.Name = 'Calibri'
        TabOrder = 2
        ScaleButton = False
        LayoutConfig.Padding = '0 2 0 0'
        OnClick = btnCancelRegClick
      end
      object btnOptions: TUniBitBtn
        AlignWithMargins = True
        Left = 2
        Top = 74
        Width = 33
        Height = 32
        Hint = '[['#13#10'cls:ButtonWhite | '#13#10'ico:fas-cog | '#13#10'cls-ico:font-black'#13#10']]'
        Margins.Left = 2
        Margins.Top = 2
        Margins.Right = 2
        Margins.Bottom = 2
        Caption = '<i class="fas fa-print"></i>'
        Align = alTop
        ParentFont = False
        Font.Height = -19
        Font.Name = 'Calibri'
        TabOrder = 3
        ScaleButton = False
        LayoutConfig.Padding = '0 2 0 0'
        OnClick = btnOptionsClick
      end
    end
  end
  object rcBlock10: TUniContainerPanel
    Left = 37
    Top = 0
    Width = 697
    Height = 393
    Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
    ParentColor = False
    Align = alClient
    TabOrder = 1
    object UniPageControl: TUniPageControl
      Left = 0
      Top = 0
      Width = 697
      Height = 393
      Hint = ''
      ActivePage = UniTabSheetFICHA
      Align = alClient
      TabOrder = 1
      object UniTabSheetFICHA: TUniTabSheet
        Hint = ''
        Caption = 'Ficha de Estoque'
        object UniContainerPanel1: TUniContainerPanel
          Left = 0
          Top = 0
          Width = 689
          Height = 365
          Hint = ''
          ParentColor = False
          Align = alClient
          TabOrder = 0
          object UniContainerPanel2: TUniContainerPanel
            Tag = 1
            Left = 0
            Top = 0
            Width = 113
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-6]]'
            ParentColor = False
            TabOrder = 1
            DesignSize = (
              113
              48)
            object edCodigo: TUniDBEdit
              Left = 1
              Top = 18
              Width = 109
              Height = 29
              Hint = ''
              DataField = 'MESTRE_LOTE'
              DataSource = dscrud
              Anchors = [akLeft, akTop, akRight]
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
              Color = clGray
              ReadOnly = True
            end
            object UniLabel3: TUniLabel
              Left = 0
              Top = 0
              Width = 42
              Height = 15
              Hint = ''
              Caption = 'N'#186' LOTE'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object rcBlock280: TUniContainerPanel
            Tag = 1
            Left = 115
            Top = 0
            Width = 134
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 2
            DesignSize = (
              134
              48)
            object UniDBDateTimePicker2: TUniDBDateTimePicker
              AlignWithMargins = True
              Left = 5
              Top = 18
              Width = 126
              Height = 29
              Hint = ''
              DataField = 'DATAENTRADA'
              DataSource = dscrud
              DateTime = 44554.000000000000000000
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 1
              ClientEvents.ExtEvents.Strings = (
                
                  'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
                  '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
                  '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
                  ':"  /  /   "});'#13#10'}')
            end
            object UniLabel14: TUniLabel
              Left = 5
              Top = 0
              Width = 72
              Height = 15
              Hint = ''
              Caption = 'Data Entrada'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 2
            end
          end
          object UniContainerPanel4: TUniContainerPanel
            Tag = 1
            Left = 251
            Top = 0
            Width = 110
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 3
            object UniLabel2: TUniLabel
              Left = 2
              Top = 0
              Width = 73
              Height = 15
              Hint = ''
              Caption = 'Hora Entrada'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBDateTimePicker1: TUniDBDateTimePicker
              Left = 2
              Top = 18
              Width = 106
              Height = 29
              Hint = ''
              DataField = 'HORAENTRADA'
              DataSource = dscrud
              DateTime = 0.733541666666666600
              DateFormat = 'dd/MM/yyyy'
              TimeFormat = 'HH:mm:ss'
              Kind = tUniTime
              TabOrder = 2
              DateMode = dtmDateTime
            end
          end
          object rcBlock40: TUniContainerPanel
            Tag = 1
            Left = 363
            Top = 0
            Width = 94
            Height = 48
            Hint = '[[cols:xs-12 sm-6 md-3]]'
            ParentColor = False
            TabOrder = 4
            object UniLabel8: TUniLabel
              Left = 0
              Top = 0
              Width = 56
              Height = 15
              Hint = ''
              Caption = 'Fornecdor'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniButtonDbEdit1: TUniButtonDbEdit
              Tag = 1
              Left = 1
              Top = 18
              Width = 92
              Height = 29
              Hint = ''
              DataField = 'PESSOA'
              DataSource = dscrud
              TabOrder = 2
              Color = clInfoBk
              OnExit = UniButtonDbEdit1Exit
              OnButtonClick = UniButtonDbEdit1ButtonClick
              IconCls = 'search'
            end
          end
          object rcBlock50: TUniContainerPanel
            Tag = 1
            Left = 458
            Top = 0
            Width = 231
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 5
            DesignSize = (
              231
              48)
            object UniLabel9: TUniLabel
              Left = 0
              Top = 0
              Width = 113
              Height = 15
              Hint = ''
              Caption = 'Nome do Fornecedor'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit19: TUniDBEdit
              Left = 2
              Top = 18
              Width = 226
              Height = 29
              Hint = ''
              DataField = 'NOME_PESSOA'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              ReadOnly = True
            end
          end
          object UniContainerPanel5: TUniContainerPanel
            Tag = 1
            Left = 0
            Top = 50
            Width = 177
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 6
            DesignSize = (
              177
              48)
            object UniLabel4: TUniLabel
              Left = 0
              Top = 0
              Width = 24
              Height = 15
              Hint = ''
              Caption = 'Tipo'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBComboBox1: TUniDBComboBox
              Tag = 1
              Left = 1
              Top = 16
              Width = 173
              Height = 29
              Hint = ''
              Anchors = [akLeft, akTop, akRight]
              DataField = 'TIPO'
              DataSource = dscrud
              Style = csDropDownList
              Items.Strings = (
                'REEMBALADOR'
                'TRANS. PRODUCAO')
              TabOrder = 2
              IconItems = <>
            end
          end
          object UniContainerPanel6: TUniContainerPanel
            Tag = 1
            Left = 179
            Top = 50
            Width = 134
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 7
            DesignSize = (
              134
              48)
            object UniLabel5: TUniLabel
              Left = 0
              Top = 0
              Width = 97
              Height = 15
              Hint = ''
              Caption = 'Termo/Certificado'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit1: TUniDBEdit
              Left = 0
              Top = 16
              Width = 131
              Height = 29
              Hint = ''
              DataField = 'TERMO'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
          object UniContainerPanel7: TUniContainerPanel
            Tag = 1
            Left = 315
            Top = 50
            Width = 110
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 8
            DesignSize = (
              110
              48)
            object UniLabel6: TUniLabel
              Left = 2
              Top = 0
              Width = 82
              Height = 15
              Hint = ''
              Caption = 'Boletim/Transf.'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit2: TUniDBEdit
              Left = 2
              Top = 16
              Width = 106
              Height = 29
              Hint = ''
              DataField = 'BOLETIM'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
          object UniContainerPanel8: TUniContainerPanel
            Tag = 1
            Left = 427
            Top = 50
            Width = 150
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 9
            DesignSize = (
              150
              48)
            object UniLabel7: TUniLabel
              Left = 0
              Top = 0
              Width = 22
              Height = 15
              Hint = ''
              Caption = 'Lote'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit3: TUniDBEdit
              Left = 2
              Top = 16
              Width = 145
              Height = 29
              Hint = ''
              DataField = 'LOTE'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
          object UniContainerPanel9: TUniContainerPanel
            Tag = 1
            Left = 578
            Top = 50
            Width = 111
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 10
            DesignSize = (
              111
              48)
            object UniLabel10: TUniLabel
              Left = 0
              Top = 0
              Width = 62
              Height = 15
              Hint = ''
              Caption = 'Nota Fiscal'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit4: TUniDBEdit
              Left = 2
              Top = 16
              Width = 106
              Height = 29
              Hint = ''
              DataField = 'NOTAFISCAL'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
          object UniContainerPanel11: TUniContainerPanel
            Tag = 1
            Left = 178
            Top = 100
            Width = 151
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 11
            DesignSize = (
              151
              48)
            object UniLabel12: TUniLabel
              Left = 0
              Top = 0
              Width = 43
              Height = 15
              Hint = ''
              Caption = 'Cultivar'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit6: TUniDBEdit
              Left = 3
              Top = 17
              Width = 145
              Height = 29
              Hint = ''
              DataField = 'CULTIVAR'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              ReadOnly = True
            end
          end
          object UniContainerPanel12: TUniContainerPanel
            Tag = 1
            Left = 330
            Top = 100
            Width = 94
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 12
            DesignSize = (
              94
              48)
            object UniLabel13: TUniLabel
              Left = 0
              Top = 0
              Width = 53
              Height = 15
              Hint = ''
              Caption = 'Categoria'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBComboBoxcategoria: TUniDBComboBox
              Tag = 1
              Left = 2
              Top = 17
              Width = 88
              Height = 29
              Hint = ''
              Anchors = [akLeft, akTop, akRight]
              DataField = 'CATEGORIA'
              DataSource = dscrud
              Style = csDropDownList
              Items.Strings = (
                'S1'
                'S2'
                'C1'
                'C2'
                'Basica'
                'S2+S1'
                '')
              TabOrder = 2
              IconItems = <>
            end
          end
          object UniContainerPanel13: TUniContainerPanel
            Tag = 1
            Left = 425
            Top = 100
            Width = 126
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 13
            DesignSize = (
              126
              48)
            object UniLabel15: TUniLabel
              Left = 0
              Top = 0
              Width = 29
              Height = 15
              Hint = ''
              Caption = 'Safra'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit7: TUniDBEdit
              Left = 1
              Top = 17
              Width = 123
              Height = 29
              Hint = ''
              DataField = 'SAFRA'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
          object UniContainerPanel14: TUniContainerPanel
            Tag = 1
            Left = 552
            Top = 100
            Width = 137
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 14
            DesignSize = (
              137
              48)
            object UniLabel16: TUniLabel
              Left = 0
              Top = 0
              Width = 38
              Height = 15
              Hint = ''
              Caption = 'Campo'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit8: TUniDBEdit
              Left = 1
              Top = 17
              Width = 133
              Height = 29
              Hint = ''
              DataField = 'CAMPO'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
            end
          end
          object UniContainerPanel3: TUniContainerPanel
            Tag = 1
            Left = 0
            Top = 150
            Width = 689
            Height = 27
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            Color = clGray
            TabOrder = 15
            object UniLabel17: TUniLabel
              Left = 0
              Top = 0
              Width = 689
              Height = 27
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'INFORMA'#199#195'O'
              Align = alClient
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
            end
          end
          object rcBlock290: TUniContainerPanel
            Left = 0
            Top = 178
            Width = 280
            Height = 39
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            Color = clTeal
            TabOrder = 16
            object UniLabel1: TUniLabel
              Left = 0
              Top = 10
              Width = 281
              Height = 26
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'FORNECEDOR'
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
            end
          end
          object UniContainerPanel15: TUniContainerPanel
            Left = 0
            Top = 218
            Width = 139
            Height = 33
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            Color = clTeal
            TabOrder = 17
            object UniLabel18: TUniLabel
              Left = 0
              Top = 6
              Width = 140
              Height = 26
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'PUREZA %'
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
            end
          end
          object UniContainerPanel17: TUniContainerPanel
            Left = 281
            Top = 178
            Width = 279
            Height = 39
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            Color = clTeal
            TabOrder = 18
            object UniLabel20: TUniLabel
              Left = -1
              Top = 10
              Width = 281
              Height = 26
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'INTERNO'
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
            end
          end
          object UniContainerPanel16: TUniContainerPanel
            Left = 140
            Top = 218
            Width = 140
            Height = 33
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            Color = clTeal
            TabOrder = 19
            object UniLabel19: TUniLabel
              Left = 0
              Top = 6
              Width = 140
              Height = 26
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'VIABILIDADE %'
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
            end
          end
          object UniContainerPanel18: TUniContainerPanel
            Left = 281
            Top = 218
            Width = 140
            Height = 33
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            Color = clTeal
            TabOrder = 20
            object UniLabel21: TUniLabel
              Left = 0
              Top = 6
              Width = 140
              Height = 26
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'PUREZA %'
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
            end
          end
          object UniContainerPanel19: TUniContainerPanel
            Left = 422
            Top = 218
            Width = 138
            Height = 33
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            Color = clTeal
            TabOrder = 21
            object UniLabel22: TUniLabel
              Left = 0
              Top = 6
              Width = 140
              Height = 26
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'VIABILIDADE %'
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
            end
          end
          object UniContainerPanel21: TUniContainerPanel
            Left = 0
            Top = 252
            Width = 139
            Height = 53
            Hint = ''
            ParentColor = False
            TabOrder = 22
            object UniDBFormattedNumberEdit6: TUniDBFormattedNumberEdit
              Left = 0
              Top = 0
              Width = 139
              Height = 53
              Hint = ''
              DataField = 'PUREZA_FOR'
              DataSource = dscrud
              Align = alClient
              Alignment = taCenter
              ParentFont = False
              Font.Height = -16
              Font.Style = [fsBold]
              TabOrder = 1
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object UniContainerPanel22: TUniContainerPanel
            Left = 140
            Top = 252
            Width = 140
            Height = 53
            Hint = ''
            ParentColor = False
            TabOrder = 23
            object UniDBFormattedNumberEdit1: TUniDBFormattedNumberEdit
              Left = 0
              Top = 0
              Width = 140
              Height = 53
              Hint = ''
              DataField = 'VIABILIDADE_FOR'
              DataSource = dscrud
              Align = alClient
              Alignment = taCenter
              ParentFont = False
              Font.Height = -16
              Font.Style = [fsBold]
              TabOrder = 1
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object UniContainerPanel23: TUniContainerPanel
            Left = 281
            Top = 252
            Width = 140
            Height = 53
            Hint = ''
            ParentColor = False
            TabOrder = 24
            object UniDBFormattedNumberEdit2: TUniDBFormattedNumberEdit
              Left = 0
              Top = 0
              Width = 140
              Height = 53
              Hint = ''
              DataField = 'PUREZA_INTERNA'
              DataSource = dscrud
              Align = alClient
              Alignment = taCenter
              ParentFont = False
              Font.Color = clBlue
              Font.Height = -16
              TabOrder = 1
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object UniContainerPanel24: TUniContainerPanel
            Left = 422
            Top = 252
            Width = 138
            Height = 53
            Hint = ''
            ParentColor = False
            TabOrder = 25
            object UniDBFormattedNumberEdit3: TUniDBFormattedNumberEdit
              Left = 0
              Top = 0
              Width = 138
              Height = 53
              Hint = ''
              DataField = 'VIABILIDADE_INTERNA'
              DataSource = dscrud
              Align = alClient
              Alignment = taCenter
              ParentFont = False
              Font.Color = clBlue
              Font.Height = -16
              TabOrder = 1
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object UniContainerPanel25: TUniContainerPanel
            Left = 561
            Top = 178
            Width = 128
            Height = 73
            Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
            ParentColor = False
            Color = clTeal
            TabOrder = 26
            object UniLabel23: TUniLabel
              Left = 2
              Top = 10
              Width = 122
              Height = 26
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'PESO'
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 1
            end
            object UniLabel24: TUniLabel
              Left = 2
              Top = 46
              Width = 122
              Height = 26
              Hint = ''
              Alignment = taCenter
              AutoSize = False
              Caption = 'ENTRADA'
              ParentFont = False
              Font.Color = clWhite
              Font.Height = -19
              Font.Name = 'Calibri'
              Font.Style = [fsBold]
              TabOrder = 2
            end
          end
          object UniContainerPanel26: TUniContainerPanel
            Left = 561
            Top = 252
            Width = 128
            Height = 53
            Hint = ''
            ParentColor = False
            TabOrder = 27
            object UniDBFormattedNumberEdit4: TUniDBFormattedNumberEdit
              Left = 0
              Top = 0
              Width = 128
              Height = 53
              Hint = ''
              DataField = 'PESOENTRADA'
              DataSource = dscrud
              Align = alClient
              Alignment = taCenter
              ParentFont = False
              Font.Color = clGreen
              Font.Height = -16
              Font.Style = [fsBold]
              TabOrder = 1
              DecimalSeparator = ','
              ThousandSeparator = '.'
            end
          end
          object UniContainerPanel10: TUniContainerPanel
            Tag = 1
            Left = 0
            Top = 100
            Width = 177
            Height = 48
            Hint = '[[cols:xs-12 sm-12 md-3]]'
            ParentColor = False
            TabOrder = 28
            DesignSize = (
              177
              48)
            object UniLabel11: TUniLabel
              Left = 0
              Top = 0
              Width = 41
              Height = 15
              Hint = ''
              Caption = 'Esp'#233'cie'
              ParentFont = False
              Font.Height = -13
              Font.Name = 'Calibri'
              TabOrder = 1
            end
            object UniDBEdit5: TUniDBEdit
              Left = 1
              Top = 17
              Width = 174
              Height = 29
              Hint = ''
              DataField = 'ESPECIE'
              DataSource = dscrud
              CharCase = ecUpperCase
              Anchors = [akLeft, akTop, akRight]
              TabOrder = 2
              ReadOnly = True
            end
          end
        end
      end
    end
  end
  object dsfiltro: TDataSource
    AutoEdit = False
    DataSet = FDQryFiltro
    Left = 138
    Top = 358
  end
  object FDQryFiltro: TFDQuery
    CachedUpdates = True
    Connection = mm.SQLConn
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailCascade, evDetailServerCascade]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvStrsTrim2Len]
    SQL.Strings = (
      'SELECT * FROM FICHA')
    Left = 106
    Top = 358
  end
  object dscrud: TDataSource
    AutoEdit = False
    DataSet = FDQryCad
    Left = 74
    Top = 358
  end
  object FDQryCad: TFDQuery
    Connection = mm.SQLConn
    FetchOptions.AssignedValues = [evMode, evRecordCountMode, evDetailCascade, evDetailServerCascade]
    FetchOptions.RecordCountMode = cmTotal
    FormatOptions.AssignedValues = [fvStrsTrim2Len]
    UpdateOptions.UpdateTableName = 'FICHA'
    SQL.Strings = (
      'SELECT * FROM FICHA WHERE CODIGO = :CODIGO')
    Left = 42
    Top = 358
    ParamData = <
      item
        Name = 'CODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object UniPopupMenuImpressao: TUniPopupMenu
    Images = dm_rc.imgl20
    Left = 167
    Top = 358
    object EntregadosItenss1: TUniMenuItem
      Caption = 'Impress'#227'o da Ficha de Estoque'
      ImageIndex = 61
      OnClick = EntregadosItenss1Click
    end
    object N13: TUniMenuItem
      Caption = '-'
    end
    object I1: TUniMenuItem
      Caption = 'Impress'#227'o Controle Batida'
      ImageIndex = 36
      OnClick = I1Click
    end
  end
end
