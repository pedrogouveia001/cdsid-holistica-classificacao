object TFrmIntraCriterio: TTFrmIntraCriterio
  Left = 0
  Top = 0
  Width = 1781
  Height = 1799
  RenderInvisibleControls = False
  AllowPageAccess = True
  ConnectionMode = cmAny
  SupportedBrowsers = [brIE, brGecko, brOpera, brSafari, brChrome]
  OnCreate = IWAppFormCreate
  BrowserSecurityCheck = True
  Background.Fixed = False
  HandleTabs = False
  LeftToRight = True
  LockUntilLoaded = True
  LockOnSubmit = False
  ShowHint = True
  XPTheme = True
  DesignLeft = 8
  DesignTop = -764
  object rgnGraphIntra: TIWRegion
    Left = 55
    Top = 116
    Width = 1148
    Height = 452
    Cursor = crAuto
    Visible = False
    RenderInvisibleControls = False
    TabOrder = 2
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clDefault
    Color = clWebWHITE
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    Splitter = False
    object IWLabel3: TIWLabel
      Left = 510
      Top = 3
      Width = 84
      Height = 18
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 12
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'IWLabel3'
      Caption = 'nomecrit'
      RawText = False
    end
    object imgseries: TIWImage
      Left = 35
      Top = 53
      Width = 611
      Height = 376
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clWebSILVER
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = True
      FriendlyName = 'imgseries'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object txtPoints: TIWText
      Left = 692
      Top = 40
      Width = 429
      Height = 43
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BGColor = clNone
      ConvertSpaces = False
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 11
      Font.Style = []
      FriendlyName = 'txtPoints'
      Lines.Strings = (
        
          'If you have to divide the range into two, with the same preferen' +
          'ce intensity, which would be the closest option?')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object rdgrpbehav: TIWRadioGroup
      Left = 692
      Top = 100
      Width = 185
      Height = 59
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      SubmitOnAsyncEvent = True
      Editable = True
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'rdgrpbehav'
      ItemIndex = -1
      Layout = glVertical
      ScriptEvents = <>
      TabOrder = 4
    end
    object lnkGoToInter: TIWLink
      Left = 864
      Top = 378
      Width = 225
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clHotLight
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold, fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'lnkGoToInter'
      OnClick = lnkGoToInterClick
      TabOrder = 7
      RawText = False
      Caption = 'Go to Inter-criteria evaluation'
    end
    object txtFunction: TIWText
      Left = 680
      Top = 61
      Width = 442
      Height = 56
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BGColor = clNone
      ConvertSpaces = False
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 11
      Font.Style = [fsBold]
      FriendlyName = 'txtFunction.'
      Lines.Strings = (
        
          'Five points were elicited for the evaluated criterion. Please pr' +
          'oceed to the next stage of the procedure.')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object btnNextpoint: TIWButton
      Left = 932
      Top = 401
      Width = 159
      Height = 25
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Continue'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btnNextpoint'
      ScriptEvents = <>
      TabOrder = 6
      OnClick = btnNextpointClick
    end
    object btnreturnbisec: TIWButton
      Left = 946
      Top = 382
      Width = 113
      Height = 25
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Return'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btnreturnbisec'
      ScriptEvents = <>
      TabOrder = 26
      OnClick = btnreturnbisecClick
    end
    object btnlinegraph: TIWButton
      Left = 652
      Top = 382
      Width = 173
      Height = 25
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'View lines graphic'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 8
      Font.Style = [fsBold]
      FriendlyName = 'btnlinegraph'
      ScriptEvents = <>
      TabOrder = 27
      OnClick = btnlinegraphClick
    end
    object btnbargraph: TIWButton
      Left = 652
      Top = 386
      Width = 173
      Height = 25
      Cursor = crAuto
      Visible = False
      IW50Hint = True
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'View bar graphic'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 8
      Font.Style = [fsBold]
      FriendlyName = 'btnbargraph'
      ScriptEvents = <>
      TabOrder = 28
      OnClick = btnbargraphClick
    end
    object IWButton1: TIWButton
      Left = 932
      Top = 368
      Width = 160
      Height = 30
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Save image'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'IWButton1'
      ScriptEvents = <>
      TabOrder = 50
      OnClick = IWButton1Click
    end
    object btnnextcrit: TIWButton
      Left = 932
      Top = 401
      Width = 160
      Height = 30
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Next criterion'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btnNextCrit'
      ScriptEvents = <>
      TabOrder = 14
      OnClick = btnnextcritClick
    end
    object ChartIntra: TChart
      Left = 46
      Top = 64
      Width = 590
      Height = 357
      BackWall.Brush.Gradient.Direction = gdBottomTop
      BackWall.Brush.Gradient.EndColor = clWhite
      BackWall.Brush.Gradient.StartColor = 15395562
      BackWall.Brush.Gradient.Visible = True
      BackWall.Transparent = False
      Foot.Font.Color = clBlue
      Foot.Font.Name = 'Verdana'
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.MidColor = 15395562
      Gradient.StartColor = 15395562
      Gradient.Visible = True
      LeftWall.Color = 14745599
      Legend.Font.Name = 'Verdana'
      Legend.HorizJustify = ljYes
      Legend.Shadow.Transparency = 0
      Legend.Title.Alignment = taCenter
      Legend.Title.Visible = False
      Legend.VertSpacing = -5
      Legend.Visible = False
      RightWall.Color = 14745599
      Title.Font.Name = 'Verdana'
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      BottomAxis.Axis.Color = 4210752
      BottomAxis.AxisValuesFormat = '#,##0.##'
      BottomAxis.Grid.Color = 11119017
      BottomAxis.Increment = 200.000000000000000000
      BottomAxis.LabelsAlternate = True
      BottomAxis.LabelsFormat.Font.Name = 'Verdana'
      BottomAxis.LabelsMultiLine = True
      BottomAxis.LabelsSeparation = 20
      BottomAxis.TicksInner.Color = 11119017
      BottomAxis.Title.Caption = 'v(x)'
      BottomAxis.Title.Font.Name = 'Verdana'
      BottomAxis.Title.Position = tpEnd
      DepthAxis.Axis.Color = 4210752
      DepthAxis.Grid.Color = 11119017
      DepthAxis.LabelsAlternate = True
      DepthAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthAxis.TicksInner.Color = 11119017
      DepthAxis.Title.Font.Name = 'Verdana'
      DepthTopAxis.Axis.Color = 4210752
      DepthTopAxis.Grid.Color = 11119017
      DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthTopAxis.TicksInner.Color = 11119017
      DepthTopAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Axis.Color = 4210752
      LeftAxis.Grid.Color = 11119017
      LeftAxis.LabelsFormat.Font.Name = 'Verdana'
      LeftAxis.LabelsMultiLine = True
      LeftAxis.LabelsSeparation = 20
      LeftAxis.PositionUnits = muPixels
      LeftAxis.TicksInner.Color = 11119017
      LeftAxis.Title.Caption = 'y'
      LeftAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Title.Position = tpEnd
      RightAxis.Axis.Color = 4210752
      RightAxis.Grid.Color = 11119017
      RightAxis.LabelsFormat.Font.Name = 'Verdana'
      RightAxis.TicksInner.Color = 11119017
      RightAxis.Title.Font.Name = 'Verdana'
      TopAxis.Axis.Color = 4210752
      TopAxis.Grid.Color = 11119017
      TopAxis.LabelsFormat.Font.Name = 'Verdana'
      TopAxis.TicksInner.Color = 11119017
      TopAxis.Title.Font.Name = 'Verdana'
      View3D = False
      View3DWalls = False
      TabOrder = 0
      Visible = False
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Bottom: TLineSeries
        Marks.Frame.Color = 83886080
        Marks.Visible = True
        SeriesColor = 33023
        Title = 'Bottom'
        ValueFormat = '#,##0.##'
        Brush.BackColor = clDefault
        OutLine.Width = 3
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        Data = {
          01030000000000000000407F4000000000000000000000000000588B40000000
          000000E03F000000000058AB40000000000000F03F}
        Detail = {0000000000}
      end
      object Medium: TLineSeries
        Marks.Visible = True
        SeriesColor = clRed
        Title = 'Medium'
        ValueFormat = '#,##0.##'
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        Data = {
          01030000000000000000407F4000000000000000000000000000889340000000
          000000E03F000000000058AB40000000000000F03F}
        Detail = {0000000000}
      end
      object Major: TLineSeries
        Marks.Visible = True
        SeriesColor = 4227072
        Title = 'Major'
        ValueFormat = '#,##0.##'
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        Data = {
          01030000000000000000407F4000000000000000000000000000A49040000000
          000000E03F000000000058AB40000000000000F03F}
        Detail = {0000000000}
      end
    end
    object chrtbar: TChart
      Left = 50
      Top = 77
      Width = 569
      Height = 342
      BackWall.Brush.Gradient.Direction = gdBottomTop
      BackWall.Brush.Gradient.EndColor = clWhite
      BackWall.Brush.Gradient.StartColor = 15395562
      BackWall.Brush.Gradient.Visible = True
      BackWall.Transparent = False
      Foot.Font.Color = clBlue
      Foot.Font.Name = 'Verdana'
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.MidColor = 15395562
      Gradient.StartColor = 15395562
      Gradient.Visible = True
      LeftWall.Color = 14745599
      Legend.Font.Name = 'Verdana'
      Legend.Shadow.Transparency = 0
      Legend.Visible = False
      RightWall.Color = 14745599
      Title.Font.Name = 'Verdana'
      Title.Text.Strings = (
        'TChart')
      Title.Visible = False
      BottomAxis.Axis.Color = 4210752
      BottomAxis.Grid.Color = 11119017
      BottomAxis.LabelsFormat.Font.Name = 'Verdana'
      BottomAxis.TicksInner.Color = 11119017
      BottomAxis.Title.Font.Name = 'Verdana'
      BottomAxis.Items = {
        0B00000001045465787406033130300556616C75650500000000000000C80540
        00010454657874060239300556616C75650500000000000000B4054000010454
        657874060238300556616C75650500000000000000A005400001045465787406
        0237300556616C756505000000000000008C0540000104546578740602363005
        56616C75650500000000000000F0044000010454657874060235300556616C75
        650500000000000000C8044000010454657874060234300556616C7565050000
        0000000000A0044000010454657874060233300556616C756505000000000000
        00F0034000010454657874060232300556616C75650500000000000000A00340
        00010454657874060231300556616C75650500000000000000A0024000010454
        65787406013000}
      DepthAxis.Axis.Color = 4210752
      DepthAxis.Grid.Color = 11119017
      DepthAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthAxis.TicksInner.Color = 11119017
      DepthAxis.Title.Font.Name = 'Verdana'
      DepthTopAxis.Axis.Color = 4210752
      DepthTopAxis.Grid.Color = 11119017
      DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthTopAxis.TicksInner.Color = 11119017
      DepthTopAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Axis.Color = 4210752
      LeftAxis.Grid.Color = 11119017
      LeftAxis.LabelsFormat.Font.Name = 'Verdana'
      LeftAxis.TicksInner.Color = 11119017
      LeftAxis.Title.Font.Name = 'Verdana'
      RightAxis.Axis.Color = 4210752
      RightAxis.Grid.Color = 11119017
      RightAxis.LabelsFormat.Font.Name = 'Verdana'
      RightAxis.TicksInner.Color = 11119017
      RightAxis.Title.Font.Name = 'Verdana'
      TopAxis.Axis.Color = 4210752
      TopAxis.Grid.Color = 11119017
      TopAxis.LabelsFormat.Font.Name = 'Verdana'
      TopAxis.TicksInner.Color = 11119017
      TopAxis.Title.Font.Name = 'Verdana'
      View3D = False
      TabOrder = 1
      DefaultCanvas = 'TGDIPlusCanvas'
      PrintMargins = (
        15
        20
        15
        20)
      ColorPaletteIndex = 13
      object Series3: THorizBarSeries
        BarBrush.Gradient.Direction = gdLeftRight
        Marks.Visible = False
        BarWidthPercent = 50
        Gradient.Direction = gdLeftRight
        MultiBar = mbNone
        XValues.Name = 'Bar'
        XValues.Order = loNone
        YValues.Name = 'Y'
        YValues.Order = loAscending
      end
      object Series4: THorizBarSeries
        BarBrush.Gradient.Direction = gdLeftRight
        BarBrush.Gradient.EndColor = 3513587
        Marks.Visible = False
        BarStyle = bsArrow
        BarWidthPercent = 100
        Gradient.Direction = gdLeftRight
        Gradient.EndColor = 3513587
        MultiBar = mbNone
        XValues.Name = 'Bar'
        XValues.Order = loNone
        YValues.Name = 'Y'
        YValues.Order = loAscending
      end
    end
  end
  object rgnElicIntra: TIWRegion
    Left = 12
    Top = 604
    Width = 1360
    Height = 643
    Cursor = crAuto
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Visible = False
    RenderInvisibleControls = False
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    OnCreate = rgnElicIntraCreate
    Splitter = False
    object lblinfoeliciting: TIWLabel
      Left = 68
      Top = 219
      Width = 316
      Height = 18
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 11
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblinfoeliciting'
      Caption = 'Eliciting the marginal value function'
      RawText = False
    end
    object imgEN2: TIWImage
      Left = 1194
      Top = 173
      Width = 22
      Height = 15
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      OnClick = imgENClick
      Picture.Data = {
        0A544A504547496D61676590030000FFD8FFE000104A46494600010101006000
        600000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC0001108000F001603012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F8B3
        C01A37863C45A0AE99E2C96C506D022D42DE571710678CAFC9838EA51B20F62A
        6BD935AD3BC03E241AE787EEFC4902E90AFA57D9F5092392317496D6ED13F015
        99724838EBDB3DC781783FE2A5AF80F40064823D5F529D36AFDA2DA329081D90
        15EBEACD9F61DEBAF87E2C5868ADA96AF2E896B750DD3D92C96AB1AA98C18897
        31120856C8047041EF5F1556962D55E6A77DFDDD56F75B5D69F91FA460B11964
        70D57DB45B6E094B55B7345ABD96FA7ADAF72E7C56D07C3C9A7D8C1E009743D3
        F4F85F6497B7724A6EAE48079F2FCBD9147ED9663805989A2B90F8A5E367D405
        95EF86B5AF334AB9F9843369D142F0B8182AC02633FEE920F5E3A515E861A956
        F64AF6BF9DEFF3BAFEBA1E3E22AE0BDA3E4551AF2946DF2B2565E56D0FFFD9}
      FriendlyName = 'IWImage25'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object imgPT2: TIWImage
      Left = 1194
      Top = 173
      Width = 21
      Height = 15
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      OnClick = imgPTClick
      Picture.Data = {
        0A544A504547496D616765AB030000FFD8FFE000104A46494600010101004800
        480000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC0001108000F001503012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F006F85
        7E176ABF10B50D67C43AB5EBD8787EDE69A6BBD52EA501A4DAC4B052C719F566
        381DFD292C6D61F1D6ADA6F8766F020F09D9DD335B68FE2AD2F554D4ED6E250A
        CEB1DCBC795DCC149C839078C62B3B4FF16EBBF0D3C47AEE95344B736134D35A
        EA3A4CEE1A199492AC320F0719F987EB4FF085C783BE0AC93EB3E02B8D76EB59
        D46168DACF55997ECD640B67E60A079CC0FDDCF0073D6BF24A9192FAE7D72339
        556BFD99C3994632B3FE27BC95EF66DCD4A2E3A4529369FE4393D6C8A9E0DC71
        29296BED54F594B5FF00977A5FE49A927AC9D95CCCD4EC7C53F0AF5ABCD2A7B9
        BCD22E8ED66FB34ECAB328CED6041F9875C7E3452E97E1DF14FC4ED4351D4235
        9355BB5656B89A69D14E5B38FBC471C1E074C515EE6163895420ABEB3B6BCA9D
        AFD6DE47C0D4A7567394B0509FB2BBE5BDDBB5FAB5A5FBD8FFD9}
      FriendlyName = 'imgportugues'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object lblintraevaluation: TIWLabel
      Left = 531
      Top = 140
      Width = 302
      Height = 25
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 15
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblintraevaluation'
      Caption = 'Intra-Criteria Evaluation'
      RawText = False
    end
    object lblSelectCrit: TIWLabel
      Left = 68
      Top = 243
      Width = 447
      Height = 18
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 11
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblSelectCrit'
      Caption = 'Please, select one criterion to start the elicitation:'
      RawText = False
    end
    object lblpercent: TIWLabel
      Left = 375
      Top = 552
      Width = 326
      Height = 16
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = []
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblSelectCrit'
      Caption = 'Percentual variation admissible for deviation:'
      RawText = False
    end
    object cmbbxselectCrit: TIWComboBox
      Left = 483
      Top = 243
      Width = 137
      Height = 21
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 11
      Font.Style = []
      FocusColor = clNone
      AutoHideOnMenuActivation = False
      ItemsHaveValues = False
      NoSelectionText = '-- No Selection --'
      Required = False
      RequireSelection = True
      ScriptEvents = <>
      OnChange = cmbbxselectCritChange
      UseSize = True
      Style = stNormal
      ButtonColor = clBtnFace
      DoSubmitValidation = True
      Editable = True
      NonEditableAsLabel = True
      SubmitOnAsyncEvent = True
      TabOrder = 0
      ItemIndex = -1
      Sorted = False
      FriendlyName = 'cmbbxSelecCrit'
    end
    object cmbbxpercent: TIWComboBox
      Left = 534
      Top = 513
      Width = 44
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Enabled = False
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = []
      FocusColor = clNone
      AutoHideOnMenuActivation = False
      ItemsHaveValues = False
      NoSelectionText = '-- No Selection --'
      Required = False
      RequireSelection = True
      ScriptEvents = <>
      UseSize = True
      Style = stNormal
      ButtonColor = clBtnFace
      DoSubmitValidation = True
      Editable = False
      NonEditableAsLabel = True
      SubmitOnAsyncEvent = True
      TabOrder = 1
      ItemIndex = 2
      Items.Strings = (
        '5'
        '10'
        '15'
        '20')
      Sorted = False
      FriendlyName = 'IWComboBox1'
    end
    object btnOkElicIntra: TIWButton
      Left = 536
      Top = 398
      Width = 42
      Height = 25
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Ok'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'IWButton1'
      ScriptEvents = <>
      TabOrder = 2
      OnClick = btnOkElicIntraClick
    end
    object IWLink5: TIWLink
      Left = 606
      Top = 513
      Width = 65
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clMenuHighlight
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWLink5'
      TabOrder = 13
      RawText = False
      Caption = '(?)'
    end
    object lnkStopElicit: TIWLink
      Left = 1008
      Top = 477
      Width = 116
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clMenuHighlight
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'lnkStopElicit'
      OnClick = lnkStopElicitClick
      TabOrder = 22
      RawText = False
      Caption = 'Stop elicitation'
    end
    object IWLink7: TIWLink
      Left = 1125
      Top = 521
      Width = 21
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clMenuHighlight
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold, fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWLink7'
      TabOrder = 23
      RawText = False
      Caption = '(?)'
    end
    object lnkDefinePoint: TIWLink
      Left = 375
      Top = 534
      Width = 75
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'lnkDefinePoint'
      OnClick = lnkDefinePointClick
      TabOrder = 24
      RawText = False
      Caption = 'View'
    end
    object lblDef2: TIWLabel
      Left = 375
      Top = 514
      Width = 161
      Height = 16
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = []
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblDef2'
      Caption = 'value function graphic'
      RawText = False
    end
    object lnkIntDef: TIWLink
      Left = 463
      Top = 534
      Width = 65
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clMenuHighlight
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'lnkIntDef'
      TabOrder = 25
      RawText = False
      Caption = '(?)'
    end
    object lblwhatprefer: TIWLabel
      Left = 178
      Top = 284
      Width = 105
      Height = 18
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 11
      Font.Style = []
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblwhatprefer'
      Caption = 'lblwhatprefer'
      RawText = False
    end
    object IWImage32: TIWImage
      Left = 26
      Top = 579
      Width = 207
      Height = 50
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      Picture.Data = {
        0A544A504547496D616765CF150000FFD8FFE000104A46494600010101006000
        600000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC0001108003200CF03012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
        A2B83F8E1F1125F85BF0DB55F105BC2B71790858EDE393EEF98EC154B7B0CE48
        EF8C57C69E14F88BF1BFE26EB3047A3EB5AB4BF6C99E35B88D0456A8CAA19816
        0BB57008E3DC7AD7B582CAEA63294ABF3A8C5757F79F299A71150CB3130C1FB3
        954A9257B455F4BD975EACFD07A2BE20F047C54F8A1F0EF599F5FF001FCBAE7F
        C22D66AD14B2EA36EE216919822151B416F9BA63EB5E9FA1FEDCBF0F6EA675D4
        7527B64C7C863B19D8939FF76BE7331C4D1CB71F1CBE4DCA4D5F9A319382DF47
        2B593D3AF91D582CF30B8AA1EDABB545DFE19B5193F34AFB79F933E90A2B0BC7
        1AB4DA2F8275DD4ED6EED6C6E2D74F9EE22BABE563042CB1B307902F25011938
        E700D7987C33F8F1A5E9FF0009FC21ABFC40F19E8536A5AD4B35BC5A958878ED
        2E64495970A59571B46D0C4851907B57A11A339C39E2AFADBF0BFE87BB2A918B
        B33DB28AE17E1E7C70F02FC57BCBEB5F09F892CF5AB9B2199E18772BAAE71B80
        60372E78DC32391CF359CFFB497C345F1AC5E125F1758CFE20967FB32D9DB879
        7F7B9C6C2EAA543678209E3BD1EC2AF338F23BADF461ED2164F996A7A5D15E03
        F08FF6C6F087C5AF897ADF84AD0C764D6F308749B8798B9D5B0252EF1A841B15
        5630DF31C90DDB15EFD456A3530F2E4AB1B3DC29D48545CD0774145145606814
        5145007CA9F0CFF6BAF14FC42FDA1FC7BF0EED7C2163736BE1996F144915E98A
        E26482E561C8DE0A163BC1DA4A8FF6BD791F8CBFF050CBEF845F1DADFC1D77E0
        C31E8E22B792EA4D42430DDC7E60F988DA59085EB91B8100F35C67EC7BFF0029
        04F8E5FEFEAFFF00A7186BCABF6E4F873A9FC55FDB924F0D68CCA355BBD1E136
        CADD24912DA49163F6DC502E7B6ECD7DC52C0611E3D52A91F73D9A93DF7B2BB3
        E7A788ADF57E68BF7B9ADFF00FD30D1FE29E8BA84D6D6B7DE76817F7007936DA
        A288C4F9191E54A098A5C8E7F76ED5E117DFB616AFA7FED73AAFC253E185BDD2
        2C115DEF6CB7497654D9A5C1711E70C1771055416207193C5798FEC03E28B3F8
        B9F0C750F05DEEA77BA4F89BC3E7CA9AD2561716F776A5885325ACE19328D98D
        B6AA9C04C9C9AF35D174DD6BC17FF0526D6ED347486EB54B3886C5B2B3DD1329
        D3109021927040DA7EE8938FE11C05AF328E5F1A55F1342BABB8424D7E16675D
        4C4BA94E954A6EDCD249FEA8FD2FD3FC41A6EADA3A6AD677D05C69AE8641748E
        366D1D493DB1839CF4C1CD7CABF1A7FE0A51F0EBE1E5D5C695E13866F881AE46
        4A1FECE9047628DE86E083BBFED9AB0F715E03FB7178FB5DD7351B0F0D4568FE
        12D27584DFAFFD8E6B9805DCA1C0491E278D376D032576967C8C17DAA6BDD3F6
        45F06FECF3F0F7C2B6FA96897BA5CDE26B74CDDEA1AFCD1FDB5240BB98C4AC70
        8BD71E58CE3863B8115CB87A384A34562315795F68AD3EF7D3F337AB3AD527EC
        E8D95B76FF0044677ECFBF183F699F8B9F15346D6F5EF09DB7877E1A31905D5A
        BDA8B6CC6C87648AD31333B06DA72B85233C0C8C745FB50FEDB93FC13D73C2B6
        7E1CD12DF5EB1D5A5B8865D4AE999202D13441961607E7C799F3372A0F009218
        0F49D73C6973F10F527D2ADAC6F67D3703FE2496A7CAB9BB53D1AF243816B01E
        BE593E638FE1C650FC79FF000524D1F56D375EF83BFDAD7369F3B5F243A6E9F0
        04B5B24536A02212373F04658E07CA30ABCE7AB03EC331CC69C254946166ACAF
        D137AF9F99862154C361652536E5A6AFD51F4D7ED3DFB5B4FF0005FE1BAF8A7C
        2FA0FF00C247682FA2B26D42E498EC98BAB9FDD36434BF73EF27C9FED678AE73
        F67BFF00828D7C3FF8B82D34BF119FF842BC49261365E480D94CFE91CDFC393D
        9C2F50016354FF00E0A911AC7FB31DA22A8551AFD980A0700797371552C3F628
        F87FFB407ECDBF0F6F25B24F0EF8B4F86EC0C5AF69B185919BECE98F390604C3
        A7DEF9B1D185561E8E07EA11A98A4D3949AE65BAD174EA8552A623EB0E345EC9
        3B3EA7D9AAC1D4329C823208A5AFCF2FD997E34F8E7F665F8CD07C08F8AD335D
        69B72E9068DA93B9758F79C426373CB41211B707EE371C61857E8657918DC1CB
        073516F9A2D5D35B35FD6E7761EBAAF1BDACD6EBB33C47F6C8FF009217AA7FD7
        CDB7FE8D5AE0FF00676F8A7F0C343F05D9782EDF53BCD3EF7538E496FE7BE6FB
        3AADC3468AFB65DC02E7184DA73F2F383D7BCFDB23FE485EA9FF005F36DFFA35
        6BF3CEBEBB29CBE1996592A5524D2E67B7A2DCFC878933AAB91E7F1C45182937
        4E2B5DEDCCF67D2E7EA0785ECAD3C4963AA699AD476FAD5A693A835B5B7DBED8
        B384589402FBC7CCD8775DE06194E79C927E4AFDA27E1FFC36D27C3B7FAC4561
        6DA45FC934EBA6C9A2A3AC57770B72C9B0EE6285426198228DA470C3853D1FC2
        5F8B8BE3DF853630DE5F29B8D0636B7F10DCEA9FBD33DB0DF244D20C8DD07CA5
        49FF005808C00779CF88FED31F1B34AF8B5AD6916FA0ADD7F6658BCB3B3DCA2C
        6A669446AE2241CAC5FBA0C377CC4BB640AFC9AAD4D397A2FC6FFE47DF710667
        9655C9BEB8D42552B47DC8BB36B5B37EA9DDF4D8FD00F8DAAD27C0FF001DAA82
        CCDE1EBE01546493F667E2BE07D4B436D4BF669FD9CEC6EAC5E785FC49771DC4
        0F1120A35E3021863A106BF4ADD992C4B20CB88F200EB9C579A69DF113C54D69
        A635CF85E64FB54B144CDB24692205DD19DD76003908DD400AC4F600FD960B17
        2C3C6D18DF5BEF6E8D7EA7B35E8AA8EEDDB4B6DE699F3CDDF8364D2FF6DEF16E
        9DE14B38F436BEF074D1DBB59C5E4C2B3B40A11BE5000F9829FA8CD657EC6BE3
        EF04FC37B4B3F877E2BF0B5CE91F1224D5DA22F75A66F799D9B11B7998CA851F
        2FA71919C9AFA4343F899E2CDD6F36A9E1F996DA48E0698456371BD198598936
        8D8485433CDF29C92626E70A70FB1F8A1E2C9163371E1290492B46561F26E10A
        ABA404A96F2C8053CD72C4E3888A80581C744B1529D274A71BAB455D4B5BABF9
        6BBEABF1338D18C67CF17D5F4EE7807ECF179A37C3BFDAFF00E28F85F59D11AC
        F55D7353F3F4161643CB8E24FB448C51B1F22B46EB823838C57DB55E7575F10B
        5DB7D2F4ED423F0CDD4F1BDB09EEE110C827463204D8918539233BBAFDD1EF9A
        CA8FE29789AEB4C9AE97C277B15C5B8665B2F225125D05775CA931955560A38C
        96F9B3D305B8B132962A6AA5ADA24F5EDA1D145468C5C6FDDEC7AD515E5ADF13
        BC4B1B33B7852E25B34423CF86198BC8DFE95B59636453B7FD1E3C8620FEFD79
        C60B5EF05F8F75DD735A82DB51F0F5E69D6F731ACA1E685F1131B7864284955C
        00EF22E4E496520EDC0078DD292576747B48B763D128A28AC4D0FCF3FD8F7FE5
        209F1CBFDFD5FF00F4E30D1F10BFE52B5E131FF4E907FE924D553F653D62C341
        FDBDBE3B5E6A57B6FA7DA46FABEFB8BA956345FF00898C3D59881595F123C656
        B75FF0531F0E6B7A4B43790476709492EE43690BE2D65058C8EBC277DC01071C
        66BEFE5FEF93FF00AF1FFB6A3E6A3FC18FFD7CFD49FF00699D16FBF636FDAD34
        1F8BFE1FB77FF8457C4B3B1D4ADA11843337FC7D447B7EF17F7AB9FE30C7F869
        BE1BF1BE8727FC14FF0053F12AEA509D0EEECA1B882F0125654934788A6D0392
        5B70C0032735F40FC6FF0004EB5FB527C39D4FC2E244BF8A65F3ACA7D36D441A
        75B5CA826391AEE705E7504F26DD06412091935F017EC5FA6AF87FF6A2B5D2FC
        64B7B672D87DB2CAF2D6392559FCD8E178C403CB3BD89601762F5E9C835181AD
        0C5E06AD493FDE429CA2FCE36BA7F2B58788A72A35E115F0CA49FA3EA7E90FC5
        CF1B681F14B48BBF0A7FC217378A030DC63BE0F6EF09C1C4815479D09C670D20
        841E9BF935F0D6B1FB0FFC4FF15DC1D67C01281A7D88636921BB58164604B622
        6DC439CE1772964381F39E48FB7FC6DE38F017C35D2606F88DAAE93E03F0C95F
        3ACFC1D095F3EED41FF59711440B4BC8FF005680A03F78B9E9E07E3EFF008290
        6B5E3ABEFF008453E03F81EFB54D4A61E543A95EDA97651D37456C99E0750CE4
        01DD6BC0CB68E3A5253C3C7DD5D65F0F9DEFA7DDA9EA62AA61D2E5A8F5F2DC8B
        F63DFDB5358F0FF8D6DFE107C57D12DFC3FAA076820D5440B687CF009DB749C2
        EE7C1C48B8C92320E77547FF00055321BC51F0648391E6EA18FF00BEAD2B7FF6
        79FD87FC6F078AAE3E2B7C4DD7A3BEF8893133DB58DF85BB8433214617247072
        84A058CE1060827014792FFC141A3B5B1F137C2DB2B7B2BDD1AEEDE5BDF3F41B
        898C96F6A4B5B61AD988C794F838DA768DB8DA8C1857B785FAB7F6CD2FAB5B67
        7B7C3CDCAEF6F23CFADED7EA33F6BE56BEF6BADCFA1BFE0A99FF0026CB6DFF00
        6305A7FE81357BAFECCBFF0026EFF0D3FEC5CD3FFF0049D2BE65FF00829778EA
        D35AFD9BA2D3AE6DEE348D6E2D72D64934CBE50B26D09282F1B025654C91F321
        206467078AF11F06FED0DF1C3F680F877E17F857F08BC3D3E87A6E99A55AE97A
        8EBD0B9F31B644A8CC6E080B6EA704E172E71C1ED5C943073C665908C5A494DB
        6DBB24AC8DAA568D1C549B576E2AC91D7FED9DE26B1F8F3FB5D7C34F02F82CAD
        FEB1A1DC7D9EFEFED7E611C8F2A3B2161D7C958D9DBD0B30EA08AFD251D057CE
        1FB24FEC67A17ECD7A63EA3753A6B9E35BC8F65DEA9B484854E098A10790B9EA
        C796C761C0FA42BCBCC7114A6A9E1B0EEF0A69ABF76DDDBF4EC75E169CE2E556
        A692974EDD8C6F16784348F1C68F2695AE5926A1A7C8CAED048CC012A720E410
        7822BE78D5FF00675F0DA6AB78B6DE0F636E26711EC5948DBB8E3073D315F505
        15F0F9CE5D8ACD28C28E1F19530FCAEFFBB938DF4B6B668EB587C1CA6EA6230F
        0A8ED6F7A29FE68FCFFD37F67BF8B5A3781757F0B5869DA45BDB6A321F36F916
        74B9309656688B08F0CA4C69D41200201C31157BE147EC13E2193C45637FE31B
        EB1B6D1E0956592CED5DDE69C039D872AA154F739271DBBD7DE545185CB6B529
        F3622BFB44BA72A5F7DB73E76A70DE5B5654E538C9F2689393692BDED6ED7643
        75335ADACB2244D3346859635EAC40E83DCD7987843E25789B56F112D9DEF872
        64B2BAB8F92E7CB9228E18FECF13150648D598890BE72067903A57AAD15F4519
        249A6AE7D1B8B6D599E47A9FC4CF14793692DA7872E8B4F2C4AF0AC6E3C8FF00
        58CC9233C6393B150B0CA8F30104F199EF3E2678992CA656F0BCD6D70D6735D4
        2F1896405846AC90FF00AAE25625B83C7C9DF35EAB4569CF0FE527965FCC79A5
        C7C50D65749D5AEA0F09DF4B25AEA5F628524468FCD8F69226395C85DC36F19E
        A0FA8A7EB1F10BC47A478925B04F0CC97F6CD3C291490EE5DA8D1A16DCC46D27
        71900C1C7EEC838C835E91452E785FE11F2CBF98F2D6F8A3E23586DA74F0A493
        C12DBC724863F3C34323ADC3152A61C911F90A1B033994617380D05BFC52F13C
        72BBC9E15BA9E396EDA38A358E45CC6BE42650F97D1BCC925064DB85423A83B7
        D66919430208C834F9E1FC82E597F31E3D6BF19B5B98DDCA3C33757421B9B7B5
        11DAC531525A332484EE89594A8C2F23AE3D6BD86A0B1B0B6D36DD6DED2DE2B5
        B75FBB1428111727270071D69D7723C36B33C60348A85941048240E3A027F219
        A89CA32F8558A8A92DDDCE2345F811F0FF00C3DE34D47C5DA7F8534DB7F126A1
        23CD73A8F95BA47776DCCDC921589E49001A76B3F03FC07AEF8F20F1B6A5E17D
        3EFBC516E8A91EA534659D42821782769201382464562E9FE3EF18DE5C6990C9
        A4B409700A4D3368F7236C85D943052E02C630189760C46085E7E5A6FF00113C
        7D0DBB63C34350B90D0AFD9E3B09A0044966642DBD9CAE1672A8C3A801BAB605
        57B6A97BF33BDADBF4EDE81ECE16B5BCCDCD3FE38E83A9C30B5ADA6A0FBE4547
        568D2310A92C048ECCE1426508DD9C678EB915C85BD8FC38D2FE224BE3D8FC03
        35AF8B66F33CFD5963844A3092AB16C4D8C94824190092073D6AF58DEDC5F6A5
        A75BDDF80ED6D6CD6F1634DDA2B48561DD85753C2C7890CEE4B10555D4856249
        AB5A76ADAAEA1E27B5D3EF3C336ABA5DC49711CF72DA24C0001CA88C9638E564
        90F987E56F31801C366233942FCAED7D3E437152DD1C3FC70F879F0C3E39789B
        4EB9F1A786B58BF6D05E58C496F3471452C4AF32B972B2090A29B794E061BD01
        CE2BB5F09EB5F0CFE10C53685E1FD0ED7C371C3702DA58AD6D921DE44823F319
        B39751F39DE49E237EEB8AA50DFF00886FAFB4CD3BFE102D3608088E48AE24D3
        0B4506C8E3651B4B2EC64796703247078E770AAFA96BBE27B88A6B94F03E9F7B
        70B0DC7FC7C68F2AFCED017F2C924B106479232CAA43E49F94126B59622B4A9A
        A529BE55B2BE9F710A942327351D5F53BA5F8B9A77EE8B69BA9209228EE54B2C
        5836EE1889B893EEE17247DFE47CBD71E7BE36D53E117C648742D47C53E1F5D7
        26B25B89EC12F61C4B0948229E65C6F1CEDD830782CBE9826CB6B5796DBE59FE
        1CDA6956EB2FDA1AE24D2C4C2DDBCD3E5CCE10FCCD1C225762BFC4CAA1867996
        D6EAF2E2EAEADDBC1B6F269D7935BA069F433E55C44AAB114D80068F94721A5C
        854118C73594272A72E683B3F22E51525692BA36BE375AF81FC57A69F0E78E7C
        30FE24D32311DEF96C8863490ACDB304C8AC188865E471EA466BB6F03681A3F8
        67C27A669FA06930E87A4C3028B7B08515044B8181852467D4E4E7D4D79EDF49
        71269FA8C8DE13D3CCB677B369F6C8FE1F965C5A0336CC0072EAF85E570A3CC2
        71CD4D63E37F14DADB4B0C7A12D925BB5DC705A47A35C952226C428195B6A82B
        CEEC6D6C6001473CB9792FA760E557E6B6A7AD515E44BF10FC6324B6E7FB0EF0
        88D658EE644D3254803100C6EAADFBD91542C99036924A0C0C8CFA5786EFAEF5
        2D06CAEAFA1FB3DDCB186923F2DA3C1F5D8DF32E7AED3C8CE0F22A0A34E8A28A
        0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
        0028A28A006C8A1D0AB00CA46083D0D28A28A005A28A2800A28A2803FFD9}
      FriendlyName = 'IWImage28'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object IWImage31: TIWImage
      Left = 1180
      Top = 579
      Width = 151
      Height = 50
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      Picture.Data = {
        0A544A504547496D61676572110000FFD8FFE000104A46494600010101006000
        600000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC00011080032009703012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
        A28A2800A42C14649C0AF9E7F694FDA957E135CA681E1D5D32FBC48CBBEE1AFE
        F5238EC908CAE573B99C8E40C631C9EB8AF8D3C45F14B59F1B5E35CEBFE23B2B
        E918E7649757B3A2FB2A291181F415EE61729AD8982A8DF2C5FDFF007194AA28
        E87EA82BAB8CAB061EC69D5F991F0D3C7D3E8DE2ED1534DD7EE2CCCB7B046CBA
        7582C41D5A45054B33EEC11C74AF7EFDAA35AD6F4FF89F6B1E9BFDB061FECE89
        8FD96FE4B7B7077C9D42E067DF77A53A9954A9D68D2E6DD37B760552EAE7D734
        57E7B5A78F3C4F6D8DDE244D37FDDBD96E64FF00D09F07F2AEDBC11FB406BDE1
        0B8DD26AF7FE24818FCF06A0404FAAB1DCC0FE207B529E53562AF19261ED11F6
        9D1585E0BF1969DE3BF0F5BEAFA6C9BA09461E36FBD138EA8DEE2BC63E217C5A
        D7353D5E7B4D2AE8689A4C2C516E19B64B3E0E0B0FE20BE9815E653C3CEA4DC3
        6B6E5B924AE7D09457CA36FE28BA8DB71D5351BF93FBD25C3A27E59C9FCC57A8
        FC19D72FB56D6AF52EAE649634B6CAC6589553B876F5F7ADEAE0E54E2E571295
        CF5DA2BC2D750BA86EA5F3F53B863E636228662C7A9EA7381FAD770B777371E0
        9B39227944AD39190E4B632DD4D632A0E36D47CC77951CD3C76D0C934D22C514
        6A59E47202A81C9249E82B81B3BC9A1C799752CAFF00DC590E07D4FF00851E24
        F0F58FC40F0FDE687AE24975A65D2ED961499E3CE3A72A41A9F6493F79E83B9F
        2D7ED51FB651D56DEF3C23E00BB64B37062BED72238328E86380F65EC5FBF6E3
        9385FB3BFC26B7F88DF0B7C177AFA17F6BB2F8D248B56B8DC438B016E7E576DC
        0EC0E5781DC8AE07F698FD9C2F7E09EA10DFD94B26A3E15BE7296F75201E6412
        75F2A5C719C670DDC03D08AEF3F658D06F1BE19ADDDEFC58D5BC07A7EA9AEB69
        1A4D869AB1ED9AF5914E5B72364B7031C0F97AF35F692850A38052C24ADAEFAD
        DE8FB6A72DDB9FBC769E04F86D77F0E63F031D4F467D1F589BC63AC46924A733
        3D97D92E8C2A5B2494C052013D8515E43F0DBE2278F756FDAA34AF0778C3C5B7
        7E238B43D4751842CC5767991DB5C47E6000646467F3A2BCFC5D39C251F68D36
        D5F4DB56FB9717D8FD30AABAA6A11693A65DDF4FC436B0BCCFFEEAA927F4156A
        B2BC59A59D73C2DACE9C1771BCB29ADC2E719DE85719EDD6BE5636BAB9D07E3D
        F893C71A7F8CBC55AB7886F34CBABCBED4EEA4BA91EEAFF8CB3640C222F00600
        19E82BEAAFD91FF671D27E28686FE2DF11E95690E8BE7343676508766B82870C
        EEEECD85078000049079F5F8FE0D5AD34F91ADC787AC619A2631B0B892695958
        1C1041703A8F4AFD1AFD85FE2669FE28F8551F87184367ABE8F2C9BAD628FCB5
        785DCBAC883B8CB107DC73D6BF46CDE7528616F42EB65E88E2A7694B53D463FD
        9FBC056A606B2F0FC3A6490C8B22496323C2C194823EE9E791D0D7CD7FB65695
        3DF7C58B27F36DE28069710DD71708833E649D01393F80AFB62BE26FDB274E8A
        E3E2D594B2DFDADA2FF65C436C9BD9CFEF24E8AAA6BE532BA939E2573CAFA3DF
        53A2A24A267FECE7F0BBC3DF103C4DA9E9BAC5D0BE58EC4CA82CDA4431B6F51B
        B71001EBD30451F12BC076FF0009FC58FA41B66D46368D67B7B9BA9080E8491F
        7571C82083CF6F7AE9BF63386C61F1F6AC2DAEA5B997FB34EE2D0F9698F353A7
        CC49FC85697ED43E2EB1BAF1E59D95A456B7773A7DAF973CB22EFF002DD9B76C
        C676E40C13907AD7A72AB53EBAE9A6DC6C6765C972E7ECDFE29BBBAD6B55D047
        9715BDF59BB4490C61152551C1E07704F27D057111E873585C4916A134567346
        C524491B7C808383955C9CFD715D77ECE31EADA97C42B5B893CE1636F6F2BB61
        3645CAED000002F56AF59F8ADE01F07EA3249A95FEA96FA06A4DCB4E5D712E3F
        BC99E4FB8E7EB5C952B468E25C6DBA5B156BC4F36F03EB3E15D3FF00D1B57D21
        F518D9B77DB492AE9D38D81B91F8E79AFA07C2BA7E849671DEE851C2B6F2A6D0
        F0938233D08F5FAF35F2EDBDE58C1348960B15DA23155BA932E1F1DC290063EA
        29BE2DF1B788B41F09DD3697AC5C580924412F924292A7230A71F2F5FE1C5675
        B0CEB34A2ED7EE352E53D04476F0DDCC6490CEFE637C9170A393D58FF41F8D41
        67F15E6D47C647C09169D1DBDAD9DA9BC92E8392CEC4A90A076187E739CFB553
        D2599EDA0662599914927A9381CD71DE1DFF00938DD5BFEC16BFCA3AA8D38CB9
        B9B5B2B85CF59F14EA571A3782F5DBFB47F2AEAD6C679E27C03B5D63241C1E0F
        22BCF3F661FDA1AFBE266A575E1DF10A42358861FB44175026C1708080C197A0
        619078E08CF1C5775E3DFF009273E28FFB065CFF00E8A6AF98BF630F0BDFEA9F
        17175A86361A769769289E7C7CA5E45DAA99F539271E8B5A51A34EA612ACA6B5
        5B3149B52563ECCF8B5E07B7F891F0B3C49E1FB88C39BAB391A02464A4CA3746
        C3DC301FAD7C6BFB3C7C49F18F807E10E890E95E07D13C5567A9789DECF4FF00
        B75EF9738BE68C3001590AA801387DC3AD7DDDAA6A90E87E1FD4F51B960B6F67
        6B2DC48C7A05542C7F415F0FFECC7F11F48D23E18D95AEA9F0E7C59E2D934DF1
        0CBACD95E689A7B4D0413EC50BF3075CB282720823E6159605CA586A9171E649
        AD3E4FCD7904BE2433C3BFB455C7C5BF8FBE17D02FFC0DA4F86354D3B51BE96E
        AEAC640F2C92ADA5C46E8CDB467E624E7272451576D75CF86FA87ED01E118BC3
        7F0EF5FF0004F8BAE2F6F6F6FA6D720784CF13DA5C16C2B48DD5C83C281C75ED
        4575E2941387241C55B67EAFCD8A37D6ECFBDE8ACCF136B43C3BE1FD475430BD
        C8B381E6F26320349B4642827819E9935C4C7F1B749B69859EB3677DA3EA4B24
        76D2DBB6C9556E1D19D610E8D82C55783C0390339E2BE5A34E53578A37B9F1EF
        ED81F03FC4DF0EFC6377E2CF0B5B33785B5597CE9BFB3ED10496770C7E70E557
        76D663B8367A920F6CF8469F6FE3292686E59F578A48CEF49A699E2D87D43311
        8AFD2B9BE37786AE3CB8AEEDB59B659E682D8A5C46AB869B76C561BFB8463DF2
        3A64F15E47F107E13FC0ED435AD51AEFC35ABE9F359CD2C77579A4B797087400
        B646F2AB92C072A393E9CD7D860F339429AA55E176BAD8E7953D6F167CF9E13F
        1A78DEEBC43A25BEAFE3ABA6B3FB75BEFB79F5A69430122F05519B3F8D7AB7ED
        7973A36A7F15AD276D4247DBA6C49B2D610FD2493F88B003AFBD7476BF07BE11
        F8225D17595D075AD53499ECC6A6D7F717E3FD147263CC60AEF24A91C640E0F4
        E6BA4F1A787FE14F886E0EAFAF68DE208A48D6381246631A3E5978521F69DA64
        00F3F9F198962E93AF1AB08BB24D6897F9872BE5B33E6EF0DF8A97C313492E8D
        F6FB69A4431BCBF6D68CBAF5DA44614E381C6EAD2B5F105DB485A0486D9DCE4B
        4310DE49FF006CE589FC6BDC20F00FC148AFE2B67B0D6AD84D2AC16F3CD24822
        9DC83F2AB67A8231CE39C019CD6B5BF873E1B786FC55AD68F2787B52B57D3E68
        6DD2E6399A6799A452C30BF795782037427D29CB1B49B6D41DFF00AF30E57DCF
        31D0B50D5F45B59E45D42EA0B8BA50B2959983151D149CE7F0AA50319A4DD213
        231EACE727F335EBB0C9F0CF508ACE54D275F686EC2343282A51F7095B821F92
        043212073F2F7ABBE16D07E14F8AB54365A4B5FCF8B47BD170662B118D1F6B10
        49C9C107B638EB5CCF151579383FB87CACF35B1E318E0572FF00113C450CF66B
        A65BB893E6DF332F2063A2D7B1C90FC27D4238D217D72EB7AC723C36ECE1A38D
        E312091871F285273D71B58751553C47E07F843E1BD4F53D3B53B7D562BBB32D
        B624B924CCA1158952481C6F03048F5E94E188829AE68BBFA072BB16746FF8F3
        B6FF00AE6BFC8571DE1EFF00938ED57FEC16BFCA3AF4393C5FF0EF45961B6BB8
        B5DD3B3E605FB4A28F9231F338E492BC11919FBA7381CD36DBFE15A43E286F11
        69E359BED42E2058A5B9B6F9912164765660703056063900F41EB5CD1ABCBCCD
        C5EABB1563AF8EDE1BCB692DEE2249E0954A49148A195D48C1041EA08ADBF0DE
        8F63A25AA5A69B656F616AA72B05AC4B1A03EB851D6B9EF0DF8B7C25AF6B76DA
        44171AB59EA373930417712A19502EEDEBC1054AE0FAE08E2B99BAF15E85E2AB
        76B0D665F14680248DA678EC6FA34516B88C899E48F0C148957207239CF1CD70
        F2CA5EEBBA459E7DFB697ED0163A1F846F3C01A25DA5C6B5A8809A93C2D91690
        67263247F1BF031D9739EA2BC8FF0066FD3FF680BAF8772BFC30BFD36DBC39F6
        F94325DF91BFCFC26F3F3A138C6DEF8AF5C87F679F823ABD86A37F1691E28B8F
        B3C854A0B9632CEFE6AC6420DDC9DEE07CD83D4D55D37C07F0334782E6D6CB57
        F196931C6CEC2DADB569E212B00BB8AAA3637608CE707033D39AF729D6A14B0D
        EC2941B77BBBC6FF0085CC5C5B95D9B9AAFF00C2516ADF082D7E27DCE9975F11
        BFB63519236B1D9B859FD86E01CED0075F2F3818CEDEF4533C2FF0C7E11681E3
        6B3F1269F69E2FD5FC4D647CB297378F752C0258188DFBDF041466C1048CFD28
        AE1A95168A29FDD6EADE8AFB168FA47E2346B2FC3FF12A3A8753A6DC6558641F
        DDB57CE9F0B6CEDEEF5048278239A0FEC7D3AE3CB91032F9BB73E660FF001640
        3BBAF028A2B930BFC297AFF9152DCDA9AD616F8957713448628AC2CAE2342A36
        A4819C0703B30F5EB5A7F136C6D9FC6DE138DADE268E7BDD53CD4283127CA0FC
        C3BF3EB4515BC7E28FA7E82EE64F8F2C6DA4D57C231B5BC4C91F86B5408A5010
        BB6260B81DB00F1E95C2DAFEFBC33ACCF27EF263FD9A0C8DCB10E9017E7DF273
        EB934515D14FE05FD7513DCEDFC2FA5D95C78F3C530CB690490C26CDA38DE252
        A8766EC818E0EE00F1DC035BF630C727C56F895B915B64F63B7201DB98989C7A
        73CD1456153AFA7FF22338E0A13E18781A751B6692EECC3C83EF36E7BBDD93DF
        3B8E7D727D6BAEB4D3ED2D7E276B7690DAC30DAAF86AE76C11C6150664C1C281
        8E4514554BE17F312327C59E1FD2EC24D2E3B6D36CEDE35F108B60B1408A045E
        720F2F007DDC13F2F4E6BB6F126916375E2BBD966B2B79A55D46060F244ACC09
        8B04E48EB8E3E9451533F8D7CFF3435B1C1687A6DA5D789BC4C66B586631F88E
        E22432461B6A12A0A8C8E01DCD91EE7D6BA98741D32D6EAE64834EB485E46BC8
        DDA38154B2AA32AA92072002401D813451573F81FA0BA999F0374FB592F3ED0F
        6D0BCF06B572B14AD182D180B3200A7A8F97E5E3B715C5F83ECEDFED1A345E44
        7E55D5C6BF15C26C1B664118015C7F10000183E828A29CB79FCBF51744617C40
        9A4835EF13A44ED1A477BA96C55380B8F2586076C37CDF5E6BD9F55D174F6F87
        3031B0B6262B09DA32615F9099402471C64514554B687F5D01157E16D9DBCDE1
        DD06F648237BC9AD62F32E190191F08F8DCDD4E371EBEA68A28AE2ABF1B291FF
        D9}
      FriendlyName = 'IWImage28'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object pmpbtnResetIntra: TTIWPopupMenuButton
      Left = 1267
      Top = 120
      Width = 54
      Height = 27
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 10
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      AutoHiding = True
      BackgroundImage.Stretch = False
      BackgroundImage.Frame = 0
      Border = True
      BorderColor = clBtnFace
      Caption = 'Reset'
      ClientEvents = <>
      Color = clBtnFace
      Fade = fdMedium
      Font.Color = clWindowText
      Font.FontName = 'Verdana'
      Font.Size = 11
      Font.Style = [fsBold]
      HoverBorderColor = clHighlight
      HoverColor = clSkyBlue
      HoverColorTo = clNone
      HoverFontColor = clWebBLACK
      HoverGradientDirection = gdHorizontal
      IconBackgroundColor = clBtnFace
      IconBackgroundColorTo = clNone
      ItemColor = clWebWHITE
      ItemHeight = 20
      ItemSpacing = 3
      Menu = pmpResetIntra
      Opacity = 100
      Open = moClick
      SeparatorColor = clBtnFace
      ShowIcons = True
      SubMenuGlyph.Stretch = False
      SubMenuGlyph.Frame = 0
      ItemCheckedGlyph.Stretch = False
      ItemCheckedGlyph.Frame = 0
      TextAlignment = taLeftJustify
      UseBorder = True
      ButtonFont.Color = clWebBLACK
      ButtonFont.FontName = 'Verdana'
      ButtonFont.Size = 10
      ButtonFont.Style = [fsBold]
      ButtonColor = clBtnFace
    end
    object TIWHelpIntDef: TTIWHelpTip
      Left = 441
      Top = 534
      Width = 16
      Height = 16
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BackgroundColor = clInfoBk
      BackgroundColorTo = clNone
      Filter = fiShadow
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      GradientDirection = gdVertical
      HoverColor = clWebRED
      Image.Stretch = False
      Image.Frame = 1
      Image.Data = {
        FFD8FFE000104A46494600010101006000600000FFDB00430003020203020203
        03030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D
        0E110E0B0B1016101113141515150C0F171816141812141514FFDB0043010304
        0405040509050509140D0B0D1414141414141414141414141414141414141414
        141414141414141414141414141414141414141414141414141414141414FFC0
        0011080010000F03012200021101031101FFC4001F0000010501010101010100
        000000000000000102030405060708090A0BFFC400B510000201030302040305
        0504040000017D01020300041105122131410613516107227114328191A10823
        42B1C11552D1F02433627282090A161718191A25262728292A3435363738393A
        434445464748494A535455565758595A636465666768696A737475767778797A
        838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7
        B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1
        F2F3F4F5F6F7F8F9FAFFC4001F01000301010101010101010100000000000001
        02030405060708090A0BFFC400B5110002010204040304070504040001027700
        0102031104052131061241510761711322328108144291A1B1C109233352F015
        6272D10A162434E125F11718191A262728292A35363738393A43444546474849
        4A535455565758595A636465666768696A737475767778797A82838485868788
        898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4
        C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9
        FAFFDA000C03010002110311003F00FBBF55B5BFD7B458357BCF0D49AFEAB73A
        834496D717C20B6D3A2556259DB69F2D54A952555999B1D01C08BC21E378B43F
        87BA5F89347D15D341D4F74AF66594B5BB8253E4651B5D188055B8C8E7F88558
        D7AF174FF04F883C2DE27787CDBA32C50C97292AC17B14872CC5A2C1E72DB954
        823278C609D8BF867F897A5C5A7E8ED1E9FE15CF9325C445448DE5E0AAC68061
        5432A8E71C6EE06067A7A79187E67FFFD9}
      LinesHelp.Strings = (
        
          'By clicking on the link the questions generated for the elicitat' +
          'ion will be stopped. The series graph will be displayed to set t' +
          'he elicited point value even if the smallest range has not been ' +
          'found.')
      LinkColor = clWebBLACK
      Transparency = 100
    end
    object TIWHelpLink5: TTIWHelpTip
      Left = 584
      Top = 514
      Width = 16
      Height = 16
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BackgroundColor = clInfoBk
      BackgroundColorTo = clNone
      Filter = fiShadow
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      GradientDirection = gdVertical
      HoverColor = clWebRED
      Image.Stretch = False
      Image.Frame = 1
      Image.Data = {
        FFD8FFE000104A46494600010101006000600000FFDB00430003020203020203
        03030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D
        0E110E0B0B1016101113141515150C0F171816141812141514FFDB0043010304
        0405040509050509140D0B0D1414141414141414141414141414141414141414
        141414141414141414141414141414141414141414141414141414141414FFC0
        0011080010000F03012200021101031101FFC4001F0000010501010101010100
        000000000000000102030405060708090A0BFFC400B510000201030302040305
        0504040000017D01020300041105122131410613516107227114328191A10823
        42B1C11552D1F02433627282090A161718191A25262728292A3435363738393A
        434445464748494A535455565758595A636465666768696A737475767778797A
        838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7
        B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1
        F2F3F4F5F6F7F8F9FAFFC4001F01000301010101010101010100000000000001
        02030405060708090A0BFFC400B5110002010204040304070504040001027700
        0102031104052131061241510761711322328108144291A1B1C109233352F015
        6272D10A162434E125F11718191A262728292A35363738393A43444546474849
        4A535455565758595A636465666768696A737475767778797A82838485868788
        898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4
        C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9
        FAFFDA000C03010002110311003F00FBBF55B5BFD7B458357BCF0D49AFEAB73A
        834496D717C20B6D3A2556259DB69F2D54A952555999B1D01C08BC21E378B43F
        87BA5F89347D15D341D4F74AF66594B5BB8253E4651B5D188055B8C8E7F88558
        D7AF174FF04F883C2DE27787CDBA32C50C97292AC17B14872CC5A2C1E72DB954
        823278C609D8BF867F897A5C5A7E8ED1E9FE15CF9325C445448DE5E0AAC68061
        5432A8E71C6EE06067A7A79187E67FFFD9}
      LinesHelp.Strings = (
        
          'The percentage variation acts as a tolerance margin in calculati' +
          'ng the variation between the best and worst consequence values f' +
          'or each evaluated criterion. When the range is attended, the var' +
          'iation acts as the stopping criterion.')
      LinkColor = clWebBLACK
      Transparency = 100
    end
    object TIWHelpLink7: TTIWHelpTip
      Left = 1130
      Top = 477
      Width = 16
      Height = 16
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BackgroundColor = clInfoBk
      BackgroundColorTo = clNone
      Filter = fiShadow
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      GradientDirection = gdVertical
      HoverColor = clWebRED
      Image.Stretch = False
      Image.Frame = 1
      Image.Data = {
        FFD8FFE000104A46494600010101006000600000FFDB00430003020203020203
        03030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D
        0E110E0B0B1016101113141515150C0F171816141812141514FFDB0043010304
        0405040509050509140D0B0D1414141414141414141414141414141414141414
        141414141414141414141414141414141414141414141414141414141414FFC0
        0011080010000F03012200021101031101FFC4001F0000010501010101010100
        000000000000000102030405060708090A0BFFC400B510000201030302040305
        0504040000017D01020300041105122131410613516107227114328191A10823
        42B1C11552D1F02433627282090A161718191A25262728292A3435363738393A
        434445464748494A535455565758595A636465666768696A737475767778797A
        838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7
        B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1
        F2F3F4F5F6F7F8F9FAFFC4001F01000301010101010101010100000000000001
        02030405060708090A0BFFC400B5110002010204040304070504040001027700
        0102031104052131061241510761711322328108144291A1B1C109233352F015
        6272D10A162434E125F11718191A262728292A35363738393A43444546474849
        4A535455565758595A636465666768696A737475767778797A82838485868788
        898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4
        C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9
        FAFFDA000C03010002110311003F00FBBF55B5BFD7B458357BCF0D49AFEAB73A
        834496D717C20B6D3A2556259DB69F2D54A952555999B1D01C08BC21E378B43F
        87BA5F89347D15D341D4F74AF66594B5BB8253E4651B5D188055B8C8E7F88558
        D7AF174FF04F883C2DE27787CDBA32C50C97292AC17B14872CC5A2C1E72DB954
        823278C609D8BF867F897A5C5A7E8ED1E9FE15CF9325C445448DE5E0AAC68061
        5432A8E71C6EE06067A7A79187E67FFFD9}
      LinesHelp.Strings = (
        
          'By clicking on this option the intra-criteria evaluation will be' +
          ' finished. Criteria that were not elicited will consider the inf' +
          'ormation originally declared at the beginning of the problem.')
      LinkColor = clWebBLACK
      Transparency = 100
    end
    object txtRemarkindif: TIWText
      Left = 63
      Top = 505
      Width = 597
      Height = 23
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BGColor = clNone
      ConvertSpaces = False
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana'
      Font.Size = 8
      Font.Style = []
      FriendlyName = 'IWText8'
      Lines.Strings = (
        
          'Remark: An indifference between the two ranges is equivalent to ' +
          'declaring as a linear function above.')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object lblwhatprefer2: TIWLabel
      Left = 70
      Top = 280
      Width = 116
      Height = 18
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 11
      Font.Style = []
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblwhatprefer'
      Caption = 'lblwhatprefer2'
      RawText = False
    end
    object imgrangesintra: TIWImage
      Left = 66
      Top = 305
      Width = 464
      Height = 115
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clWebSILVER
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = True
      FriendlyName = 'imgseries'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object pmpbtnHelpIntra: TTIWPopupMenuButton
      Left = 1214
      Top = 120
      Width = 54
      Height = 27
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 10
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      AutoHiding = True
      BackgroundImage.Stretch = False
      BackgroundImage.Frame = 0
      Border = True
      BorderColor = clBtnFace
      Caption = 'Help'
      ClientEvents = <>
      Color = clBtnFace
      Fade = fdMedium
      Font.Color = clWindowText
      Font.FontName = 'Verdana'
      Font.Size = 11
      Font.Style = [fsBold]
      HoverBorderColor = clHighlight
      HoverColor = clSkyBlue
      HoverColorTo = clNone
      HoverFontColor = clWebBLACK
      HoverGradientDirection = gdHorizontal
      IconBackgroundColor = clBtnFace
      IconBackgroundColorTo = clNone
      ItemColor = clWebWHITE
      ItemHeight = 20
      ItemSpacing = 3
      Menu = pmnHelpIntracrit
      Opacity = 100
      Open = moClick
      SeparatorColor = clBtnFace
      ShowIcons = True
      SubMenuGlyph.Stretch = False
      SubMenuGlyph.Frame = 0
      ItemCheckedGlyph.Stretch = False
      ItemCheckedGlyph.Frame = 0
      TextAlignment = taLeftJustify
      UseBorder = True
      ButtonFont.Color = clWebBLACK
      ButtonFont.FontName = 'Verdana'
      ButtonFont.Size = 10
      ButtonFont.Style = [fsBold]
      ButtonColor = clBtnFace
    end
    object TesteMatVar: TIWButton
      Left = 736
      Top = 79
      Width = 137
      Height = 25
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'TesteMatVar'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = []
      FriendlyName = 'TesteMatVar'
      ScriptEvents = <>
      TabOrder = 31
      OnClick = TesteMatVarClick
    end
    object IWButton10: TIWButton
      Left = 1266
      Top = 80
      Width = 55
      Height = 30
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Logout'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'Verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 8
      Font.Style = [fsBold]
      FriendlyName = 'IWButton10'
      ScriptEvents = <>
      TabOrder = 33
      OnClick = IWButton10Click
    end
    object rdgrpBisec: TIWRadioGroup
      Left = 536
      Top = 308
      Width = 229
      Height = 50
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      SubmitOnAsyncEvent = True
      Editable = True
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = []
      FriendlyName = 'rdgrpBisec'
      ItemIndex = -1
      Layout = glVertical
      ScriptEvents = <>
      TabOrder = 3
    end
    object IWLink4: TIWLink
      Left = 29
      Top = 13
      Width = 274
      Height = 17
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clWebSILVER
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWLink1'
      TabOrder = 34
      RawText = False
      Caption = 'FITradeoff.org'
    end
    object IWImage19: TIWImage
      Left = 26
      Top = 28
      Width = 265
      Height = 89
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      Picture.Data = {
        0A544A504547496D616765C51E0000FFD8FFE000104A46494600010101006000
        600000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC00011080059010903012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
        A2B03C71E36D33E1EF876E35BD5DA55B181955CC29BDB2C40181F535E63FF0D8
        1F0F3FE7BEA3FF008067FC6803DB68AF12FF0086C0F879FF003DF51FFC033FE3
        5D4FC3BF8F1E15F8A1AD4DA5E8725DBDD4301B8613C0517606553CE7AE585007
        A2515CDF8FBE20693F0D7403AC6B4D325979AB0E618F7B6E6CE38FC297C03E3E
        D2BE24787D759D19A66B2695A20668F636E5EBC5007474579578C3F695F05F81
        FC4779A26A72DEADF5A9024115B165E4023073E86B1FFE1B03E1E7FCF7D47FF0
        0CFF008D007B6D15E25FF0D81F0F3FE7BEA3FF008067FC6B57C2DFB4E7827C61
        E21B1D174E96F9AF6F24F2E2125B155DD827939E3A5007AC5145140051451400
        514514005145140052060DD0835535962BA3DF303822090823FDD35F2FFEC53A
        94F7DA978A04D712CDB60B7C798E5B1CBFAD007D594514500145145001451450
        01451450025568755B2B898C315E5BCB30EB1A4AA5BF206BE63FDA63E2A6B3AA
        78CAD7E1EF86A596392431A5D7D9DF6BCD2C9F762C8E8A0104FD79E9469BFB1B
        EA56D15ADD378AFECDA8865697ECF0B00BCFCDB5F7673EF8A00FA9AAACDAAD95
        BCC2196F2DE298F48DE550DF9135E45FB487C549FE14F826CECF4B9D9357D409
        8219DCEE78A3551BE4C9EADD0027B9CF6AF24F037ECB7ADF8FBC3F078875AD79
        EC2E6F904F0C72466694AB7219D8B0C13D71EF401F60F5E452D72DF0C7C1D3F8
        0BC17A7E8B737F26A7736E18C9732331DC4B1385C9E140C003DABA9A00F19FDA
        EA5F27E05EB2FE92C1FF00A316BC83F65FF81FE11F8A5F0F2E757D76CE6B8BC8
        F5092DD5E3B878C6C08840C038EAC6BD4FF6D29BC8FD9F75D7CE3135BFFE8D5A
        F99BF676FDAEB46F82DE06B8D0B50D0EFB539E4BD92E84D6F2A2A85654503079
        CFCA7F3A00FA93FE191BE1BFFD032EBFF0365FFE2ABA7F87FF00033C25F0CB58
        9B53D06CE6B7BB9A136ECD25C3C836160C4609F5515E0A7FE0A31E18009FF844
        F55FFBFF00157D4FE19D723F13786F49D6228DA18B50B48AED23720B2AC881C0
        38EE01A00F19FDB4A6F23E0BB37FD446DC7FE85527EC63379DF04E06EBFE9F71
        FCC5667EDD93FD9FE04B3E71FF00134B61FF00A1D4BFB0BCDF68F80D6EF9CFFC
        4C6E47FE3C2803B8F147ECEDE06F196BD77ACEADA5C971A85D10D2C8B7522038
        000E03003802BC5BF696F819E0CF86FF000BE7D6B43D364B5BF5BA8621235CC8
        E02B1208C33115F5A57CFBFB734DF67F80B76F9C7FC4C2D87FE3C680387FD987
        E087837E25FC333AC6BBA749777DF6E9A1F316E2441B542E061580EE6BDB7C37
        FB38F80FC25AED9EB1A66932437F68FE643235D4AC15B046705B07AD705FB07C
        FF0068F8165FAFFC4D6E47E895F455007CDDAAFED537BA1FC74BAF06DF58E9F6
        DA15ADCB473EA123B89123588C858F38CF15E7DE34FDB975DBCD5275F08E916F
        06970B1027BD89A696451FC44290101F4E6BC83E346933F8BFF6AED6BC3B6CFE
        5CFA96B315A2B7F7778405BF0049FC2BF433C1DF0EFC3DE05F0F5B68DA4E996F
        05A4281093182D29C72CE71F331EA49A00E7B48F89971E1FF83369E33F1C4696
        337D956E6E61B2898ED0E7F76A14927710CBDF009AF9F352FDB1BC73E30BE953
        C11E1206D50F0CD6F25DCA47FB5B30A3E9CD7D6FE20F0FE9FE27D0EF348D4ED9
        6E74EBB88C3342DC0642391C74AF15D5BF6A0F839F07D87872C6F232B67FBA6B
        6D12D7CD8E223820B0C293EBC93EB401E73E11FDB535DD0FC411E9BF103424B5
        81982CB3C103C13400FF00118D89DC3E9835F5E59DE41A85A41756D2A4F6D322
        C914B19CABA919041EE0835F1D7ED19F12BE19FC76F84F7FAA787B55824F12E8
        9B2E628278CC172622E1645C301B9769DDF2E7EED7AAFEC57E2C97C55F0174B1
        33B492E9971369E59BFBAAC1907E0AEA3F0A00F5AF1A78D348F87FE1BBCD735B
        BA5B4D3ED572CC79662780AA3BB13C015F23F883F6E0F146B9AA35BF84B40B78
        20CFEED678DEE6771EA554803E833F5AC9FF0082807C449A6F19687E11826FF4
        5B3B6FB6CF1AB7DE9A4255770F655C8FF7CD7D43F027E0F697F097C0FA759C56
        917F6CCB0AC9A85E95064925232C377F7413803A605007CF9A37EDA1E20D39E5
        D37C73E1D1143711BC7F68B685E09532300EC73861F422AC7EC1773E7EADE2F1
        9CED82DBFF00427AFA6BE24783344F19784B53B4D674E82FE0FB3C8CBE620DC8
        C1490CADD5483DC57C99FF0004EBBCFB56B1E34E7245BDAFFE8525007D61F13B
        E27689F09FC312EB5ADCC56207CB86DE3C1967908C8441EBC75E80735F2F37ED
        6FF137C6B7534BE10F08A358C67188ACE5BB61FEF302067E82B94FDABBC523E2
        07ED29A37832EAFD6CB45B096D6CA495A40A91998AB4D29270010AC073FDDAFB
        0BC3BE2AF87BE13D16D749D27C41E1FB2B0B5411C50C5A84000007FBDC9F53DE
        803C27E1DFED9D771F88A2D0BE2168EBA3C92388CDEC51BC5E4B13C19237E42F
        B83C7A57D571BAC88AEA432B0C8607208F5AF93BF6D71E0CF157C375D774DD63
        47BBD7B4D9E309F64BC89E592173B590853920641F6C7D6BD23F661F883FDB5F
        B39691ADEA7312BA5DB4F04F339C9D96E5864FD1147E5401B1F1AFF684F0FF00
        C17B58E2BB0DA8EB570BBE0D360601B6FF007DCFF0AFBF53D857802FED83F133
        5856D474BF085BBE96A725A3B39E65C7BC80E2BCEBE0868B37ED49FB40EA3ABF
        884B4FA6465B51BC849E0C61B6C307B2F41F453EB5FA2169636D616B1DADB5BC
        76F6D1A84486240A8AA3B003A0A00F00F833FB5FE8FF0010F568743D7AD1740D
        6666D903799BADE67FEE027956F407AFAE78AEF3E3DFC4AD63E16F83EDF55D13
        4A5D5EEE4BB480C0E8EC0295625B09CF61F9D7CE7FB747C26B2F0DC3A7F8F745
        816C5E5B816B7EB00080B904C728C746CA904FD2BE87FD9B7E22CBF14BE0EE83
        AD5DBF9BA82A35A5DB7769633B4B7D5800DFF02A00F886DFE2C6B43E323F8C8E
        8E971ADFDA9AE7FB35924215F66DC63EF7039FC2BD93FE1B2BE21FFD08B07FDF
        8B8AE5BC1977BBF6FABF8739FF0089A5D8C7FDB06AFBC768F41401F9B5F1B3E3
        16BDF14B56D32E75ED1D74792D6168A28512450E198127E7E7B638AF56B1FDAF
        FC7F61636F6D178160F2A18D634FF47B8E80003F9563FEDFF742DBE247831738
        CD8B1FFC8C2BEDFB051F61B6E07FAB5FE4280323E1FF00882EFC55E09D1358BF
        B6165797B6A93CB6E01023623257079FCEBA0A28A00F00FDBA65F27F66EF10BF
        A4D6DFFA396BC97F619F843E08F891F07EF754F11F86AC358BE4D5E6816E2EA3
        DCC1047110BF4CB1FCEBD3FF006FD93CAFD987C48DE93DAFFE8E5AE57FE09A13
        79DF007526EBFF0013EB81FF0090A1A00F63FF00865FF853FF00422E91FF007E
        7FFAF5E93A7E9F6FA4E9F6D63670ADBDA5B44B0C30C630A88A00551EC0002AC5
        1401F347FC14226FB3FECF6EDFF516B51FFA1D4BFF0004FD9BCFFD9E2D9BFEA2
        7743FF001E159BFF00051E97C9FD9C1DBA7FC4DED3FF0067A97FE09CF279DFB3
        65AB75FF0089A5DFFE842803E9FAF9BFFE0A013793FB3B5E37FD446D7FF4235F
        4857CC5FF051693C9FD9AAF9BA7FC4CED3FF00433400FF00F827A4DE7FECFC5B
        FEA31743F48EBE9AAF95FF00E09BB2F9DFB39B375FF89D5D7F28EBEA8A00FCE7
        FB506FF828C2C2791FDBC7F4B72457E8C57E680B8FF8D992C79FF9980FFE931A
        FD2FA00F97FF006FBF8BD7DF0E3E17D8E8DA55C3DA5FF88A67B779E3243A5BA2
        832ED3D8B6E45FA31AE3FF00667FD8AFC31AC7C3DD2BC4FE38826D56FB56816E
        E0B1599A286DE171B933B482CC5483C9C0CE31DEB5FF00E0A41F0CF51F17FC2B
        D2BC49A65BBDD4BE1CB9792E638C12C2DA4501DC0EFB4AA13ED9AE67F65DFDBD
        3C0F63F0D746F0CF8EAFA4D0B55D1ED92CE3BC681E582E624016320A02558280
        0823B641E6802EFED35FB1BF82BC2BF0CF5CF16F85FED3A2DDE8F6ED74F6C666
        9A19D4632B8724A9C7420FE15BFF00F04DFD585F7C1FD7AD73936FAD3B11FEF4
        51FF00F135C4FED31FB70F847C7FE07D57E1FF00C3DB3BEF166ABAF42D626E23
        B6748E356EA5148DF2363380063BE4F4AE43FE09B3F1A744F0CEB5AFF81F57B8
        FB25F6B77314FA6B32B1134AAA51E2E070D801867D1BD280313F6FA8E7D07F68
        DFB64E14C177A7DA5C4593D550B21CFE286BF4AB4EBE8354D3ED6F2D64596DAE
        2259A2917A32300411F50457CBBFB7E7C03BFF008A7E03B3F12787ED5AEF5FF0
        F8766B58972F736AD82EAA3BB290180EFF00301C9AF1FF00D94FF6FBD17C17E0
        FB2F077C451770C7A6AF9165AC43134DFBA1F7639907CC0AF40C01E00C8E3240
        3EFAF11FFC8BDAA7FD7ACBFF00A01AF86BFE099975F68D6BC75ED6D69FFA1495
        D77C63FF00828AF816D7C3777A678122BBF156BB7B135BC05ADA486DE366046E
        6DC033919FBAA39F515E79FF0004B39FCED7BE200CE76DAD9FFE852D00721F1D
        BC3165AB7EDAD7DE1DD7EE66B4D3758D52D637B8831BD1268D02119E3EF11FAD
        7D0BFF000EE3F04FFD0C7ADFFE42FF00E26B9CFF0082867C03D57C476F61F127
        C336F2DC6A1A54420D461B604CA605259265039250939C73839ED52FC05FF828
        CF84356F0BD9E9DF11A79B44D7ADA358A4D4520796DEEF031E67C80B231EE08C
        67383DA8037BFE1DC7E091D3C47AD8FF00BF5FFC4D7A8DBFC1FB5F847FB39F8A
        FC23A1DCDDEA2834DD42489EE30656792373B7E503B9C0AF22F8B9FF000524F0
        1786F47B88BC10B3F8A75B652B0C9240F05A46DD99CB00CC07A28E7D457D2BF0
        BFC62DF12BE1B787FC4571A74FA649AAD8C73CB657519468D997E65C1E719CE0
        F7041A00F8C3FE099DAE5B49E26F1BE9EEC05E4D676B3C6A7A944770F8FC5D2B
        EFBAFCB3F88FA1F89BF61BFDA421F13E9766F71E19B89E492CD8E445716D2732
        5AB30FBAEB9E3FDD56AFB17C3DFB7B7C18D6BC3F1EA373E28FEC89F66E934FBD
        B6944E8D8E5405521BEAA4E68020FDBF356B6D37F676D4239B1E6DD5FDAC3067
        AEE126F247FC051AA97FC13CE1997F67F69E5044771ABDD49167BA808B91FF00
        0256FCABE54F8FFF001BB5AFDB57E29685E0CF00E9B72FA35ACADF6449976B4A
        E787B99BFB88ABD33D067B9C57E8D7C29F87B67F0A7E1DE83E14B16F320D32D9
        6132E306593ABB9FF798B1FC6803E1EF03DDEEFF00828C6A117FD45AF47FE4BB
        57E86D7E6D780AE73FF0530D4A3CFF00CC62FBFF00499ABF496803F3F7FE0A3B
        75F67F8A5E0519EB60DFFA3C57DF5A77FC83ED7FEB92FF00215F9DFF00F0536B
        830FC58F000CE33A7B7FE940AFD0FD37FE41B6BFF5C93F90A00B3451450073BE
        3EF87FA0FC4FF0CDC787BC4B60BA969170CAD2DB33B2062A432F2A41E081DEAA
        FC35F857E17F843A049A2F84B4B4D234C9276B9681247706460016CB127A28FC
        ABACA4660AA49381EA680168A4072323914B401CB7C46F865E1BF8B5E1DFEC2F
        1569ABAAE95E72CE6DD9D906F5CED39520F193DE9DF0EFE1AF873E14786D340F
        0AE9ABA5692B2BCC2DD1D9C6F639639624F35D3D37702C541F98751400EAE63E
        227C36F0EFC56F0DBE81E29D39754D25E5499ADD9D9016539539520F1F5AE94B
        056009009E829D401CB7C39F863E1AF84BE1DFEC2F0A698BA4E95E735C7D9D1D
        DC798D8DCD9624F381F95753451401E6A3F671F879FF000B2BFE13FF00F84763
        3E2DFB47DABFB47CE937799B76EEDBBB6FDDE3A57A551450032585278DA39155
        D186195864107B1AF9FBC65FB06FC1CF1A6AB26A3378724D2EE6562F27F655D3
        DBA313D4EC0768FC00AFA09595890082475A7500799FC2AFD9BFE1DFC17669BC
        29E1BB7B2BE65DAD7F3334D724771E639240F61815068BFB32FC3BF0DFC523F1
        0B4CD023B1F121590192176116E9061E4F2F3B43904F200EA6BD4E8A004EBD6B
        C3BE257EC5FF0009FE29EAD2EA9AA7877EC7A9CCDBA5BBD2E66B6694FAB05F94
        9F72335EE5450078DFC32FD917E16FC2699EEB43F0DA3EA2C8D1FF00685F4AD7
        13AAB0C1DACC709C77502BA2F85BF00BC09F05EE3509BC1DA0C7A34B7EA8970C
        9348FBD5492A3E7638C6E3D3D6BD0A8A004650CA548C83C106BC2BE207EC4DF0
        8BE236A52EA37FE185B0BF99B7CB3E9733DB173DC9553B49F7C57BB51401E1FF
        000F7F62FF00845F0DB5086FF4EF0AC57BA842DBA3B9D5257BA643D880E4A83E
        E057B781B7814B45006378B7C1BA278F3449F48F106976DABE9B38C496D75187
        53EFCF43EE39AF9E750FF8272FC19BED41AE934ED56CE3273F65B7D45C45F4F9
        B240FC6BE9FA280387F85FF053C15F06B4E92CFC21A05B690B280269972F34D8
        FEFC8C4B37E2715DC51450079BE9FF00B3BFC3ED2FE254BE3FB6F0FC71F8B649
        9E76D4BCE90B17752AC76EEDBC82474AF48A4560D9C1071C714B401E75F12FF6
        7CF00FC60D5AC353F176811EB17B631F956F23CD22796BBB7630AC33CF3CD7A1
        C71AC31AC68308A0281E8053AA313C66464122975192B91903DC50049453229A
        39D03C6EB221E8CA7229F401E57FB4A78A2FBC23F0CCDFD86AD368721D46CE09
        6FA000BC513CCAB210083FC24F6AF3FD52F2C758F843F11B50D2BE246ADE35B7
        83479A0921BD8D1121765DC18623439C03EDCD7ADFC60F04DF78FBC2F69A6D83
        C11CD16A76778C6E090A522995D8700F24038AD7F1E78493C61E07D7B408DD6D
        0EA5652DB0942F08CCA40623BE091401C4F8CBE2949E03D07C17A5D91D35757D
        6A00B0CDACDD7D9ED208E3895A49246EA7EF280A3925AB334EF8EFAA4DE1BD76
        F8E9FA6EAB73E19BE853583A2DD1B8864B3740E6E2DDBA96553928DCFC8C3D29
        9A87C37F19F88346F0AEA97F63E1F5F157865A4822B392579ECAFED9E354915D
        8C60C6C4A2B02036D2A3AF357EFF00C0BE31F15784E5D12EED341F0B5B6A978A
        BA8AE86EE5D2C42FCF1ABEC5DD239CAEEC00AAC7A9A00CBF17FC5293C59F063C
        6BE278B4F63E198D953499A2B996DA6BE8D645569B72E1910B676E3921727AD4
        17373E308FE3FF008C63F095B6933CBFD85A5B4AFAC4F2AA2E1EE76AA840492D
        CF2718C77AB9A97C14D6AD7E1A78CBC05A4DCDA9D02ECABE842E247DF66ACEAF
        25BBF07E45604A1E4E1B07A66B435CF09F8FB43F89FADF8A7C2D6FA16A16BA96
        9B6762D6BAA5CCB0BABC2D29DE1911860799D3BFA8C7201CDDAF8FE4F885E3FF
        0084B7B7162DA56A56BA9EB3A7EA36064DE21B986D595D437F12E7041F422B5B
        C61F1DB51B4F1578834BD09FC33145E1FDA97235ED4FECF35E4C631218E051D3
        0081B9B8DC71D8D555F82DE28F0D699E18D5F4ABBD3F57F1869DABDE6B17EB78
        ED05B5DC9768C932AB0562814150B90785AB9A87C35F14687E2BD6759D1345F0
        C6B91EBFE55CDDDA6B0CC86CAE96354768DC46C5E36DA0ED201C8273CD007A87
        837C536DE36F09691AFD92B25B6A36B1DCA23105977283B4E3B83C7E15E49A5F
        ED057B1FC42D3744D4E7F0BDCDB6A1A81D37ECBA36A2D3DED94A437966504057
        04AED6DBF74919AF60B1D3275F0CC561726082E8DA88656B14D912B94C318D4F
        45CE4815E0B67F067C7D67E1BF096830D8F85618FC27A85BDE5AEA4B24A26D43
        CA623E75D9FBB665662C72D96FAD00745E22F8B5E3C7F10F8DECFC33E1BD26F6
        CBC28F1B4F35F5DBC6F72A60594C718553F3E09E4F1D2AF5D7C62D73C57A8786
        B4AF02E93673EA1AB68B16BF7171ACCAE96F676D26046A7602CCECD9000E9B49
        ADCD27E1FEA363A97C49B892580A7892557B40AC72805AAC3F3F1C7CC0F4CF15
        C969BF0A7C5FE058FC17ACF86DF4BBDD6F4BF0EDBF87F55D3EFA678ADEEA38C0
        2AF1C8AA4AB2BEFC65790DDA802F7ECF171A9DC5E7C467D62186DB52FF008492
        513C36D2992256F262FB8C40257BF2075ACFF127C57D63C17ABFC66BFCFF0069
        5AF86EDF4E9AC6C253B514C906E700819E49CD75DF07FC19AFF84FFE129BAF11
        BD835FEB5AB3EA3B74E673122B468BB7E600E46DFC6B9BF1B7C1BD6BC463E2CF
        D9A7B34FF84AEDEC62B2F31D86C30C615FCCC0E391C6334013E87F14BC6B1F8C
        B45D1FC47E1FD2F4E87C49653DC69125ADD4923433471893C9B9CAF52A7395E3
        8239AE53E19FC4DF15783FE16F89BC51E2A5D3EFB48D3AFB5254F22EA57BA7B8
        17CF1AC5975DAB16E3B54E72142E475AF52F10F81EFF0056F1AFC3FD5E19215B
        6D01AE9AE9598EE6F32D8C4BB38E7E63CE71C57170FC19D7AF3C2FE33F035FC9
        603C31A9DCDD6A1A7EA913B35D4734D7027559212BB4AA396E437CC303039A00
        B7E09F8D1A8DF78CF4CF0FEBB2F86AEE4D5ADE696D24F0E6A26E7C99225DED0C
        C0F7D9B8871C1DA47A543F0E7E2D78DBC75E0BB8F17CFA2687A5E88B673BDBAD
        CDF3A3CB346E5773B15DB1C5F2B727278CF7ADCF01E81E2FB6D5E26D7740F096
        9B6F6F03A3DE69019A7B9908003A831AF94BF7B2B963CE3358F6FF0005F5593F
        66F4F87F35DDA47AB244079D867B7665B9F382B700946C056E3A13D68019F0CF
        E3E7FC249E22D4348D5EFBC3D7A21D3A4D562D47C3B74F2C1E546C165490380C
        ACBB9083D1836474357FC09E3FF881E3A5D2FC410786B49B4F07EA522B4315C5
        E3AEA2B6ADF76E186DD9C8C36CCE707AD65E9FF0DFC5FADFC40D3B5FD7748F0D
        E97A7FF655D6897B61A6CD248ED04BB1B78731A83F3461426380CDC9ABFF000F
        7C35F137C0F0E8FE1779740BFF000C698CB0A6B12BCDF6D96D17EEC661036893
        6E177EEC719C50070BA17893C6EBE0CF8C775ADAE9D79A469F75AB0996DEFEE5
        6E1244B5461142D81B63E98390C096C0AF53D2FE213E99E28F0DE83796F1DBE9
        9A96806FED6F2494B379B104F36262DD711BAB67A9C37A57377FF0C7C571D9FC
        4FF0FD9AE973685E2C4BEBBB7BD96774B882E67B758BCB68C2105032E77039C1
        E956BE307C1FD5FC7BF0EF40D3347D461D2BC41A5F971A5EB676F94F0982E501
        03F8A376EDD874EB40188BFB44EA5A968FE1A16B6FA1E95AA6BF1DCEA104DADD
        E982D60B1497645239FBCD2480A908BD3273D2BD07E127C463F11B45D4659D2C
        D350D2EFA4D3EECE9F71E7DB3BAAAB0789FBA32BA9E791920F4AC0F1A7C26BB8
        352F0CEB3E14B3D2EF2E744B06D29B4AD641F22E6D0ED2A0385631BAB2021B69
        CE4835D9F8074FD5B4FD15C6B3A7E8FA5DEC93349F65D1437928980141621773
        71CB6076E2803CC3E3668BE23D0F56D0AFF4CF1E6B9A7C3ADF882CF4D7B287C9
        314114A486F2F284E7E5C8C93D6ADEA9E28F19F81FC59A378074109E2FD4EFB4
        FB8D44EAFE20B8F2FC9092A2FCFE5272A03E00033923DEBB3F8A1E0BBEF1A47E
        165B29218CE97AFD9EA9379C48CC51162C1700FCDCF14EBAF06DECDF18B4EF15
        2BC3FD9F6FA25C69AD1927CCF31E78A4040C636E10F7F4A00F3EF899F1E357F8
        6FAC5CC7733784CC3630C734DA649A93AEA3749B4191A24C6D43F7B6AB9CB6DF
        7AE97C4FF12BC41A878DAD7C29E07D3B4EBDBEFECE4D56F2FB5695D2DADE1762
        B128080B33B90DEC00AE4BC47F06FC5B349E3ED1F4EB6F0F5EE93E2DB896E9B5
        7D499FED568648C298CC610F98176FC8770C0FA5695BFC3BF1C785F52D03C4FA
        22E8F77AEAE89068BACE9979712476F3888E639629421219496E0AF21A80394F
        09FC52D4BC07E1FD785EDB69B0789B59F19DED9A45777DE5D8DBB88D1E476948
        CF96A06400324902BA6B2FDA33FB3B43F14FF6B43A66ABACE8A6D5605F0EDE79
        D6FA835CB1481518F28DBD59581E8067A5548FE07F89EE3449350BC974493C59
        6FE24B8D7EDE164792C2549A308F03EE1B802B91BB048201F6ADAD47E18F883C
        75E0AD5F4FD56C340F09EA2D3DBDD698DA28698433C2FBD1E562A9BC16006001
        805BBD004F17C44F1B687E20D3743F1368DA2DB5EEBB04C349BAB1BA95EDD2E9
        137FD9E7DCBB86464EF5C83B4F15F3F8D2FC5C9F052F7C50B63E1F5BAF11DF0B
        4BFD605CDC7F68CEB2EA22268C9DB809D1383C274E6BE82D3FC1FE33F1978DBC
        3BAD78CE1D274BB3F0E9966B6B4D2AE249CDD5CBA797E6B3322EC5552D85E4E4
        F26A8FFC29DD6BFE145E9BE0DFB459FF0069DB6A50DE3C9BDBCA289A80B9201C
        673B38E9D7F3A00EF3E1AF85DFC1FE13B7D364D2F49D1A447766B5D14B9B6196
        382BBC0392319C8EB5D551450014514500145145001451450014514500145145
        0014514500145145001451450014514500145145001451450014514500145145
        00145145001451450014514500145145007FFFD9}
      FriendlyName = 'IWImage17'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object IWLabel21: TIWLabel
      Left = 1214
      Top = 14
      Width = 107
      Height = 14
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taRightJustify
      BGColor = clNone
      Font.Color = clWebSILVER
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = []
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblCademail'
      Caption = 'FU-T3MMM-WF1a'
      RawText = False
    end
    object linkinfoeliciting: TIWLink
      Left = 366
      Top = 220
      Width = 25
      Height = 17
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clHotLight
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'lnkIntDef'
      OnClick = linkinfoelicitingClick
      TabOrder = 35
      RawText = False
      Caption = '(?)'
    end
    object lnkbackonestep: TIWLink
      Left = 68
      Top = 185
      Width = 154
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clHotLight
      Font.FontName = 'verdana'
      Font.Size = 11
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'lnkBackIntra'
      OnClick = lnkbackonestepClick
      TabOrder = 37
      RawText = False
      Caption = '<< Back one step'
    end
    object lnkviewcritelicitados: TIWLink
      Left = 871
      Top = 193
      Width = 372
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clHotLight
      Font.FontName = 'Verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold, fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'lnkviewcritelicitados'
      OnClick = lnkviewcritelicitadosClick
      TabOrder = 40
      RawText = False
      Caption = 'View the information about the criteria elicited'
    end
    object btninfoelicited: TIWButton
      Left = 1224
      Top = 239
      Width = 133
      Height = 34
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'ciclos de respostas'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btninfoelicited'
      ScriptEvents = <>
      TabOrder = 42
      OnClick = btninfoelicitedClick
    end
    object btnsavepoints: TIWButton
      Left = 1222
      Top = 162
      Width = 135
      Height = 31
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Salvar pontos da fv'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btnsavepoints'
      ScriptEvents = <>
      TabOrder = 44
      OnClick = btnsavepointsClick
    end
    object lnkauxintra: TIWLink
      Left = 956
      Top = 48
      Width = 65
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'lnkauxintra'
      TabOrder = 45
      RawText = False
      Caption = 'lnkauxintra'
    end
    object btncriterioselicitados: TIWButton
      Left = 1224
      Top = 199
      Width = 133
      Height = 34
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Crit'#233'rios elicitados'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btncriterioselicitados'
      ScriptEvents = <>
      TabOrder = 43
      OnClick = btncriterioselicitadosClick
    end
    object IWLink1: TIWLink
      Left = 68
      Top = 266
      Width = 323
      Height = 17
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clHotLight
      Font.FontName = 'Verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold, fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWLink1'
      OnClick = lnkStopElicitClick
      TabOrder = 32
      RawText = False
      Caption = 'Or declare linear function for all criteria'
    end
    object IWLabel4: TIWLabel
      Left = 68
      Top = 550
      Width = 968
      Height = 14
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clWebRED
      Font.FontName = 'Verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = []
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'IWLabel4'
      Caption = 
        'Note: In the notation used for consequence values, '#39'K'#39' represent' +
        's a multiple of one thousand, while '#39'M'#39' represents a multiple of' +
        ' one million.'
      RawText = False
    end
    object rgninfocritelicitados: TIWRegion
      Left = 840
      Top = 214
      Width = 449
      Height = 351
      Cursor = crAuto
      Visible = False
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clWebBLACK
      Color = clNone
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      OnCreate = rgninfocritelicitadosCreate
      Splitter = False
      object IWLabel1: TIWLabel
        Left = 31
        Top = 2
        Width = 134
        Height = 18
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.Size = 11
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'IWLabel1'
        Caption = 'Elicited Criteria'
        RawText = False
      end
      object awgcritelicitados: TTIWAdvWebGrid
        AlignWithMargins = True
        Left = 33
        Top = 26
        Width = 398
        Height = 226
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        ActiveRowColor = clNone
        ActiveRowFontColor = clNone
        AdvanceOnReturn = False
        AutoEdit = False
        AutoHTMLAdapt = False
        Background.GradientDirection = gdHorizontal
        Background.Gradient1 = clNone
        Background.Gradient2 = clNone
        Background.Picture.Stretch = False
        Background.Picture.Frame = 0
        Bands.Active = False
        Bands.PrimaryColor = clInfoBk
        Bands.SecondaryColor = clWebWHITE
        Borders.Inner = ibAll
        Borders.Outer = obAll
        Borders.Padding = 0
        Borders.Spacing = 0
        Borders.Width = 1
        Borders.Collapsed = True
        Borders.Color = clNone
        Borders.ColorDark = clNone
        Borders.ColorLight = clNone
        CellComment.BorderColor = 14263350
        CellComment.Color = 15784080
        CellComment.DisplayType = dtMouseOver
        CellComment.Font.Color = 9330453
        CellComment.Font.Size = 10
        CellComment.Font.Style = []
        CheckTruePicture.Stretch = False
        CheckTruePicture.Frame = 0
        CheckFalsePicture.Stretch = False
        CheckFalsePicture.Frame = 0
        Color = clNone
        Columns = <
          item
            CheckTrue = 'true'
            CheckFalse = 'false'
            ColumnHeaderClick = False
            ColumnHeaderFont.Color = clNone
            ColumnHeaderFont.Size = 10
            ColumnHeaderFont.Style = []
            DefaultDynEdit = '0'
            DefaultDynText = '0'
            DetailFont.Color = clNone
            DetailFont.Size = 10
            DetailFont.Style = []
            Font.Color = clNone
            Font.FontName = 'verdana'
            Font.Size = 10
            Font.Style = []
            FooterFormat = '%g'
            SpinEditMaxValue = 100
            SpinEditMinValue = 0
            Width = 130
            SortFormat = sfAlphabetic
          end
          item
            CheckTrue = 'true'
            CheckFalse = 'false'
            ColumnHeaderClick = False
            ColumnHeaderFont.Color = clNone
            ColumnHeaderFont.Size = 10
            ColumnHeaderFont.Style = []
            ColumnType = ctLink
            DataButtonType = dbtLink
            DefaultDynEdit = '0'
            DefaultDynText = '0'
            DetailFont.Color = clNone
            DetailFont.Size = 10
            DetailFont.Style = []
            Font.Color = clNone
            Font.FontName = 'verdana'
            Font.Size = 10
            Font.Style = []
            FooterFormat = '%g'
            SpinEditMaxValue = 100
            SpinEditMinValue = 0
            Width = 120
            SortFormat = sfAlphabetic
          end
          item
            CheckTrue = 'true'
            CheckFalse = 'false'
            ColumnHeaderClick = False
            ColumnHeaderFont.Color = clNone
            ColumnHeaderFont.Size = 10
            ColumnHeaderFont.Style = []
            ColumnType = ctLink
            DefaultDynEdit = '0'
            DefaultDynText = '0'
            DetailFont.Color = clNone
            DetailFont.Size = 10
            DetailFont.Style = []
            Font.Color = clNone
            Font.FontName = 'verdana'
            Font.Size = 10
            Font.Style = []
            FooterFormat = '%g'
            Name = 'Column 3'
            SpinEditMaxValue = 100
            SpinEditMinValue = 0
            Width = 120
            SortFormat = sfAlphabetic
          end>
        ColumnHeaderColor = clWindow
        ColumnHeaderFont.Color = clNone
        ColumnHeaderFont.Size = 10
        ColumnHeaderFont.Style = []
        ColumnHeaderBorders.Inner = ibAll
        ColumnHeaderBorders.Outer = obAll
        ColumnHeaderBorders.Padding = 0
        ColumnHeaderBorders.Spacing = 0
        ColumnHeaderBorders.Width = 0
        ColumnHeaderBorders.Collapsed = True
        ColumnHeaderBorders.Color = clNone
        ColumnHeaderBorders.ColorDark = clNone
        ColumnHeaderBorders.ColorLight = clNone
        ColumnSizing = False
        Controller.Alignment = taLeftJustify
        Controller.Borders.Inner = ibAll
        Controller.Borders.Outer = obAll
        Controller.Borders.Padding = 0
        Controller.Borders.Spacing = 0
        Controller.Borders.Width = 1
        Controller.Borders.Collapsed = True
        Controller.Borders.Color = clNone
        Controller.Borders.ColorDark = clNone
        Controller.Borders.ColorLight = clNone
        Controller.Color = clNone
        Controller.Font.Color = clNone
        Controller.Font.Size = 10
        Controller.Font.Style = []
        Controller.Gradient1 = clNone
        Controller.Gradient2 = clNone
        Controller.GradientDirection = gdHorizontal
        Controller.Height = 22
        Controller.MaxPages = 10
        Controller.Position = cpNone
        Controller.Pager = cpPrevNext
        Controller.PagerType = cptLink
        Controller.IndicatorFormat = '%d of %d'
        Controller.IndicatorType = itNone
        Controller.TextPrev = 'Prev'
        Controller.TextNext = 'Next'
        Controller.TextFirst = 'First'
        Controller.TextLast = 'Last'
        Controller.ImgPrev.Stretch = False
        Controller.ImgPrev.Frame = 0
        Controller.ImgNext.Stretch = False
        Controller.ImgNext.Frame = 0
        Controller.ImgFirst.Stretch = False
        Controller.ImgFirst.Frame = 0
        Controller.ImgLast.Stretch = False
        Controller.ImgLast.Frame = 0
        Controller.RowCountSelect = False
        Controller.HintFind = 'Find'
        Controller.ShowPagersAlways = False
        DateSeparator = '/'
        DateFormat = gdEU
        DecimalPoint = '.'
        DefaultColumnHeaderHeight = 22
        DefaultRowHeight = 22
        DetailRowHeight = 0
        DetailRowShow = dsNormal
        EditColor = clNone
        EditSelectAll = False
        FooterBorders.Inner = ibAll
        FooterBorders.Outer = obAll
        FooterBorders.Padding = 0
        FooterBorders.Spacing = 0
        FooterBorders.Width = 1
        FooterBorders.Collapsed = True
        FooterBorders.Color = clNone
        FooterBorders.ColorDark = clNone
        FooterBorders.ColorLight = clNone
        FooterColor = clBtnFace
        FooterFont.Color = clNone
        FooterFont.Size = 10
        FooterFont.Style = []
        Font.Color = clNone
        Font.Size = 10
        Font.Style = []
        Glyphs.EditButton.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000707E4E4E4E4
          E4E4E4E4E4E4E4E4E4070707EDF609090909090909090909E4070707EDF60707
          0707070707070709E4070707EDF6F6090909090909090909E4070707EDFFF609
          0909095A09090909E4070707F5FF07070707075200070709E4070707F5FFFFF6
          F609095A00000709E407070707FFFFFFF6F6095AFB360007E407070707FF0707
          070707A4FB360007ED07070709FFFFFFFFF6F6F65BFB3600ED07070709FFFFFF
          FFFFF6F6ACFB36000707070709FF070707070707F652FB360007070709FFFFFF
          FFFFFFFF079A7F360007070709FFFFFFFFFFFFFF08EC51000200070709FFFFFF
          FFFFFFFF07EC9A0202410707090909090909090907E407838307}
        Glyphs.EditHint = 'Edit'
        Glyphs.PostButton.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0007070707071D
          1D1D1D1D1D0707070707070707271E1F2727271F1E1D1D07070707071E276FB7
          F6F6F6BF6F271E1D0707072727B7F6FFF6F6F6FFFFBF271E1D070727B7FFF6B7
          6FBF276FF6FFBF271D07276FF6FF6F27F6FF6F1F27F6FF6F1E1D27B7FFBF6FF6
          FFF6B7271F6FFFBF1F1D27B7FFB7BFFFAF6FF6672727F6F6271E67BFFFB76F6F
          2727B7B72727F6F6271E6F08FFB76F6F6F676FB72727F6F6271E67BFFFF66F6F
          6F6F676F6FB7FFB7271D076FF6FFBF6F6F6F6727B7F6F66F1E07076FF6F6FFF6
          B7B7B7BFFFFFB7271E070707AFF6FFFFFFFFFFFFF6B7271F07070707076FBFF6
          F6F6F6B76F272707070707070707076FAFAF6F67270707070707}
        Glyphs.PostHint = 'Post'
        Glyphs.CancelButton.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0007070707071D
          1D1D1D1D1D0707070707070707271E1F2727271F1E1D1D07070707071E276FB7
          F6F6F6BF6F271E1D0707072727B7F6FFF6F6F6FFFFBF271E1D070727B7FFF627
          27271F1FB7F6BF271D07276FF6FFB7B767272727B7B7FF6F1E1D27B7FFBF67B7
          F66767F6B727F6BF1F1D27B7FF6F6F67B7F6F6B72727BFF6271E67BFFF6F6F6F
          6FF6F66F2727B7F6271E6F08FF6F6F6FF6B7B7F66F27F6F6271E67BFFFF66FF6
          B76F6FB7F66FF6B7271D076FF6FFB7AF6F6F6F6FB7F6F66F1E07076FF6F6FFF6
          6F6F6FB7FFFFB7271E070707AFF6FFFFFFFFFFFFF6B7271F07070707076FBFF6
          F6F6F6B76F272707070707070707076FAFAF6F67270707070707}
        Glyphs.CancelHint = 'Cancel'
        Glyphs.SpinEditButtonDownImage.Stretch = False
        Glyphs.SpinEditButtonDownImage.Frame = 0
        Glyphs.SpinEditButtonUpImage.Stretch = False
        Glyphs.SpinEditButtonUpImage.Frame = 0
        HoverColor = clNone
        HoverFontColor = clNone
        HeaderStyle = hsRaised
        ID = 2
        Indicators.Browse.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888880888888888888888008888888888888800088888
          8888888800008888888888880000088888888888000000888888888800000008
          8888888800000088888888880000088888888888000088888888888800088888
          8888888800888888888888880888888888888888888888888888}
        Indicators.Insert.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888888888888888888888888088888
          8888888888088888888888800808008888888888800088888888888880008888
          8888888008080088888888888808888888888888880888888888888888888888
          8888888888888888888888888888888888888888888888888888}
        Indicators.Edit.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888880080088888888888880888888
          8888888880888888888888888088888888888888808888888888888880888888
          8888888880888888888888888088888888888888808888888888888880888888
          8888888008008888888888888888888888888888888888888888}
        MouseSelect = msNone
        Nodes.NodeOpen.Stretch = False
        Nodes.NodeOpen.Frame = 1
        Nodes.NodeOpen.Data = {
          424DBE0000000000000076000000280000000900000009000000010004000000
          000048000000120B0000120B0000100000001000000000000000000080000080
          00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
          000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000FFF
          FFFF000000000FFF0FFF000000000FFF0FFF000000000F00000F000000000FFF
          0FFF000000000FFF0FFF000000000FFFFFFF000000000000000000000000}
        Nodes.NodeClosed.Stretch = False
        Nodes.NodeClosed.Frame = 1
        Nodes.NodeClosed.Data = {
          424DBE0000000000000076000000280000000900000009000000010004000000
          000048000000120B0000120B0000100000001000000000000000000080000080
          00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
          000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000FFF
          FFFF000000000FFFFFFF000000000FFFFFFF000000000F00000F000000000FFF
          FFFF000000000FFFFFFF000000000FFFFFFF000000000000000000000000}
        NameOfDays.Strings = (
          'Sun'
          'Mon'
          'Tue'
          'Wed'
          'Thu'
          'Fri'
          'Sat')
        NameOfMonths.Strings = (
          'January'
          'February'
          'March'
          'April'
          'May'
          'June'
          'July'
          'August'
          'September'
          'October'
          'November'
          'December')
        OuterBorder.Show = False
        OuterBorder.Color = clWebBLACK
        Page = -1
        RowCount = 0
        RowHeader.Show = False
        RowHeader.Width = 1
        RowHeader.Borders.Inner = ibAll
        RowHeader.Borders.Outer = obAll
        RowHeader.Borders.Padding = 0
        RowHeader.Borders.Spacing = 0
        RowHeader.Borders.Width = 1
        RowHeader.Borders.Collapsed = True
        RowHeader.Borders.Color = clNone
        RowHeader.Borders.ColorDark = clNone
        RowHeader.Borders.ColorLight = clNone
        RowHeader.Color = clBtnFace
        RowHeader.Gradient1 = clNone
        RowHeader.Gradient2 = clNone
        RowHeader.GradientDirection = gdHorizontal
        Scroll.Style = scNever
        Scroll.Scrollbar3DLightColor = clNone
        Scroll.ScrollbarArrowColor = clNone
        Scroll.ScrollbarBaseColor = clNone
        Scroll.ScrollbarTrackColor = clNone
        Scroll.ScrollbarDarkshadowColor = clNone
        Scroll.ScrollbarFaceColor = clNone
        Scroll.ScrollbarHighlightColor = clNone
        Scroll.ScrollbarShadowColor = clNone
        SelectColor = clHighlight
        SelectFontColor = clHighlightText
        ShowColumnHeader = False
        ShowFooter = False
        ShowSelect = True
        SortSettings.Show = False
        SortSettings.Column = 0
        SortSettings.Direction = sdAscending
        SortSettings.InitSortDir = sdAscending
        StretchColumn = -1
        TabOrder = 39
        UseFullHeight = False
        UseFullWidth = False
        OnLinkClick = awgcritelicitadosLinkClick
        AsyncActiveRowMove = False
        AsyncEdit = False
        AsyncPaging = False
        AsyncSorting = False
        ActiveRow = 0
        AlwaysEdit = False
        TotalRows = 10
      end
      object lnkcloseinfo: TIWLink
        Left = 376
        Top = 6
        Width = 44
        Height = 17
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        Color = clNone
        Font.Color = clHotLight
        Font.FontName = 'Verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        ScriptEvents = <>
        DoSubmitValidation = False
        FriendlyName = 'lnkcloseinfo'
        OnClick = lnkcloseinfoClick
        TabOrder = 41
        RawText = False
        Caption = 'Close'
      end
    end
    object rgninfoelicited: TIWRegion
      Left = 825
      Top = 213
      Width = 464
      Height = 388
      Cursor = crAuto
      Visible = False
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clWebBLACK
      Color = clNone
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      OnCreate = rgninfoelicitedCreate
      Splitter = False
      object lblcritelicited: TIWLabel
        Left = 92
        Top = 5
        Width = 176
        Height = 18
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 11
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'lblwhatprefer'
        Caption = 'Information elicited'
        RawText = False
      end
      object awgcritelicited: TTIWAdvWebGrid
        Left = 90
        Top = 28
        Width = 359
        Height = 263
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        ActiveRowColor = clNone
        ActiveRowFontColor = clNone
        AdvanceOnReturn = False
        AutoEdit = False
        AutoHTMLAdapt = False
        Background.GradientDirection = gdHorizontal
        Background.Gradient1 = clNone
        Background.Gradient2 = clNone
        Background.Picture.Stretch = False
        Background.Picture.Frame = 0
        Bands.Active = False
        Bands.PrimaryColor = clInfoBk
        Bands.SecondaryColor = clWebWHITE
        Borders.Inner = ibAll
        Borders.Outer = obAll
        Borders.Padding = 0
        Borders.Spacing = 0
        Borders.Width = 1
        Borders.Collapsed = True
        Borders.Color = clNone
        Borders.ColorDark = clNone
        Borders.ColorLight = clNone
        CellComment.BorderColor = 14263350
        CellComment.Color = 15784080
        CellComment.DisplayType = dtMouseOver
        CellComment.Font.Color = 9330453
        CellComment.Font.Size = 10
        CellComment.Font.Style = []
        CheckTruePicture.Stretch = False
        CheckTruePicture.Frame = 0
        CheckFalsePicture.Stretch = False
        CheckFalsePicture.Frame = 0
        Color = clNone
        Columns = <
          item
            CheckTrue = 'true'
            CheckFalse = 'false'
            ColumnHeaderClick = False
            ColumnHeaderFont.Color = clNone
            ColumnHeaderFont.Size = 10
            ColumnHeaderFont.Style = []
            DefaultDynEdit = '0'
            DefaultDynText = '0'
            DetailFont.Color = clNone
            DetailFont.Size = 10
            DetailFont.Style = []
            Font.Color = clNone
            Font.Size = 10
            Font.Style = []
            FooterFormat = '%g'
            SpinEditMaxValue = 100
            SpinEditMinValue = 0
            Title = '<P align="center"><B><FONT face="Verdana">Cycle</FONT></B></P>'
            Width = 48
            SortFormat = sfAlphabetic
          end
          item
            CheckTrue = 'true'
            CheckFalse = 'false'
            ColumnHeaderClick = False
            ColumnHeaderFont.Color = clNone
            ColumnHeaderFont.Size = 10
            ColumnHeaderFont.Style = []
            DefaultDynEdit = '0'
            DefaultDynText = '0'
            DetailFont.Color = clNone
            DetailFont.Size = 10
            DetailFont.Style = []
            Font.Color = clNone
            Font.Size = 10
            Font.Style = []
            FooterFormat = '%g'
            SpinEditMaxValue = 100
            SpinEditMinValue = 0
            Title = 
              '<P align="center"><B><FONT face="Verdana">I<SUB>LO</SUB></FONT><' +
              '/B></P>'
            Width = 114
            SortFormat = sfAlphabetic
          end
          item
            CheckTrue = 'true'
            CheckFalse = 'false'
            ColumnHeaderClick = False
            ColumnHeaderFont.Color = clNone
            ColumnHeaderFont.Size = 10
            ColumnHeaderFont.Style = []
            DefaultDynEdit = '0'
            DefaultDynText = '0'
            DetailFont.Color = clNone
            DetailFont.Size = 10
            DetailFont.Style = []
            Font.Color = clNone
            Font.Size = 10
            Font.Style = []
            FooterFormat = '%g'
            SpinEditMaxValue = 100
            SpinEditMinValue = 0
            Title = 
              '<P align="center"><B><FONT face="Verdana">I<SUB>UP</SUB></FONT><' +
              '/B></P>'
            Width = 114
            SortFormat = sfAlphabetic
          end
          item
            CheckTrue = 'true'
            CheckFalse = 'false'
            ColumnHeaderClick = False
            ColumnHeaderFont.Color = clNone
            ColumnHeaderFont.Size = 10
            ColumnHeaderFont.Style = []
            DefaultDynEdit = '0'
            DefaultDynText = '0'
            DetailFont.Color = clNone
            DetailFont.Size = 10
            DetailFont.Style = []
            Font.Color = clNone
            Font.Size = 10
            Font.Style = []
            FooterFormat = '%g'
            SpinEditMaxValue = 100
            SpinEditMinValue = 0
            Title = '<P align="center"><B><FONT face="Verdana">Answer</FONT></B></P>'
            Width = 90
            SortFormat = sfAlphabetic
          end>
        ColumnHeaderColor = clWindow
        ColumnHeaderFont.Color = clNone
        ColumnHeaderFont.Enabled = False
        ColumnHeaderFont.Size = 10
        ColumnHeaderFont.Style = []
        ColumnHeaderBorders.Inner = ibAll
        ColumnHeaderBorders.Outer = obAll
        ColumnHeaderBorders.Padding = 0
        ColumnHeaderBorders.Spacing = 0
        ColumnHeaderBorders.Width = 1
        ColumnHeaderBorders.Collapsed = True
        ColumnHeaderBorders.Color = clNone
        ColumnHeaderBorders.ColorDark = clNone
        ColumnHeaderBorders.ColorLight = clNone
        ColumnSizing = False
        Controller.Alignment = taLeftJustify
        Controller.Borders.Inner = ibAll
        Controller.Borders.Outer = obAll
        Controller.Borders.Padding = 0
        Controller.Borders.Spacing = 0
        Controller.Borders.Width = 1
        Controller.Borders.Collapsed = True
        Controller.Borders.Color = clNone
        Controller.Borders.ColorDark = clNone
        Controller.Borders.ColorLight = clNone
        Controller.Color = clNone
        Controller.Font.Color = clNone
        Controller.Font.Size = 10
        Controller.Font.Style = []
        Controller.Gradient1 = clNone
        Controller.Gradient2 = clNone
        Controller.GradientDirection = gdHorizontal
        Controller.Height = 22
        Controller.MaxPages = 10
        Controller.Position = cpNone
        Controller.Pager = cpPrevNext
        Controller.PagerType = cptLink
        Controller.IndicatorFormat = '%d of %d'
        Controller.IndicatorType = itNone
        Controller.TextPrev = 'Prev'
        Controller.TextNext = 'Next'
        Controller.TextFirst = 'First'
        Controller.TextLast = 'Last'
        Controller.ImgPrev.Stretch = False
        Controller.ImgPrev.Frame = 0
        Controller.ImgNext.Stretch = False
        Controller.ImgNext.Frame = 0
        Controller.ImgFirst.Stretch = False
        Controller.ImgFirst.Frame = 0
        Controller.ImgLast.Stretch = False
        Controller.ImgLast.Frame = 0
        Controller.RowCountSelect = False
        Controller.HintFind = 'Find'
        Controller.ShowPagersAlways = False
        DateSeparator = '/'
        DateFormat = gdEU
        DecimalPoint = '.'
        DefaultColumnHeaderHeight = 22
        DefaultRowHeight = 22
        DetailRowHeight = 0
        DetailRowShow = dsNormal
        EditColor = clNone
        EditSelectAll = False
        FooterBorders.Inner = ibAll
        FooterBorders.Outer = obAll
        FooterBorders.Padding = 0
        FooterBorders.Spacing = 0
        FooterBorders.Width = 1
        FooterBorders.Collapsed = True
        FooterBorders.Color = clNone
        FooterBorders.ColorDark = clNone
        FooterBorders.ColorLight = clNone
        FooterColor = clBtnFace
        FooterFont.Color = clNone
        FooterFont.Size = 10
        FooterFont.Style = []
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.Size = 10
        Font.Style = []
        Glyphs.EditButton.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000707E4E4E4E4
          E4E4E4E4E4E4E4E4E4070707EDF609090909090909090909E4070707EDF60707
          0707070707070709E4070707EDF6F6090909090909090909E4070707EDFFF609
          0909095A09090909E4070707F5FF07070707075200070709E4070707F5FFFFF6
          F609095A00000709E407070707FFFFFFF6F6095AFB360007E407070707FF0707
          070707A4FB360007ED07070709FFFFFFFFF6F6F65BFB3600ED07070709FFFFFF
          FFFFF6F6ACFB36000707070709FF070707070707F652FB360007070709FFFFFF
          FFFFFFFF079A7F360007070709FFFFFFFFFFFFFF08EC51000200070709FFFFFF
          FFFFFFFF07EC9A0202410707090909090909090907E407838307}
        Glyphs.EditHint = 'Edit'
        Glyphs.PostButton.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0007070707071D
          1D1D1D1D1D0707070707070707271E1F2727271F1E1D1D07070707071E276FB7
          F6F6F6BF6F271E1D0707072727B7F6FFF6F6F6FFFFBF271E1D070727B7FFF6B7
          6FBF276FF6FFBF271D07276FF6FF6F27F6FF6F1F27F6FF6F1E1D27B7FFBF6FF6
          FFF6B7271F6FFFBF1F1D27B7FFB7BFFFAF6FF6672727F6F6271E67BFFFB76F6F
          2727B7B72727F6F6271E6F08FFB76F6F6F676FB72727F6F6271E67BFFFF66F6F
          6F6F676F6FB7FFB7271D076FF6FFBF6F6F6F6727B7F6F66F1E07076FF6F6FFF6
          B7B7B7BFFFFFB7271E070707AFF6FFFFFFFFFFFFF6B7271F07070707076FBFF6
          F6F6F6B76F272707070707070707076FAFAF6F67270707070707}
        Glyphs.PostHint = 'Post'
        Glyphs.CancelButton.Data = {
          36050000424D3605000000000000360400002800000010000000100000000100
          0800000000000001000000000000000000000001000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
          A6000020400000206000002080000020A0000020C0000020E000004000000040
          20000040400000406000004080000040A0000040C0000040E000006000000060
          20000060400000606000006080000060A0000060C0000060E000008000000080
          20000080400000806000008080000080A0000080C0000080E00000A0000000A0
          200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
          200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
          200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
          20004000400040006000400080004000A0004000C0004000E000402000004020
          20004020400040206000402080004020A0004020C0004020E000404000004040
          20004040400040406000404080004040A0004040C0004040E000406000004060
          20004060400040606000406080004060A0004060C0004060E000408000004080
          20004080400040806000408080004080A0004080C0004080E00040A0000040A0
          200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
          200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
          200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
          20008000400080006000800080008000A0008000C0008000E000802000008020
          20008020400080206000802080008020A0008020C0008020E000804000008040
          20008040400080406000804080008040A0008040C0008040E000806000008060
          20008060400080606000806080008060A0008060C0008060E000808000008080
          20008080400080806000808080008080A0008080C0008080E00080A0000080A0
          200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
          200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
          200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
          2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
          2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
          2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
          2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
          2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
          2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
          2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0007070707071D
          1D1D1D1D1D0707070707070707271E1F2727271F1E1D1D07070707071E276FB7
          F6F6F6BF6F271E1D0707072727B7F6FFF6F6F6FFFFBF271E1D070727B7FFF627
          27271F1FB7F6BF271D07276FF6FFB7B767272727B7B7FF6F1E1D27B7FFBF67B7
          F66767F6B727F6BF1F1D27B7FF6F6F67B7F6F6B72727BFF6271E67BFFF6F6F6F
          6FF6F66F2727B7F6271E6F08FF6F6F6FF6B7B7F66F27F6F6271E67BFFFF66FF6
          B76F6FB7F66FF6B7271D076FF6FFB7AF6F6F6F6FB7F6F66F1E07076FF6F6FFF6
          6F6F6FB7FFFFB7271E070707AFF6FFFFFFFFFFFFF6B7271F07070707076FBFF6
          F6F6F6B76F272707070707070707076FAFAF6F67270707070707}
        Glyphs.CancelHint = 'Cancel'
        Glyphs.SpinEditButtonDownImage.Stretch = False
        Glyphs.SpinEditButtonDownImage.Frame = 0
        Glyphs.SpinEditButtonUpImage.Stretch = False
        Glyphs.SpinEditButtonUpImage.Frame = 0
        HoverColor = clNone
        HoverFontColor = clNone
        HeaderStyle = hsRaised
        ID = 1
        Indicators.Browse.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888880888888888888888008888888888888800088888
          8888888800008888888888880000088888888888000000888888888800000008
          8888888800000088888888880000088888888888000088888888888800088888
          8888888800888888888888880888888888888888888888888888}
        Indicators.Insert.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888888888888888888888888088888
          8888888888088888888888800808008888888888800088888888888880008888
          8888888008080088888888888808888888888888880888888888888888888888
          8888888888888888888888888888888888888888888888888888}
        Indicators.Edit.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
          8888888888888888888888888888888888888880080088888888888880888888
          8888888880888888888888888088888888888888808888888888888880888888
          8888888880888888888888888088888888888888808888888888888880888888
          8888888008008888888888888888888888888888888888888888}
        MouseSelect = msNone
        Nodes.NodeOpen.Stretch = False
        Nodes.NodeOpen.Frame = 1
        Nodes.NodeOpen.Data = {
          424DBE0000000000000076000000280000000900000009000000010004000000
          000048000000120B0000120B0000100000001000000000000000000080000080
          00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
          000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000FFF
          FFFF000000000FFF0FFF000000000FFF0FFF000000000F00000F000000000FFF
          0FFF000000000FFF0FFF000000000FFFFFFF000000000000000000000000}
        Nodes.NodeClosed.Stretch = False
        Nodes.NodeClosed.Frame = 1
        Nodes.NodeClosed.Data = {
          424DBE0000000000000076000000280000000900000009000000010004000000
          000048000000120B0000120B0000100000001000000000000000000080000080
          00000080800080000000800080008080000080808000C0C0C0000000FF0000FF
          000000FFFF00FF000000FF00FF00FFFF0000FFFFFF0000000000000000000FFF
          FFFF000000000FFFFFFF000000000FFFFFFF000000000F00000F000000000FFF
          FFFF000000000FFFFFFF000000000FFFFFFF000000000000000000000000}
        NameOfDays.Strings = (
          'Sun'
          'Mon'
          'Tue'
          'Wed'
          'Thu'
          'Fri'
          'Sat')
        NameOfMonths.Strings = (
          'January'
          'February'
          'March'
          'April'
          'May'
          'June'
          'July'
          'August'
          'September'
          'October'
          'November'
          'December')
        OuterBorder.Show = False
        OuterBorder.Color = clWebBLACK
        Page = -1
        RowCount = 0
        RowHeader.Show = False
        RowHeader.Width = 22
        RowHeader.Borders.Inner = ibAll
        RowHeader.Borders.Outer = obAll
        RowHeader.Borders.Padding = 0
        RowHeader.Borders.Spacing = 0
        RowHeader.Borders.Width = 1
        RowHeader.Borders.Collapsed = True
        RowHeader.Borders.Color = clNone
        RowHeader.Borders.ColorDark = clNone
        RowHeader.Borders.ColorLight = clNone
        RowHeader.Color = clBtnFace
        RowHeader.Gradient1 = clNone
        RowHeader.Gradient2 = clNone
        RowHeader.GradientDirection = gdHorizontal
        Scroll.Style = scNever
        Scroll.Scrollbar3DLightColor = clNone
        Scroll.ScrollbarArrowColor = clNone
        Scroll.ScrollbarBaseColor = clNone
        Scroll.ScrollbarTrackColor = clNone
        Scroll.ScrollbarDarkshadowColor = clNone
        Scroll.ScrollbarFaceColor = clNone
        Scroll.ScrollbarHighlightColor = clNone
        Scroll.ScrollbarShadowColor = clNone
        SelectColor = clHighlight
        SelectFontColor = clHighlightText
        ShowColumnHeader = True
        ShowFooter = False
        ShowSelect = True
        SortSettings.Show = False
        SortSettings.Column = 0
        SortSettings.Direction = sdAscending
        SortSettings.InitSortDir = sdAscending
        StretchColumn = -1
        TabOrder = 38
        UseFullHeight = False
        UseFullWidth = False
        AsyncActiveRowMove = False
        AsyncEdit = False
        AsyncPaging = False
        AsyncSorting = False
        ActiveRow = 0
        AlwaysEdit = False
        TotalRows = 10
      end
    end
    object rgntextoslinear: TIWRegion
      Left = 65
      Top = 423
      Width = 328
      Height = 60
      Cursor = crAuto
      Visible = False
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clWebWHITE
      Color = clNone
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      OnCreate = rgntextoslinearCreate
      Splitter = False
      object lnkLinear: TIWLink
        Left = 27
        Top = 3
        Width = 201
        Height = 17
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        Color = clNone
        Font.Color = clNone
        Font.FontName = 'verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 11
        Font.Style = [fsUnderline]
        ScriptEvents = <>
        DoSubmitValidation = False
        FriendlyName = 'lnkLinear'
        OnClick = lnkLinearClick
        TabOrder = 30
        RawText = False
        Caption = 'Declare as a linear function '
      end
      object lblOr: TIWLabel
        Left = 3
        Top = 4
        Width = 19
        Height = 18
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 11
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'lblOr'
        Caption = 'Or'
        RawText = False
      end
      object TIWHelpdeclareLin: TTIWHelpTip
        Left = 226
        Top = 5
        Width = 16
        Height = 16
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1000
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BackgroundColor = clInfoBk
        BackgroundColorTo = clNone
        Filter = fiShadow
        Font.Color = clWebBLACK
        Font.Size = 10
        Font.Style = []
        GradientDirection = gdVertical
        HoverColor = clWebRED
        Image.Stretch = False
        Image.Frame = 1
        Image.Data = {
          FFD8FFE000104A46494600010101006000600000FFDB00430003020203020203
          03030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D
          0E110E0B0B1016101113141515150C0F171816141812141514FFDB0043010304
          0405040509050509140D0B0D1414141414141414141414141414141414141414
          141414141414141414141414141414141414141414141414141414141414FFC0
          0011080010000F03012200021101031101FFC4001F0000010501010101010100
          000000000000000102030405060708090A0BFFC400B510000201030302040305
          0504040000017D01020300041105122131410613516107227114328191A10823
          42B1C11552D1F02433627282090A161718191A25262728292A3435363738393A
          434445464748494A535455565758595A636465666768696A737475767778797A
          838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7
          B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1
          F2F3F4F5F6F7F8F9FAFFC4001F01000301010101010101010100000000000001
          02030405060708090A0BFFC400B5110002010204040304070504040001027700
          0102031104052131061241510761711322328108144291A1B1C109233352F015
          6272D10A162434E125F11718191A262728292A35363738393A43444546474849
          4A535455565758595A636465666768696A737475767778797A82838485868788
          898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4
          C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9
          FAFFDA000C03010002110311003F00FBBF55B5BFD7B458357BCF0D49AFEAB73A
          834496D717C20B6D3A2556259DB69F2D54A952555999B1D01C08BC21E378B43F
          87BA5F89347D15D341D4F74AF66594B5BB8253E4651B5D188055B8C8E7F88558
          D7AF174FF04F883C2DE27787CDBA32C50C97292AC17B14872CC5A2C1E72DB954
          823278C609D8BF867F897A5C5A7E8ED1E9FE15CF9325C445448DE5E0AAC68061
          5432A8E71C6EE06067A7A79187E67FFFD9}
        LinesHelp.Strings = (
          
            'By selecting this option, the value function takes a linear form' +
            ' and no elicitation is further required.'
          '')
        LinkColor = clWebBLACK
        Transparency = 100
      end
    end
    object rgnObrigatorios: TIWRegion
      Left = 801
      Top = 236
      Width = 417
      Height = 217
      Cursor = crAuto
      Visible = False
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clWebWHITE
      Color = clWindow
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
      object txtMsgObrigatorios: TIWText
        Left = 16
        Top = 3
        Width = 345
        Height = 83
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BGColor = clNone
        ConvertSpaces = False
        Font.Color = clNone
        Font.FontName = 'verdana'
        Font.Size = 11
        Font.Style = []
        FriendlyName = 'txtMsgObrigatorios'
        Lines.Strings = (
          
            'The information related to some criteria is not complete. The cr' +
            'iteria below shall be elicited:  ')
        RawText = False
        UseFrame = False
        WantReturns = True
      end
      object txtSemObrigatorios: TIWText
        Left = 20
        Top = 77
        Width = 330
        Height = 44
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BGColor = clNone
        ConvertSpaces = False
        Font.Color = clNone
        Font.FontName = 'verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 11
        Font.Style = []
        FriendlyName = 'txtSemObrigatorios'
        Lines.Strings = (
          
            'The required information for all criteria has been correctly inp' +
            'utted.')
        RawText = False
        UseFrame = False
        WantReturns = True
      end
      object grdObrigatorios: TIWGrid
        Left = 16
        Top = 64
        Width = 300
        Height = 150
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BorderColors.Color = clWebWHITE
        BorderColors.Light = clWebWHITE
        BorderColors.Dark = clWebWHITE
        BGColor = clWebWHITE
        BorderSize = 1
        BorderStyle = tfDefault
        CellPadding = 0
        CellSpacing = 0
        Font.Color = clNone
        Font.FontName = 'verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 11
        Font.Style = [fsBold]
        FrameBuffer = 40
        Lines = tlAll
        UseFrame = False
        UseSize = True
        FriendlyName = 'grdObrigatorios'
        ColumnCount = 1
        RowCount = 1
        ShowEmptyCells = True
        ShowInvisibleRows = True
        ScrollToCurrentRow = False
      end
    end
    object chrtRangeintra: TChart
      Left = 71
      Top = 308
      Width = 446
      Height = 80
      BackWall.Brush.Gradient.Direction = gdBottomTop
      BackWall.Brush.Gradient.EndColor = clWhite
      BackWall.Brush.Gradient.StartColor = 15395562
      BackWall.Brush.Gradient.Visible = True
      BackWall.Transparent = False
      Foot.Font.Color = clBlue
      Foot.Font.Name = 'Verdana'
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.MidColor = 15395562
      Gradient.StartColor = 15395562
      Gradient.SubGradient.Transparency = 52
      Gradient.Visible = True
      LeftWall.Color = 14745599
      Legend.Font.Name = 'Verdana'
      Legend.Shadow.Transparency = 0
      Legend.Visible = False
      RightWall.Color = 14745599
      Title.Font.Name = 'Verdana'
      Title.Text.Strings = (
        'TChart')
      BottomAxis.Axis.Color = 4210752
      BottomAxis.Grid.Color = 11119017
      BottomAxis.LabelsFormat.Font.Height = -9
      BottomAxis.LabelsFormat.Font.Name = 'Verdana'
      BottomAxis.TicksInner.Color = 11119017
      BottomAxis.Title.Font.Name = 'Verdana'
      DepthAxis.Axis.Color = 4210752
      DepthAxis.Grid.Color = 11119017
      DepthAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthAxis.TicksInner.Color = 11119017
      DepthAxis.Title.Font.Name = 'Verdana'
      DepthTopAxis.Axis.Color = 4210752
      DepthTopAxis.Grid.Color = 11119017
      DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthTopAxis.TicksInner.Color = 11119017
      DepthTopAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Axis.Color = 4210752
      LeftAxis.Grid.Color = 11119017
      LeftAxis.LabelsFormat.Font.Name = 'Verdana'
      LeftAxis.TicksInner.Color = 11119017
      LeftAxis.Title.Font.Name = 'Verdana'
      RightAxis.Axis.Color = 4210752
      RightAxis.Grid.Color = 11119017
      RightAxis.LabelsFormat.Font.Name = 'Verdana'
      RightAxis.TicksInner.Color = 11119017
      RightAxis.Title.Font.Name = 'Verdana'
      TopAxis.Axis.Color = 4210752
      TopAxis.Grid.Color = 11119017
      TopAxis.LabelsFormat.Font.Name = 'Verdana'
      TopAxis.TicksInner.Color = 11119017
      TopAxis.Title.Font.Name = 'Verdana'
      View3D = False
      TabOrder = 3
      Visible = False
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object Series1: THorizBarSeries
        BarBrush.Gradient.Direction = gdLeftRight
        Marks.Font.Name = 'Verdana'
        Marks.Visible = False
        BarWidthPercent = 50
        Dark3D = False
        Gradient.Direction = gdLeftRight
        GradientRelative = True
        MultiBar = mbNone
        XValues.Name = 'Bar'
        XValues.Order = loNone
        YValues.Name = 'Y'
        YValues.Order = loAscending
        Data = {
          000600000000000000001890400000000000408F400000000000729040000000
          0000E4914000000000007092400000000000D89340}
        Detail = {0000000000}
      end
      object Series2: THorizBarSeries
        BarBrush.Gradient.Direction = gdLeftRight
        Marks.Font.Name = 'Verdana'
        Marks.Visible = False
        BarStyle = bsArrow
        BarWidthPercent = 100
        Dark3D = False
        Gradient.Direction = gdLeftRight
        MultiBar = mbNone
        XValues.Name = 'Bar'
        XValues.Order = loNone
        YValues.Name = 'Y'
        YValues.Order = loAscending
      end
    end
    object IWRegion33: TIWRegion
      Left = 1
      Top = 112
      Width = 1343
      Height = 4
      Cursor = crAuto
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clWebWHITE
      Color = clScrollBar
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
    end
    object rgnlegendranges: TIWRegion
      Left = 66
      Top = 451
      Width = 295
      Height = 93
      Cursor = crAuto
      Visible = False
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsDotted
      BorderOptions.Color = clNone
      Color = clNone
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1001
      Splitter = False
      object TIWHTMLLabel1: TTIWHTMLLabel
        Left = 23
        Top = 31
        Width = 263
        Height = 62
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.Size = 10
        Font.Style = []
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        HTMLText = 
          '<FONT face="Verdana"><B>I<SUB>LO</SUB>:</B> Lower interval <BR><' +
          'B>I<SUB>UP</SUB>:</B> Upper interval <BR><B>Ind: </B> Indifferen' +
          'ce between intervals</FONT>'
      end
      object imglegend: TIWImage
        Left = 5
        Top = 31
        Width = 15
        Height = 15
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        StyleRenderOptions.RenderSize = False
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        Picture.Data = {
          0A544A504547496D616765A3020000FFD8FFE000104A46494600010101006000
          600000FFE100224578696600004D4D002A000000080001011200030000000100
          01000000000000FFDB0043000201010201010202020202020202030503030303
          030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
          0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108000F000F030122000211
          01031101FFC4001F000001050101010101010000000000000000010203040506
          0708090A0BFFC400B5100002010303020403050504040000017D010203000411
          05122131410613516107227114328191A1082342B1C11552D1F0243362728209
          0A161718191A25262728292A3435363738393A434445464748494A5354555657
          58595A636465666768696A737475767778797A838485868788898A9293949596
          9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
          D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
          0100030101010101010101010000000000000102030405060708090A0BFFC400
          B511000201020404030407050404000102770001020311040521310612415107
          61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
          1A262728292A35363738393A434445464748494A535455565758595A63646566
          6768696A737475767778797A82838485868788898A92939495969798999AA2A3
          A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
          D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
          3F00FAD3751BAA3A2BFC7FF687F75729FFD9}
        FriendlyName = 'imglegend'
        TransparentColor = clNone
        JpegOptions.CompressionQuality = 90
        JpegOptions.Performance = jpBestSpeed
        JpegOptions.ProgressiveEncoding = False
        JpegOptions.Smoothing = True
        OutputType = ioJPEG
      end
      object IWImage1: TIWImage
        Left = 5
        Top = 52
        Width = 15
        Height = 15
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = False
        StyleRenderOptions.RenderSize = False
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = False
        Picture.Data = {
          0A544A504547496D616765A4020000FFD8FFE000104A46494600010101006000
          600000FFE100224578696600004D4D002A000000080001011200030000000100
          01000000000000FFDB0043000201010201010202020202020202030503030303
          030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C
          0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108000F000F030122000211
          01031101FFC4001F000001050101010101010000000000000000010203040506
          0708090A0BFFC400B5100002010303020403050504040000017D010203000411
          05122131410613516107227114328191A1082342B1C11552D1F0243362728209
          0A161718191A25262728292A3435363738393A434445464748494A5354555657
          58595A636465666768696A737475767778797A838485868788898A9293949596
          9798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2
          D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F
          0100030101010101010101010000000000000102030405060708090A0BFFC400
          B511000201020404030407050404000102770001020311040521310612415107
          61711322328108144291A1B1C109233352F0156272D10A162434E125F1171819
          1A262728292A35363738393A434445464748494A535455565758595A63646566
          6768696A737475767778797A82838485868788898A92939495969798999AA2A3
          A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8
          D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C0301000211031100
          3F00FC76DC2937D368AFF7DB94FCAE313FFFD9}
        FriendlyName = 'IWImage1'
        TransparentColor = clNone
        JpegOptions.CompressionQuality = 90
        JpegOptions.Performance = jpBestSpeed
        JpegOptions.ProgressiveEncoding = False
        JpegOptions.Smoothing = True
        OutputType = ioJPEG
      end
      object lbllegendranges: TIWLabel
        Left = 7
        Top = 3
        Width = 58
        Height = 16
        Cursor = crAuto
        Visible = False
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'lbllegendranges'
        Caption = 'Legend'
        RawText = False
      end
    end
    object IWRegion1: TIWRegion
      Left = 1
      Top = 569
      Width = 1343
      Height = 4
      Cursor = crAuto
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clWebWHITE
      Color = clScrollBar
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
    end
    object rgnConfirmStopElic: TIWRegion
      Left = 483
      Top = 240
      Width = 529
      Height = 175
      Cursor = crAuto
      Visible = False
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clWebBLACK
      Color = clWindow
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1005
      Splitter = False
      object IWLabel48: TIWLabel
        Left = 8
        Top = 15
        Width = 130
        Height = 14
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 9
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'lblCademail'
        Caption = 'FU-T3MMM-WF1a'
        RawText = False
      end
      object btnGoInter: TIWButton
        Left = 410
        Top = 131
        Width = 100
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Caption = 'Confirm'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        FriendlyName = 'IWButton9'
        ScriptEvents = <>
        TabOrder = 19
        OnClick = btnGoInterClick
      end
      object btnConfNao: TIWButton
        Left = 16
        Top = 131
        Width = 100
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Caption = 'Cancel'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 10
        Font.Style = [fsBold]
        FriendlyName = 'IWButton9'
        ScriptEvents = <>
        TabOrder = 21
        OnClick = btnConfNaoClick
      end
      object txtInfostopelic: TIWText
        AlignWithMargins = True
        Left = 16
        Top = 58
        Width = 510
        Height = 58
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BGColor = clNone
        ConvertSpaces = False
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'IWText1'
        Lines.Strings = (
          
            'If you leave this page, you will be directed to the intercriteri' +
            'a evaluation. The criteria have been declared linear. '
          'Are you sure you want to declare linearity for all criteria?')
        RawText = False
        UseFrame = False
        WantReturns = True
      end
      object IWImage4: TIWImage
        Left = 395
        Top = 11
        Width = 126
        Height = 38
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = True
        Picture.Data = {
          0A544A504547496D616765DC810000FFD8FFE000104A46494600010101006000
          600000FFE128344578696600004D4D002A000000080006000B00020000002600
          0008620112000300000001000100000131000200000026000008880132000200
          000014000008AE8769000400000001000008C2EA1C00070000080C0000005600
          0011461CEA000000080000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000057696E646F77732050686F746F20456469
          746F722031302E302E31303031312E31363338340057696E646F77732050686F
          746F20456469746F722031302E302E31303031312E313633383400323032313A
          30323A32332031303A35353A343200000690030002000000140000111C900400
          0200000014000011309291000200000003303000009292000200000003303000
          00A00100030000000100010000EA1C00070000080C00000910000000001CEA00
          0000080000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000323032313A30323A32302032333A30323A343800323032
          313A30323A32302032333A30323A343800000000060103000300000001000600
          00011A00050000000100001194011B0005000000010000119C01280003000000
          01000200000201000400000001000011A4020200040000000100001687000000
          0000000060000000010000006000000001FFD8FFDB0043000806060706050807
          07070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E272022
          2C231C1C2837292C30313434341F27393D38323C2E333432FFDB004301090909
          0C0B0C180D0D1832211C21323232323232323232323232323232323232323232
          3232323232323232323232323232323232323232323232323232323232FFC000
          11080058010003012100021101031101FFC4001F000001050101010101010000
          0000000000000102030405060708090A0BFFC400B51000020103030204030505
          04040000017D01020300041105122131410613516107227114328191A1082342
          B1C11552D1F02433627282090A161718191A25262728292A3435363738393A43
          4445464748494A535455565758595A636465666768696A737475767778797A83
          8485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8
          B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2
          F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102
          030405060708090A0BFFC400B511000201020404030407050404000102770001
          02031104052131061241510761711322328108144291A1B1C109233352F01562
          72D10A162434E125F11718191A262728292A35363738393A434445464748494A
          535455565758595A636465666768696A737475767778797A8283848586878889
          8A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5
          C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FA
          FFDA000C03010002110311003F00F7EA2900514C028A401463EB4C031450018A
          31400629680131462800C51400628A401F851400514C028C52003C567EADACD9
          E8B64D757928445E83BB1F415518B93B20B9E1BE2AF155DF896F373931DAC67F
          75083C7D4FBD743F0D111F4BD7F728388C6091D3835EACA1ECE8D919DF533FEC
          D6BFF0A6E5BAF26233099879BB46EFBDEB5A5E230A7E15F875C01FEBEDCE47D6
          B2536EDEA3EA7B0515E71614868010B00327802B0B52F18E85A5314B9D422F30
          758D0EE6FD2AE1094DD905EC647FC2CDD159B11C57720F5588D6AD878BF4DBF6
          0A04F0E7BCD1ED1F99AD2542490AE6CCB750C16CD71248044ABB8B76C7AD638F
          19E818CFF68478FA1FF0ACE3072D8771F1F8BF4494E23BC0E7FD8463FC85586F
          116971AEE92E9631FEDE47E9D69BA5215CB76B7F6B7A9BEDAE23947FB2DD2ACE
          6B369A7A8C5A6E6802B5CEA56969C4F7088DFDD279FCAA99F1269BDA566FA21A
          B506C0726BF65236D43231F64356ADF5082E6431C6D9603247A50E0D00DB9D4A
          0B59447213B88CF02A31ACDA9E85BF2A5CAC572CDBDDC7720F979E3D4530EA10
          ABB29CE41C1A5CBA8C517D11E9BBF2A7ADD230C8071EB4F94451D67573A6E972
          DDC36B2DD3A0F963886493FE15E13AEEBB7DAF5E34F79213B4E1631C04FC2BB7
          0505CDCCC99331DBA5777F0D75AD2F491A9AEA975140936C0A24070C06735D98
          94DD376263B9D97FC24BE045D3CD8FDB2CBECA4E4C5B0EDCFE55CC78FBC45E1E
          D43C3965A7E8F790C8D15DC4CB14608C286FA579F4A9D4E6468CF5DA2B906155
          350BE834EB296EAE1B6C5129663D69A5776407906B7E3ED675A92582CAC1A3B1
          63850C08761EF5871AEAC0645A59C00F3968941FCCD7AF4A92A71336C93CCD45
          47EF7568A15F44718FD053365B1CB4FAACB21EFE5AB1FE66AE5B08F6493CBFF8
          41C70CF1FD89783C1236D792457D12AAF91636C871C12BBDBF5AE4C325ADCA65
          D49754B800219554F1F22EC5A5165B0FFA45CC49EA376F3F90ADDD845AB69EDE
          CA5596D9EE5E55E8C1BCB1FA735DCF877C57FDA327D96F02A5C1FB8C3A38F4FA
          D72D7A77D50D33AA078AE63C4BAE496AC2CACDF6CC466471D507A0F7AE5A71E6
          958B3985B594E649888F71C9695B927F99A9D0DB20180D337BFCABF97535DB64
          9124A6791D7692153FB88368ADCF0D63ED3363FB82B2ABF08225D66367BE5207
          1B0649E055351127FD346F6E0544761B3674876712671EC00AAB2A937520033F
          31ACFED012A2AAFDE393E82A5049FF000A770254AE5BC5BE08B5D7207BAB4458
          7505190C07127B1FF1AAA755C240D5D1E33710C96D3C904F198E58D8ABA9EAA6
          BAAF879E1CB0D7B51BA9B528C496F6880F96C70189CF5F61835EA569FEE9C919
          ADCE87C53E19F0C6ABE19BBD53418ED926B304EFB60003B7A8205791467F7F11
          1C7CCA7AFBD46124DC1DFA0DEE7D614B5E39A086BC6BE2878A6E1F584D22CA77
          8E3B701A6287EF31E83F0AE8C2C39AA0A5B1C421D4EE875BB973E99AB0BA55F3
          11E647B73FF3D1C57B0DA466745A7780759BD8D64548D232386357A6F006A169
          1979229671E916335C93C4C761D8F45947D9FC17B5A33F2598051FAFDD0306BC
          8E2D4264188922871FDC4E6B2C2EB76390A679A638795DB3D8B55EB9D2EFAC14
          35CDAC9129FE2C71F9D6F2928BB3104104B31C471BB9F61C55D8AD9A175792E2
          38181C8C1CB03F854C9A6AC08F4CD17524D4F4D49958B32FCAF918391DEB86BC
          D42796FAE24056362E794183D71D6B8E8C6D265742BAF2DB8924FA9E6B4B4FD3
          67D437791B3E4EBB8D6D2928A11A89E1BBDC8DC6303EB9AD7D2B4C7B09DCB721
          971BB3FD2B9E7539914914F5CCFDB9076D9D3F13546352C70A327DAAA1B21336
          F4B022594BB28E99E7A557925DF2BEC23692718EF59DBDE631CA6B3E7F12E976
          5A89D3EEAE3CA9D71F787CBCFBD5462DEC06E44CAE8191832919041C8356179A
          CA433CBFE2AE80B11875CB740031115C63B9FE13FD3F2A87E14885FF00B6A19A
          45449111492D8CFDEAEF4F9B0C47DA3B4D33C2FA0E93A35E6976F3E2DEEF3E60
          330CF231C579FF008E7C1BA0787B404BDD2DD8DC7DA224C19B7705B9ACA8549A
          9DADB83B1ED54B5C6591CADB22663D0026BE6CD47C437F79AB5E5C2CCA82499C
          82A8B923381DBD00AEFC02BC9B2645537D79272D7531CF60C457A3FC33F0B457
          C8FADDFA798AAE52DD64E4123AB7E7C7E15D58A972532627ABAA855C01803A53
          B15E36E69633B5D42FA1DEA0C64C4C064D78B2D8AC6333DEDBC67FBAAC6427F2
          AEEC23F75912278FEC11B0CFDA6739F6415ED6618A7B6D92C6ACAC3953CD4E29
          B4D31C4F31F11DB4DA6EB32DB991BC9237C633C053FE159883FF00AF5D14DA71
          4C4CEC3C0F738B9B9B6CF0CA1C0FD2A86A5A6B5AEA77092CB14485F7296392CA
          4F50A39AE7BF2D4687D0890DAC7D16498FAB9D8BF975A9E2BD9E260627108073
          88C607E3EB56E3742474361E243F2C77AA07FD345E9F8D744AC194329CA91904
          571CE1CACB30B5AF2C5EA17DCC767DD1C0EA7BD511231181855F45AD62B424E7
          7C6177716F696F14333C71CBBB78538CE2BA2D23FE41167FF5C573F956928DA2
          981A495E57E3903FE12BB807FB89FCAAF0BF1EA296C741F0D35A92492E3479E4
          2CAA9E6DBEE3C81FC4BFC8D7A42D615E3CB368A5B191E31B11A8F84353B7C0DD
          E433AE7FBCA370FE55E47E08F0DD9F89A3D45AE669E3FB3C6AE9E53EDCE73D7F
          2AD70F3E5A5225EE50B4F0CC97BE0FBED7FF00B424516B2327938CEEC1C75FC6
          B982CD95259BAE7926BBE8CA33BB5D0967D634B5E19A95EF14B594CABD4A103F
          2AF99974C11713DEDB4641E46FDD8FCABD1C03DC891325BE9A83F797EEFF00F5
          C6227F9D7B8FC3C7B77F05580B66631AEF196EB9DED9CD563B58A144EA68AF30
          D0CED786742BDFFAE2DFCABC293031D0577E0FE16448B30C6F21C468CC73FC2B
          5EF317FAA5FA54E33A0E2713E3A4B637D68F34ACADB186D55C92335CC2CD6D19
          FDD5AEE3D9A66CFE838AAA2AF013DCE93C237534DACEC660231193B1542A8AEA
          358D160D5A35DE764C9F7240391EC7DAB0AAF96A14B6390BAD1AFAC25DAF1175
          ECE8320D316054E659514FF757E66ADA33525A124E92C49FEAA2E7FBD273FA54
          D2F882F74CD39DA25594EEE0BF44A4E1CC3B95B4DD46EB54864B8BB937C9BC81
          81800569250E3CBA0CE6BC6DFEA6CFEAD5D3E8DFF207B2FF00AE2BFCA9CFF868
          9EA69A579678EBFE46AB8FF717F953C36B3B04B617E1F863E33B62A3A4326EFA
          63FF00D55ECC9D6B3C57F10A8EC41ABBAA6897CEE4055B790927FDD35E5BF07C
          2E7558E560A1A1894E4E3FBD4A95FD94BE427B9DADAF84345B4F0E5DE871CF27
          D96E5CBC84CBF3649CF06B80F1DF81B43F0EF86CDFE9D2CCD70268D3E79B70C1
          3CF15546ACD4AD6DC4ECCF6BA5AE32C63A8642A7BF15F32F8834F3A5789751B2
          650364EC5401FC24E47E86BBF2F9252699332BC16F3CDFEAE191FF00DD535E85
          F0FB58BCD02592D2F612961336E2CEC0794DEBF43C5766262A70691313D62DB5
          0B5BB88496F711CA87A15606A679A345DCF22A8EE4902BC5E468B296AAE92687
          74E30F1B42C460F518AF164BD8D1008ACE14F76F9ABB7069D993224FB75D3702
          62AA4FDD5E2BDA5EF60B4B259AE265440A0924FB52C545BB0E27986B9AB1D6B5
          769D01F2D46D89719E077A8A2B2B823263F2D7FBD290A3F5ADA0B962913D4EBF
          C1B66B09B9BA69A36180995CE07AF35BD73AFE9B6B90F72AEC3F863F98FE95C5
          522E732D1897BE31565296B685C1E33274FCAB01659257691E358F71FBA83815
          AD3A7CA8572C274A8F50C7F66CD9E98AD168D0991F873FE3C5FF00EBA1ADD4A5
          3DD8D1CDF8D47FA3D9FD5ABA5D17FE40D65FF5C57F9513FE1A1753512BCD7C67
          A7DE5CF8A6536F6934A191402AB91D3D6950972CEE0CEABC0FE179344864BCBD
          005ECE00D9D7CB5F4FAD768958D69F349B291CCFC45D496C3C1B789BB125C810
          20CF3CF5FD335E5DE0DF0BBF89A7BC896FA5B4F2150E63FE2CE7AFE55D341F2D
          17225EE75A7E12391FF21FBBAE1BC67E0FD53C2DE5BDC5CB5D59CCDB565C9E1B
          D08F5F4ABA5888CA493416D0FA2E96BCC2C69AF35F89DA4DE451A6B7A6C71EE4
          1B6E488959F6F66C9F4ADF0F2E5A9714B63CADB51BE9FF00D65DCCD9F46C7F2A
          4DC5CFCEC58FFB4735ED591916ADEE2683FD4CF2463FD8722AC9BDBA986D7BA9
          9C7A1909CD652A701DCF6BB3467F024281496362063DF6D793269D32FF00AD92
          0871D77C8323F019AE4C369CC8A913AC3631FDFBC794FA411E07E6D56BED96FB
          405B66908E86794B0FC856AD5F7121EB7F7382B1B2C4BD844A17F51CD202F23F
          24B31EE69343355374702C5BDB68E719E33507F19E3BD6692BDC0993DAA75A18
          13AD50D66E42402D81CB31CB7B0A229B60C9FC39FF001E527FD7435BA9DAA27B
          B1A39CF1AFFC7B5A7D5ABA4D13FE40B67FF5C57F9513FE1A046A254E95CCDD86
          4E9536E08A59880A06493D054343B9E27F103C48BAF6AE20B66CD9DA65508FE3
          6EEDFD2B9DD2E4D663925FEC63781881E67D9B3D39C671F8D7B14A9C634AD232
          6F5341A5F1C9E875C3F40F5DA78C1AFDBE0EC4DAE0FF00898661DDBBAEEDE3AF
          BE335CF5BD9F34790A573D4A8AF30B1370F51514DE4C91B472ED64618653C822
          9EBBA06796F887E1A5B89E5BCD2E72222371B651939FF67FC2B899EDED34E731
          DC595E870707CDF92BD6A15F9A36666D02DF5B2FFABB0871EB2316353AEA976E
          76421133D1628C66B795AC23D362D46ECF84A34762A45A61811CFDDAF328F040
          3827DC8AE5A1CAAE532C2FE3F954E9F43F956CE6845D82D67948DB19C7A91815
          AB6F6AB6E324EE73DFD2B194D00F6355F3F39A4A4809908EF5279C883E66A972
          43219F522AB881093FDE22B25FCC766660C493C923AD5C5A5A8337FC3BF2D9C8
          0823F787A8ADC523D6B09BD468E7BC6419EDAD3602C416CE066BA0D1085D16CC
          370444320F5A727FBB408D5464FEFAD4CB246179917F3AE7632ADEF8834ED394
          996666603EEC6858D79EF89FC63AAEB11BDA58DA5C5B5A370C769DCE3FA0ADA8
          C22E576267126C2EFB5A4FFF007ECD747E0DD6AE7C2B71772C9A5DD4E2755501
          508C633FE35DF59C650E5211D71F8A328CE3C397C4FF00BB5C478CBC49AEF8B3
          CB85B4CB8B7B389B7AC2B1B12CDD8938AE6A542119DDB29BEC7D01DAB9EFF84A
          AD16F2E629EDEE21B780126E9D7F76D838E3BF7AF3E31B9772DAEB9A5BDAFDA4
          5CA18C2863EB823238FA5564F13E8520836DDC644F9F2CE0E0E3AD52830B9359
          EB7A45F59DC5DC1323C36F9F35B69F97033559F57D02FD2D7CC54985CB158C18
          B3C83839F4A69493D00CEBDB7D12DB5B4B26D055A33B77DC2A8DAA4F404558B7
          D43C33084686D95774BE52916E724F1CF4E9CF5ABE69B5B8AC8BF0EB1A3DCC8F
          082BC398FE68C80C467201EFD0D4135FF87ADADDA668632ABD921C93DBA01529
          4AE0496D7DA15CC6AD1451E1B6E330E31B86476F6A54D47423BCA885760C9CC7
          8E98F6F7147BE02C5ABE9324FE488CA7EF7CA46784AABB609C29C73C0355E5F1
          2E8D13CCA6DEE0F94A18B2DA310D9E98E39EB45A5702C3EB1A626990DF8B695E
          298ED444B725F3E9B7AD4F06A1A65C4D1451AA79921750A63C1CAE3703F4C8A9
          B4AC06743ADA3EAD756EFA7C0B696E48332CAACF9071CC78C8CF6A56F12E9610
          BAD8DD3A893CB056D18827D8E3A5572B026835DD2E698466D9E20D27948F241B
          55DB04F07BF0A694EBBA418CBA47BF1009C058792A7A6295A403E5D62D20D263
          BF1633E2560AB0AC1FBC24FF00B3458EB767A86A0D6B6F6B2B0540E65F2B0832
          01C67D79A56760196FADD9CCE629E1449B2C5500CE5436DCD55FF84AECD1A251
          A6DDFEF18803C9FE1040DDF4E6AB91BD02E4B1F8A74E7B89239209220B218D5D
          D386C6791EDC54BFF09169E60F3238647FDCF9CAA139604E001EF9A1C1A0B95F
          FB620926B3BA9239AD95A09646B59211B8EDC6727D7D2A7B5D6EDE7D26E6FDF4
          F960FB3FDE8A4550C7FA77A2CD2012EF52B83A35B5CD9D8C49737322A24771D1
          7209E48FA555B6F1267CA8AE34D3E78899E7F2CAED42A4838CF24647EA29A4DF
          502497C4F0DBE9E2E67D3278A42702190A29C9381C938FD6897585B6BABA9CC7
          732EDB78996D42A81966C614F73923BD2E562B9D31E95C4DCE97AFBC7A8E9E96
          F08B36CBC522CD86918B03FF0001A983B1562CC5A15F4B7D6BA8BA0B7B8C225C
          47E66FDC8AA7033DC863D7DE9B3F86AF66FB3B79847949B5A257C2BF5EBF4AD1
          5448562C5B69FAACFA46A315DDBC30CF2C7E5C41640C1B0B80491D2ABC1A66B2
          B7DA7DEC96B08915984C8B360202001FEF1C0CD2538EA162C6A5A66AD71AF6E8
          12DFEC126C32C8EDF382B9E00ACA3E1DD65EC6CE0F221492DAE0B24A2E5B72A9
          2093EFFEED119C520B1327867519AD67B499618D44CF3413AC84B0639C1C76FA
          55993C3FA943134D0490CB38313AC6E4852CA3E6E7B64F34DD54D8588E2D0758
          F2E581DADA349ED8069518968E51D31EDEF525CF849EE65667750A1832ED2464
          60707DB228F68930B119F0C5F4CB716D37D9E385E632C72A3B1915B040619E01
          07D2AD3E87A9269EAB0496EF7490C483CCC85628727A74068751361612EF43D4
          67D06DADC7D91AF23984CCAECE23CE73D47353D9F874DB6B5FDA8CE3CC7DDBD0
          31DABBB192A0FAE39A8E7560B148F866FE4F115D6A120D3123914AA4B0425677
          071C487A10314BA67862F2CE5BB676B58D65B85955202F8E3A9218E013EDC552
          A816087C2B3C89736D78F6E2D9EE1A78DA02C24C9CF249E87E9C5249E15BB311
          F2EEE2C791E47D9DD730EDED91D73F8D35550589E1D0352B4F0D5BD9DBDC5BFD
          B2093CC467DCD1AF5E3D71CD3B48D06F74BD5E5B8F3ADDEDE68D048769F30B01
          F96339351CE1611FC2ED2346ED721648A532A3A8E465B38FA5472785AEA1167F
          D9F730C6235649848ACDB8330248F7AA556C16107832026712B831CF27992632
          093CF4F41CD13F861E3DD731DF3218A2DAB19FF5600E471F5147B5B8588ADB43
          B9D6EDED752B9D45CCE61DB84188CE739F97BF5FD2AFC3A1DEB6917B6B797714
          B3DCF01D62C281800719E7A5273E83B0B3E8BA84DA0DBDA25FC515E40E1D2758
          46D04647DDFA1AA71F852EA29A275D451B3034770CF002D233124907F8724F4F
          6A14EC26892E7C337D79A634171A9C525C32ED323DB2B26DCF4D878A24F09B31
          6963D4254B83184C91941B71B7099C0E47E34D540B1FFFD900FFE131E4687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F78706163
          6B657420626567696E3D27EFBBBF272069643D2757354D304D7043656869487A
          7265537A4E54637A6B633964273F3E0D0A3C783A786D706D65746120786D6C6E
          733A783D2261646F62653A6E733A6D6574612F223E3C7264663A52444620786D
          6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F
          30322F32322D7264662D73796E7461782D6E7323223E3C7264663A4465736372
          697074696F6E207264663A61626F75743D22757569643A66616635626464352D
          626133642D313164612D616433312D6433336437353138326631622220786D6C
          6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F223E3C786D703A43726561746F72546F6F6C3E57696E646F77732050
          686F746F20456469746F722031302E302E31303031312E31363338343C2F786D
          703A43726561746F72546F6F6C3E3C786D703A437265617465446174653E3230
          32312D30322D32305432333A30323A34383C2F786D703A437265617465446174
          653E3C2F7264663A4465736372697074696F6E3E3C2F7264663A5244463E3C2F
          783A786D706D6574613E0D0A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020203C3F787061636B657420656E643D2777273F3EFF
          DB0043000302020302020303030304030304050805050404050A070706080C0A
          0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F1718161418
          12141514FFDB00430103040405040509050509140D0B0D141414141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          141414141414141414FFC0001108005C010C03012200021101031101FFC4001F
          0000010501010101010100000000000000000102030405060708090A0BFFC400
          B5100002010303020403050504040000017D0102030004110512213141061351
          6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
          2728292A3435363738393A434445464748494A535455565758595A6364656667
          68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
          A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
          E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
          010101010000000000000102030405060708090A0BFFC400B511000201020404
          0304070504040001027700010203110405213106124151076171132232810814
          4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
          3738393A434445464748494A535455565758595A636465666768696A73747576
          7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
          B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
          E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD50C7E14B8F
          7A5ED452013F1A3F1A5A1B81400DA39F5A4DDF9567EB1E23D33C3F6CD71A95FD
          BD842067CCB89020FCCF5FC29C62E4EC80D2FC6931EE6BC8356FDAD3E1668F31
          8A6F16DA3BAF07CADCD8FD2A5D1FF6ACF861AE4AB1DAF89E12EC70018DFAFE00
          D6FF0057AB6BF2BFB8399773D6B1EF463DEAA69DAADB6AD6B1DCDA4E9710C832
          AE9C822B2F55F1EF87B43BD6B3D435BB0B3B95019A1B8B944700F43827359284
          9BB25A8CDF2A08C6680BEFFA572C7E2978401FF919B4AFFC0B4FF1A7DB7C4DF0
          ADF4863B5F1169B7520FE186EE373F90355ECA7DBF015D1D3ED146D15950F8AB
          49B8B85B78B53B47B86191089D7791FEEE73FA569ABF239E2B37171DD00EDA28
          D8297348C485E3AD001B3DE8DBEF4CF308E4E7154752F12699A3806FAFEDAD01
          E9E7CAA99FCCD349BD80D1DBEF4857DEB9A7F899E18538FEDBB327FD99030FD2
          963F891E1D9A411C5AA432484E02AE727E831CFE14FD9CBB05CE931ED4B8F6AA
          163AE59EA52BC76F7092C91805D14FCC99E991DAABEA1E2CD3349BA16F777490
          CB8CED6CFF00852E577B0AE6BE28E7DEB097C73A2B0C8BD8FF005ABDA76BD65A
          B3B25ACEB2328C95E7228E56B563B97FF3A3EF7159B3F88EC6DAE1E1926DB227
          518A17C4960DD271F91A395BE82B9A3B3F1A31ED54A3D72D2460164CE7A7145E
          6B36B6B693CB2CA152342CFC1240039381D6972B1DC9E5B848A36773840092ED
          C0007526BE27FDAA3F6C2332DDF847C057592C3CABED6E13C2F631C27BFF00BD
          F5C7A8E3FF00690FDAE353F88925F7877C31E7E8FE1F57314F2C8A63BABA0382
          18120C687D3A906BE629140F94670BD07F9EF5F6395E53CC9622B7C91CD52A74
          46FF00C278D7FE16C78315FF00788DABDAAB07C36EFDE01C93C9CE4F5F5AFB0F
          C7FE17D2754FDBD7C1FA65EE9B6979612F87A776B59ADD5A32407C31523B1C57
          C71F0BEEA2B3F8A5E109E69520822D5ED9E49A56DAA8A2552589EC00C9AFD38B
          C93E12DF78FAC3C6B77AAF86DBC4B676EF6B06A2FA845E6471B677283BBA104D
          7466F3951A91E44EDCAD684D34E47CC7FB3BE9767A6FEDD9F11F4EB5B386DAD6
          0B49152DE38C2AC6A3C9C0031C727F5AF1CF113A5AFC54F8988178FF008496E0
          80188C7EEE2F4AFBC74583E09F867C71A878CF4ED4FC2D67E23D454ADD6A31EA
          3087901C64121F1FC23F2AFCFDF166A96D75F153E235C5ACF1DD5B4FE219E48A
          681D5D1D4C7172181C1158E0EB4ABD673717B245DB951FAD5FC34B4DFE1A757C
          61D025472C9B63248CFAFA539BDEBE6EFDB53F682B9F831E06B3B1D11E2FF84A
          35B90C36DE626F5861520CB211C740428F771E95B50A52C45454E3BB13765739
          9F8EDFB76E8BE07D7EEBC37E15B6FF00848B50B7DF1DEDE4130115AC838DA1B9
          DCC0F503A57C97AF7C4CBDF885A9BDDEA3E1ABAF11DCC87AEA5773C8A3BFCA8A
          02815C643F127588B0234D2EC541E1EDF4E8D18FB92771CFBF7C9CFB5B8FE217
          8AAFA3F2C6BBA94884E365B1DA3E9F201C57E8B85CB6961A2ACBDE38E536D9DB
          69CBE288403A7781F4FD323FEF49641D7F376AD62DE379B6F9FACE95A3A77F2A
          E20842FD5501AE174DF0DF8B35E9479361AD6A2EFDC994FE84F4AEBE2F807E34
          B7845C5EE86DA6C079692E01242F7242824FD2B794A9C7E29224FAB3F626F3BC
          BF172DC788E1F1049BEDB2B13B3F958120C1CF1CE3B0ED5E6DFB537FC23B6FF1
          B2FDAFEDB50BCBB3636E7C9B79D618C2E5F073F7B93FCABBDFD86F458F4393C6
          70FF0069437B3EEB4324691488623897EF6EEBEBC570BFB56DD6896FF1AAEDEE
          B4DBBBFBAFB1400E2EBCB8971B8FDD0339C30EFDEBE5A8A8BC7CADAA3A1DD44F
          2D8FC45A659B66D3C37A741E925E969E51EFF31C7E95B963AD78B3C43088ECBE
          D8D00E8BA7DB8863C7A12B807F1358F6FE306B35C699A4E99A585E77C36E2490
          E3B92F9C9A92E3C45AB6A8AE2EEFEEE581705D77B08D79FBC42FCA3A57BF28A4
          B546773721F0ADC5BC8D36A5A959E96DD4F9B3F9B3FD4A479FE75EABE01F8F57
          3F0FF16CFA8EA1E28B2E06CBA55458D7232D193B9CF1FC24E3D057865AA838C0
          CE3AEEC020FA67D71CF5F4AD5B5569A4F2A3DD2C8C7216319393DF033CD7256C
          3D3AD1E5902933F423C27E2ED37C65A2DB6A7A54E2E2D2619CF428DCE5587660
          4723FF00AD5B4EDF29AF91BE06EBFABFC3BF112C9A8AA697E1FD41825CC77F20
          8887E88E887E6CFDDCF1D09CF623E95F885E22FF008467C17AB6A5B5D8C309DA
          2338392768C1FA9AF8EC461DD2ABECD753A232BA3C7FE2D7C6BBA4D52EB46F0F
          DCADADBDB9F2AEF5052BB8BF78D09E983819EB9C8E319AF36B3D1B50D407DB64
          8E458DBEF5EDF4BB15BDF7B619BFF1EAA76BAF7D8B68D36C6DEC1F9C5C499B9B
          807B9F324C85CE4E703BFE34AD7335F4C65BBB89AEE5FEFCD21723F3CD7BF4A8
          46945248CDC8E861874BB1E1A7935275EB1DB03145F8BB0DC7F01571758B8F2C
          C76E12C206EB1DA82A4FD58E58FE754B48F0DEADAA5BA4D65A65DDD5B9E0490C
          2C57DC03EBF41EBCD6ED97817C453C8A8347BC4C8C069632807D735329C23A5D
          06A7A1FC0D51FF0013823E6C18B9EDFC5FAD57F8970493F8BC2448D23FD9D385
          0491CB75F4ADBF84FE1FB9D064D522BA5995DFCBE5A1644E377DD27AD647C4EB
          A957C4C211232C4D6C870A719F99BBD791177AEEC69D3530E1B28AD7FE3EA7F9
          FF00E78404337E24703F5AEF7E1CDC2CB73748902C11AA0C01C9EBDCF7AF37B7
          F95401C7E43F5EF5E87F0DE1963B8B990C6C88D1A852C300F7E33EFC569885EE
          5C512A789142F882EF9E72393DFE5152D9DB36D0F21F263EC5BEF1FA0A935EB8
          48B5EBAF2E2065DE3748FD47CA3A0AAB148D210EE77B91F7BB9F6AE757E5451A
          D0CDB322106353D5FF0089AADDB9EE383DFDFEB58536BDA6697750DBDEEA36B6
          73DC67C88EEA508D263AE33EF8ADEB51F283D88C839EBEE3D7B74E29C938AB81
          E6DF18BF66CF0B7C61D3A5926B68F4AF102AE21D56D902C80F60FF00DE5ED835
          F9D3F10BC03ACFC32F15DE787F5E83C9BEB7F9D64407CBB8889F965427B763E8
          7F027F5C21E873CD78CFED6FF0463F8B1F0D6E6F2CE00DE26D1435D69F2A0F9A
          418CBC3EE1C0C63FBC14F6AF532DCCA786AAA15354CCE705B9F9A363A54DAE6A
          DA7E9B6A035D6A17115B42BCFDE91820CE3DC8AFBF34BFF827EFC2AB3D060D3B
          5692F6FF005CB88F3FDA0D7AD0C8F205059A38C1C003E8703D6BE1BF85F297F8
          97E0A9541DC75BB13E9F319930BFE7D0D7E8C7C46FD9A6F3C7BF1F3C21F11E2F
          154BA6C3A00882E96B0075902BB338CEE006F56DA783C0AF5739AF28CE1152B2
          B5CCA92D0FCDAF8E5F095BE0DFC4DD6FC293C9F6C8ED42CD6D75220DD35BC992
          85B3FC430573DF69FA554F04DC496BA65C223145F3C90028FEEAD7E807ED0BFB
          1137C74F8912F8AD7C62FA2092C62B4168962B27DC2E776E2C3AEFFC39AF83FC
          4BE19FF856FE38F157857ED3F6EFEC7D45AD7ED26155F3311C677633C7DEAF4F
          038EA788A518C5FBCB72651773F67FF869693F8696BF343B4637DD35F987FB66
          7C4DD1FC41FB406AF6779E1DFED893418A3D32392E2FDE38B2504CF8555CEECC
          814F3FF2CC57E9E3E554E3935F8D1F16ACF51D73E367C40920B59EEE56D7EF41
          3146CC7899C01C7B28E6BE9F87E9C6588949F446555E8456BE384B3C7F66785F
          41B000F49216B93F8991BFA57A0FC225F1BFC6AF1E69FE16D23545D21270669E
          7B0B58E14B7817EFB9006739DA179E4B0AF3CD3BE1AF8A2F3705D16EA01D7374
          0443F3622BECEFF827CF81E5F0EEA7E3ABCD43EC2DA834767027D96E12668E3C
          CCCC095FBA09DBC7FB15F559956587C3CA71D59CD05791F4DFC39F851A27C38D
          312D6C2292E272BFBEBDBC7324F2B0E09663D33D7038AECBC84C1C2AAFD00A7A
          AE3AD3B15F98CEA4A6DCA4CEDE5454874DB5B5925961B686296418764400B7A6
          7D7A9AF847F6B1D32EEF3E395FA5B59CF705AD6DC811C0CF9F94F7008FD7B0AF
          BE5BBF6AF847F6B7D7353B1F8C97B6B05FDCDB5A9B381BCA85CAA93B48C903AF
          4AF6329BFD67E4655363CC2DFC13AC2902EE1B7D338CE752B948BF100127F4AF
          A47F63FD0F4F8EFBC5311D4ACF567686D7745142C522E6618DCE30D9E9C0ED5F
          28427CCF99D9A439CB6F3B8FE39AFA8BF6201B75CF182E318B6B227B7F15C76F
          AD7BF9973FD5DBBEC654F73B7F8DDF03B42B0D1F51F15689A24126A1691F9B2D
          9E58432C63967D8A402C064FBE315F3A43E2FD51ADC436B70BA6C2C73E5E9D1A
          C2307FDA51B8FE26BF412EA1496D658DD4488C8559586411DC1AF80A7F02DD68
          F79776D737363A65BDB4F2409F6CB85DEC88E40C46BB989C006BCACB310EA45C
          27A9AD4496A518D44CCED2E59DB92CDC96F7C9EFEF5F58C7793F8FFF00673924
          CB4D77FD9E55F6F2EF242486CE71C9F2FBF735F33DADBE8367C49757DAB38190
          96B08B78BF163B8FE82BEA0FD9BEF22BCF87F32DBDA0B2B78AF6544884CD275D
          AC4EE63EA4D5663CAA31A895AC103E78D2741D47548526B6B29A4B7C17FB4B0F
          2E1EA39DEDB41FC3D2B5E1B1D3AD549BAD59277CE7CAD393CD1E99321C28FA73
          5DB7C5AF843ABD96B171AA69EB71ABE9133F99F6762D2BDA313C854E7283B63A
          579ADB480A87C9C7A96E73D31FE715A52AAAB453B92F467A47847E275DF83D52
          D2C6C33A62BB3982E242F2B13D5830002FAF031CD7B5F857E2268FE2D554B794
          C376465AD66E1C7D3D6BE69D3746BBBC8C4D0C0CB075FB43E238B1EBB8E33CF6
          E6B6AD63B0D327495EFA4BABA520A8B06DA148EFE61C7E2003C66B8F118684F5
          8EE5C59F518C861F5AF2AF8976624F14472CB711DB41F66400B72C4EE7E00AAB
          27ED05A5786BC371DC6BF14C2F99CC51DBDB46CE66C0E3E6C000E3D71F8D7196
          FF001107C506935C5B13A7C6B235AA46CDB9885E4124743C9E99FAD71D1A1523
          2BB5A14ECCDC82EE1B7C0B580B3FFCF7B8009FC17A0FD6B96F8B1F15B5CF86BE
          1B82F34931C97DA8CC6D7ED17196F254296CAAF4ADF8727BD797FED34BFF0014
          8E83CFFCC4241FF908D7A346946751425B10F43D27E10EB57DE21F877A1EA7A9
          DD497BA85C2BB4D3C8465D848DFA62BBCB75F940FC2BCD7E029DDF097C39FF00
          5CA4FF00D1ADFE15E976FD0572568F2CDC5149DCF987F6E2895B50F05647FCBB
          DD007B8F9A3EE2B3FF0064EF8E5A9E97E33B0F056B77925F68DA9B7936324EE5
          DAD27C6E5504F21186463D715A9FB6F7FC7EF81FFEB8DD7FE851D7CC9A7DE4BA
          6EB9A65E5B3BA5CDB5F412A3AF50565423F957D0D2C3C2BE05C5AD7B98DDA99F
          AD56E3BED3F8D5F450E8777391824F7AA31B166DDFDEF9BFCFE75A107DDAF8A9
          1D47E4DFC4EF04DD783BF695D63C3DA5C834EBA1E218CE9B3B0C880DC3A4B13E
          3D15A41F82E2BD3BE226ABFB457807E26683E041F10E4D6F5FD7A06B8B35B548
          E18C85DE0AB12A71C231CD43FB504490FEDBDA4ED04B4973A1B1C1C13FBF51FC
          801F4AFA83E23FC07D7FC67FB4EFC3AF88D677D63168BE1EB6920BB826DDE7CA
          CC25C6CC7CB8FDE2F5F7AFADAD8BE5A74655126B95EE72463BA3E1CF1C7C76F8
          F3F0F3C5179E1DD7FC73A958EB36410CF046D048177A870776CC1C865ED5E457
          3E22BED7352BFD5354B96BED4EFA733DCDD4D9DD2B950371C607403B57DB9FB4
          37EC43E38F8B5F18BC45E2DD275AD12CF4ED43C8F2E1BB594C83CB8551B3818C
          654FE62BE25F1B784AF3E1EF8DB5EF0BDF62F6FB47BA3693CD6A1BCB660AAD91
          9F6615ED60715859413824A76D6C44A32B9FB87DA9693B52D7E66770C906E522
          BF273F6ACD53C4FE1AFDA03C6DA449AEEA31D935DADDDBC4B2F96AB1CD18906D
          C63232587D41AFD637E54F15F137FC140FE10E95713E93F122F67D421B4B6897
          4BBF5D3ED84ACC19D9A176CB0DA012EB93DDD457BB92D78D0C55A7D4CEA2BAD0
          F85DAE27BCE2E6E26BAEB9FB44AF203C7B935F40FEC65F17EC3E0EFC529ADF55
          912CF40D7A35B4B8B86015609D4930BB7A29DCCA7FDE078C5791C5A9F832D64C
          DA683AB5F9EA4EA17CAAADF84609C7E35A369E3782CD47D83C2BA259B118FDF2
          3DC673EBB8FB0AFBEC5518E2694A9B5BA38E32E567EC35B5E47730A4B1BABC4E
          0323A9C860464107BFE152EECE78AFCC5F01FED75F11BC16CB1ADFDAEA560AA2
          24B2B8876C718038098E40FF000AF4C87F6FAF163201FF0008E6985CF1CC8FCF
          E15F053C971516ECAE8EA55133EEC3275078FCABE1EFDAC745B1BBF8D134D7BA
          DDB69C1AC60FDD185E5908F9BA6303F5AF55FD95BE39788FE306B3E283AE35B2
          41671DBFD9E0B68F6AAEE32E793D7EEF7AF16FDB2088FE3548CC540FECF80162
          3DDBAE6AB2EA13A38CF672DEC1369C6E8F3A8FFE117B3C94FED5D60A1FBAE52D
          D7F02A09FD6BE92FD8E754B1BAD6FC57159E9106991C76F6AC64591A491FE697
          EF31273D7F5AF9574DB7B8D40AFD9219AECFF098636907E0541C7E35EC1F08FC
          45E2DF84F7BA85C59E97676E2FA28D18EB13AC6142162080AF9FE33D457BD8EA
          4EA519420F532868F53ED1F1C78C2C7C0FE15D4B59BF91560B58C9DBBB977FE1
          41EE4E07E35F002C925CDC4B733F37333B4AE49C7CC5896C73EA7BD76DE3EF1C
          5E78FAFA393C4FE298268ADCE534DD1EDDDA34FA33ED0C7DF9FAD60C37FA0D9A
          AADB69371792EDDDE76A57070DC632634DA3F326BCEC0E17EAD16E5BB2E6EE56
          B7D8F22440EE958F11800B13CF403B9AFB17F67AD164D1FE19D879904904D792
          4972D1C8854AEE6F9720F7C015F2ADB78A35599459D8B45A64528C795A744B16
          73FED01BBF5AF59D43E3578821D312C34DF234FB78221123ED32CBB40C024B92
          33C8E719A9C753A95E2A1108BB33E99674442EEC1571925CF4FE95E39F12B5CF
          875692DC5D1BFB5B4D718645CD840B7126467EF2952BF9E0FBD785EA5E22D5FC
          4AFBB55D4AEB50270713C84A8FA28C2FE9505BD85BF1FBA19F6E07E95C34B00E
          9BE6948A94EE6E2EA926B1B6796E26BC00FEEDAE1D9B0BEBB7242E7D055FB7C2
          AE0123D707FC8FD2B32DE3555550AAABE8BC0AD383E618AF43952495C9323E21
          DAADC783EE78C3433472291EED8FE553FC19C7FC220D8000FB5CBD3FE03547E2
          5EA22DFC2EB6A0E25BA9542AF7C29C93F4ED9ABBF063FE4539474C5E49FC96B4
          6DFB0D7B896E7A3DBF6AF30FDA5867C1BA19FF00A88B7FE8A35EA16FFC35E67F
          B4B7FC89BA2FB6A0DFFA2CD6143F8CBD4A96C767F007FE492F877FEB9CBFFA35
          BFC6BD3ADBB57987ECFDCFC25D03FDD97FF46357A7DA9F9949E9D6B8311FC568
          A47CCDFB6F7137829DBA086EF3B79E8D19AF1FF80BF0CAE7E297C4ED36C96266
          D234EB85BBD4AE7F81151832A67FBCCC00C7A1CD7DBBE37F853E19F89EDA7B78
          92C0DFB5806F23F78531BB1BB38F5C5751E0DF0868BE09D2534DD0B4D874BB25
          C65205C173D32C7AB1F735DB0CC3D961BD8C56A4F2DDDD9D4C2DB981208CF63D
          474FF1AD08D8053DEB3EDD7A0FC6B89F8F1F156D3E10FC2FD635E96455BBF2FE
          CF631E72D25C38C2003BE3963ECA6BE7E319559A8456ACDDE8B53F3CBE3FF8CA
          F3C49FB50EB9AC69856EAEED35CB7B6D3B0030792DCA2463E9E6A1E3D1ABDBCF
          C56FDADE4C797E08B518FE1FB2C59C7D7CDE9C9AF91347D565D17C45A66B170A
          6EA7B5D421D42542D832BA48B2373DB760F3EA6BEB96FF0082954B0A851E0007
          6F5DDA901CFA7FABEB5F7389C25550A50A7494ACBA9C49AD5B673DE30FDA1BF6
          A7F03E9726A5AE785E0B1D3E31BA6BB5D25668A25E84B6C90951D3935F1FF8CB
          C5DA9F8F3C5BAB788F527126A5AA4FF69BA6B52628CC855465540381803BD7E9
          37ECFF00FB6B587C75F1D3F83F52F0B3E9173716B25C5B4A9722E2395531E646
          FF00282080C0F71D7A1E2BE05FDA37C13A7FC3DF8EDE37D074E8A3874EB6D437
          DB40A99585248D25D8BCF00190E056383A90A55654EAD1519791A34AD74CFDA5
          14A699BB6AE7D0531A66E7017F13FF00D6AF835AB68E924914370471EF58BE29
          F0AE9BE32F0FDFE8BAC59C77FA65F42D05C5BCCA08915BD7DFD0F62335A0D25C
          100A98C03CFCD9FF003FFEBA864FB748A42C90A93D3033549B8BBADD03D8FCB3
          F8F1FB2DF897E09F88A4FB25ADD6B7E179E52B65A8411991D73CAC5281CAB003
          EF742066B8AD37E1DF89EF63DEBA25CC3175124F88948F5CB1C62BF5D2E2C2F6
          EE331CB71049130C3064C820F6E7AD7CEFF11BF615F0C78CAE67BDD3754BCD06
          FE425992399E7B7249CE76393B47D08AFB3C1E77CB154EBFDE72CA95F53E298B
          C07756B837FAA691A729FF009E97AB27E8BCD5E8743F0DDA479BCF148B86FEEE
          9966CF8FC5F15EE373FF0004F6F14D86E369E24D2AED319DD244C991FA8AB9A6
          FEC0BE299B06EFC4BA75BA63FE59C4ECC07A0E95EA7F69E19AE6E727D9B37FF6
          2DD7BC39A26A5E2DFB335F1F322B62D25D6DCC8034806157A753F9D617ED41E3
          9826F8AC24D3B4DB2327D82126F6E2DC3CBD5BE5C1EDCD7B2FC2BFD9553E18A5
          EC916B8F7979791AA4D2491ED4F9492081DB9626B2FE247EC8B7BE3EF160D587
          8952D13ECD141E57D9B77DDCF39CF35E047158758A759C8D795F2D8F9724F1A6
          BD76A54EA93C48C3063B7C46A47A6055687739FDE1693279F30EEFE75F4743FB
          0DDDAAAE7C5CA7FDDB3C91FAD5B8FF00625B851FF23683DB3F63FF00EBD7A2F3
          2C2F7239247CF16FF2FCA381E9DBF2C5695A2990AC68A5A4270117AD7D0F69FB
          1AA5BB0371E27965031955B60BF4E735D3E97FB325B696B8B4D556239C176B5D
          CFF9961DAB9E59950E83E46785E8BA2FF65C2659702E9C71FEC55AB9C6D603A6
          0E067A57B83FECECEC4EEF106D3EF6A3FF008BFF0039AAF27ECD66656FF8A970
          3183FE860E0FBFCF5C9F5EA3CD76C7CACF09B7FA76F5AD2B7E9D47E75EC11FEC
          BA23C9FF008499CFA62C17278FFAE9525BFECE8AE0F95E280E17F896CD587FE8
          CFA7E74E58EA2F60E56796DBFCD803AFB73525FEB567A1C5E65D49838CAC4BF7
          9BDABD3E6FD9BAE64F9078BA6887711D8283FF00A33E9F98ACA97F64786E240D
          278AE77909CEEFB1AE4FD3E7A858BA2F72B959F3A788B5C9FC41A81BB9FF0077
          B788A35FBB1AFA7B12715E9BF063FE4559BFEBEE4FE9FE15DCFF00C31DDB313F
          F154DC0E7248B35079FF0081735D4F84FF0067A4F08E9B259C7AF493A3486525
          ED86467FE07ED5A56C7509D3E4892A2EE62DBFF08E6BCCFF00694C7FC211A3B1
          040FED03DBFE99D7D0F1FC2865C85D5F254FFCFB03FF00B35739E39F80369F11
          B498B4F97C42F12DADC994B5BC0858385DA54FCDD41AE4A38AA71AAA4D94E2D9
          C57ECFADFF00169F431E86503DFF0078D5EA36DFC39F7A87C0FF0005D7C0DE1B
          B4D1ADB5992682D8B1124B6EBB88662DC9CE3BF6F4AE8E3F075CC2028D4D4FD6
          D97FC6B9AB568549B9234B329DB31E45695B93C67F2EF4E4F0CDE4793FDA7185
          E80FD950FF005AE4FE23691A9693A179EDE2FD434B81E68E01FD97A64724ACCE
          E1060004F53D7B0E6B979A2D81ABE3AF895E1DF85FA1C9A9F893518EC60404A4
          4C7334AC33F2A27563C7EB5F9C5FB407C74D53E3978A7EDF7119B2D12CC98F4E
          D3B767CB07ABBF1CB90067D0715F5CEBFF00B0FE93E2AD41B50D63C69AF6AB7B
          20C89AE8C6CDCFA6471CFA7AD669FF00827AF8424FF999358907B084671FF01A
          F6F015B078697B4A8DB9194A329687C21E1FB58352F1568965749BAD2EAFEDA0
          9D4123F76D2AABF23A7CA4D7E84C5FB1BFC08685246B3462540DC757907E787C
          7A5717A2FEC3FF000BBC4975796DA4F8F6EF56B8B460B711D8DDDBCAD0B1E9B8
          2A923A1FC456A1FF008270F81646F9FC45E21DDC007CD843638FF62BB7199852
          C449725494522630B6E8ED341F017C08FD989EF7C57672E9BA3DD8B7688DD4D7
          ED71398FA948C33331C9C70A39AFCCAF8C5E3A8FE2A7C53F1478B1C496716A97
          AD35BC2CDF32C215550371D70A01FA57DD1E27FF00827B7C37F0CE8379AB5DEA
          FE2ABB4B588CAD1584515CCEDDB091888966CFB63D78CD5E87FE09B7F0F2EA18
          E75D7BC5482450FB1AF228D973D88F2C723A735960F1182A3373AD3726FC8A6A
          4FE1D0FB1DBEE74CF15F326AFB6D7C5BE34F187FC259A959F88ACA4D420B1D39
          AF1A4B59922B62500B6C84CAED56CE3271D79AFA68FCD907A579FEA1F04FC0FA
          8F8D2F7C5773E1EB697C41796AD693DE167CC9132EC652376DE546338CFBD7CC
          51928B7746FCBA1E5107C58F17F8574AF0D3EAF7CD7B69AB5A23DC6A57162B14
          D67732CE161478D5986D6059339EA0671DB2FC5DE38F1E785741BB3378C6E2F2
          E0EBCD6B1CF69A324AE91A2E162640FF0075D88DD2646D1F9D7BAF877E11F847
          C33A1AE97A6E890C1A7677FD9DDDE55C87120E5D89E1C6473C56ACFE08D0E717
          29269F1B89FCD690E4E58C80093BF7C0FCABA155A7177E51729E61F0DF5EF155
          FF008F04FAB789E2BBB1BC1796EDA1ADA2C66CA481D572240C4B13939C8C722B
          8CD63E2278BEDF44F14DEC7E277BA9E7BB74B5B4B5863F374F58EF162F972D83
          B94FF1E391F80F72D1FE14784FC37E2ABCF1269BA3436BADDD2F9535E2BB9660
          704F04ED04E0720738AA737C14F045C2EB8B27876D5975D7F33511961F686593
          70279E3E6F9B8C73CD4AAB4F9DB689F7BB9C7FC57D16C757F01782B49F126B32
          5CE9F3EA70C77BA81B916BE7016F31DCEE8C00191C8070715C27857C55E23B99
          F4DB6D3BC4B73159D8F861AEED0CCF198AF6506548CC8CFF0031380AD9191851
          5EEBAC7C29F09789BC1F69E14D5343B6BEF0F5AED10D84C0B226C042F7CF0091
          F89A8AEBE0FF0082EFB50B0BD9BC3762D75676DF60B793611E541B48F2D4038C
          6091F8D4D3AD0B3BA2B965DCF07F057C46F11EB9AA78374FBBF136A76404978D
          A8BDC7D9C485D194AC6EC32AE87242EDE7079ABD63F1BBC50BA7B8D56E45BEA9
          A325A43A9436F12BC739B92E914E9FEC96687E8437A57B143F047C070DAD85AC
          7E17D3D20D3656B8B445423CA91C96661CF735D1A784744467DBA55A8DD1450B
          7EE81DC88F9453ECA4647A1AD275E95F488B95F73E76D4BC69E26D375AD62F07
          8EA691D0DD59FF0066C8210901B778544D8E1816F9B39E0E73C5749AF7C47D5A
          3D52EAD2C75D7920B4367A91B98D6368E4B5B9B88E358830186C1130E3DABD46
          E3E12F83AF358D4F559FC39A7CBA8EA319B7BBB8684169A36C060DEB9C0AD1D3
          FC09E1ED2F4F8B4DB5D1ECE1B18638E18E058576AA236E451C740DC8F7A255A9
          E8F942C7CDFA87C50F1C6A9E1FD4EDAEEEAEB4A3676F6D6725E5ACB0DAB4D706
          E1D659629645DAABE598F0C473820735BF2F8EF5D93C65278365F115D4563AAC
          E63D2F5AB5689E58D12CD4CD1BB15DA65F31848A47DEC9E9B6BDC352F01F8735
          ED38E9DA8E89637B63242B1BDBDC40AE8C81B705208C100F352699E0FD134D89
          20B4D26CED628595A3586155084205046070429C7D28957A56D22163E6EB6D5B
          5CD3E4F0BCD37C4DD6167B6B3B0BBFB05C4D6D8BE33DDB46EB28316E750B8000
          E4575DF11358D77FE16E6A56561E25BCD31EDB4092E74FB5FED1822B792EB648
          137DBB8324A3383B94803183D335EBB79F0DFC2DA9EA5A5EA577E1ED32E350D3
          462C6EA5B48DA4B5EBFEAD88CAF53D3D4D4B7BE05F0EEB1AD41AC5F685A75E6A
          D6E8D0457D3DAC6F3221C82AAE46E00E4F00E39350EB45CB60B1E5DF0EFC69AD
          F8E3C33E3ABCD79EE741B51008E14BC508D6882D144B2B63900C9E6383FDDC1A
          F1EF84BA87FC23DE0AF11DAF865BC27E1EBB174E5F51F06EA067D2EE5BEC2DE5
          C923BAE227042EEC0EB82720E2BEC25D2ECE1690C76B0A9970B21118F9C01800
          FAE0002B2749F873E15D0ECAE6C74DF0D691A758CD2169ADAD2C228A3958A6D2
          CCAAA0162A4AE7D0E2946BC6F25CA163E71F03EA5AB789B41F0C6A4FE32F11DA
          DC5BCB7D0CF00D56D6F6195E1059479B0C78953A9C8E700038C555D37C65E30D
          3FC0763A9787B57BED7AE6F2C3504BD85EFA1BE6B4B87545B69B7AA8012321C9
          5EA37006BEA4D1FC1FA1F87ECE0B2D2F47B1D36CE12CD15BD9DB2431A16E5885
          5000CF7F5A8345F06E81A158BC1A6687A6E9B6F364C90DA5A471231720312AA3
          1CF7F5EF5A7B785B588729F39F8BBE266A6CFE35D3C788EF60FF0089759FD8E5
          B875B2B4DE853CF10DDB215DEE5B1D38CE31DC6DDE78A2DB5EF807E0DBCBDF13
          6ADE1CD3A7BC8A0BDD564BF884F1A2A484937014A11B917E603907DEBDDAE7C3
          3A45E58BDA5C695653DAA865FB3C96E8D191C120A918C1EF4B75E0FD0AEB414D
          227D1EC27D2215023B092D91A040BD008C8DB81F4A895685938C6C3E57DCF01F
          82BE21975DF8B9A83EB1E24BB9AEE2B0B65B2B29AF555665685497FB3EDCF200
          6DF9E4C86A86ABE27D5FC1F79A95F694D249A726B3AB26A56507323F99751A24
          EBFF005CC92CC3B866E95F4747E15D160D5A3D4D349B15D4446B12DE2DB20995
          3006D0E06718006338E05586D36CE10EEB6906E22463FBB51924FCC4F1CE7BFA
          D0AB454AF60B1F2678B16686196EF5DF136B9E1FD2F55D7EF2092F0EA8AB1C91
          448FE5347C7EE8161F73A9C75A8EF350F15DC78BB5DB9D3F57D4D0BD85B8B3BC
          7BDDF0CCEA2DF112C58FBE4E7737A3D7D6B7BE1DD2F54B53677BA6DA5E5AF99E
          67933C08E9BB19DD82319C93CFBD48347B056522CADF38047EE978E00C0E3D14
          7E55A2C5C52B728B90F99A1F1F78AB499344BBD706AE97973E247BBB9B2B68C4
          8969685444904E78DA9FBD0D9C1E52B2CF89E1F0BF80F539B40F11788BC43E25
          BEBEB59352B5827372F6932132CC8A188D8ACB1ED651D037E15F57C7636F2B48
          CD047BA4F95C841961EFC73D4D79BFC29F2A6F157C4322DA08443AC380B14614
          1C469927D49EFEB4BDB45EBCA2E53CFF00E1CEB1A6DF7C6F92F23F115F5C6BD7
          ED7CD79A44D77279505B66336EDE49F953E5FA75AE83E0BEA1A75D7C52F896B2
          6A5F68D6C6A720FB28BD96564B75660998DBE5420E40DBD80AF658B47B1B6BE9
          6E62B3B78EE760533244A1CAFF00777019C703F2A58F4FB6B5BA9AE22B789279
          305E554019FAFDE2393D3BD632AAA4F6E85F29F127F6E786E4F086A43C3AD1DA
          EA9A6E8FE47892EA259ADA3595AEE2D82691006627329253900B74CF1DD586A1
          E116D711B4CF10EA92EAA34358F42B3B4D46E5E2B8B2FB282CECAC7057CC0C04
          8C37640E7B57D41FD8D631C7222DA5BAA4C7F78A215C31279246393DF9A72D8D
          B46DB96DA2568D08521070076FA56BEDD592B19F29F22DA6BF37F6D7C59B3B0B
          FBDD6B57B8558625D0EF2E7EDD1B4B23288FCA9C8891D141C321008526A878CB
          59F027887C4126A1E35D6B54D2B539A0B7315AB6AD776DB6210463EEC6DB49F3
          04B923A9CD7D99F63863791D23546279651827AF523F1FCE892C60936B344A4E
          D1ED4D6223FCA2E43FFFD9}
        FriendlyName = 'IWImage4'
        TransparentColor = clNone
        JpegOptions.CompressionQuality = 90
        JpegOptions.Performance = jpBestSpeed
        JpegOptions.ProgressiveEncoding = False
        JpegOptions.Smoothing = True
        OutputType = ioJPEG
      end
    end
    object rgnresetcrit: TIWRegion
      Left = 484
      Top = 275
      Width = 436
      Height = 138
      Cursor = crAuto
      Visible = False
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clWebBLACK
      Color = clWebWHITE
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1001
      Splitter = False
      object btnresetsim: TIWButton
        Left = 345
        Top = 102
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Caption = 'Continue'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        FriendlyName = 'btnresetsim'
        ScriptEvents = <>
        TabOrder = 52
        OnClick = btnresetsimClick
      end
      object btnresetnao: TIWButton
        Left = 19
        Top = 102
        Width = 75
        Height = 25
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Caption = 'Cancel'
        DoSubmitValidation = True
        Color = clBtnFace
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.Size = 10
        Font.Style = [fsBold]
        FriendlyName = 'btnresetnao'
        ScriptEvents = <>
        TabOrder = 53
        OnClick = btnresetnaoClick
      end
      object txtdadosseraoperdidos: TIWText
        Left = 22
        Top = 52
        Width = 387
        Height = 45
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 1
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BGColor = clNone
        ConvertSpaces = False
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.Size = 10
        Font.Style = []
        FriendlyName = 'txtdadosseraoperdidos'
        Lines.Strings = (
          
            'When resetting the criterion elicitation, the information previo' +
            'usly obtained will be lost, do you want to continue.')
        RawText = False
        UseFrame = False
        WantReturns = True
      end
      object IWImage2: TIWImage
        Left = 294
        Top = 8
        Width = 126
        Height = 38
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 2
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        BorderOptions.Color = clNone
        BorderOptions.Width = 0
        DoSubmitValidation = True
        ScriptEvents = <>
        TabOrder = -1
        UseSize = True
        Picture.Data = {
          0A544A504547496D616765DC810000FFD8FFE000104A46494600010101006000
          600000FFE128344578696600004D4D002A000000080006000B00020000002600
          0008620112000300000001000100000131000200000026000008880132000200
          000014000008AE8769000400000001000008C2EA1C00070000080C0000005600
          0011461CEA000000080000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000057696E646F77732050686F746F20456469
          746F722031302E302E31303031312E31363338340057696E646F77732050686F
          746F20456469746F722031302E302E31303031312E313633383400323032313A
          30323A32332031303A35353A343200000690030002000000140000111C900400
          0200000014000011309291000200000003303000009292000200000003303000
          00A00100030000000100010000EA1C00070000080C00000910000000001CEA00
          0000080000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000323032313A30323A32302032333A30323A343800323032
          313A30323A32302032333A30323A343800000000060103000300000001000600
          00011A00050000000100001194011B0005000000010000119C01280003000000
          01000200000201000400000001000011A4020200040000000100001687000000
          0000000060000000010000006000000001FFD8FFDB0043000806060706050807
          07070909080A0C140D0C0B0B0C1912130F141D1A1F1E1D1A1C1C20242E272022
          2C231C1C2837292C30313434341F27393D38323C2E333432FFDB004301090909
          0C0B0C180D0D1832211C21323232323232323232323232323232323232323232
          3232323232323232323232323232323232323232323232323232323232FFC000
          11080058010003012100021101031101FFC4001F000001050101010101010000
          0000000000000102030405060708090A0BFFC400B51000020103030204030505
          04040000017D01020300041105122131410613516107227114328191A1082342
          B1C11552D1F02433627282090A161718191A25262728292A3435363738393A43
          4445464748494A535455565758595A636465666768696A737475767778797A83
          8485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8
          B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2
          F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102
          030405060708090A0BFFC400B511000201020404030407050404000102770001
          02031104052131061241510761711322328108144291A1B1C109233352F01562
          72D10A162434E125F11718191A262728292A35363738393A434445464748494A
          535455565758595A636465666768696A737475767778797A8283848586878889
          8A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5
          C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FA
          FFDA000C03010002110311003F00F7EA2900514C028A401463EB4C031450018A
          31400629680131462800C51400628A401F851400514C028C52003C567EADACD9
          E8B64D757928445E83BB1F415518B93B20B9E1BE2AF155DF896F373931DAC67F
          75083C7D4FBD743F0D111F4BD7F728388C6091D3835EACA1ECE8D919DF533FEC
          D6BFF0A6E5BAF26233099879BB46EFBDEB5A5E230A7E15F875C01FEBEDCE47D6
          B2536EDEA3EA7B0515E71614868010B00327802B0B52F18E85A5314B9D422F30
          758D0EE6FD2AE1094DD905EC647FC2CDD159B11C57720F5588D6AD878BF4DBF6
          0A04F0E7BCD1ED1F99AD2542490AE6CCB750C16CD71248044ABB8B76C7AD638F
          19E818CFF68478FA1FF0ACE3072D8771F1F8BF4494E23BC0E7FD8463FC85586F
          116971AEE92E9631FEDE47E9D69BA5215CB76B7F6B7A9BEDAE23947FB2DD2ACE
          6B369A7A8C5A6E6802B5CEA56969C4F7088DFDD279FCAA99F1269BDA566FA21A
          B506C0726BF65236D43231F64356ADF5082E6431C6D9603247A50E0D00DB9D4A
          0B59447213B88CF02A31ACDA9E85BF2A5CAC572CDBDDC7720F979E3D4530EA10
          ABB29CE41C1A5CBA8C517D11E9BBF2A7ADD230C8071EB4F94451D67573A6E972
          DDC36B2DD3A0F963886493FE15E13AEEBB7DAF5E34F79213B4E1631C04FC2BB7
          0505CDCCC99331DBA5777F0D75AD2F491A9AEA975140936C0A24070C06735D98
          94DD376263B9D97FC24BE045D3CD8FDB2CBECA4E4C5B0EDCFE55CC78FBC45E1E
          D43C3965A7E8F790C8D15DC4CB14608C286FA579F4A9D4E6468CF5DA2B906155
          350BE834EB296EAE1B6C5129663D69A5776407906B7E3ED675A92582CAC1A3B1
          63850C08761EF5871AEAC0645A59C00F3968941FCCD7AF4A92A71336C93CCD45
          47EF7568A15F44718FD053365B1CB4FAACB21EFE5AB1FE66AE5B08F6493CBFF8
          41C70CF1FD89783C1236D792457D12AAF91636C871C12BBDBF5AE4C325ADCA65
          D49754B800219554F1F22EC5A5165B0FFA45CC49EA376F3F90ADDD845AB69EDE
          CA5596D9EE5E55E8C1BCB1FA735DCF877C57FDA327D96F02A5C1FB8C3A38F4FA
          D72D7A77D50D33AA078AE63C4BAE496AC2CACDF6CC466471D507A0F7AE5A71E6
          958B3985B594E649888F71C9695B927F99A9D0DB20180D337BFCABF97535DB64
          9124A6791D7692153FB88368ADCF0D63ED3363FB82B2ABF08225D66367BE5207
          1B0649E055351127FD346F6E0544761B3674876712671EC00AAB2A937520033F
          31ACFED012A2AAFDE393E82A5049FF000A770254AE5BC5BE08B5D7207BAB4458
          7505190C07127B1FF1AAA755C240D5D1E33710C96D3C904F198E58D8ABA9EAA6
          BAAF879E1CB0D7B51BA9B528C496F6880F96C70189CF5F61835EA569FEE9C919
          ADCE87C53E19F0C6ABE19BBD53418ED926B304EFB60003B7A8205791467F7F11
          1C7CCA7AFBD46124DC1DFA0DEE7D614B5E39A086BC6BE2878A6E1F584D22CA77
          8E3B701A6287EF31E83F0AE8C2C39AA0A5B1C421D4EE875BB973E99AB0BA55F3
          11E647B73FF3D1C57B0DA466745A7780759BD8D64548D232386357A6F006A169
          1979229671E916335C93C4C761D8F45947D9FC17B5A33F2598051FAFDD0306BC
          8E2D4264188922871FDC4E6B2C2EB76390A679A638795DB3D8B55EB9D2EFAC14
          35CDAC9129FE2C71F9D6F2928BB3104104B31C471BB9F61C55D8AD9A175792E2
          38181C8C1CB03F854C9A6AC08F4CD17524D4F4D49958B32FCAF918391DEB86BC
          D42796FAE24056362E794183D71D6B8E8C6D265742BAF2DB8924FA9E6B4B4FD3
          67D437791B3E4EBB8D6D2928A11A89E1BBDC8DC6303EB9AD7D2B4C7B09DCB721
          971BB3FD2B9E7539914914F5CCFDB9076D9D3F13546352C70A327DAAA1B21336
          F4B022594BB28E99E7A557925DF2BEC23692718EF59DBDE631CA6B3E7F12E976
          5A89D3EEAE3CA9D71F787CBCFBD5462DEC06E44CAE8191832919041C8356179A
          CA433CBFE2AE80B11875CB740031115C63B9FE13FD3F2A87E14885FF00B6A19A
          45449111492D8CFDEAEF4F9B0C47DA3B4D33C2FA0E93A35E6976F3E2DEEF3E60
          330CF231C579FF008E7C1BA0787B404BDD2DD8DC7DA224C19B7705B9ACA8549A
          9DADB83B1ED54B5C6591CADB22663D0026BE6CD47C437F79AB5E5C2CCA82499C
          82A8B923381DBD00AEFC02BC9B2645537D79272D7531CF60C457A3FC33F0B457
          C8FADDFA798AAE52DD64E4123AB7E7C7E15D58A972532627ABAA855C01803A53
          B15E36E69633B5D42FA1DEA0C64C4C064D78B2D8AC6333DEDBC67FBAAC6427F2
          AEEC23F75912278FEC11B0CFDA6739F6415ED6618A7B6D92C6ACAC3953CD4E29
          B4D31C4F31F11DB4DA6EB32DB991BC9237C633C053FE159883FF00AF5D14DA71
          4C4CEC3C0F738B9B9B6CF0CA1C0FD2A86A5A6B5AEA77092CB14485F7296392CA
          4F50A39AE7BF2D4687D0890DAC7D16498FAB9D8BF975A9E2BD9E260627108073
          88C607E3EB56E3742474361E243F2C77AA07FD345E9F8D744AC194329CA91904
          571CE1CACB30B5AF2C5EA17DCC767DD1C0EA7BD511231181855F45AD62B424E7
          7C6177716F696F14333C71CBBB78538CE2BA2D23FE41167FF5C573F956928DA2
          981A495E57E3903FE12BB807FB89FCAAF0BF1EA296C741F0D35A92492E3479E4
          2CAA9E6DBEE3C81FC4BFC8D7A42D615E3CB368A5B191E31B11A8F84353B7C0DD
          E433AE7FBCA370FE55E47E08F0DD9F89A3D45AE669E3FB3C6AE9E53EDCE73D7F
          2AD70F3E5A5225EE50B4F0CC97BE0FBED7FF00B424516B2327938CEEC1C75FC6
          B982CD95259BAE7926BBE8CA33BB5D0967D634B5E19A95EF14B594CABD4A103F
          2AF99974C11713DEDB4641E46FDD8FCABD1C03DC891325BE9A83F797EEFF00F5
          C6227F9D7B8FC3C7B77F05580B66631AEF196EB9DED9CD563B58A144EA68AF30
          D0CED786742BDFFAE2DFCABC293031D0577E0FE16448B30C6F21C468CC73FC2B
          5EF317FAA5FA54E33A0E2713E3A4B637D68F34ACADB186D55C92335CC2CD6D19
          FDD5AEE3D9A66CFE838AAA2AF013DCE93C237534DACEC660231193B1542A8AEA
          358D160D5A35DE764C9F7240391EC7DAB0AAF96A14B6390BAD1AFAC25DAF1175
          ECE8320D316054E659514FF757E66ADA33525A124E92C49FEAA2E7FBD273FA54
          D2F882F74CD39DA25594EEE0BF44A4E1CC3B95B4DD46EB54864B8BB937C9BC81
          81800569250E3CBA0CE6BC6DFEA6CFEAD5D3E8DFF207B2FF00AE2BFCA9CFF868
          9EA69A579678EBFE46AB8FF717F953C36B3B04B617E1F863E33B62A3A4326EFA
          63FF00D55ECC9D6B3C57F10A8EC41ABBAA6897CEE4055B790927FDD35E5BF07C
          2E7558E560A1A1894E4E3FBD4A95FD94BE427B9DADAF84345B4F0E5DE871CF27
          D96E5CBC84CBF3649CF06B80F1DF81B43F0EF86CDFE9D2CCD70268D3E79B70C1
          3CF15546ACD4AD6DC4ECCF6BA5AE32C63A8642A7BF15F32F8834F3A5789751B2
          650364EC5401FC24E47E86BBF2F9252699332BC16F3CDFEAE191FF00DD535E85
          F0FB58BCD02592D2F612961336E2CEC0794DEBF43C5766262A70691313D62DB5
          0B5BB88496F711CA87A15606A679A345DCF22A8EE4902BC5E468B296AAE92687
          74E30F1B42C460F518AF164BD8D1008ACE14F76F9ABB7069D993224FB75D3702
          62AA4FDD5E2BDA5EF60B4B259AE265440A0924FB52C545BB0E27986B9AB1D6B5
          769D01F2D46D89719E077A8A2B2B823263F2D7FBD290A3F5ADA0B962913D4EBF
          C1B66B09B9BA69A36180995CE07AF35BD73AFE9B6B90F72AEC3F863F98FE95C5
          522E732D1897BE31565296B685C1E33274FCAB01659257691E358F71FBA83815
          AD3A7CA8572C274A8F50C7F66CD9E98AD168D0991F873FE3C5FF00EBA1ADD4A5
          3DD8D1CDF8D47FA3D9FD5ABA5D17FE40D65FF5C57F9513FE1A1753512BCD7C67
          A7DE5CF8A6536F6934A191402AB91D3D6950972CEE0CEABC0FE179344864BCBD
          005ECE00D9D7CB5F4FAD768958D69F349B291CCFC45D496C3C1B789BB125C810
          20CF3CF5FD335E5DE0DF0BBF89A7BC896FA5B4F2150E63FE2CE7AFE55D341F2D
          17225EE75A7E12391FF21FBBAE1BC67E0FD53C2DE5BDC5CB5D59CCDB565C9E1B
          D08F5F4ABA5888CA493416D0FA2E96BCC2C69AF35F89DA4DE451A6B7A6C71EE4
          1B6E488959F6F66C9F4ADF0F2E5A9714B63CADB51BE9FF00D65DCCD9F46C7F2A
          4DC5CFCEC58FFB4735ED591916ADEE2683FD4CF2463FD8722AC9BDBA986D7BA9
          9C7A1909CD652A701DCF6BB3467F024281496362063DF6D793269D32FF00AD92
          0871D77C8323F019AE4C369CC8A913AC3631FDFBC794FA411E07E6D56BED96FB
          405B66908E86794B0FC856AD5F7121EB7F7382B1B2C4BD844A17F51CD202F23F
          24B31EE69343355374702C5BDB68E719E33507F19E3BD6692BDC0993DAA75A18
          13AD50D66E42402D81CB31CB7B0A229B60C9FC39FF001E527FD7435BA9DAA27B
          B1A39CF1AFFC7B5A7D5ABA4D13FE40B67FF5C57F9513FE1A046A254E95CCDD86
          4E9536E08A59880A06493D054343B9E27F103C48BAF6AE20B66CD9DA65508FE3
          6EEDFD2B9DD2E4D663925FEC63781881E67D9B3D39C671F8D7B14A9C634AD232
          6F5341A5F1C9E875C3F40F5DA78C1AFDBE0EC4DAE0FF00898661DDBBAEEDE3AF
          BE335CF5BD9F34790A573D4A8AF30B1370F51514DE4C91B472ED64618653C822
          9EBBA06796F887E1A5B89E5BCD2E72222371B651939FF67FC2B899EDED34E731
          DC595E870707CDF92BD6A15F9A36666D02DF5B2FFABB0871EB2316353AEA976E
          76421133D1628C66B795AC23D362D46ECF84A34762A45A61811CFDDAF328F040
          3827DC8AE5A1CAAE532C2FE3F954E9F43F956CE6845D82D67948DB19C7A91815
          AB6F6AB6E324EE73DFD2B194D00F6355F3F39A4A4809908EF5279C883E66A972
          43219F522AB881093FDE22B25FCC766660C493C923AD5C5A5A8337FC3BF2D9C8
          0823F787A8ADC523D6B09BD468E7BC6419EDAD3602C416CE066BA0D1085D16CC
          370444320F5A727FBB408D5464FEFAD4CB246179917F3AE7632ADEF8834ED394
          996666603EEC6858D79EF89FC63AAEB11BDA58DA5C5B5A370C769DCE3FA0ADA8
          C22E576267126C2EFB5A4FFF007ECD747E0DD6AE7C2B71772C9A5DD4E2755501
          508C633FE35DF59C650E5211D71F8A328CE3C397C4FF00BB5C478CBC49AEF8B3
          CB85B4CB8B7B389B7AC2B1B12CDD8938AE6A542119DDB29BEC7D01DAB9EFF84A
          AD16F2E629EDEE21B780126E9D7F76D838E3BF7AF3E31B9772DAEB9A5BDAFDA4
          5CA18C2863EB823238FA5564F13E8520836DDC644F9F2CE0E0E3AD52830B9359
          EB7A45F59DC5DC1323C36F9F35B69F97033559F57D02FD2D7CC54985CB158C18
          B3C83839F4A69493D00CEBDB7D12DB5B4B26D055A33B77DC2A8DAA4F404558B7
          D43C33084686D95774BE52916E724F1CF4E9CF5ABE69B5B8AC8BF0EB1A3DCC8F
          082BC398FE68C80C467201EFD0D4135FF87ADADDA668632ABD921C93DBA01529
          4AE0496D7DA15CC6AD1451E1B6E330E31B86476F6A54D47423BCA885760C9CC7
          8E98F6F7147BE02C5ABE9324FE488CA7EF7CA46784AABB609C29C73C0355E5F1
          2E8D13CCA6DEE0F94A18B2DA310D9E98E39EB45A5702C3EB1A626990DF8B695E
          298ED444B725F3E9B7AD4F06A1A65C4D1451AA79921750A63C1CAE3703F4C8A9
          B4AC06743ADA3EAD756EFA7C0B696E48332CAACF9071CC78C8CF6A56F12E9610
          BAD8DD3A893CB056D18827D8E3A5572B026835DD2E698466D9E20D27948F241B
          55DB04F07BF0A694EBBA418CBA47BF1009C058792A7A6295A403E5D62D20D263
          BF1633E2560AB0AC1FBC24FF00B3458EB767A86A0D6B6F6B2B0540E65F2B0832
          01C67D79A56760196FADD9CCE629E1449B2C5500CE5436DCD55FF84AECD1A251
          A6DDFEF18803C9FE1040DDF4E6AB91BD02E4B1F8A74E7B89239209220B218D5D
          D386C6791EDC54BFF09169E60F3238647FDCF9CAA139604E001EF9A1C1A0B95F
          FB620926B3BA9239AD95A09646B59211B8EDC6727D7D2A7B5D6EDE7D26E6FDF4
          F960FB3FDE8A4550C7FA77A2CD2012EF52B83A35B5CD9D8C49737322A24771D1
          7209E48FA555B6F1267CA8AE34D3E78899E7F2CAED42A4838CF24647EA29A4DF
          502497C4F0DBE9E2E67D3278A42702190A29C9381C938FD6897585B6BABA9CC7
          732EDB78996D42A81966C614F73923BD2E562B9D31E95C4DCE97AFBC7A8E9E96
          F08B36CBC522CD86918B03FF0001A983B1562CC5A15F4B7D6BA8BA0B7B8C225C
          47E66FDC8AA7033DC863D7DE9B3F86AF66FB3B79847949B5A257C2BF5EBF4AD1
          5448562C5B69FAACFA46A315DDBC30CF2C7E5C41640C1B0B80491D2ABC1A66B2
          B7DA7DEC96B08915984C8B360202001FEF1C0CD2538EA162C6A5A66AD71AF6E8
          12DFEC126C32C8EDF382B9E00ACA3E1DD65EC6CE0F221492DAE0B24A2E5B72A9
          2093EFFEED119C520B1327867519AD67B499618D44CF3413AC84B0639C1C76FA
          55993C3FA943134D0490CB38313AC6E4852CA3E6E7B64F34DD54D8588E2D0758
          F2E581DADA349ED8069518968E51D31EDEF525CF849EE65667750A1832ED2464
          60707DB228F68930B119F0C5F4CB716D37D9E385E632C72A3B1915B040619E01
          07D2AD3E87A9269EAB0496EF7490C483CCC85628727A74068751361612EF43D4
          67D06DADC7D91AF23984CCAECE23CE73D47353D9F874DB6B5FDA8CE3CC7DDBD0
          31DABBB192A0FAE39A8E7560B148F866FE4F115D6A120D3123914AA4B0425677
          071C487A10314BA67862F2CE5BB676B58D65B85955202F8E3A9218E013EDC552
          A816087C2B3C89736D78F6E2D9EE1A78DA02C24C9CF249E87E9C5249E15BB311
          F2EEE2C791E47D9DD730EDED91D73F8D35550589E1D0352B4F0D5BD9DBDC5BFD
          B2093CC467DCD1AF5E3D71CD3B48D06F74BD5E5B8F3ADDEDE68D048769F30B01
          F96339351CE1611FC2ED2346ED721648A532A3A8E465B38FA5472785AEA1167F
          D9F730C6235649848ACDB8330248F7AA556C16107832026712B831CF27992632
          093CF4F41CD13F861E3DD731DF3218A2DAB19FF5600E471F5147B5B8588ADB43
          B9D6EDED752B9D45CCE61DB84188CE739F97BF5FD2AFC3A1DEB6917B6B797714
          B3DCF01D62C281800719E7A5273E83B0B3E8BA84DA0DBDA25FC515E40E1D2758
          46D04647DDFA1AA71F852EA29A275D451B3034770CF002D233124907F8724F4F
          6A14EC26892E7C337D79A634171A9C525C32ED323DB2B26DCF4D878A24F09B31
          6963D4254B83184C91941B71B7099C0E47E34D540B1FFFD900FFE131E4687474
          703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F78706163
          6B657420626567696E3D27EFBBBF272069643D2757354D304D7043656869487A
          7265537A4E54637A6B633964273F3E0D0A3C783A786D706D65746120786D6C6E
          733A783D2261646F62653A6E733A6D6574612F223E3C7264663A52444620786D
          6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F
          30322F32322D7264662D73796E7461782D6E7323223E3C7264663A4465736372
          697074696F6E207264663A61626F75743D22757569643A66616635626464352D
          626133642D313164612D616433312D6433336437353138326631622220786D6C
          6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F
          312E302F223E3C786D703A43726561746F72546F6F6C3E57696E646F77732050
          686F746F20456469746F722031302E302E31303031312E31363338343C2F786D
          703A43726561746F72546F6F6C3E3C786D703A437265617465446174653E3230
          32312D30322D32305432333A30323A34383C2F786D703A437265617465446174
          653E3C2F7264663A4465736372697074696F6E3E3C2F7264663A5244463E3C2F
          783A786D706D6574613E0D0A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020200A202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020200A20202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020200A2020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020200A202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          200A202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020200A20202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020200A2020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020200A202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020200A20202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020200A2020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020202020202020200A
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020200A202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020200A20202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020200A2020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020200A202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020200A20202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020202020202020202020200A2020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20200A2020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020200A202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020200A20202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020200A2020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020200A202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020200A20202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          0A20202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020200A2020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020200A202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020200A20202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020202020202020202020202020200A2020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          202020202020202020202020202020202020202020202020200A202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020200A20
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020200A20202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          20202020202020200A2020202020202020202020202020202020202020202020
          2020202020202020202020202020202020202020202020202020202020202020
          2020202020202020202020203C3F787061636B657420656E643D2777273F3EFF
          DB0043000302020302020303030304030304050805050404050A070706080C0A
          0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F1718161418
          12141514FFDB00430103040405040509050509140D0B0D141414141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          141414141414141414FFC0001108005C010C03012200021101031101FFC4001F
          0000010501010101010100000000000000000102030405060708090A0BFFC400
          B5100002010303020403050504040000017D0102030004110512213141061351
          6107227114328191A1082342B1C11552D1F02433627282090A161718191A2526
          2728292A3435363738393A434445464748494A535455565758595A6364656667
          68696A737475767778797A838485868788898A92939495969798999AA2A3A4A5
          A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DA
          E1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101
          010101010000000000000102030405060708090A0BFFC400B511000201020404
          0304070504040001027700010203110405213106124151076171132232810814
          4291A1B1C109233352F0156272D10A162434E125F11718191A262728292A3536
          3738393A434445464748494A535455565758595A636465666768696A73747576
          7778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2
          B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7
          E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD50C7E14B8F
          7A5ED452013F1A3F1A5A1B81400DA39F5A4DDF9567EB1E23D33C3F6CD71A95FD
          BD842067CCB89020FCCF5FC29C62E4EC80D2FC6931EE6BC8356FDAD3E1668F31
          8A6F16DA3BAF07CADCD8FD2A5D1FF6ACF861AE4AB1DAF89E12EC70018DFAFE00
          D6FF0057AB6BF2BFB8399773D6B1EF463DEAA69DAADB6AD6B1DCDA4E9710C832
          AE9C822B2F55F1EF87B43BD6B3D435BB0B3B95019A1B8B944700F43827359284
          9BB25A8CDF2A08C6680BEFFA572C7E2978401FF919B4AFFC0B4FF1A7DB7C4DF0
          ADF4863B5F1169B7520FE186EE373F90355ECA7DBF015D1D3ED146D15950F8AB
          49B8B85B78B53B47B86191089D7791FEEE73FA569ABF239E2B37171DD00EDA28
          D8297348C485E3AD001B3DE8DBEF4CF308E4E7154752F12699A3806FAFEDAD01
          E9E7CAA99FCCD349BD80D1DBEF4857DEB9A7F899E18538FEDBB327FD99030FD2
          963F891E1D9A411C5AA432484E02AE727E831CFE14FD9CBB05CE931ED4B8F6AA
          163AE59EA52BC76F7092C91805D14FCC99E991DAABEA1E2CD3349BA16F777490
          CB8CED6CFF00852E577B0AE6BE28E7DEB097C73A2B0C8BD8FF005ABDA76BD65A
          B3B25ACEB2328C95E7228E56B563B97FF3A3EF7159B3F88EC6DAE1E1926DB227
          518A17C4960DD271F91A395BE82B9A3B3F1A31ED54A3D72D2460164CE7A7145E
          6B36B6B693CB2CA152342CFC1240039381D6972B1DC9E5B848A36773840092ED
          C0007526BE27FDAA3F6C2332DDF847C057592C3CABED6E13C2F631C27BFF00BD
          F5C7A8E3FF00690FDAE353F88925F7877C31E7E8FE1F57314F2C8A63BABA0382
          18120C687D3A906BE629140F94670BD07F9EF5F6395E53CC9622B7C91CD52A74
          46FF00C278D7FE16C78315FF00788DABDAAB07C36EFDE01C93C9CE4F5F5AFB0F
          C7FE17D2754FDBD7C1FA65EE9B6979612F87A776B59ADD5A32407C31523B1C57
          C71F0BEEA2B3F8A5E109E69520822D5ED9E49A56DAA8A2552589EC00C9AFD38B
          C93E12DF78FAC3C6B77AAF86DBC4B676EF6B06A2FA845E6471B677283BBA104D
          7466F3951A91E44EDCAD684D34E47CC7FB3BE9767A6FEDD9F11F4EB5B386DAD6
          0B49152DE38C2AC6A3C9C0031C727F5AF1CF113A5AFC54F8988178FF008496E0
          80188C7EEE2F4AFBC74583E09F867C71A878CF4ED4FC2D67E23D454ADD6A31EA
          3087901C64121F1FC23F2AFCFDF166A96D75F153E235C5ACF1DD5B4FE219E48A
          681D5D1D4C7172181C1158E0EB4ABD673717B245DB951FAD5FC34B4DFE1A757C
          61D025472C9B63248CFAFA539BDEBE6EFDB53F682B9F831E06B3B1D11E2FF84A
          35B90C36DE626F5861520CB211C740428F771E95B50A52C45454E3BB13765739
          9F8EDFB76E8BE07D7EEBC37E15B6FF00848B50B7DF1DEDE4130115AC838DA1B9
          DCC0F503A57C97AF7C4CBDF885A9BDDEA3E1ABAF11DCC87AEA5773C8A3BFCA8A
          02815C643F127588B0234D2EC541E1EDF4E8D18FB92771CFBF7C9CFB5B8FE217
          8AAFA3F2C6BBA94884E365B1DA3E9F201C57E8B85CB6961A2ACBDE38E536D9DB
          69CBE288403A7781F4FD323FEF49641D7F376AD62DE379B6F9FACE95A3A77F2A
          E20842FD5501AE174DF0DF8B35E9479361AD6A2EFDC994FE84F4AEBE2F807E34
          B7845C5EE86DA6C079692E01242F7242824FD2B794A9C7E29224FAB3F626F3BC
          BF172DC788E1F1049BEDB2B13B3F958120C1CF1CE3B0ED5E6DFB537FC23B6FF1
          B2FDAFEDB50BCBB3636E7C9B79D618C2E5F073F7B93FCABBDFD86F458F4393C6
          70FF0069437B3EEB4324691488623897EF6EEBEBC570BFB56DD6896FF1AAEDEE
          B4DBBBFBAFB1400E2EBCB8971B8FDD0339C30EFDEBE5A8A8BC7CADAA3A1DD44F
          2D8FC45A659B66D3C37A741E925E969E51EFF31C7E95B963AD78B3C43088ECBE
          D8D00E8BA7DB8863C7A12B807F1358F6FE306B35C699A4E99A585E77C36E2490
          E3B92F9C9A92E3C45AB6A8AE2EEFEEE581705D77B08D79FBC42FCA3A57BF28A4
          B546773721F0ADC5BC8D36A5A959E96DD4F9B3F9B3FD4A479FE75EABE01F8F57
          3F0FF16CFA8EA1E28B2E06CBA55458D7232D193B9CF1FC24E3D057865AA838C0
          CE3AEEC020FA67D71CF5F4AD5B5569A4F2A3DD2C8C7216319393DF033CD7256C
          3D3AD1E5902933F423C27E2ED37C65A2DB6A7A54E2E2D2619CF428DCE5587660
          4723FF00AD5B4EDF29AF91BE06EBFABFC3BF112C9A8AA697E1FD41825CC77F20
          8887E88E887E6CFDDCF1D09CF623E95F885E22FF008467C17AB6A5B5D8C309DA
          2338392768C1FA9AF8EC461DD2ABECD753A232BA3C7FE2D7C6BBA4D52EB46F0F
          DCADADBDB9F2AEF5052BB8BF78D09E983819EB9C8E319AF36B3D1B50D407DB64
          8E458DBEF5EDF4BB15BDF7B619BFF1EAA76BAF7D8B68D36C6DEC1F9C5C499B9B
          807B9F324C85CE4E703BFE34AD7335F4C65BBB89AEE5FEFCD21723F3CD7BF4A8
          46945248CDC8E861874BB1E1A7935275EB1DB03145F8BB0DC7F01571758B8F2C
          C76E12C206EB1DA82A4FD58E58FE754B48F0DEADAA5BA4D65A65DDD5B9E0490C
          2C57DC03EBF41EBCD6ED97817C453C8A8347BC4C8C069632807D735329C23A5D
          06A7A1FC0D51FF0013823E6C18B9EDFC5FAD57F8970493F8BC2448D23FD9D385
          0491CB75F4ADBF84FE1FB9D064D522BA5995DFCBE5A1644E377DD27AD647C4EB
          A957C4C211232C4D6C870A719F99BBD791177AEEC69D3530E1B28AD7FE3EA7F9
          FF00E78404337E24703F5AEF7E1CDC2CB73748902C11AA0C01C9EBDCF7AF37B7
          F95401C7E43F5EF5E87F0DE1963B8B990C6C88D1A852C300F7E33EFC569885EE
          5C512A789142F882EF9E72393DFE5152D9DB36D0F21F263EC5BEF1FA0A935EB8
          48B5EBAF2E2065DE3748FD47CA3A0AAB148D210EE77B91F7BB9F6AE757E5451A
          D0CDB322106353D5FF0089AADDB9EE383DFDFEB58536BDA6697750DBDEEA36B6
          73DC67C88EEA508D263AE33EF8ADEB51F283D88C839EBEE3D7B74E29C938AB81
          E6DF18BF66CF0B7C61D3A5926B68F4AF102AE21D56D902C80F60FF00DE5ED835
          F9D3F10BC03ACFC32F15DE787F5E83C9BEB7F9D64407CBB8889F965427B763E8
          7F027F5C21E873CD78CFED6FF0463F8B1F0D6E6F2CE00DE26D1435D69F2A0F9A
          418CBC3EE1C0C63FBC14F6AF532DCCA786AAA15354CCE705B9F9A363A54DAE6A
          DA7E9B6A035D6A17115B42BCFDE91820CE3DC8AFBF34BFF827EFC2AB3D060D3B
          5692F6FF005CB88F3FDA0D7AD0C8F205059A38C1C003E8703D6BE1BF85F297F8
          97E0A9541DC75BB13E9F319930BFE7D0D7E8C7C46FD9A6F3C7BF1F3C21F11E2F
          154BA6C3A00882E96B0075902BB338CEE006F56DA783C0AF5739AF28CE1152B2
          B5CCA92D0FCDAF8E5F095BE0DFC4DD6FC293C9F6C8ED42CD6D75220DD35BC992
          85B3FC430573DF69FA554F04DC496BA65C223145F3C90028FEEAD7E807ED0BFB
          1137C74F8912F8AD7C62FA2092C62B4168962B27DC2E776E2C3AEFFC39AF83FC
          4BE19FF856FE38F157857ED3F6EFEC7D45AD7ED26155F3311C677633C7DEAF4F
          038EA788A518C5FBCB72651773F67FF869693F8696BF343B4637DD35F987FB66
          7C4DD1FC41FB406AF6779E1DFED893418A3D32392E2FDE38B2504CF8555CEECC
          814F3FF2CC57E9E3E554E3935F8D1F16ACF51D73E367C40920B59EEE56D7EF41
          3146CC7899C01C7B28E6BE9F87E9C6588949F446555E8456BE384B3C7F66785F
          41B000F49216B93F8991BFA57A0FC225F1BFC6AF1E69FE16D23545D21270669E
          7B0B58E14B7817EFB9006739DA179E4B0AF3CD3BE1AF8A2F3705D16EA01D7374
          0443F3622BECEFF827CF81E5F0EEA7E3ABCD43EC2DA834767027D96E12668E3C
          CCCC095FBA09DBC7FB15F559956587C3CA71D59CD05791F4DFC39F851A27C38D
          312D6C2292E272BFBEBDBC7324F2B0E09663D33D7038AECBC84C1C2AAFD00A7A
          AE3AD3B15F98CEA4A6DCA4CEDE5454874DB5B5925961B686296418764400B7A6
          7D7A9AF847F6B1D32EEF3E395FA5B59CF705AD6DC811C0CF9F94F7008FD7B0AF
          BE5BBF6AF847F6B7D7353B1F8C97B6B05FDCDB5A9B381BCA85CAA93B48C903AF
          4AF6329BFD67E4655363CC2DFC13AC2902EE1B7D338CE752B948BF100127F4AF
          A47F63FD0F4F8EFBC5311D4ACF567686D7745142C522E6618DCE30D9E9C0ED5F
          28427CCF99D9A439CB6F3B8FE39AFA8BF6201B75CF182E318B6B227B7F15C76F
          AD7BF9973FD5DBBEC654F73B7F8DDF03B42B0D1F51F15689A24126A1691F9B2D
          9E58432C63967D8A402C064FBE315F3A43E2FD51ADC436B70BA6C2C73E5E9D1A
          C2307FDA51B8FE26BF412EA1496D658DD4488C8559586411DC1AF80A7F02DD68
          F79776D737363A65BDB4F2409F6CB85DEC88E40C46BB989C006BCACB310EA45C
          27A9AD4496A518D44CCED2E59DB92CDC96F7C9EFEF5F58C7793F8FFF00673924
          CB4D77FD9E55F6F2EF242486CE71C9F2FBF735F33DADBE8367C49757DAB38190
          96B08B78BF163B8FE82BEA0FD9BEF22BCF87F32DBDA0B2B78AF6544884CD275D
          AC4EE63EA4D5663CAA31A895AC103E78D2741D47548526B6B29A4B7C17FB4B0F
          2E1EA39DEDB41FC3D2B5E1B1D3AD549BAD59277CE7CAD393CD1E99321C28FA73
          5DB7C5AF843ABD96B171AA69EB71ABE9133F99F6762D2BDA313C854E7283B63A
          579ADB480A87C9C7A96E73D31FE715A52AAAB453B92F467A47847E275DF83D52
          D2C6C33A62BB3982E242F2B13D5830002FAF031CD7B5F857E2268FE2D554B794
          C376465AD66E1C7D3D6BE69D3746BBBC8C4D0C0CB075FB43E238B1EBB8E33CF6
          E6B6AD63B0D327495EFA4BABA520A8B06DA148EFE61C7E2003C66B8F118684F5
          8EE5C59F518C861F5AF2AF8976624F14472CB711DB41F66400B72C4EE7E00AAB
          27ED05A5786BC371DC6BF14C2F99CC51DBDB46CE66C0E3E6C000E3D71F8D7196
          FF001107C506935C5B13A7C6B235AA46CDB9885E4124743C9E99FAD71D1A1523
          2BB5A14ECCDC82EE1B7C0B580B3FFCF7B8009FC17A0FD6B96F8B1F15B5CF86BE
          1B82F34931C97DA8CC6D7ED17196F254296CAAF4ADF8727BD797FED34BFF0014
          8E83CFFCC4241FF908D7A346946751425B10F43D27E10EB57DE21F877A1EA7A9
          DD497BA85C2BB4D3C8465D848DFA62BBCB75F940FC2BCD7E029DDF097C39FF00
          5CA4FF00D1ADFE15E976FD0572568F2CDC5149DCF987F6E2895B50F05647FCBB
          DD007B8F9A3EE2B3FF0064EF8E5A9E97E33B0F056B77925F68DA9B7936324EE5
          DAD27C6E5504F21186463D715A9FB6F7FC7EF81FFEB8DD7FE851D7CC9A7DE4BA
          6EB9A65E5B3BA5CDB5F412A3AF50565423F957D0D2C3C2BE05C5AD7B98DDA99F
          AD56E3BED3F8D5F450E8777391824F7AA31B166DDFDEF9BFCFE75A107DDAF8A9
          1D47E4DFC4EF04DD783BF695D63C3DA5C834EBA1E218CE9B3B0C880DC3A4B13E
          3D15A41F82E2BD3BE226ABFB457807E26683E041F10E4D6F5FD7A06B8B35B548
          E18C85DE0AB12A71C231CD43FB504490FEDBDA4ED04B4973A1B1C1C13FBF51FC
          801F4AFA83E23FC07D7FC67FB4EFC3AF88D677D63168BE1EB6920BB826DDE7CA
          CC25C6CC7CB8FDE2F5F7AFADAD8BE5A74655126B95EE72463BA3E1CF1C7C76F8
          F3F0F3C5179E1DD7FC73A958EB36410CF046D048177A870776CC1C865ED5E457
          3E22BED7352BFD5354B96BED4EFA733DCDD4D9DD2B950371C607403B57DB9FB4
          37EC43E38F8B5F18BC45E2DD275AD12CF4ED43C8F2E1BB594C83CB8551B3818C
          654FE62BE25F1B784AF3E1EF8DB5EF0BDF62F6FB47BA3693CD6A1BCB660AAD91
          9F6615ED60715859413824A76D6C44A32B9FB87DA9693B52D7E66770C906E522
          BF273F6ACD53C4FE1AFDA03C6DA449AEEA31D935DADDDBC4B2F96AB1CD18906D
          C63232587D41AFD637E54F15F137FC140FE10E95713E93F122F67D421B4B6897
          4BBF5D3ED84ACC19D9A176CB0DA012EB93DDD457BB92D78D0C55A7D4CEA2BAD0
          F85DAE27BCE2E6E26BAEB9FB44AF203C7B935F40FEC65F17EC3E0EFC529ADF55
          912CF40D7A35B4B8B86015609D4930BB7A29DCCA7FDE078C5791C5A9F832D64C
          DA683AB5F9EA4EA17CAAADF84609C7E35A369E3782CD47D83C2BA259B118FDF2
          3DC673EBB8FB0AFBEC5518E2694A9B5BA38E32E567EC35B5E47730A4B1BABC4E
          0323A9C860464107BFE152EECE78AFCC5F01FED75F11BC16CB1ADFDAEA560AA2
          24B2B8876C718038098E40FF000AF4C87F6FAF163201FF0008E6985CF1CC8FCF
          E15F053C971516ECAE8EA55133EEC3275078FCABE1EFDAC745B1BBF8D134D7BA
          DDB69C1AC60FDD185E5908F9BA6303F5AF55FD95BE39788FE306B3E283AE35B2
          41671DBFD9E0B68F6AAEE32E793D7EEF7AF16FDB2088FE3548CC540FECF80162
          3DDBAE6AB2EA13A38CF672DEC1369C6E8F3A8FFE117B3C94FED5D60A1FBAE52D
          D7F02A09FD6BE92FD8E754B1BAD6FC57159E9106991C76F6AC64591A491FE697
          EF31273D7F5AF9574DB7B8D40AFD9219AECFF098636907E0541C7E35EC1F08FC
          45E2DF84F7BA85C59E97676E2FA28D18EB13AC6142162080AF9FE33D457BD8EA
          4EA519420F532868F53ED1F1C78C2C7C0FE15D4B59BF91560B58C9DBBB977FE1
          41EE4E07E35F002C925CDC4B733F37333B4AE49C7CC5896C73EA7BD76DE3EF1C
          5E78FAFA393C4FE298268ADCE534DD1EDDDA34FA33ED0C7DF9FAD60C37FA0D9A
          AADB69371792EDDDE76A57070DC632634DA3F326BCEC0E17EAD16E5BB2E6EE56
          B7D8F22440EE958F11800B13CF403B9AFB17F67AD164D1FE19D879904904D792
          4972D1C8854AEE6F9720F7C015F2ADB78A35599459D8B45A64528C795A744B16
          73FED01BBF5AF59D43E3578821D312C34DF234FB78221123ED32CBB40C024B92
          33C8E719A9C753A95E2A1108BB33E99674442EEC1571925CF4FE95E39F12B5CF
          875692DC5D1BFB5B4D718645CD840B7126467EF2952BF9E0FBD785EA5E22D5FC
          4AFBB55D4AEB50270713C84A8FA28C2FE9505BD85BF1FBA19F6E07E95C34B00E
          9BE6948A94EE6E2EA926B1B6796E26BC00FEEDAE1D9B0BEBB7242E7D055FB7C2
          AE0123D707FC8FD2B32DE3555550AAABE8BC0AD383E618AF43952495C9323E21
          DAADC783EE78C3433472291EED8FE553FC19C7FC220D8000FB5CBD3FE03547E2
          5EA22DFC2EB6A0E25BA9542AF7C29C93F4ED9ABBF063FE4539474C5E49FC96B4
          6DFB0D7B896E7A3DBF6AF30FDA5867C1BA19FF00A88B7FE8A35EA16FFC35E67F
          B4B7FC89BA2FB6A0DFFA2CD6143F8CBD4A96C767F007FE492F877FEB9CBFFA35
          BFC6BD3ADBB57987ECFDCFC25D03FDD97FF46357A7DA9F9949E9D6B8311FC568
          A47CCDFB6F7137829DBA086EF3B79E8D19AF1FF80BF0CAE7E297C4ED36C96266
          D234EB85BBD4AE7F81151832A67FBCCC00C7A1CD7DBBE37F853E19F89EDA7B78
          92C0DFB5806F23F78531BB1BB38F5C5751E0DF0868BE09D2534DD0B4D874BB25
          C65205C173D32C7AB1F735DB0CC3D961BD8C56A4F2DDDD9D4C2DB981208CF63D
          474FF1AD08D8053DEB3EDD7A0FC6B89F8F1F156D3E10FC2FD635E96455BBF2FE
          CF631E72D25C38C2003BE3963ECA6BE7E319559A8456ACDDE8B53F3CBE3FF8CA
          F3C49FB50EB9AC69856EAEED35CB7B6D3B0030792DCA2463E9E6A1E3D1ABDBCF
          C56FDADE4C797E08B518FE1FB2C59C7D7CDE9C9AF91347D565D17C45A66B170A
          6EA7B5D421D42542D832BA48B2373DB760F3EA6BEB96FF0082954B0A851E0007
          6F5DDA901CFA7FABEB5F7389C25550A50A7494ACBA9C49AD5B673DE30FDA1BF6
          A7F03E9726A5AE785E0B1D3E31BA6BB5D25668A25E84B6C90951D3935F1FF8CB
          C5DA9F8F3C5BAB788F527126A5AA4FF69BA6B52628CC855465540381803BD7E9
          37ECFF00FB6B587C75F1D3F83F52F0B3E9173716B25C5B4A9722E2395531E646
          FF00282080C0F71D7A1E2BE05FDA37C13A7FC3DF8EDE37D074E8A3874EB6D437
          DB40A99585248D25D8BCF00190E056383A90A55654EAD1519791A34AD74CFDA5
          14A699BB6AE7D0531A66E7017F13FF00D6AF835AB68E924914370471EF58BE29
          F0AE9BE32F0FDFE8BAC59C77FA65F42D05C5BCCA08915BD7DFD0F62335A0D25C
          100A98C03CFCD9FF003FFEBA864FB748A42C90A93D3033549B8BBADD03D8FCB3
          F8F1FB2DF897E09F88A4FB25ADD6B7E179E52B65A8411991D73CAC5281CAB003
          EF742066B8AD37E1DF89EF63DEBA25CC3175124F88948F5CB1C62BF5D2E2C2F6
          EE331CB71049130C3064C820F6E7AD7CEFF11BF615F0C78CAE67BDD3754BCD06
          FE425992399E7B7249CE76393B47D08AFB3C1E77CB154EBFDE72CA95F53E298B
          C07756B837FAA691A729FF009E97AB27E8BCD5E8743F0DDA479BCF148B86FEEE
          9966CF8FC5F15EE373FF0004F6F14D86E369E24D2AED319DD244C991FA8AB9A6
          FEC0BE299B06EFC4BA75BA63FE59C4ECC07A0E95EA7F69E19AE6E727D9B37FF6
          2DD7BC39A26A5E2DFB335F1F322B62D25D6DCC8034806157A753F9D617ED41E3
          9826F8AC24D3B4DB2327D82126F6E2DC3CBD5BE5C1EDCD7B2FC2BFD9553E18A5
          EC916B8F7979791AA4D2491ED4F9492081DB9626B2FE247EC8B7BE3EF160D587
          8952D13ECD141E57D9B77DDCF39CF35E047158758A759C8D795F2D8F9724F1A6
          BD76A54EA93C48C3063B7C46A47A6055687739FDE1693279F30EEFE75F4743FB
          0DDDAAAE7C5CA7FDDB3C91FAD5B8FF00625B851FF23683DB3F63FF00EBD7A2F3
          2C2F7239247CF16FF2FCA381E9DBF2C5695A2990AC68A5A4270117AD7D0F69FB
          1AA5BB0371E27965031955B60BF4E735D3E97FB325B696B8B4D556239C176B5D
          CFF9961DAB9E59950E83E46785E8BA2FF65C2659702E9C71FEC55AB9C6D603A6
          0E067A57B83FECECEC4EEF106D3EF6A3FF008BFF0039AAF27ECD66656FF8A970
          3183FE860E0FBFCF5C9F5EA3CD76C7CACF09B7FA76F5AD2B7E9D47E75EC11FEC
          BA23C9FF008499CFA62C17278FFAE9525BFECE8AE0F95E280E17F896CD587FE8
          CFA7E74E58EA2F60E56796DBFCD803AFB73525FEB567A1C5E65D49838CAC4BF7
          9BDABD3E6FD9BAE64F9078BA6887711D8283FF00A33E9F98ACA97F64786E240D
          278AE77909CEEFB1AE4FD3E7A858BA2F72B959F3A788B5C9FC41A81BB9FF0077
          B788A35FBB1AFA7B12715E9BF063FE4559BFEBEE4FE9FE15DCFF00C31DDB313F
          F154DC0E7248B35079FF0081735D4F84FF0067A4F08E9B259C7AF493A3486525
          ED86467FE07ED5A56C7509D3E4892A2EE62DBFF08E6BCCFF00694C7FC211A3B1
          040FED03DBFE99D7D0F1FC2865C85D5F254FFCFB03FF00B35739E39F80369F11
          B498B4F97C42F12DADC994B5BC0858385DA54FCDD41AE4A38AA71AAA4D94E2D9
          C57ECFADFF00169F431E86503DFF0078D5EA36DFC39F7A87C0FF0005D7C0DE1B
          B4D1ADB5992682D8B1124B6EBB88662DC9CE3BF6F4AE8E3F075CC2028D4D4FD6
          D97FC6B9AB568549B9234B329DB31E45695B93C67F2EF4E4F0CDE4793FDA7185
          E80FD950FF005AE4FE23691A9693A179EDE2FD434B81E68E01FD97A64724ACCE
          E1060004F53D7B0E6B979A2D81ABE3AF895E1DF85FA1C9A9F893518EC60404A4
          4C7334AC33F2A27563C7EB5F9C5FB407C74D53E3978A7EDF7119B2D12CC98F4E
          D3B767CB07ABBF1CB90067D0715F5CEBFF00B0FE93E2AD41B50D63C69AF6AB7B
          20C89AE8C6CDCFA6471CFA7AD669FF00827AF8424FF999358907B084671FF01A
          F6F015B078697B4A8DB9194A329687C21E1FB58352F1568965749BAD2EAFEDA0
          9D4123F76D2AABF23A7CA4D7E84C5FB1BFC08685246B3462540DC757907E787C
          7A5717A2FEC3FF000BBC4975796DA4F8F6EF56B8B460B711D8DDDBCAD0B1E9B8
          2A923A1FC456A1FF008270F81646F9FC45E21DDC007CD843638FF62BB7199852
          C449725494522630B6E8ED341F017C08FD989EF7C57672E9BA3DD8B7688DD4D7
          ED71398FA948C33331C9C70A39AFCCAF8C5E3A8FE2A7C53F1478B1C496716A97
          AD35BC2CDF32C215550371D70A01FA57DD1E27FF00827B7C37F0CE8379AB5DEA
          FE2ABB4B588CAD1584515CCEDDB091888966CFB63D78CD5E87FE09B7F0F2EA18
          E75D7BC5482450FB1AF228D973D88F2C723A735960F1182A3373AD3726FC8A6A
          4FE1D0FB1DBEE74CF15F326AFB6D7C5BE34F187FC259A959F88ACA4D420B1D39
          AF1A4B59922B62500B6C84CAED56CE3271D79AFA68FCD907A579FEA1F04FC0FA
          8F8D2F7C5773E1EB697C41796AD693DE167CC9132EC652376DE546338CFBD7CC
          51928B7746FCBA1E5107C58F17F8574AF0D3EAF7CD7B69AB5A23DC6A57162B14
          D67732CE161478D5986D6059339EA0671DB2FC5DE38F1E785741BB3378C6E2F2
          E0EBCD6B1CF69A324AE91A2E162640FF0075D88DD2646D1F9D7BAF877E11F847
          C33A1AE97A6E890C1A7677FD9DDDE55C87120E5D89E1C6473C56ACFE08D0E717
          29269F1B89FCD690E4E58C80093BF7C0FCABA155A7177E51729E61F0DF5EF155
          FF008F04FAB789E2BBB1BC1796EDA1ADA2C66CA481D572240C4B13939C8C722B
          8CD63E2278BEDF44F14DEC7E277BA9E7BB74B5B4B5863F374F58EF162F972D83
          B94FF1E391F80F72D1FE14784FC37E2ABCF1269BA3436BADDD2F9535E2BB9660
          704F04ED04E0720738AA737C14F045C2EB8B27876D5975D7F33511961F686593
          70279E3E6F9B8C73CD4AAB4F9DB689F7BB9C7FC57D16C757F01782B49F126B32
          5CE9F3EA70C77BA81B916BE7016F31DCEE8C00191C8070715C27857C55E23B99
          F4DB6D3BC4B73159D8F861AEED0CCF198AF6506548CC8CFF0031380AD9191851
          5EEBAC7C29F09789BC1F69E14D5343B6BEF0F5AED10D84C0B226C042F7CF0091
          F89A8AEBE0FF0082EFB50B0BD9BC3762D75676DF60B793611E541B48F2D4038C
          6091F8D4D3AD0B3BA2B965DCF07F057C46F11EB9AA78374FBBF136A76404978D
          A8BDC7D9C485D194AC6EC32AE87242EDE7079ABD63F1BBC50BA7B8D56E45BEA9
          A325A43A9436F12BC739B92E914E9FEC96687E8437A57B143F047C070DAD85AC
          7E17D3D20D3656B8B445423CA91C96661CF735D1A784744467DBA55A8DD1450B
          7EE81DC88F9453ECA4647A1AD275E95F488B95F73E76D4BC69E26D375AD62F07
          8EA691D0DD59FF0066C8210901B778544D8E1816F9B39E0E73C5749AF7C47D5A
          3D52EAD2C75D7920B4367A91B98D6368E4B5B9B88E358830186C1130E3DABD46
          E3E12F83AF358D4F559FC39A7CBA8EA319B7BBB8684169A36C060DEB9C0AD1D3
          FC09E1ED2F4F8B4DB5D1ECE1B18638E18E058576AA236E451C740DC8F7A255A9
          E8F942C7CDFA87C50F1C6A9E1FD4EDAEEEAEB4A3676F6D6725E5ACB0DAB4D706
          E1D659629645DAABE598F0C473820735BF2F8EF5D93C65278365F115D4563AAC
          E63D2F5AB5689E58D12CD4CD1BB15DA65F31848A47DEC9E9B6BDC352F01F8735
          ED38E9DA8E89637B63242B1BDBDC40AE8C81B705208C100F352699E0FD134D89
          20B4D26CED628595A3586155084205046070429C7D28957A56D22163E6EB6D5B
          5CD3E4F0BCD37C4DD6167B6B3B0BBFB05C4D6D8BE33DDB46EB28316E750B8000
          E4575DF11358D77FE16E6A56561E25BCD31EDB4092E74FB5FED1822B792EB648
          137DBB8324A3383B94803183D335EBB79F0DFC2DA9EA5A5EA577E1ED32E350D3
          462C6EA5B48DA4B5EBFEAD88CAF53D3D4D4B7BE05F0EEB1AD41AC5F685A75E6A
          D6E8D0457D3DAC6F3221C82AAE46E00E4F00E39350EB45CB60B1E5DF0EFC69AD
          F8E3C33E3ABCD79EE741B51008E14BC508D6882D144B2B63900C9E6383FDDC1A
          F1EF84BA87FC23DE0AF11DAF865BC27E1EBB174E5F51F06EA067D2EE5BEC2DE5
          C923BAE227042EEC0EB82720E2BEC25D2ECE1690C76B0A9970B21118F9C01800
          FAE0002B2749F873E15D0ECAE6C74DF0D691A758CD2169ADAD2C228A3958A6D2
          CCAAA0162A4AE7D0E2946BC6F25CA163E71F03EA5AB789B41F0C6A4FE32F11DA
          DC5BCB7D0CF00D56D6F6195E1059479B0C78953A9C8E700038C555D37C65E30D
          3FC0763A9787B57BED7AE6F2C3504BD85EFA1BE6B4B87545B69B7AA8012321C9
          5EA37006BEA4D1FC1FA1F87ECE0B2D2F47B1D36CE12CD15BD9DB2431A16E5885
          5000CF7F5A8345F06E81A158BC1A6687A6E9B6F364C90DA5A471231720312AA3
          1CF7F5EF5A7B785B588729F39F8BBE266A6CFE35D3C788EF60FF0089759FD8E5
          B875B2B4DE853CF10DDB215DEE5B1D38CE31DC6DDE78A2DB5EF807E0DBCBDF13
          6ADE1CD3A7BC8A0BDD564BF884F1A2A484937014A11B917E603907DEBDDAE7C3
          3A45E58BDA5C695653DAA865FB3C96E8D191C120A918C1EF4B75E0FD0AEB414D
          227D1EC27D2215023B092D91A040BD008C8DB81F4A895685938C6C3E57DCF01F
          82BE21975DF8B9A83EB1E24BB9AEE2B0B65B2B29AF555665685497FB3EDCF200
          6DF9E4C86A86ABE27D5FC1F79A95F694D249A726B3AB26A56507323F99751A24
          EBFF005CC92CC3B866E95F4747E15D160D5A3D4D349B15D4446B12DE2DB20995
          3006D0E06718006338E05586D36CE10EEB6906E22463FBB51924FCC4F1CE7BFA
          D0AB454AF60B1F2678B16686196EF5DF136B9E1FD2F55D7EF2092F0EA8AB1C91
          448FE5347C7EE8161F73A9C75A8EF350F15DC78BB5DB9D3F57D4D0BD85B8B3BC
          7BDDF0CCEA2DF112C58FBE4E7737A3D7D6B7BE1DD2F54B53677BA6DA5E5AF99E
          67933C08E9BB19DD82319C93CFBD48347B056522CADF38047EE978E00C0E3D14
          7E55A2C5C52B728B90F99A1F1F78AB499344BBD706AE97973E247BBB9B2B68C4
          8969685444904E78DA9FBD0D9C1E52B2CF89E1F0BF80F539B40F11788BC43E25
          BEBEB59352B5827372F6932132CC8A188D8ACB1ED651D037E15F57C7636F2B48
          CD047BA4F95C841961EFC73D4D79BFC29F2A6F157C4322DA08443AC380B14614
          1C469927D49EFEB4BDB45EBCA2E53CFF00E1CEB1A6DF7C6F92F23F115F5C6BD7
          ED7CD79A44D77279505B66336EDE49F953E5FA75AE83E0BEA1A75D7C52F896B2
          6A5F68D6C6A720FB28BD96564B75660998DBE5420E40DBD80AF658B47B1B6BE9
          6E62B3B78EE760533244A1CAFF00777019C703F2A58F4FB6B5BA9AE22B789279
          305E554019FAFDE2393D3BD632AAA4F6E85F29F127F6E786E4F086A43C3AD1DA
          EA9A6E8FE47892EA259ADA3595AEE2D82691006627329253900B74CF1DD586A1
          E116D711B4CF10EA92EAA34358F42B3B4D46E5E2B8B2FB282CECAC7057CC0C04
          8C37640E7B57D41FD8D631C7222DA5BAA4C7F78A215C31279246393DF9A72D8D
          B46DB96DA2568D08521070076FA56BEDD592B19F29F22DA6BF37F6D7C59B3B0B
          FBDD6B57B8558625D0EF2E7EDD1B4B23288FCA9C8891D141C321008526A878CB
          59F027887C4126A1E35D6B54D2B539A0B7315AB6AD776DB6210463EEC6DB49F3
          04B923A9CD7D99F63863791D23546279651827AF523F1FCE892C60936B344A4E
          D1ED4D6223FCA2E43FFFD9}
        FriendlyName = 'IWImage4'
        TransparentColor = clNone
        JpegOptions.CompressionQuality = 90
        JpegOptions.Performance = jpBestSpeed
        JpegOptions.ProgressiveEncoding = False
        JpegOptions.Smoothing = True
        OutputType = ioJPEG
      end
      object IWLabel2: TIWLabel
        Left = 8
        Top = 15
        Width = 130
        Height = 14
        Cursor = crAuto
        IW50Hint = False
        ParentShowHint = False
        ShowHint = True
        ZIndex = 0
        RenderSize = True
        StyleRenderOptions.RenderSize = True
        StyleRenderOptions.RenderPosition = True
        StyleRenderOptions.RenderFont = True
        StyleRenderOptions.RenderZIndex = True
        StyleRenderOptions.RenderVisibility = True
        StyleRenderOptions.RenderStatus = True
        StyleRenderOptions.RenderAbsolute = True
        Alignment = taLeftJustify
        BGColor = clNone
        Font.Color = clNone
        Font.FontName = 'Verdana'
        Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
        Font.Size = 9
        Font.Style = [fsBold]
        NoWrap = False
        ConvertSpaces = False
        HasTabOrder = False
        FriendlyName = 'lblCademail'
        Caption = 'FU-T3MMM-WF1a'
        RawText = False
      end
    end
  end
  object rgnMenuIntracrit: TIWRegion
    Left = 1272
    Top = 69
    Width = 441
    Height = 497
    Cursor = crAuto
    Visible = False
    RenderInvisibleControls = False
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clNone
    Color = clNone
    ParentShowHint = False
    ShowHint = True
    ZIndex = 1000
    OnCreate = rgnMenuIntracritCreate
    Splitter = False
    object txtmenuintra: TIWText
      Left = 43
      Top = 134
      Width = 377
      Height = 41
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BGColor = clNone
      ConvertSpaces = False
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 11
      Font.Style = [fsBold]
      FriendlyName = 'txtMenuIntra'
      Lines.Strings = (
        'How do you want to conduct the intracriteria evaluation?')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object btnElicFunc: TIWButton
      Left = 80
      Top = 210
      Width = 265
      Height = 35
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Elicit marginal value funcion'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btnElicFunc'
      ScriptEvents = <>
      TabOrder = 5
      OnClick = btnElicfuncClick
    end
    object btnInputNew: TIWButton
      Left = 80
      Top = 341
      Width = 265
      Height = 35
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Input new problem'
      DoSubmitValidation = True
      Enabled = False
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btnInputNew'
      ScriptEvents = <>
      TabOrder = 8
    end
    object LnkInf1: TIWLink
      Left = 373
      Top = 219
      Width = 19
      Height = 12
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clMenuHighlight
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = [fsBold]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'LnkInf1'
      TabOrder = 9
      RawText = False
      Caption = '(?)'
    end
    object IWLink2: TIWLink
      Left = 351
      Top = 353
      Width = 46
      Height = 21
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clMenuHighlight
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = [fsBold]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWLink2'
      TabOrder = 10
      RawText = False
      Caption = '(?)'
    end
    object IWLink3: TIWLink
      Left = 373
      Top = 284
      Width = 65
      Height = 17
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clMenuHighlight
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = [fsBold]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWLink3'
      TabOrder = 11
      RawText = False
      Caption = '(?)'
    end
    object btnusetab: TIWButton
      Left = 80
      Top = 277
      Width = 265
      Height = 35
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Use predefined analytic functions'
      DoSubmitValidation = True
      Enabled = False
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'IWButton2'
      ScriptEvents = <>
      TabOrder = 12
      OnClick = btnusetabClick
    end
    object TIWHelpelicvf: TTIWHelpTip
      Left = 351
      Top = 215
      Width = 16
      Height = 16
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BackgroundColor = clInfoBk
      BackgroundColorTo = clNone
      Filter = fiShadow
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      GradientDirection = gdVertical
      HoverColor = clWebRED
      Image.Stretch = False
      Image.Frame = 1
      Image.Data = {
        FFD8FFE000104A46494600010101006000600000FFDB00430003020203020203
        03030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D
        0E110E0B0B1016101113141515150C0F171816141812141514FFDB0043010304
        0405040509050509140D0B0D1414141414141414141414141414141414141414
        141414141414141414141414141414141414141414141414141414141414FFC0
        0011080010000F03012200021101031101FFC4001F0000010501010101010100
        000000000000000102030405060708090A0BFFC400B510000201030302040305
        0504040000017D01020300041105122131410613516107227114328191A10823
        42B1C11552D1F02433627282090A161718191A25262728292A3435363738393A
        434445464748494A535455565758595A636465666768696A737475767778797A
        838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7
        B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1
        F2F3F4F5F6F7F8F9FAFFC4001F01000301010101010101010100000000000001
        02030405060708090A0BFFC400B5110002010204040304070504040001027700
        0102031104052131061241510761711322328108144291A1B1C109233352F015
        6272D10A162434E125F11718191A262728292A35363738393A43444546474849
        4A535455565758595A636465666768696A737475767778797A82838485868788
        898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4
        C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9
        FAFFDA000C03010002110311003F00FBBF55B5BFD7B458357BCF0D49AFEAB73A
        834496D717C20B6D3A2556259DB69F2D54A952555999B1D01C08BC21E378B43F
        87BA5F89347D15D341D4F74AF66594B5BB8253E4651B5D188055B8C8E7F88558
        D7AF174FF04F883C2DE27787CDBA32C50C97292AC17B14872CC5A2C1E72DB954
        823278C609D8BF867F897A5C5A7E8ED1E9FE15CF9325C445448DE5E0AAC68061
        5432A8E71C6EE06067A7A79187E67FFFD9}
      LinesHelp.Strings = (
        
          'By clicking on this option, you will start the intra-criteria ev' +
          'aluation, eliciting a marginal value function for any continuous' +
          ' criterion.')
      LinkColor = clWebBLACK
      Transparency = 100
    end
    object TIWHelpTip1: TTIWHelpTip
      Left = 351
      Top = 284
      Width = 16
      Height = 16
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BackgroundColor = clInfoBk
      BackgroundColorTo = clNone
      Filter = fiShadow
      Font.Color = clWebBLACK
      Font.Size = 10
      Font.Style = []
      GradientDirection = gdVertical
      HoverColor = clWebRED
      Image.Stretch = False
      Image.Frame = 1
      Image.Data = {
        FFD8FFE000104A46494600010101006000600000FFDB00430003020203020203
        03030304030304050805050404050A070706080C0A0C0C0B0A0B0B0D0E12100D
        0E110E0B0B1016101113141515150C0F171816141812141514FFDB0043010304
        0405040509050509140D0B0D1414141414141414141414141414141414141414
        141414141414141414141414141414141414141414141414141414141414FFC0
        0011080010000F03012200021101031101FFC4001F0000010501010101010100
        000000000000000102030405060708090A0BFFC400B510000201030302040305
        0504040000017D01020300041105122131410613516107227114328191A10823
        42B1C11552D1F02433627282090A161718191A25262728292A3435363738393A
        434445464748494A535455565758595A636465666768696A737475767778797A
        838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7
        B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1
        F2F3F4F5F6F7F8F9FAFFC4001F01000301010101010101010100000000000001
        02030405060708090A0BFFC400B5110002010204040304070504040001027700
        0102031104052131061241510761711322328108144291A1B1C109233352F015
        6272D10A162434E125F11718191A262728292A35363738393A43444546474849
        4A535455565758595A636465666768696A737475767778797A82838485868788
        898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4
        C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9
        FAFFDA000C03010002110311003F00FBBF55B5BFD7B458357BCF0D49AFEAB73A
        834496D717C20B6D3A2556259DB69F2D54A952555999B1D01C08BC21E378B43F
        87BA5F89347D15D341D4F74AF66594B5BB8253E4651B5D188055B8C8E7F88558
        D7AF174FF04F883C2DE27787CDBA32C50C97292AC17B14872CC5A2C1E72DB954
        823278C609D8BF867F897A5C5A7E8ED1E9FE15CF9325C445448DE5E0AAC68061
        5432A8E71C6EE06067A7A79187E67FFFD9}
      LinesHelp.Strings = (
        
          'By clicking on this option, the system will use prefined analyti' +
          'c function declared previously for each criterion. This button w' +
          'ill remain disabled if information about any criteria is incompl' +
          'ete.')
      LinkColor = clWebBLACK
      Transparency = 100
    end
    object IWImage38: TIWImage
      Left = 19
      Top = 432
      Width = 207
      Height = 50
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      Picture.Data = {
        0A544A504547496D616765CF150000FFD8FFE000104A46494600010101006000
        600000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC0001108003200CF03012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
        A2B83F8E1F1125F85BF0DB55F105BC2B71790858EDE393EEF98EC154B7B0CE48
        EF8C57C69E14F88BF1BFE26EB3047A3EB5AB4BF6C99E35B88D0456A8CAA19816
        0BB57008E3DC7AD7B582CAEA63294ABF3A8C5757F79F299A71150CB3130C1FB3
        954A9257B455F4BD975EACFD07A2BE20F047C54F8A1F0EF599F5FF001FCBAE7F
        C22D66AD14B2EA36EE216919822151B416F9BA63EB5E9FA1FEDCBF0F6EA675D4
        7527B64C7C863B19D8939FF76BE7331C4D1CB71F1CBE4DCA4D5F9A319382DF47
        2B593D3AF91D582CF30B8AA1EDABB545DFE19B5193F34AFB79F933E90A2B0BC7
        1AB4DA2F8275DD4ED6EED6C6E2D74F9EE22BABE563042CB1B307902F25011938
        E700D7987C33F8F1A5E9FF0009FC21ABFC40F19E8536A5AD4B35BC5A958878ED
        2E64495970A59571B46D0C4851907B57A11A339C39E2AFADBF0BFE87BB2A918B
        B33DB28AE17E1E7C70F02FC57BCBEB5F09F892CF5AB9B2199E18772BAAE71B80
        60372E78DC32391CF359CFFB497C345F1AC5E125F1758CFE20967FB32D9DB879
        7F7B9C6C2EAA543678209E3BD1EC2AF338F23BADF461ED2164F996A7A5D15E03
        F08FF6C6F087C5AF897ADF84AD0C764D6F308749B8798B9D5B0252EF1A841B15
        5630DF31C90DDB15EFD456A3530F2E4AB1B3DC29D48545CD0774145145606814
        5145007CA9F0CFF6BAF14FC42FDA1FC7BF0EED7C2163736BE1996F144915E98A
        E26482E561C8DE0A163BC1DA4A8FF6BD791F8CBFF050CBEF845F1DADFC1D77E0
        C31E8E22B792EA4D42430DDC7E60F988DA59085EB91B8100F35C67EC7BFF0029
        04F8E5FEFEAFFF00A7186BCABF6E4F873A9FC55FDB924F0D68CCA355BBD1E136
        CADD24912DA49163F6DC502E7B6ECD7DC52C0611E3D52A91F73D9A93DF7B2BB3
        E7A788ADF57E68BF7B9ADFF00FD30D1FE29E8BA84D6D6B7DE76817F7007936DA
        A288C4F9191E54A098A5C8E7F76ED5E117DFB616AFA7FED73AAFC253E185BDD2
        2C115DEF6CB7497654D9A5C1711E70C1771055416207193C5798FEC03E28B3F8
        B9F0C750F05DEEA77BA4F89BC3E7CA9AD2561716F776A5885325ACE19328D98D
        B6AA9C04C9C9AF35D174DD6BC17FF0526D6ED347486EB54B3886C5B2B3DD1329
        D3109021927040DA7EE8938FE11C05AF328E5F1A55F1342BABB8424D7E16675D
        4C4BA94E954A6EDCD249FEA8FD2FD3FC41A6EADA3A6AD677D05C69AE8641748E
        366D1D493DB1839CF4C1CD7CABF1A7FE0A51F0EBE1E5D5C695E13866F881AE46
        4A1FECE9047628DE86E083BBFED9AB0F715E03FB7178FB5DD7351B0F0D4568FE
        12D27584DFAFFD8E6B9805DCA1C0491E278D376D032576967C8C17DAA6BDD3F6
        45F06FECF3F0F7C2B6FA96897BA5CDE26B74CDDEA1AFCD1FDB5240BB98C4AC70
        8BD71E58CE3863B8115CB87A384A34562315795F68AD3EF7D3F337AB3AD527EC
        E8D95B76FF0044677ECFBF183F699F8B9F15346D6F5EF09DB7877E1A31905D5A
        BDA8B6CC6C87648AD31333B06DA72B85233C0C8C745FB50FEDB93FC13D73C2B6
        7E1CD12DF5EB1D5A5B8865D4AE999202D13441961607E7C799F3372A0F009218
        0F49D73C6973F10F527D2ADAC6F67D3703FE2496A7CAB9BB53D1AF243816B01E
        BE593E638FE1C650FC79FF000524D1F56D375EF83BFDAD7369F3B5F243A6E9F0
        04B5B24536A02212373F04658E07CA30ABCE7AB03EC331CC69C254946166ACAF
        D137AF9F99862154C361652536E5A6AFD51F4D7ED3DFB5B4FF0005FE1BAF8A7C
        2FA0FF00C247682FA2B26D42E498EC98BAB9FDD36434BF73EF27C9FED678AE73
        F67BFF00828D7C3FF8B82D34BF119FF842BC49261365E480D94CFE91CDFC393D
        9C2F50016354FF00E0A911AC7FB31DA22A8551AFD980A0700797371552C3F628
        F87FFB407ECDBF0F6F25B24F0EF8B4F86EC0C5AF69B185919BECE98F390604C3
        A7DEF9B1D185561E8E07EA11A98A4D3949AE65BAD174EA8552A623EB0E345EC9
        3B3EA7D9AAC1D4329C823208A5AFCF2FD997E34F8E7F665F8CD07C08F8AD335D
        69B72E9068DA93B9758F79C426373CB41211B707EE371C61857E8657918DC1CB
        073516F9A2D5D35B35FD6E7761EBAAF1BDACD6EBB33C47F6C8FF009217AA7FD7
        CDB7FE8D5AE0FF00676F8A7F0C343F05D9782EDF53BCD3EF7538E496FE7BE6FB
        3AADC3468AFB65DC02E7184DA73F2F383D7BCFDB23FE485EA9FF005F36DFFA35
        6BF3CEBEBB29CBE1996592A5524D2E67B7A2DCFC878933AAB91E7F1C45182937
        4E2B5DEDCCF67D2E7EA0785ECAD3C4963AA699AD476FAD5A693A835B5B7DBED8
        B384589402FBC7CCD8775DE06194E79C927E4AFDA27E1FFC36D27C3B7FAC4561
        6DA45FC934EBA6C9A2A3AC57770B72C9B0EE6285426198228DA470C3853D1FC2
        5F8B8BE3DF853630DE5F29B8D0636B7F10DCEA9FBD33DB0DF244D20C8DD07CA5
        49FF005808C00779CF88FED31F1B34AF8B5AD6916FA0ADD7F6658BCB3B3DCA2C
        6A669446AE2241CAC5FBA0C377CC4BB640AFC9AAD4D397A2FC6FFE47DF710667
        9655C9BEB8D42552B47DC8BB36B5B37EA9DDF4D8FD00F8DAAD27C0FF001DAA82
        CCDE1EBE01546493F667E2BE07D4B436D4BF669FD9CEC6EAC5E785FC49771DC4
        0F1120A35E3021863A106BF4ADD992C4B20CB88F200EB9C579A69DF113C54D69
        A635CF85E64FB54B144CDB24692205DD19DD76003908DD400AC4F600FD960B17
        2C3C6D18DF5BEF6E8D7EA7B35E8AA8EEDDB4B6DE699F3CDDF8364D2FF6DEF16E
        9DE14B38F436BEF074D1DBB59C5E4C2B3B40A11BE5000F9829FA8CD657EC6BE3
        EF04FC37B4B3F877E2BF0B5CE91F1224D5DA22F75A66F799D9B11B7998CA851F
        2FA71919C9AFA4343F899E2CDD6F36A9E1F996DA48E0698456371BD198598936
        8D8485433CDF29C92626E70A70FB1F8A1E2C9163371E1290492B46561F26E10A
        ABA404A96F2C8053CD72C4E3888A80581C744B1529D274A71BAB455D4B5BABF9
        6BBEABF1338D18C67CF17D5F4EE7807ECF179A37C3BFDAFF00E28F85F59D11AC
        F55D7353F3F4161643CB8E24FB448C51B1F22B46EB823838C57DB55E7575F10B
        5DB7D2F4ED423F0CDD4F1BDB09EEE110C827463204D8918539233BBAFDD1EF9A
        CA8FE29789AEB4C9AE97C277B15C5B8665B2F225125D05775CA931955560A38C
        96F9B3D305B8B132962A6AA5ADA24F5EDA1D145468C5C6FDDEC7AD515E5ADF13
        BC4B1B33B7852E25B34423CF86198BC8DFE95B59636453B7FD1E3C8620FEFD79
        C60B5EF05F8F75DD735A82DB51F0F5E69D6F731ACA1E685F1131B7864284955C
        00EF22E4E496520EDC0078DD292576747B48B763D128A28AC4D0FCF3FD8F7FE5
        209F1CBFDFD5FF00F4E30D1F10BFE52B5E131FF4E907FE924D553F653D62C341
        FDBDBE3B5E6A57B6FA7DA46FABEFB8BA956345FF00898C3D59881595F123C656
        B75FF0531F0E6B7A4B43790476709492EE43690BE2D65058C8EBC277DC01071C
        66BEFE5FEF93FF00AF1FFB6A3E6A3FC18FFD7CFD49FF00699D16FBF636FDAD34
        1F8BFE1FB77FF8457C4B3B1D4ADA11843337FC7D447B7EF17F7AB9FE30C7F869
        BE1BF1BE8727FC14FF0053F12AEA509D0EEECA1B882F0125654934788A6D0392
        5B70C0032735F40FC6FF0004EB5FB527C39D4FC2E244BF8A65F3ACA7D36D441A
        75B5CA826391AEE705E7504F26DD06412091935F017EC5FA6AF87FF6A2B5D2FC
        64B7B672D87DB2CAF2D6392559FCD8E178C403CB3BD89601762F5E9C835181AD
        0C5E06AD493FDE429CA2FCE36BA7F2B58788A72A35E115F0CA49FA3EA7E90FC5
        CF1B681F14B48BBF0A7FC217378A030DC63BE0F6EF09C1C4815479D09C670D20
        841E9BF935F0D6B1FB0FFC4FF15DC1D67C01281A7D88636921BB58164604B622
        6DC439CE1772964381F39E48FB7FC6DE38F017C35D2606F88DAAE93E03F0C95F
        3ACFC1D095F3EED41FF59711440B4BC8FF005680A03F78B9E9E07E3EFF008290
        6B5E3ABEFF008453E03F81EFB54D4A61E543A95EDA97651D37456C99E0750CE4
        01DD6BC0CB68E3A5253C3C7DD5D65F0F9DEFA7DDA9EA62AA61D2E5A8F5F2DC8B
        F63DFDB5358F0FF8D6DFE107C57D12DFC3FAA076820D5440B687CF009DB749C2
        EE7C1C48B8C92320E77547FF00055321BC51F0648391E6EA18FF00BEAD2B7FF6
        79FD87FC6F078AAE3E2B7C4DD7A3BEF8893133DB58DF85BB8433214617247072
        84A058CE1060827014792FFC141A3B5B1F137C2DB2B7B2BDD1AEEDE5BDF3F41B
        898C96F6A4B5B61AD988C794F838DA768DB8DA8C1857B785FAB7F6CD2FAB5B67
        7B7C3CDCAEF6F23CFADED7EA33F6BE56BEF6BADCFA1BFE0A99FF0026CB6DFF00
        6305A7FE81357BAFECCBFF0026EFF0D3FEC5CD3FFF0049D2BE65FF00829778EA
        D35AFD9BA2D3AE6DEE348D6E2D72D64934CBE50B26D09282F1B025654C91F321
        206467078AF11F06FED0DF1C3F680F877E17F857F08BC3D3E87A6E99A55AE97A
        8EBD0B9F31B644A8CC6E080B6EA704E172E71C1ED5C943073C665908C5A494DB
        6DBB24AC8DAA568D1C549B576E2AC91D7FED9DE26B1F8F3FB5D7C34F02F82CAD
        FEB1A1DC7D9EFEFED7E611C8F2A3B2161D7C958D9DBD0B30EA08AFD251D057CE
        1FB24FEC67A17ECD7A63EA3753A6B9E35BC8F65DEA9B484854E098A10790B9EA
        C796C761C0FA42BCBCC7114A6A9E1B0EEF0A69ABF76DDDBF4EC75E169CE2E556
        A692974EDD8C6F16784348F1C68F2695AE5926A1A7C8CAED048CC012A720E410
        7822BE78D5FF00675F0DA6AB78B6DE0F636E26711EC5948DBB8E3073D315F505
        15F0F9CE5D8ACD28C28E1F19530FCAEFFBB938DF4B6B668EB587C1CA6EA6230F
        0A8ED6F7A29FE68FCFFD37F67BF8B5A3781757F0B5869DA45BDB6A321F36F916
        74B9309656688B08F0CA4C69D41200201C31157BE147EC13E2193C45637FE31B
        EB1B6D1E0956592CED5DDE69C039D872AA154F739271DBBD7DE545185CB6B529
        F3622BFB44BA72A5F7DB73E76A70DE5B5654E538C9F2689393692BDED6ED7643
        75335ADACB2244D3346859635EAC40E83DCD7987843E25789B56F112D9DEF872
        64B2BAB8F92E7CB9228E18FECF13150648D598890BE72067903A57AAD15F4519
        249A6AE7D1B8B6D599E47A9FC4CF14793692DA7872E8B4F2C4AF0AC6E3C8FF00
        58CC9233C6393B150B0CA8F30104F199EF3E2678992CA656F0BCD6D70D6735D4
        2F1896405846AC90FF00AAE25625B83C7C9DF35EAB4569CF0FE527965FCC79A5
        C7C50D65749D5AEA0F09DF4B25AEA5F628524468FCD8F69226395C85DC36F19E
        A0FA8A7EB1F10BC47A478925B04F0CC97F6CD3C291490EE5DA8D1A16DCC46D27
        71900C1C7EEC838C835E91452E785FE11F2CBF98F2D6F8A3E23586DA74F0A493
        C12DBC724863F3C34323ADC3152A61C911F90A1B033994617380D05BFC52F13C
        72BBC9E15BA9E396EDA38A358E45CC6BE42650F97D1BCC925064DB85423A83B7
        D66919430208C834F9E1FC82E597F31E3D6BF19B5B98DDCA3C33757421B9B7B5
        11DAC531525A332484EE89594A8C2F23AE3D6BD86A0B1B0B6D36DD6DED2DE2B5
        B75FBB1428111727270071D69D7723C36B33C60348A85941048240E3A027F219
        A89CA32F8558A8A92DDDCE2345F811F0FF00C3DE34D47C5DA7F8534DB7F126A1
        23CD73A8F95BA47776DCCDC921589E49001A76B3F03FC07AEF8F20F1B6A5E17D
        3EFBC516E8A91EA534659D42821782769201382464562E9FE3EF18DE5C6990C9
        A4B409700A4D3368F7236C85D943052E02C630189760C46085E7E5A6FF00113C
        7D0DBB63C34350B90D0AFD9E3B09A0044966642DBD9CAE1672A8C3A801BAB605
        57B6A97BF33BDADBF4EDE81ECE16B5BCCDCD3FE38E83A9C30B5ADA6A0FBE4547
        568D2310A92C048ECCE1426508DD9C678EB915C85BD8FC38D2FE224BE3D8FC03
        35AF8B66F33CFD5963844A3092AB16C4D8C94824190092073D6AF58DEDC5F6A5
        A75BDDF80ED6D6CD6F1634DDA2B48561DD85753C2C7890CEE4B10555D4856249
        AB5A76ADAAEA1E27B5D3EF3C336ABA5DC49711CF72DA24C0001CA88C9638E564
        90F987E56F31801C366233942FCAED7D3E437152DD1C3FC70F879F0C3E39789B
        4EB9F1A786B58BF6D05E58C496F3471452C4AF32B972B2090A29B794E061BD01
        CE2BB5F09EB5F0CFE10C53685E1FD0ED7C371C3702DA58AD6D921DE44823F319
        B39751F39DE49E237EEB8AA50DFF00886FAFB4CD3BFE102D3608088E48AE24D3
        0B4506C8E3651B4B2EC64796703247078E770AAFA96BBE27B88A6B94F03E9F7B
        70B0DC7FC7C68F2AFCED017F2C924B106479232CAA43E49F94126B59622B4A9A
        A529BE55B2BE9F710A942327351D5F53BA5F8B9A77EE8B69BA9209228EE54B2C
        5836EE1889B893EEE17247DFE47CBD71E7BE36D53E117C648742D47C53E1F5D7
        26B25B89EC12F61C4B0948229E65C6F1CEDD830782CBE9826CB6B5796DBE59FE
        1CDA6956EB2FDA1AE24D2C4C2DDBCD3E5CCE10FCCD1C225762BFC4CAA1867996
        D6EAF2E2EAEADDBC1B6F269D7935BA069F433E55C44AAB114D80068F94721A5C
        854118C73594272A72E683B3F22E51525692BA36BE375AF81FC57A69F0E78E7C
        30FE24D32311DEF96C8863490ACDB304C8AC188865E471EA466BB6F03681A3F8
        67C27A669FA06930E87A4C3028B7B08515044B8181852467D4E4E7D4D79EDF49
        71269FA8C8DE13D3CCB677B369F6C8FE1F965C5A0336CC0072EAF85E570A3CC2
        71CD4D63E37F14DADB4B0C7A12D925BB5DC705A47A35C952226C428195B6A82B
        CEEC6D6C6001473CB9792FA760E557E6B6A7AD515E44BF10FC6324B6E7FB0EF0
        88D658EE644D3254803100C6EAADFBD91542C99036924A0C0C8CFA5786EFAEF5
        2D06CAEAFA1FB3DDCB186923F2DA3C1F5D8DF32E7AED3C8CE0F22A0A34E8A28A
        0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A0028A28A
        0028A28A006C8A1D0AB00CA46083D0D28A28A005A28A2800A28A2803FFD9}
      FriendlyName = 'IWImage28'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object IWImage37: TIWImage
      Left = 276
      Top = 432
      Width = 151
      Height = 50
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      Picture.Data = {
        0A544A504547496D61676572110000FFD8FFE000104A46494600010101006000
        600000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC00011080032009703012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD53
        A28A2800A42C14649C0AF9E7F694FDA957E135CA681E1D5D32FBC48CBBEE1AFE
        F5238EC908CAE573B99C8E40C631C9EB8AF8D3C45F14B59F1B5E35CEBFE23B2B
        E918E7649757B3A2FB2A291181F415EE61729AD8982A8DF2C5FDFF007194AA28
        E87EA82BAB8CAB061EC69D5F991F0D3C7D3E8DE2ED1534DD7EE2CCCB7B046CBA
        7582C41D5A45054B33EEC11C74AF7EFDAA35AD6F4FF89F6B1E9BFDB061FECE89
        8FD96FE4B7B7077C9D42E067DF77A53A9954A9D68D2E6DD37B760552EAE7D734
        57E7B5A78F3C4F6D8DDE244D37FDDBD96E64FF00D09F07F2AEDBC11FB406BDE1
        0B8DD26AF7FE24818FCF06A0404FAAB1DCC0FE207B529E53562AF19261ED11F6
        9D1585E0BF1969DE3BF0F5BEAFA6C9BA09461E36FBD138EA8DEE2BC63E217C5A
        D7353D5E7B4D2AE8689A4C2C516E19B64B3E0E0B0FE20BE9815E653C3CEA4DC3
        6B6E5B924AE7D09457CA36FE28BA8DB71D5351BF93FBD25C3A27E59C9FCC57A8
        FC19D72FB56D6AF52EAE649634B6CAC6589553B876F5F7ADEAE0E54E2E571295
        CF5DA2BC2D750BA86EA5F3F53B863E636228662C7A9EA7381FAD770B777371E0
        9B39227944AD39190E4B632DD4D632A0E36D47CC77951CD3C76D0C934D22C514
        6A59E47202A81C9249E82B81B3BC9A1C799752CAFF00DC590E07D4FF00851E24
        F0F58FC40F0FDE687AE24975A65D2ED961499E3CE3A72A41A9F6493F79E83B9F
        2D7ED51FB651D56DEF3C23E00BB64B37062BED72238328E86380F65EC5FBF6E3
        9385FB3BFC26B7F88DF0B7C177AFA17F6BB2F8D248B56B8DC438B016E7E576DC
        0EC0E5781DC8AE07F698FD9C2F7E09EA10DFD94B26A3E15BE7296F75201E6412
        75F2A5C719C670DDC03D08AEF3F658D06F1BE19ADDDEFC58D5BC07A7EA9AEB69
        1A4D869AB1ED9AF5914E5B72364B7031C0F97AF35F692850A38052C24ADAEFAD
        DE8FB6A72DDB9FBC769E04F86D77F0E63F031D4F467D1F589BC63AC46924A733
        3D97D92E8C2A5B2494C052013D8515E43F0DBE2278F756FDAA34AF0778C3C5B7
        7E238B43D4751842CC5767991DB5C47E6000646467F3A2BCFC5D39C251F68D36
        D5F4DB56FB9717D8FD30AABAA6A11693A65DDF4FC436B0BCCFFEEAA927F4156A
        B2BC59A59D73C2DACE9C1771BCB29ADC2E719DE85719EDD6BE5636BAB9D07E3D
        F893C71A7F8CBC55AB7886F34CBABCBED4EEA4BA91EEAFF8CB3640C222F00600
        19E82BEAAFD91FF671D27E28686FE2DF11E95690E8BE7343676508766B82870C
        EEEECD85078000049079F5F8FE0D5AD34F91ADC787AC619A2631B0B892695958
        1C1041703A8F4AFD1AFD85FE2669FE28F8551F87184367ABE8F2C9BAD628FCB5
        785DCBAC883B8CB107DC73D6BF46CDE7528616F42EB65E88E2A7694B53D463FD
        9FBC056A606B2F0FC3A6490C8B22496323C2C194823EE9E791D0D7CD7FB65695
        3DF7C58B27F36DE28069710DD71708833E649D01393F80AFB62BE26FDB274E8A
        E3E2D594B2DFDADA2FF65C436C9BD9CFEF24E8AAA6BE532BA939E2573CAFA3DF
        53A2A24A267FECE7F0BBC3DF103C4DA9E9BAC5D0BE58EC4CA82CDA4431B6F51B
        B71001EBD30451F12BC076FF0009FC58FA41B66D46368D67B7B9BA9080E8491F
        7571C82083CF6F7AE9BF63386C61F1F6AC2DAEA5B997FB34EE2D0F9698F353A7
        CC49FC85697ED43E2EB1BAF1E59D95A456B7773A7DAF973CB22EFF002DD9B76C
        C676E40C13907AD7A72AB53EBAE9A6DC6C6765C972E7ECDFE29BBBAD6B55D047
        9715BDF59BB4490C61152551C1E07704F27D057111E873585C4916A134567346
        C524491B7C808383955C9CFD715D77ECE31EADA97C42B5B893CE1636F6F2BB61
        3645CAED000002F56AF59F8ADE01F07EA3249A95FEA96FA06A4DCB4E5D712E3F
        BC99E4FB8E7EB5C952B468E25C6DBA5B156BC4F36F03EB3E15D3FF00D1B57D21
        F518D9B77DB492AE9D38D81B91F8E79AFA07C2BA7E849671DEE851C2B6F2A6D0
        F0938233D08F5FAF35F2EDBDE58C1348960B15DA23155BA932E1F1DC290063EA
        29BE2DF1B788B41F09DD3697AC5C580924412F924292A7230A71F2F5FE1C5675
        B0CEB34A2ED7EE352E53D04476F0DDCC6490CEFE637C9170A393D58FF41F8D41
        67F15E6D47C647C09169D1DBDAD9DA9BC92E8392CEC4A90A076187E739CFB553
        D2599EDA0662599914927A9381CD71DE1DFF00938DD5BFEC16BFCA3AA8D38CB9
        B9B5B2B85CF59F14EA571A3782F5DBFB47F2AEAD6C679E27C03B5D63241C1E0F
        22BCF3F661FDA1AFBE266A575E1DF10A42358861FB44175026C1708080C197A0
        619078E08CF1C5775E3DFF009273E28FFB065CFF00E8A6AF98BF630F0BDFEA9F
        17175A86361A769769289E7C7CA5E45DAA99F539271E8B5A51A34EA612ACA6B5
        5B3149B52563ECCF8B5E07B7F891F0B3C49E1FB88C39BAB391A02464A4CA3746
        C3DC301FAD7C6BFB3C7C49F18F807E10E890E95E07D13C5567A9789DECF4FF00
        B75EF9738BE68C3001590AA801387DC3AD7DDDAA6A90E87E1FD4F51B960B6F67
        6B2DC48C7A05542C7F415F0FFECC7F11F48D23E18D95AEA9F0E7C59E2D934DF1
        0CBACD95E689A7B4D0413EC50BF3075CB282720823E6159605CA586A9171E649
        AD3E4FCD7904BE2433C3BFB455C7C5BF8FBE17D02FFC0DA4F86354D3B51BE96E
        AEAC640F2C92ADA5C46E8CDB467E624E7272451576D75CF86FA87ED01E118BC3
        7F0EF5FF0004F8BAE2F6F6F6FA6D720784CF13DA5C16C2B48DD5C83C281C75ED
        4575E2941387241C55B67EAFCD8A37D6ECFBDE8ACCF136B43C3BE1FD475430BD
        C8B381E6F26320349B4642827819E9935C4C7F1B749B69859EB3677DA3EA4B24
        76D2DBB6C9556E1D19D610E8D82C55783C0390339E2BE5A34E53578A37B9F1EF
        ED81F03FC4DF0EFC6377E2CF0B5B33785B5597CE9BFB3ED10496770C7E70E557
        76D663B8367A920F6CF8469F6FE3292686E59F578A48CEF49A699E2D87D43311
        8AFD2B9BE37786AE3CB8AEEDB59B659E682D8A5C46AB869B76C561BFB8463DF2
        3A64F15E47F107E13FC0ED435AD51AEFC35ABE9F359CD2C77579A4B797087400
        B646F2AB92C072A393E9CD7D860F339429AA55E176BAD8E7953D6F167CF9E13F
        1A78DEEBC43A25BEAFE3ABA6B3FB75BEFB79F5A69430122F05519B3F8D7AB7ED
        7973A36A7F15AD276D4247DBA6C49B2D610FD2493F88B003AFBD7476BF07BE11
        F8225D17595D075AD53499ECC6A6D7F717E3FD147263CC60AEF24A91C640E0F4
        E6BA4F1A787FE14F886E0EAFAF68DE208A48D6381246631A3E5978521F69DA64
        00F3F9F198962E93AF1AB08BB24D6897F9872BE5B33E6EF0DF8A97C313492E8D
        F6FB69A4431BCBF6D68CBAF5DA44614E381C6EAD2B5F105DB485A0486D9DCE4B
        4310DE49FF006CE589FC6BDC20F00FC148AFE2B67B0D6AD84D2AC16F3CD24822
        9DC83F2AB67A8231CE39C019CD6B5BF873E1B786FC55AD68F2787B52B57D3E68
        6DD2E6399A6799A452C30BF795782037427D29CB1B49B6D41DFF00AF30E57DCF
        31D0B50D5F45B59E45D42EA0B8BA50B2959983151D149CE7F0AA50319A4DD213
        231EACE727F335EBB0C9F0CF508ACE54D275F686EC2343282A51F7095B821F92
        043212073F2F7ABBE16D07E14F8AB54365A4B5FCF8B47BD170662B118D1F6B10
        49C9C107B638EB5CCF151579383FB87CACF35B1E318E0572FF00113C450CF66B
        A65BB893E6DF332F2063A2D7B1C90FC27D4238D217D72EB7AC723C36ECE1A38D
        E312091871F285273D71B58751553C47E07F843E1BD4F53D3B53B7D562BBB32D
        B624B924CCA1158952481C6F03048F5E94E188829AE68BBFA072BB16746FF8F3
        B6FF00AE6BFC8571DE1EFF00938ED57FEC16BFCA3AF4393C5FF0EF45961B6BB8
        B5DD3B3E605FB4A28F9231F338E492BC11919FBA7381CD36DBFE15A43E286F11
        69E359BED42E2058A5B9B6F9912164765660703056063900F41EB5CD1ABCBCCD
        C5EABB1563AF8EDE1BCB692DEE2249E0954A49148A195D48C1041EA08ADBF0DE
        8F63A25AA5A69B656F616AA72B05AC4B1A03EB851D6B9EF0DF8B7C25AF6B76DA
        44171AB59EA373930417712A19502EEDEBC1054AE0FAE08E2B99BAF15E85E2AB
        76B0D665F14680248DA678EC6FA34516B88C899E48F0C148957207239CF1CD70
        F2CA5EEBBA459E7DFB697ED0163A1F846F3C01A25DA5C6B5A8809A93C2D91690
        67263247F1BF031D9739EA2BC8FF0066FD3FF680BAF8772BFC30BFD36DBC39F6
        F94325DF91BFCFC26F3F3A138C6DEF8AF5C87F679F823ABD86A37F1691E28B8F
        B3C854A0B9632CEFE6AC6420DDC9DEE07CD83D4D55D37C07F0334782E6D6CB57
        F196931C6CEC2DADB569E212B00BB8AAA3637608CE707033D39AF729D6A14B0D
        EC2941B77BBBC6FF0085CC5C5B95D9B9AAFF00C2516ADF082D7E27DCE9975F11
        BFB63519236B1D9B859FD86E01CED0075F2F3818CEDEF4533C2FF0C7E11681E3
        6B3F1269F69E2FD5FC4D647CB297378F752C0258188DFBDF041466C1048CFD28
        AE1A95168A29FDD6EADE8AFB168FA47E2346B2FC3FF12A3A8753A6DC6558641F
        DDB57CE9F0B6CEDEEF5048278239A0FEC7D3AE3CB91032F9BB73E660FF001640
        3BBAF028A2B930BFC297AFF9152DCDA9AD616F8957713448628AC2CAE2342A36
        A4819C0703B30F5EB5A7F136C6D9FC6DE138DADE268E7BDD53CD4283127CA0FC
        C3BF3EB4515BC7E28FA7E82EE64F8F2C6DA4D57C231B5BC4C91F86B5408A5010
        BB6260B81DB00F1E95C2DAFEFBC33ACCF27EF263FD9A0C8DCB10E9017E7DF273
        EB934515D14FE05FD7513DCEDFC2FA5D95C78F3C530CB690490C26CDA38DE252
        A8766EC818E0EE00F1DC035BF630C727C56F895B915B64F63B7201DB98989C7A
        73CD1456153AFA7FF22338E0A13E18781A751B6692EECC3C83EF36E7BBDD93DF
        3B8E7D727D6BAEB4D3ED2D7E276B7690DAC30DAAF86AE76C11C6150664C1C281
        8E4514554BE17F312327C59E1FD2EC24D2E3B6D36CEDE35F108B60B1408A045E
        720F2F007DDC13F2F4E6BB6F126916375E2BBD966B2B79A55D46060F244ACC09
        8B04E48EB8E3E9451533F8D7CFF3435B1C1687A6DA5D789BC4C66B586631F88E
        E22432461B6A12A0A8C8E01DCD91EE7D6BA98741D32D6EAE64834EB485E46BC8
        DDA38154B2AA32AA92072002401D813451573F81FA0BA999F0374FB592F3ED0F
        6D0BCF06B572B14AD182D180B3200A7A8F97E5E3B715C5F83ECEDFED1A345E44
        7E55D5C6BF15C26C1B664118015C7F10000183E828A29CB79FCBF51744617C40
        9A4835EF13A44ED1A477BA96C55380B8F2586076C37CDF5E6BD9F55D174F6F87
        3031B0B6262B09DA32615F9099402471C64514554B687F5D01157E16D9DBCDE1
        DD06F648237BC9AD62F32E190191F08F8DCDD4E371EBEA68A28AE2ABF1B291FF
        D9}
      FriendlyName = 'IWImage28'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object IWImage39: TIWImage
      Left = 19
      Top = 20
      Width = 200
      Height = 67
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      Picture.Data = {
        0A544A504547496D61676574130000FFD8FFE000104A46494600010101006000
        600000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC0001108004300C803012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD50
        0DBBEA3A8069D5E0FF00B547C4EF107C35D37409342BA4B592F2668E4DCBBB38
        DB8EFC75AE42DDBF68ABA8229A336252450C096C707DA803EA66E9C0A4DC1B18
        E47AD7847C328FE330F195AFFC25A6D4687B5BCDF28E5B7718FEB4DFDA9BE296
        BDF0D63F0D368976B6BF6C9D966DC9BB2015E9CFB9A00F79DC3A679F414E5AE1
        7E233F8B2E7C02927845A3FEDD711B0698E1704735E0DE27D6FE3DF83F41BCD6
        353BAB18EC6CD0BCAD19DE401401F59B7D714D6C0F4FCEBE45F03F8B3E3A7C43
        F0FC5AD68F7565258CAC555A43B49C7B7E35ECBE01F12F893C13E0FBBD47E29E
        A16764E27091CCAFF2053D33EF401EB145711E23F8D1E0CF0A69767A86A5AF5A
        C36D791896DCEF04C887F880F4AD8D27C71A2EB5E1B8F5FB6D4216D1E45DE2ED
        982A6DF5CD006FD15E5927ED35F0E22D43EC67C4F6864DDB772B029F5CFA57A3
        E9FAA5BEAD6305E594F1DCDA4CA1E39A23B83AFB5005CA69E4E338A82EAFA2B0
        B696E2EA54B782319691CE1547A935E6D71FB4BFC378750FB13789AD1A4DDB37
        2B8299FAD0075D2F8F34487C551F869EF55758923F316DFF0088AFAD745D3A8E
        7BD7CBB71AD59EAFFB6069371637315EDACDA72B453427721F5C1AFA5B52D5AD
        748B47BBBDB88ED6D231979A56DAA05005EA2BCB62FDA6BE1BC9A90B2FF849ED
        04ACDB4316013F3AF48B5BE8AFED63B8B5956782400A489CA907BD005AA2B335
        DF1269BE19B07BDD56F61D3ED13EF4B70E145719A5FED0BF0FB58D40595B789E
        C5A763B543480063EC6803D1AB0FC5BE32D1BC13A69BFD6AFA3B2B61C032372C
        7D00EE6AF6A1AC5A695A64DA8DDCF1C3630A19649D9BE554FEF67D2BE3DF88DF
        113C2FF13BE3E69706ABAC5BB782EC21DC64327EE5DF3C827D4FF4A00FA4FC11
        F1A3C29F10B5092C346D47CDBD452E6191763301D481ED4EF1B7C66F09FC3FB9
        5B6D635458EE5BFE58443730FA8AE46C7E287C1DF0C19AF748D5345B5BC485A3
        5681807200FBB5E23F037C4FE07D675EF11789FE206A564FA9DC4FB6DE2BE704
        0524F201FC2803EB6F07F8DB48F1D693FDA5A25DADDDAEF31EE031F30ED4543E
        0397C3575E1D8EE3C282DFFB26666656B31F2337193F5A2803E6DFF82825EFD8
        F41F0836EDBFE96E58FB7C95D2697FB74FC2DB3D36D617BBBFF3238D55C2DA1E
        081F5AE03FE0A5573F66F0F78181E8F7EEA4762329C62BE82D03E02FC3BBCD0F
        4F99FC1FA5BBC902333183A92A393CD00741F0BFE2A683F183C3675CF0E4D34D
        602678374D1EC3B9719E3D39AF9D3F6FEBEFB1C3E0520E37DDC83F54AFA8FC2F
        E11D1FC1BA78B1D134E834BB32C64F22DD76AEE3D4E2BE3FFF0082935E7D8E0F
        877CE337B27F38E803ECBD146749B13DBC84E3F015E77FB4E4A6DFE05F8B5CF3
        8B36EBDABD0F4139D16C3FEBDE3FFD06BCC7F6B397CAFD9EFC66FD36D937F2A0
        0C3FD8A2E3ED5F0174C93FE9E65E9FF01A8BF6DD9FEC9F01EF9C9047DAE10476
        FE2AA7FB035C7DA7F671D224CE737337FECB507FC1402E3ECDFB3AEA1267045E
        C1FF00B3500729FB3CFECE3A3FC46F00D878A7C6CD71AA5CDF4605ADB99311C1
        00FBA31EBC9FCABDBFE237C1DF0DF897E1D59F872F2E64D17C3FA6B24ACD0C82
        30234CFCA4FA1A93F67160DF027C0E7B3699174F5C57CFDFB7C78C352BED6FC0
        BF0EAD2F1B4FB0D7EE8FDAE60701802A0293E9C9A00D8CFECD17F6CFE1B86F74
        98A76FDDADE170096E80EFEE697F632F134FA3F89BC6DF0FA5BEFED0B4D2AE3C
        CB19D5B7298C93920F71F76BBCD27F636F85965E1B8B4C9FC3D1DECBE5857BC9
        5B33138EA187F85782FECA7A3DA7C3DFDAF7C79E10B291E6B3B58258EDCCCD97
        0A84707F3A00EB7F6C2F1AEABE2AF889E18F855A2DC9B737EE8F73B1BEF97384
        0DEC30DF9D7ABF87FF00647F879A56831D8DCE93FDA170502CB7770D994B6392
        0E38AF9D3F68EBF5F871FB6CF81FC47A9B95D26ECDB9F31F854D84EEE7DB70FC
        EBEF38E459511D0864600AB0E847AD007C47E11F02D87C2BFDB334FF000E6993
        4B258FD8FCF884CDB9A30C7EEE7DB15B9FB477894FC4CF8F1A0FC307D57FB2F4
        1842DCEA1209366FC9E84FAF1FAD55F125DF97FF000514D221EBBB494FE66B84
        F8D5E0DD1350FDB7ADB46F19F9A9A1EBD0C7E4CAB27960BB1381BA803E92BAF8
        37F05E7F0EB694916910829B56E9675F381C75DDEB5C47EC73E2EB8D27C49E34
        F87D757CD7F67A2CDE6594FBF70F2F27760FA702B7C7EC1BF0B72004D589EDFE
        9BDBFEF9AED3E16FECD3E0DF837AA6A1A9F86E3BB4BCBB87CA91A79C38239F6E
        B401F3E1379FB59FED09AA6973DDCF0782FC3EFB4C70B604801E3F16E7F2AF6E
        F197EC95E01D77C332D8E9BA4A68F7E91916F796FC386038DDEA2BC1BF613D6A
        3F0CFC66F89BE12D4F6C3AC34FBD55CFCC446CDB87E1B857DC92CAB0A3BB3055
        504B16E98A00F93FF64DF1BDDF89EDFC55F0ABC5E4DFCBA5EE882CC771688F0C
        84F70303F3AE3B4BF869E159BF6C0BCF06BE930B6831D934AB65FC01B3D699FB
        27EA5FF09D7ED71F12FC49A70DFA3C665412AF425D86DFFD04D6A68B780FFC14
        5B5183D34C6FE7401EDFAFFECCFF000DEC742D42E22F0CDAACB1C0ECAD8E840C
        E6BC3FF63BF853E11F89DE09D66F75FD1E1D42E21BF6892493AAA8278AFAFF00
        C5DFF22BEADFF5EB27FE826BE5AFF82705D7DB3E18F89189E9ABC8BFA9A00FA8
        FC2BE11D2FC13A2C5A568D6AB65611125214E833456CD1401F2EFEDC9F01FC5F
        F1D345F0ADB784E1B7966D3EEDA6B8FB44C231B494E84FD0D7D29A15B4967A2D
        8DBCA009628511829C8C8001E6AD8EA4F4A45900F9780DFDDCD003CD7CB3FB6F
        7C04F187C7087C183C2505ACADA5DCBCB73F699C44029298C67FDD35F51B49F2
        12CA7DC519DAA450055D26D9ED74BB3824FF00591C2A8FF5005707FB45782F55
        F88BF067C53E1DD0D637D5750B3686DD65708A58FA935E89E6614B12303F8B38
        1F5CD3B3F2E4E00C72DD2803C63F645F861AF7C1FF0082DA7786BC491C316AB0
        DC4923AC1209130D8C73F81A87F6C4F859E20F8C5F056F3C37E198A1975596EE
        2995679362ED5DD9E7F115EDBFC4D81CE297819FA7D280388F827E17D43C17F0
        97C2BA0EA8A89A8E9D611DBCEB1BEF50EA39C1AF3AFDAE3F66D93F682F09D89D
        2AF574CF14691219B4EB87FBAD9C651BD3381CF6AF7B3EE3BE3A74F7A4DCAC33
        91E9D78A00F87B456FDB1058C7E1968345B78D3F73FDB970FBA40A38DDBB2013
        F8551F0EFEC95F16BE107C70F0DF8CF40D7EDFC492DF3EDD7AF6F4ED74DE479A
        76E7E65E057DE19DA39FC4668E7AD0078DFED39FB3AE9BFB45781D74D96E16C3
        5BB3632E9FA86DC8864EEA47F74E0679ED5F36F85F44FDB03C03691F846C174C
        D4ACA30218352BD97798D07030FC01C7AD7DEF81B48C67DA90300320923D6803
        E22F849FB29FC51F08FED29A4F8E3C53AB5BF88E036ECF7FA93CA16412B6328A
        BDD463F5AF6DFDA83F668B0FDA1BC376C61BA1A4F89F4B264D3F50033B18FF00
        0B01838381DEBDBF0003C74EB8A5C7238FA9CD007C2FA7FF00C362F852C4786E
        2B6D1B5748C79516AD3C999768E012D9C7E95EEFFB30FC2BF881F0F34FD7351F
        885E2A6F106B3ACCCB335B2F296A467214E7BE7F4AF71CFCC06EA08078F7ED40
        1F277ED21FB26EBFE22F1F5B7C4BF85BAA2689E35B721A7898EC8EE48E776EEC
        7D7D78AE175A8FF6B9F8B3A51F09DFE9DA4F866C675315DEA90128EE9D0E093C
        E47615F75FA9033E9CF5A3EE9CF6A00F28FD9C7E00695FB3DF815744B197EDDA
        94EFE76A1A83AE1A790F7C7651CE07B9AF36D33E0378BEDBF6D5BCF8912436A3
        C2B258B5BAC9E7832172463E5ED5F50676F246303AD26EE492391D450050F125
        9CBA8683A8DA41B4CF340F1A066C0248C0CD781FEC47F057C55F047C07AD699E
        2A86DE2BABAD4A4B9845BCC241B09E32457D185BE5240FE948F222ED0EEAA5B8
        1938A00968A8639C4B9D8CAF8383B4D1401E45F1BB53D4E1F13F84B4FB16D564
        B7BA17066B7D26454924DBE5E09255B8193DBBD564D4E5F05F8935ABC637779F
        D9FE1D8AE3CABA6DD2330DD9070073F857AB5E787ACAFB58B2D526843DF59ABA
        412F39556C6E1F8E0551D53C0FA4EB5E21B4D66EA0637D6E8D12B06F9590F556
        1DC500798695F11FC66DA2EA1A9DCDBC42DA3B1FED04BAB8B37B785587588166
        E739183ED4FD3FE215F78C74BF07EB73431DBC3AAEA2C228013E65BC78E15CE7
        97FC3F0AED2CFE0FF872C2DA5B716F3C968ECA7ECCF2B346AAB9C2A8FEEF3D2B
        4E3F87BA1C5782E23B35461746F5554FC8B29E0B81DB3E9ED401E27A3F88BC4D
        E1BF867E1E37B7F6DA8691AC5ABDB242B1B2CF0127E46DC5B9039CF1E95B8FE3
        ED774FD1FC21A168CB335C5C693F6C92E16D5EE59B6E30B8523AE793DABBBD07
        E0CF85BC377C2E6CAC18BA46F1471CAE59230DF7B683D33C7E542FC19F0D8D2E
        D2CA386E214B5766B795262248C363280FF7781C50049A8F8D2EF4DF86235CBF
        88691AAC900DD03C4642931FE1080E49F6AF3EB5F8B5E2CFF846F5281ADE18B5
        DB4D4E0B58E4B9B778D0C72EEC164273C6DEB9EF5EB97FE11D3356F0DB687776
        E64D38C6231196395C7439EB91EB58BA6FC21F0DE94D294B4925966922965925
        90B348F1E76313EA371A00E197E2278BA1BC3E197B8D3CEBAFAA7D8D755F2584
        222F742D92FED9ADEF83EDA8C56BE324D46ED2F2FA0D5AE55A5894AAE401D012
        76FD2BA6D67E19681AE457AB776418DE4EB74EC188659973B5C11D0F26ADF857
        C0FA4F83F4FB9B1D361290DCCAD34CD2316691DBAB13EB401E37E1EF1EF8DF56
        D1B44B2D2EFEC9661A21D4A6BBBE85A432383C2E030E0F35674DF1CEBF2F8A2F
        BC4A6F224D323F0EDBEA0FA4AA13B89DF9DAD9EBC75AF57D2FE1DE85A39436B6
        4B16CB5FB10E4FFAA3D56AB47F0C7408EE34B9E3B431BE9D6FF6587693868BFB
        8E3B81FD6803CCA0F8B1E32B3F09EB1ACCF63F6888E92D7D6D71259BDBC314C3
        A4796277839EA08E9567C67F10BC5BE13D3ED615BDB6D4B5B8AD8EA17705AE9F
        23A247C6D0C437CA3AF27AFE15DDE9FF0008FC3BA7D9EA3651DBCCF657A9E43D
        B492968D63FEEA8EC2ACF897E17E83E2BB8B7B8BFB66324517905A3729BE3FEE
        B7A8A00E5B4FF18789BC77E249ADB429EC74AB4D3ADADE7956F61696499E5DDF
        2F0C3006CEB8E735C9C9A9EBD67278BAE2EF5286FEC53C422DA3B6F2D8797D7B
        EEE057A45E7C1AF0CDD3583B5ACD0BD944B6C9243315678D7EEAB9EE064FE757
        AF3E18E857BAADE5FCB6CCD25D1479903108EEB9DAE47F7B93CD00715A8FC5DD
        534DD7AE34530452EA3677524D322A1E6C100C3F5FBC73D7DAAC7C2BF1DF8A7C
        4DAA5A49AA5A33E95A85A35D0B8FB1BC096EC08C2066243820F51E95DE7FC211
        A37FC24B3EBFF618DB57B8B65B392E5B24BC433F291F8D55F0CFC39D1FC257D2
        5D69D1CB11705444D2168D01ECA0F4A00E23E2968774DE32F0C9B7F10EAD6316
        AB782DEE20B799426C1D972A71D6AA47E39F1169F6BE2ABBB8D4ED61D2B47BB9
        34CB356B7696E2690636B361864FB00335EADAA7876CB58BCD3EEAEA2F366B09
        7CE818FF000B7AD675EFC3ED0F50D2F53D3A7B3592DB519CDCDC0C905E56EAF9
        F5E2803CB2C7E2F78A26D2DF499238ADBC40DABC5A625C5D5BB4691A49BB1232
        13927E53DF9ACB87C5DE25F0AF88356D1CDC2DE6ADA96A6C9F6D82D5E458D17A
        E220D9DC7771CF6AF5087E0B785E3B1BFB56B4926FB7796D3DC492132332676B
        03D986E3CFBD3A0F833E18874996C56D240269C5CB4C65265F347F106F5A00E4
        B4DF1DF8CBC457DA7E80915BE83AC0B792EAE2E2FADD8F98AA576958F7023393
        9E4E2B8CBAD5B5EF893AE5BEB4B7F6D646CF4879E285E3678E2987DF74218039
        E304E718AF65D47E13681A9E9D616D2C7700D982B14E929129538CA96EF9C0AD
        1B3F006876257C8B248D56D7EC21573810FF0077FF00AF401CE7C07D065D1FE1
        CE9924D3C5733DE462E249A25601CB776CB1E7E98A2BBCD274CB6D174DB7B1B4
        4F2ED6DD0471A7A0145005DA28A2800A4A28A005A28A28012968A2800A28A280
        0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A280
        3FFFD9}
      FriendlyName = 'IWImage28'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object IWLink9: TIWLink
      Left = 21
      Top = 11
      Width = 274
      Height = 17
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      Color = clNone
      Font.Color = clWebSILVER
      Font.FontName = 'verdana'
      Font.Size = 10
      Font.Style = [fsUnderline]
      ScriptEvents = <>
      DoSubmitValidation = False
      FriendlyName = 'IWLink1'
      TabOrder = 29
      RawText = False
      Caption = 'FITradeoff.org'
    end
    object IWLabel44: TIWLabel
      Left = 320
      Top = 66
      Width = 107
      Height = 14
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taRightJustify
      BGColor = clNone
      Font.Color = clWebSILVER
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = []
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblCademail'
      Caption = 'FU-T3MMM-WF1a'
      RawText = False
    end
    object imgEN: TIWImage
      Left = 403
      Top = 95
      Width = 22
      Height = 15
      Cursor = crAuto
      Visible = False
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      OnClick = imgENClick
      Picture.Data = {
        0A544A504547496D61676590030000FFD8FFE000104A46494600010101006000
        600000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC0001108000F001603012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00F8B3
        C01A37863C45A0AE99E2C96C506D022D42DE571710678CAFC9838EA51B20F62A
        6BD935AD3BC03E241AE787EEFC4902E90AFA57D9F5092392317496D6ED13F015
        99724838EBDB3DC781783FE2A5AF80F40064823D5F529D36AFDA2DA329081D90
        15EBEACD9F61DEBAF87E2C5868ADA96AF2E896B750DD3D92C96AB1AA98C18897
        31120856C8047041EF5F1556962D55E6A77DFDDD56F75B5D69F91FA460B11964
        70D57DB45B6E094B55B7345ABD96FA7ADAF72E7C56D07C3C9A7D8C1E009743D3
        F4F85F6497B7724A6EAE48079F2FCBD9147ED9663805989A2B90F8A5E367D405
        95EF86B5AF334AB9F9843369D142F0B8182AC02633FEE920F5E3A515E861A956
        F64AF6BF9DEFF3BAFEBA1E3E22AE0BDA3E4551AF2946DF2B2565E56D0FFFD9}
      FriendlyName = 'IWImage25'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object imgPT: TIWImage
      Left = 404
      Top = 95
      Width = 21
      Height = 15
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      OnClick = imgPTClick
      Picture.Data = {
        0A544A504547496D616765AB030000FFD8FFE000104A46494600010101004800
        480000FFDB0043000302020302020303030304030304050805050404050A0707
        06080C0A0C0C0B0A0B0B0D0E12100D0E110E0B0B1016101113141515150C0F17
        1816141812141514FFDB00430103040405040509050509140D0B0D1414141414
        1414141414141414141414141414141414141414141414141414141414141414
        14141414141414141414141414FFC0001108000F001503012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F006F85
        7E176ABF10B50D67C43AB5EBD8787EDE69A6BBD52EA501A4DAC4B052C719F566
        381DFD292C6D61F1D6ADA6F8766F020F09D9DD335B68FE2AD2F554D4ED6E250A
        CEB1DCBC795DCC149C839078C62B3B4FF16EBBF0D3C47AEE95344B736134D35A
        EA3A4CEE1A199492AC320F0719F987EB4FF085C783BE0AC93EB3E02B8D76EB59
        D46168DACF55997ECD640B67E60A079CC0FDDCF0073D6BF24A9192FAE7D72339
        556BFD99C3994632B3FE27BC95EF66DCD4A2E3A4529369FE4393D6C8A9E0DC71
        29296BED54F594B5FF00977A5FE49A927AC9D95CCCD4EC7C53F0AF5ABCD2A7B9
        BCD22E8ED66FB34ECAB328CED6041F9875C7E3452E97E1DF14FC4ED4351D4235
        9355BB5656B89A69D14E5B38FBC471C1E074C515EE6163895420ABEB3B6BCA9D
        AFD6DE47C0D4A7567394B0509FB2BBE5BDDBB5FAB5A5FBD8FFD9}
      FriendlyName = 'imgPT'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object IWRegion22: TIWRegion
      Left = 15
      Top = 86
      Width = 410
      Height = 3
      Cursor = crAuto
      RenderInvisibleControls = False
      BorderOptions.NumericWidth = 1
      BorderOptions.BorderWidth = cbwNumeric
      BorderOptions.Style = cbsSolid
      BorderOptions.Color = clWebWHITE
      Color = clScrollBar
      ParentShowHint = False
      ShowHint = True
      ZIndex = 1000
      Splitter = False
    end
  end
  object rgnInfosIntra: TIWRegion
    Left = 825
    Top = 212
    Width = 436
    Height = 353
    Cursor = crAuto
    Visible = False
    RenderInvisibleControls = False
    TabOrder = 4
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clWebBLACK
    Color = clWebWHITE
    ParentShowHint = False
    ShowHint = True
    ZIndex = 10001
    Splitter = False
    object btnokinfos: TIWButton
      Left = 373
      Top = 317
      Width = 45
      Height = 26
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Ok'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btnokinfos'
      ScriptEvents = <>
      TabOrder = 51
      OnClick = btnokinfosClick
    end
    object txtinfo3: TIWText
      Left = 19
      Top = 249
      Width = 393
      Height = 68
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BGColor = clNone
      ConvertSpaces = False
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = []
      FriendlyName = 'txtinfo3'
      Lines.Strings = (
        
          'A marginal value function associates a real number v(x) to each ' +
          'point x in the evaluation space. It is said to be a value functi' +
          'on that reflects the preferences of decision makers at different' +
          ' levels of aspiration on a measurable scale.')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object txtinfo2: TIWText
      Left = 19
      Top = 159
      Width = 393
      Height = 44
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BGColor = clNone
      ConvertSpaces = False
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = []
      FriendlyName = 'txtinfo2'
      Lines.Strings = (
        
          'FITradeoff DSS uses only judgments of strict preference, eliciti' +
          'ng admissible ranges of value for each criterion evaluated. The ' +
          'percentual variation aid in this process.')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object lblinfo1: TIWLabel
      Left = 16
      Top = 16
      Width = 293
      Height = 16
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblinfo1'
      Caption = '1. Intra-criteria elicitation procedure'
      RawText = False
    end
    object txtinfo1: TIWText
      Left = 19
      Top = 38
      Width = 398
      Height = 98
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BGColor = clNone
      ConvertSpaces = False
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 9
      Font.Style = []
      FriendlyName = 'txtinfo1'
      Lines.Strings = (
        '(a) Find the mid-value point of [x0 ,x1] and let Vx(ai) = 0.5.'
        
          '(b) Find the mid-value point of [x0, x0.5] and let Vx(ai) = 0.25' +
          '.'
        
          '(c) Find the mid-value point of [x0.5 ,x 1] and let Vx(ai) = 0.7' +
          '5.'
        
          '(d) Finally, the shape of marginal function Vx is construct pass' +
          'ing through points  x0,  x1,  x 0.5,  x0 .25,  x0.75.')
      RawText = False
      UseFrame = False
      WantReturns = True
    end
    object lblinfo2: TIWLabel
      Left = 16
      Top = 136
      Width = 398
      Height = 16
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblinfo2'
      Caption = '2. Intra-criteria evaluation with strict preferences'
      RawText = False
    end
    object lblinfo3: TIWLabel
      Left = 16
      Top = 227
      Width = 305
      Height = 16
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 10
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblinfo3'
      Caption = '3. Eliciting the marginal value function'
      RawText = False
    end
  end
  object rgngrafintra: TIWRegion
    Left = 54
    Top = 182
    Width = 733
    Height = 386
    Cursor = crAuto
    Visible = False
    RenderInvisibleControls = False
    BorderOptions.NumericWidth = 1
    BorderOptions.BorderWidth = cbwNumeric
    BorderOptions.Style = cbsSolid
    BorderOptions.Color = clWebBLACK
    Color = clWebWHITE
    ParentShowHint = False
    ShowHint = True
    ZIndex = 2000
    Splitter = False
    object imgformvf: TIWImage
      Left = 10
      Top = 35
      Width = 593
      Height = 334
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = False
      StyleRenderOptions.RenderSize = False
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      BorderOptions.Color = clNone
      BorderOptions.Width = 0
      DoSubmitValidation = True
      ScriptEvents = <>
      TabOrder = -1
      UseSize = False
      FriendlyName = 'imgformvf'
      TransparentColor = clNone
      JpegOptions.CompressionQuality = 90
      JpegOptions.Performance = jpBestSpeed
      JpegOptions.ProgressiveEncoding = False
      JpegOptions.Smoothing = True
      OutputType = ioJPEG
    end
    object lblformofthefv: TIWLabel
      Left = 9
      Top = 11
      Width = 236
      Height = 18
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Alignment = taLeftJustify
      BGColor = clNone
      Font.Color = clNone
      Font.FontName = 'verdana'
      Font.FontFamily = 'Verdana, Helvetica, Sans-Serif'
      Font.Size = 11
      Font.Style = [fsBold]
      NoWrap = False
      ConvertSpaces = False
      HasTabOrder = False
      FriendlyName = 'lblinfoeliciting'
      Caption = 'Form of the value function'
      RawText = False
    end
    object btnclosegrafintra: TIWButton
      Left = 621
      Top = 344
      Width = 104
      Height = 25
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Close'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btnclosegrafintra'
      ScriptEvents = <>
      TabOrder = 46
      OnClick = btnclosegrafintraClick
    end
    object btnsaveimagefv: TIWButton
      Left = 621
      Top = 312
      Width = 104
      Height = 25
      Cursor = crAuto
      IW50Hint = False
      ParentShowHint = False
      ShowHint = True
      ZIndex = 0
      RenderSize = True
      StyleRenderOptions.RenderSize = True
      StyleRenderOptions.RenderPosition = True
      StyleRenderOptions.RenderFont = True
      StyleRenderOptions.RenderZIndex = True
      StyleRenderOptions.RenderVisibility = True
      StyleRenderOptions.RenderStatus = True
      StyleRenderOptions.RenderAbsolute = True
      Caption = 'Save image'
      DoSubmitValidation = True
      Color = clBtnFace
      Font.Color = clNone
      Font.FontName = 'Verdana'
      Font.Size = 10
      Font.Style = [fsBold]
      FriendlyName = 'btnsaveimagefv'
      ScriptEvents = <>
      TabOrder = 49
      OnClick = btnsaveimagefvClick
    end
    object chtformvf: TChart
      Left = 77
      Top = 50
      Width = 446
      Height = 287
      BackWall.Brush.Gradient.Direction = gdBottomTop
      BackWall.Brush.Gradient.EndColor = clWhite
      BackWall.Brush.Gradient.StartColor = 15395562
      BackWall.Brush.Gradient.Visible = True
      BackWall.Transparent = False
      Foot.Font.Color = clBlue
      Foot.Font.Name = 'Verdana'
      Gradient.Direction = gdBottomTop
      Gradient.EndColor = clWhite
      Gradient.MidColor = 15395562
      Gradient.StartColor = 15395562
      Gradient.Visible = True
      LeftWall.Color = 14745599
      Legend.Font.Name = 'Verdana'
      Legend.HorizJustify = ljYes
      Legend.Shadow.Transparency = 0
      Legend.Title.Alignment = taCenter
      Legend.Title.Visible = False
      Legend.VertSpacing = -5
      Legend.Visible = False
      RightWall.Color = 14745599
      Title.Font.Color = clBlack
      Title.Font.Name = 'Verdana'
      Title.Font.Style = [fsBold]
      Title.Text.Strings = (
        'TChart')
      BottomAxis.Axis.Color = 4210752
      BottomAxis.AxisValuesFormat = '#,##0.##'
      BottomAxis.Grid.Color = 11119017
      BottomAxis.Increment = 200.000000000000000000
      BottomAxis.LabelsAlternate = True
      BottomAxis.LabelsFormat.Font.Name = 'Verdana'
      BottomAxis.LabelsMultiLine = True
      BottomAxis.LabelsSeparation = 20
      BottomAxis.TicksInner.Color = 11119017
      BottomAxis.Title.Caption = 'v(x)'
      BottomAxis.Title.Font.Name = 'Verdana'
      BottomAxis.Title.Position = tpEnd
      DepthAxis.Axis.Color = 4210752
      DepthAxis.Grid.Color = 11119017
      DepthAxis.LabelsAlternate = True
      DepthAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthAxis.TicksInner.Color = 11119017
      DepthAxis.Title.Font.Name = 'Verdana'
      DepthTopAxis.Axis.Color = 4210752
      DepthTopAxis.Grid.Color = 11119017
      DepthTopAxis.LabelsFormat.Font.Name = 'Verdana'
      DepthTopAxis.TicksInner.Color = 11119017
      DepthTopAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Axis.Color = 4210752
      LeftAxis.Grid.Color = 11119017
      LeftAxis.LabelsFormat.Font.Name = 'Verdana'
      LeftAxis.LabelsMultiLine = True
      LeftAxis.LabelsSeparation = 20
      LeftAxis.PositionUnits = muPixels
      LeftAxis.TicksInner.Color = 11119017
      LeftAxis.Title.Caption = 'y'
      LeftAxis.Title.Font.Name = 'Verdana'
      LeftAxis.Title.Position = tpEnd
      RightAxis.Axis.Color = 4210752
      RightAxis.Grid.Color = 11119017
      RightAxis.LabelsFormat.Font.Name = 'Verdana'
      RightAxis.TicksInner.Color = 11119017
      RightAxis.Title.Font.Name = 'Verdana'
      TopAxis.Axis.Color = 4210752
      TopAxis.Grid.Color = 11119017
      TopAxis.LabelsFormat.Font.Name = 'Verdana'
      TopAxis.TicksInner.Color = 11119017
      TopAxis.Title.Font.Name = 'Verdana'
      View3D = False
      View3DWalls = False
      TabOrder = 0
      Visible = False
      DefaultCanvas = 'TGDIPlusCanvas'
      ColorPaletteIndex = 13
      object LineSeries4: TLineSeries
        Marks.Frame.Color = 83886080
        Marks.Visible = True
        SeriesColor = 33023
        Title = 'Bottom'
        ValueFormat = '#,##0.##'
        Brush.BackColor = clDefault
        OutLine.Width = 3
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        Data = {
          01030000000000000000407F4000000000000000000000000000588B40000000
          000000E03F000000000058AB40000000000000F03F}
        Detail = {0000000000}
      end
      object LineSeries5: TLineSeries
        Marks.Visible = True
        SeriesColor = clRed
        Title = 'Medium'
        ValueFormat = '#,##0.##'
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        Data = {
          01030000000000000000407F4000000000000000000000000000889340000000
          000000E03F000000000058AB40000000000000F03F}
        Detail = {0000000000}
      end
      object LineSeries6: TLineSeries
        Marks.Visible = True
        SeriesColor = 4227072
        Title = 'Major'
        ValueFormat = '#,##0.##'
        Brush.BackColor = clDefault
        Pointer.InflateMargins = True
        Pointer.Style = psRectangle
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Y'
        YValues.Order = loNone
        Data = {
          01030000000000000000407F4000000000000000000000000000A49040000000
          000000E03F000000000058AB40000000000000F03F}
        Detail = {0000000000}
      end
    end
  end
  object pmnHelpIntracrit: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    Left = 1016
    Top = 88
    object btnAboutIntra: TMenuItem
      Caption = 'About'
      OnClick = btnAboutIntraClick
    end
    object UserGuide1: TMenuItem
      Caption = 'User Guide'
      object English1: TMenuItem
        Caption = 'English'
        OnClick = English1Click
      end
      object Portuguese1: TMenuItem
        Caption = 'Portuguese'
        OnClick = Portuguese1Click
      end
    end
  end
  object pmpResetIntra: TPopupMenu
    Left = 936
    Top = 88
    object Restartproblem1: TMenuItem
      Caption = 'Restart Problem'
      OnClick = Restartproblem1Click
    end
    object NewProblem1: TMenuItem
      Caption = 'New Problem'
      OnClick = NewProblem1Click
    end
  end
end
