inherited AjustMotifDlg: TAjustMotifDlg
  Left = 561
  Top = 285
  Caption = 'Motif de l'#39'ajustement'
  ClientHeight = 368
  ClientWidth = 562
  FormStyle = fsNormal
  Visible = False
  OnCloseQuery = MccCustomDialogCloseQuery
  OnDestroy = FormDestroy
  OnShow = FormShow
  MccButtonNavigator = True
  ExplicitWidth = 574
  ExplicitHeight = 406
  TextHeight = 13
  object DefaultMccButNav: TMccButtonNav
    Left = 472
    Top = 0
    Width = 90
    Height = 368
    BevelOuter = bvNone
    align = alRight
    BoutCollection = <
      item
        BtnType = btCustom
        StdBtnType = sbOk
        Alignment = taLeftJustify
        CustomBtn = OKBtn
      end
      item
        BtnType = btCustom
        StdBtnType = sbOk
        Alignment = taLeftJustify
        CustomBtn = CancelBtn
      end>
    AutoRestrictFormSize = True
    StandardButton = []
    DefaultButtonFont.Charset = DEFAULT_CHARSET
    DefaultButtonFont.Color = clWindowText
    DefaultButtonFont.Height = -11
    DefaultButtonFont.Name = 'MS Sans Serif'
    DefaultButtonFont.Style = []
    Spacing = 4
    StdAction = True
    ExplicitLeft = 468
    ExplicitHeight = 367
    object CancelBtn: TBitBtn
      Left = 4
      Top = 35
      Width = 82
      Height = 27
      Cancel = True
      Caption = '&Annuler'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B000000000000000000008C00EC8C00EC
        A8A8A8A8A8A8A8A8A8A8A8A88C00EC8C00EC8C00EC8C00ECA8A8A8A8A8A8A8A8
        A8A8A8A88C00EC8C00EC8C00EC8C00ECA8A8A8A8A8A8A7A7A7A7A7A78C00EC8C
        00EC8C00EC8C00ECA9A9A9A8A8A8A8A8A8A7A7A78C00EC8C00EC8C00ECA8A8A8
        A8A8A80016C20016C20016C2A8A8A88C00EC8C00ECA8A8A8A8A8A80016C20016
        C20016C2A8A8A88C00EC8C00ECA7A7A7A8A8A8636363646464646464A8A8A88C
        00EC8C00ECA8A8A8A8A8A8646464646464636363A9A9A98C00ECA8A8A8A8A8A8
        0016C20016C21345FF0016C20016C2A8A8A8A8A8A8A8A8A80016C20016C21B4B
        FF0016C20016C2A8A8A8A8A8A8A8A8A86363636363638D8D8D646464646464A9
        A9A9A8A8A8A8A8A86363636363638E8E8E636363646464A9A9A9A8A8A80016C2
        0016C21345FF2D59FF456CFF0016C20016C2A8A8A80016C20016C24C72FF3660
        FF1D4DFF0016C20016C2A7A7A76363636363638D8D8D9494949D9D9D63636364
        6464A9A9A96464646363639E9E9E9797978F8F8F636363646464A8A8A80016C2
        083CFF2755FF456CFF6081FF7793FF0016C20016C20016C27E99FF6988FF4F74
        FF325DFF0016C20016C2A9A9A96363638A8A8A9292929C9C9CA8A8A8B1B1B164
        6464636363636363B6B6B6ACACAC9F9F9F969696646464646464A8A8A80016C2
        0016C23862FF587BFF7793FF91A9FFA7BAFF0016C2ACBEFF9AB0FF809BFF6384
        FF0016C20016C28C00ECA7A7A7646464636363989898A3A3A3B2B2B2C0C0C0CB
        CBCB636363CFCFCFC4C4C4B7B7B7A9A9A96363636464648C00EC8C00ECA8A8A8
        0016C20016C26585FF86A0FFA7BAFFC4D1FFD5DEFFCCD7FFB2C3FF92A9FF0016
        C20016C28C00EC8C00EC8C00ECA8A8A8646464646464AAAAAAB9B9B9CBCBCBDC
        DCDCE4E4E4E0E0E0D1D1D1BFBFBF6363636363638C00EC8C00EC8C00EC8C00EC
        A8A8A80016C20016C28EA6FFB1C2FFD5DEFFF7F9FFE1E7FFBECCFF0016C20016
        C28C00EC8C00EC8C00EC8C00EC8C00ECA9A9A9636363656565BEBEBED0D0D0E4
        E4E4FBFBFBECECECD8D8D86363636363638C00EC8C00EC8C00EC8C00EC8C00EC
        A8A8A8A8A8A80016C20016C2ACBEFFCCD7FFE2E8FFD6DFFFB8C7FF0016C20016
        C28C00EC8C00EC8C00EC8C00EC8C00ECA9A9A9A8A8A8636363636363CECECEE0
        E0E0EDEDEDE5E5E5D4D4D46363636363638C00EC8C00EC8C00EC8C00ECA8A8A8
        A8A8A80016C20016C27E99FF9AB0FFB2C3FFBECCFFB8C7FFA4B8FF88A2FF0016
        C20016C28C00EC8C00EC8C00ECA8A8A8A8A8A8636363636363B6B6B6C4C4C4D2
        D2D2D8D8D8D5D5D5CACACABBBBBB6363636363638C00EC8C00ECA8A8A8A8A8A8
        0016C20016C24C72FF6988FF809BFF92A9FF9BB0FF97ADFF88A2FF7290FF577A
        FF0016C20016C28C00ECA8A8A8A7A7A76363636363639F9F9FABABABB7B7B7BF
        BFBFC5C5C5C2C2C2BABABAAFAFAFA3A3A36363636363638C00ECA8A8A80016C2
        0016C21B4BFF3660FF4F74FF6384FF0016C20016C27592FF6988FF577AFF4068
        FF2553FF0016C20016C2A7A7A7646464646464909090979797A0A0A0A9A9A964
        6464636363B0B0B0ABABABA2A2A29A9A9A939393636363646464A8A8A80016C2
        0137FF0439FF1D4DFF325DFF0016C20016C20016C20016C2496FFF3963FF2553
        FF0D40FF0016C20016C2A8A8A86464648888888989898F8F8F96969665656563
        63636363636363639D9D9D9898989191918B8B8B636363646464A8A8A80016C2
        0016C20137FF0137FF0016C20016C28C00EC8C00EC0016C20016C21A4AFF083C
        FF0016C20016C28C00ECA9A9A96363636464648888888989896464646363638C
        00EC8C00EC6464646363638E8E8E8A8A8A6464646464648C00EC8C00ECA8A8A8
        0016C20016C20016C20016C28C00EC8C00EC8C00EC8C00EC0016C20016C20016
        C20016C28C00EC8C00EC8C00ECA7A7A76464646363636565656363638C00EC8C
        00EC8C00EC8C00EC6363636363636363636363638C00EC8C00EC8C00EC8C00EC
        A8A8A80016C20016C28C00EC8C00EC8C00EC8C00EC8C00EC8C00EC0016C20016
        C28C00EC8C00EC8C00EC8C00EC8C00ECA8A8A86363636464648C00EC8C00EC8C
        00EC8C00EC8C00EC8C00EC6363636363638C00EC8C00EC8C00EC}
      Margin = 2
      ModalResult = 2
      NumGlyphs = 2
      ParentFont = False
      Style = bsNew
      Spacing = -1
      TabOrder = 0
      IsControl = True
    end
    object OKBtn: TBitBtn
      Left = 4
      Top = 4
      Width = 82
      Height = 27
      Caption = '&OK'
      Default = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Glyph.Data = {
        36060000424D3606000000000000360000002800000020000000100000000100
        18000000000000060000120B0000120B000000000000000000008C00EC8C00EC
        8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00
        EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C
        00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC
        8C00EC8C00EC8C00EC8C00EC8C00ECA8A8A8A8A8A88C00EC8C00EC8C00EC8C00
        EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00ECA9
        A9A9A8A8A88C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC
        8C00EC8C00EC8C00EC8C00ECA8A8A8A8A8A8007F3EA8A8A88C00EC8C00EC8C00
        EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00ECA9A9A9A9
        A9A9707070A8A8A88C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC
        8C00EC8C00EC8C00ECA8A8A8A8A8A8007F3E007F3E007F3EA8A8A8A8A8A88C00
        EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00ECA8A8A8A8A8A871
        7171717171707070A8A8A8A9A9A98C00EC8C00EC8C00EC8C00EC8C00EC8C00EC
        8C00EC8C00ECA8A8A8A8A8A8007F3E007F3E76EEA8007F3E007F3EA8A8A8A8A8
        A88C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00ECA9A9A9A8A8A870707071
        7171DBDBDB707070707070A8A8A8A8A8A88C00EC8C00EC8C00EC8C00EC8C00EC
        8C00ECA8A8A8A8A8A8007F3E007F3E83EFB19BF2C0A6F4C7007F3E007F3EA8A8
        A8A8A8A88C00EC8C00EC8C00EC8C00EC8C00ECA9A9A9A8A8A87070706F6F6FDE
        DEDEE4E4E4E6E6E6717171717171A7A7A7A7A7A78C00EC8C00EC8C00EC8C00EC
        A8A8A8A8A8A8007F3E007F3E79EEAA9DF3C1BDF7D5D0F9E1C5F8DA007F3E007F
        3EA8A8A8A8A8A88C00EC8C00EC8C00ECA8A8A8A8A8A8717171717171DCDCDCE5
        E5E5EEEEEEF3F3F3EEEEEE717171717171A9A9A9A7A7A78C00EC8C00ECA8A8A8
        A8A8A8007F3E007F3E5AEA9681EFAFA9F4C9D1F9E2F8FEFBDDFBE9B5F6D0007F
        3E007F3EA8A8A8A8A8A88C00ECA9A9A9A8A8A86F6F6F707070D4D4D4DDDDDDE8
        E8E8F2F2F2FDFDFDF5F5F5EAEAEA717171707070A7A7A7A7A7A7A8A8A8A8A8A8
        007F3E007F3E2EE57A56EA937DEFACA2F3C4007F3EDBFAE8CEF9E0ADF5CB87F0
        B3007F3E007F3EA8A8A8A9A9A9A8A8A8717171707070CDCDCDD5D5D5DDDDDDE5
        E5E56F6F6FF4F4F4F1F1F1E9E9E9DFDFDF717171707070A7A7A7A8A8A8007F3E
        007F3E01DF5E23E37349E88B6CECA1007F3E007F3E007F3EABF4CA94F2BB76EE
        A853E992007F3E007F3EA8A8A8717171717171C4C4C4CBCBCBD1D1D1D8D8D871
        7171707070707070E8E8E8E3E3E3DBDBDBD3D3D37070707070708C00ECA8A8A8
        007F3E007F3E12E16833E57D007F3E007F3E8C00EC007F3E007F3E74EDA65BEA
        973DE7841CE26F007F3E8C00ECA9A9A9707070717171C8C8C8CDCDCD71717171
        71718C00EC717171707070DADADAD5D5D5D0D0D0C8C8C86F6F6F8C00EC8C00EC
        A8A8A8007F3E007F3E007F3E007F3E8C00EC8C00EC8C00EC007F3E007F3E3BE6
        8221E372007F3E007F3E8C00EC8C00ECA8A8A87171717171717171717171718C
        00EC8C00EC8C00EC6F6F6F707070CFCFCFC9C9C97070707070708C00EC8C00EC
        8C00ECA8A8A8007F3E007F3E8C00EC8C00EC8C00EC8C00EC8C00EC007F3E007F
        3E007F3E007F3E8C00EC8C00EC8C00EC8C00ECA9A9A97070707070708C00EC8C
        00EC8C00EC8C00EC8C00EC6F6F6F6F6F6F7070707171718C00EC8C00EC8C00EC
        8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC007F
        3E007F3E8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C
        00EC8C00EC8C00EC8C00EC8C00EC7171717070708C00EC8C00EC8C00EC8C00EC
        8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00
        EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C
        00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC
        8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00
        EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C
        00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC8C00EC}
      Margin = 2
      ModalResult = 1
      NumGlyphs = 2
      ParentFont = False
      Style = bsNew
      Spacing = -1
      TabOrder = 1
      OnClick = OKBtnClick
      IsControl = True
    end
  end
  object AjustType: TcxRadioGroup
    Left = 8
    Top = 8
    Properties.Columns = 2
    Properties.Items = <>
    TabOrder = 1
    OnClick = AjustTypeClick
    Height = 54
    Width = 457
  end
  object PnlTransact: TPanel
    Left = 8
    Top = 61
    Width = 457
    Height = 306
    TabOrder = 2
    Visible = False
    object RdgAffect: TRadioGroup
      Left = 19
      Top = 8
      Width = 422
      Height = 290
      Caption = 'Affectation'
      ItemIndex = 0
      Items.Strings = (
        'Caisse'
        'Machine'
        'Distributeur')
      TabOrder = 0
      OnClick = RdgAffectClick
    end
    object CmbSlot: TSlotSearchCombo
      left = 122
      Top = 147
      Width = 106
      Height = 22
      AutoChangeSlotIdToLocation = True
      AutoOpenList = False
      ShowTouchScreenDialog = False
      SlotSearchFilter = <
        item
          FilterType = ssvCasino_ID
          FilterValue.Value = 4
          FilterValue.UseLocalCasino = True
        end
        item
          FilterType = ssvActive
          FilterValue.Value = assActive
        end
        item
          FilterType = ssvAutomatedLiveGameType
          FilterValue.Value = [algtSlot, algttLiveSatellite, algtLiveMainALG, algtSlotSatellite, algtSlotMainALG]
        end>
      SQLSelectedField.Strings = (
        'nomac,'
        'empl')
      SQLSlotListHint = 'AS S'
      UseApplicationUserCode = True
      VisibleValues = []
      KeyField = 'Nomac'
      ListField = 'Nomac'
      ListSource = DSSlotList
      TabOrder = 1
      Visible = False
      DesignSize = (
        106
        22)
    end
    object CmbTerm: TDBLookupComboBox
      Left = 122
      Top = 238
      Width = 106
      Height = 21
      KeyField = 'Codecaisse'
      ListField = 'Libelle'
      ListSource = DsQrDispenser
      TabOrder = 2
      Visible = False
    end
    object CmbCashdesk: TDBLookupComboBox
      Left = 122
      Top = 59
      Width = 106
      Height = 21
      KeyField = 'Codecaisse'
      ListField = 'Libelle'
      ListSource = DsQrCashdesk
      TabOrder = 3
    end
  end
  object PnlAjust: TPanel
    Left = 8
    Top = 61
    Width = 457
    Height = 306
    TabOrder = 3
    Visible = False
    object Label1: TLabel
      Left = 8
      Top = 242
      Width = 49
      Height = 13
      Caption = 'Remarque'
    end
    object RGSortie: TRadioGroup
      Left = 8
      Top = 16
      Width = 225
      Height = 225
      Caption = 'Ajustement de sortie'
      TabOrder = 0
      OnClick = RGSortieClick
    end
    object RGDrop: TRadioGroup
      Left = 8
      Top = 16
      Width = 425
      Height = 225
      Caption = 'Ajustement de drop'
      TabOrder = 1
      OnClick = RGSortieClick
    end
    object Edit1: TMccAdvEdit
      Left = 8
      Top = 258
      Width = 425
      Height = 21
      Alignment = taLeftJustify
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 2
      MccDisplayType = dtString
    end
  end
  object Drop: TMccADOQuery
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select ajust_id, motif'
      'from cfg_ajustmotif'
      'where sens = 0'
      'and actif = 1'
      'order by motif')
    MccCalcFields = <>
    MccHardRefresh = False
    MccScrollEventWhenEmpty = False
    MccDefaultCnx = mcJeux
    Left = 24
    Top = 32
  end
  object Sortie: TMccADOQuery
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'select ajust_id, motif'
      'from cfg_ajustmotif'
      'where sens = 1'
      'and actif = 1'
      'order by motif')
    MccCalcFields = <>
    MccHardRefresh = False
    MccScrollEventWhenEmpty = False
    MccDefaultCnx = mcJeux
    Left = 80
    Top = 32
  end
  object QrySlotList: TMccADOQuery
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SET FMTONLY ON'
      ''
      'SELECT'
      '  nomac,'
      '  empl'
      'FROM dbo.F_LastSlotHistoAndFuture('
      
        '    '#39'20170227 16:12:08.290'#39',       -- @iCurrentDateTime DATETIME' +
        ','
      
        '    '#39#39',                            -- @iUserCode        VARCHAR(' +
        '4),'
      
        '    1,                             -- @iCasino_ID       INT     ' +
        '    = NULL,'
      
        '    1,                             -- @iActiveSlot      BIT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iStartDate       DATETIME' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iEndDate         DATETIME' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iFromSlot        INT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iToSlot          INT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iFromLoc         VARCHAR(' +
        '5)  = NULL,'
      
        '    DEFAULT,                       -- @iToLoc           VARCHAR(' +
        '5)  = NULL,'
      
        '    DEFAULT,                       -- @iAreaCode        VARCHAR(' +
        '5)  = NULL,'
      
        '    DEFAULT,                       -- @iSectionCode     VARCHAR(' +
        '5)  = NULL,'
      
        '    DEFAULT,                       -- @iManuf           VARCHAR(' +
        '3)  = NULL,'
      
        '    DEFAULT,                       -- @iModel_ID        INT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iCabinet_ID      TINYINT ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iSlotTypeCode    CHAR(3) ' +
        '    = NULL,'
      
        '    2,                             -- @iACT_ID          INT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iALGType         TINYINT ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iIsCoinDrop      BIT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iIsHopper        BIT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iIsBill          BIT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iIsTicket        BIT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iIsCashless      BIT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iIsOnline        BIT     ' +
        '    = NULL,'
      
        '    DEFAULT,                       -- @iIsMultiGame     BIT     ' +
        '    = NULL,'
      
        '    DEFAULT                        -- @iIsMultideno     BIT     ' +
        '    = NULL)'
      ')AS S'
      ''
      'SET FMTONLY OFF')
    MccCalcFields = <>
    MccHardRefresh = False
    MccScrollEventWhenEmpty = False
    MccDefaultCnx = mcMas
    Left = 24
    Top = 100
  end
  object DSSlotList: TDataSource
    DataSet = QrySlotList
    Left = 80
    Top = 100
  end
  object QrDispenser: TMccADOQuery
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  CodeCaisse,'
      '  Libelle'
      'FROM TypeCais WITH (NOLOCK)'
      'WHERE Type = 2'
      '  AND Hide = 0  ')
    MccCalcFields = <>
    MccHardRefresh = False
    MccScrollEventWhenEmpty = False
    MccDefaultCnx = mcMas
    Left = 16
    Top = 176
  end
  object DsQrDispenser: TDataSource
    DataSet = QrDispenser
    Left = 96
    Top = 176
  end
  object QrCashdesk: TMccADOQuery
    CursorType = ctStatic
    MarshalOptions = moMarshalModifiedOnly
    EnableBCD = False
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  CodeCaisse,'
      '  Libelle'
      'FROM TypeCais WITH (NOLOCK)'
      'WHERE Type = 1'
      '  AND Hide = 0  ')
    MccCalcFields = <>
    MccHardRefresh = False
    MccScrollEventWhenEmpty = False
    MccDefaultCnx = mcMas
    Left = 152
    Top = 232
  end
  object DsQrCashdesk: TDataSource
    DataSet = QrCashdesk
    Left = 232
    Top = 232
  end
end
