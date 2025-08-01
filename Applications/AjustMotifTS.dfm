inherited AjustMTS: TAjustMTS
  Caption = ''
  ClientHeight = 388
  ClientWidth = 628
  Font.Name = 'Arial'
  OnActivate = MccCustomDialogActivate
  PixelsPerInch = 96
  TextHeight = 14
  inherited Label1: TLabel
    Top = 335
    Width = 79
    Height = 19
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited RGDrop: TRadioGroup
    Width = 514
    Height = 328
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited RGSortie: TRadioGroup
    Width = 514
    Height = 328
    Font.Height = -16
    Font.Name = 'Arial'
    Font.Style = [fsBold]
    ParentFont = False
  end
  inherited DefaultMccButNav: TMccButtonNav
    Left = 526
    Width = 102
    Height = 388
    inherited CancelBtn: TBitBtn
      Top = 43
      Width = 94
      Height = 35
      Font.Height = -16
      Font.Style = [fsBold]
      Glyph.Data = {00000000}
      Margin = -1
    end
    inherited OKBtn: TBitBtn
      Width = 94
      Height = 35
      Font.Height = -16
      Font.Style = [fsBold]
      Glyph.Data = {00000000}
      Margin = -1
    end
  end
  inherited Edit1: TMccAdvEdit
    Top = 357
    Width = 513
    Height = 28
    Font.Height = -16
    Font.Name = 'Arial'
    ParentFont = False
  end
end
