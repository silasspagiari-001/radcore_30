inherited frmBAIXAPAGAR: TfrmBAIXAPAGAR
  inherited paBaseBackGround: TUniContainerPanel
    inherited paBaseButtons: TUniContainerPanel
      ScrollHeight = 605
      ScrollWidth = 37
    end
    inherited pgBaseCadControl: TUniPageControl
      inherited tabSearch: TUniTabSheet
        ExplicitTop = 24
        ExplicitHeight = 572
        inherited paBaseRegSearch: TUniContainerPanel
          Height = 572
          ExplicitHeight = 572
          inherited paSearchFilters: TUniPanel
            Height = 572
            ExplicitHeight = 572
            inherited UniScrollBox1: TUniScrollBox
              Height = 572
              ExplicitHeight = 572
              ScrollHeight = 446
              ScrollWidth = 262
            end
          end
          inherited dbgSearchCRUD: TUniDBGrid
            Height = 572
          end
        end
      end
    end
  end
  inherited FDQryFiltro: TFDQuery
    UpdateOptions.UpdateTableName = 'PAGAR'
  end
end
