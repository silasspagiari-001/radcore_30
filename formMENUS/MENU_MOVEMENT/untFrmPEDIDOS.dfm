inherited frmPEDIDOS: TfrmPEDIDOS
  inherited paBaseBackGround: TUniContainerPanel
    inherited paBaseButtons: TUniContainerPanel
      ScrollHeight = 610
      ScrollWidth = 37
    end
    inherited pgBaseCadControl: TUniPageControl
      ActivePage = paBaseRegData1
      inherited tabSearch: TUniTabSheet
        ExplicitTop = 24
        ExplicitHeight = 582
        inherited paBaseRegSearch: TUniContainerPanel
          Height = 582
          ExplicitHeight = 582
          inherited paSearchFilters: TUniPanel
            Height = 582
            ExplicitHeight = 582
            inherited UniScrollBox1: TUniScrollBox
              Height = 582
              ExplicitHeight = 582
              ScrollHeight = 389
              ScrollWidth = 254
            end
          end
          inherited dbgSearchCRUD: TUniDBGrid
            Height = 582
          end
        end
      end
      inherited paBaseRegData1: TUniTabSheet
        ExplicitTop = 24
        ExplicitHeight = 582
        inherited UniScrollBox2: TUniScrollBox
          Height = 576
          ExplicitHeight = 576
          ScrollHeight = 830
          ScrollWidth = 946
          ScrollY = 126
          inherited rcBlock500: TUniContainerPanel
            Left = 589
            Top = 81
            TabOrder = 3
            ExplicitLeft = 589
            ExplicitTop = 81
          end
          inherited rcBlock490: TUniContainerPanel
            Top = 81
            TabOrder = 2
            ExplicitTop = 81
          end
          inherited rcBlock480: TUniContainerPanel
            Top = 81
            TabOrder = 1
            ExplicitTop = 81
          end
          inherited rcBlock470: TUniContainerPanel
            Top = 81
            TabOrder = 0
            ExplicitTop = 81
          end
          inherited rcBlock510: TUniContainerPanel
            Top = 134
            TabOrder = 4
            ExplicitTop = 134
          end
          inherited rcBlock520: TUniContainerPanel
            Left = 197
            Top = 134
            TabOrder = 5
            ExplicitLeft = 197
            ExplicitTop = 134
          end
          inherited rcBlock530: TUniContainerPanel
            Top = 135
            TabOrder = 6
            ExplicitTop = 135
          end
          inherited rcBlock540: TUniContainerPanel
            Top = 135
            TabOrder = 7
            ExplicitTop = 135
          end
          inherited rcBlock590: TUniContainerPanel
            Top = 493
            TabOrder = 12
            ExplicitTop = 493
          end
          inherited rcBlock580: TUniContainerPanel
            Top = 327
            TabOrder = 11
            ExplicitTop = 327
            inherited rcBlock610: TUniContainerPanel
              Top = 108
              ExplicitTop = 108
            end
            inherited rcBlock670: TUniContainerPanel
              TabOrder = 0
            end
          end
          inherited rcBlock550: TUniContainerPanel
            Top = 201
            TabOrder = 8
            ExplicitTop = 201
          end
          inherited rcBlock560: TUniContainerPanel
            Top = 201
            TabOrder = 9
            ExplicitTop = 201
          end
          inherited rcBlock570: TUniContainerPanel
            Top = 201
            TabOrder = 10
            ExplicitTop = 201
          end
          inherited rcBlock630: TUniContainerPanel
            Top = 551
            ExplicitTop = 551
          end
          inherited rcBlock640: TUniContainerPanel
            Top = 551
            ExplicitTop = 551
          end
          inherited rcBlock650: TUniContainerPanel
            Top = 551
            ExplicitTop = 551
          end
          inherited rcBlock660: TUniContainerPanel
            Top = 550
            ExplicitTop = 550
          end
        end
      end
    end
  end
  inherited UniPopupMenudetalhes: TUniPopupMenu
    Images = dm_rc.imgl20
    object E1: TUniMenuItem
      Caption = 'Entrega do(s) Itens(s)'
      ImageIndex = 94
      OnClick = E1Click
    end
    object N2: TUniMenuItem
      Caption = '-'
    end
    object F1: TUniMenuItem
      Caption = 'Financeiro Documento'
      ImageIndex = 99
      OnClick = F1Click
    end
    object N3: TUniMenuItem
      Caption = '-'
    end
    object A1: TUniMenuItem
      Caption = 'Anexar Cheque(s)'
      ImageIndex = 60
      OnClick = A1Click
    end
    object N4: TUniMenuItem
      Caption = '-'
    end
    object I3: TUniMenuItem
      Caption = 'Indicativo de Vendas'
      ImageIndex = 118
      OnClick = I3Click
    end
  end
  inherited UniScreenMask: TUniScreenMask
    Top = 18
  end
end
