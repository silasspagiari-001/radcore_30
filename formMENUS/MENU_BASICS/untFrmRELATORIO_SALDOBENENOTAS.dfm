object frmSALDOBENEFICIAMENTO: TfrmSALDOBENEFICIAMENTO
  Left = 0
  Top = 0
  ClientHeight = 346
  ClientWidth = 613
  Caption = 'Saldo de Produtos por Nota'
  OnShow = UniFormShow
  BorderStyle = bsSingle
  OldCreateOrder = False
  BorderIcons = [biSystemMenu]
  MonitoredKeys.Keys = <>
  OnReady = UniFormReady
  OnDestroy = UniFormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object rcBlock10: TUniContainerPanel
    Left = 0
    Top = 287
    Width = 613
    Height = 59
    Hint = '[['#13#10'cols:xs-12 sm-12 md-12'#13#10']]'
    ParentColor = False
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 277
    ExplicitWidth = 603
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
  object rcBlock40: TUniContainerPanel
    Tag = 1
    Left = 8
    Top = 8
    Width = 150
    Height = 48
    Hint = '[[cols:xs-12 sm-12 md-3]]'
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
    object edSearchDATAINI: TUniDateTimePicker
      AlignWithMargins = True
      Left = 1
      Top = 17
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
  object rcBlock50: TUniContainerPanel
    Tag = 1
    Left = 164
    Top = 8
    Width = 150
    Height = 48
    Hint = '[[cols:xs-12 sm-12 md-3]]'
    ParentColor = False
    TabOrder = 2
    DesignSize = (
      150
      48)
    object edSearchDATAFIN: TUniDateTimePicker
      AlignWithMargins = True
      Left = 1
      Top = 17
      Width = 146
      Height = 29
      Hint = ''
      Margins.Right = 5
      DateTime = 43232.000000000000000000
      DateFormat = 'dd/MM/yyyy'
      TimeFormat = 'HH:mm:ss'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      ParentFont = False
      Font.Height = -13
      Font.Name = 'Calibri'
      ClientEvents.ExtEvents.Strings = (
        
          'afterrender=function afterrender(sender, eOpts)'#13#10'{'#13#10' /* Mascara ' +
          '"99/99/9999" para campo Data e cont'#233'udo vazio qdo n'#227'o tem data *' +
          '/'#13#10' $("#"+sender.inputEl.id).inputmask("99/99/9999",{placeholder' +
          ':"  /  /   "});'#13#10'}')
    end
    object UniLabel1: TUniLabel
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
      TabOrder = 2
    end
  end
  object rcBlock60: TUniContainerPanel
    Tag = 1
    Left = 8
    Top = 78
    Width = 150
    Height = 48
    Hint = '[[cols:xs-12 sm-12 md-3]]'
    ParentColor = False
    TabOrder = 3
    DesignSize = (
      150
      48)
    object edSearchPRODUTOSINI: TUniButtonEdit
      AlignWithMargins = True
      Left = 1
      Top = 21
      Width = 146
      Height = 26
      Hint = ''
      Text = '00001'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnButtonClick = edSearchPRODUTOSINIButtonClick
      IconCls = 'search'
    end
    object UniLabel2: TUniLabel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 83
      Height = 15
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 2
      Caption = 'Produto Inicial'
      ParentFont = False
      Font.Height = -13
      Font.Name = 'Calibri'
      TabOrder = 2
    end
  end
  object rcBlock70: TUniContainerPanel
    Tag = 1
    Left = 164
    Top = 78
    Width = 150
    Height = 48
    Hint = '[[cols:xs-12 sm-12 md-3]]'
    ParentColor = False
    TabOrder = 4
    DesignSize = (
      150
      48)
    object edSearchPRODUTOSFIN: TUniButtonEdit
      AlignWithMargins = True
      Left = 1
      Top = 21
      Width = 146
      Height = 26
      Hint = ''
      Text = '99999'
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 1
      OnButtonClick = edSearchPRODUTOSFINButtonClick
      IconCls = 'search'
    end
    object UniLabel3: TUniLabel
      AlignWithMargins = True
      Left = 1
      Top = 1
      Width = 75
      Height = 15
      Hint = ''
      Margins.Top = 1
      Margins.Bottom = 2
      Caption = 'Produto Final'
      ParentFont = False
      Font.Height = -13
      Font.Name = 'Calibri'
      TabOrder = 2
    end
  end
end
