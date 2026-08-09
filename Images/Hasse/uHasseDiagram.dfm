object frmSimpleGraph: TfrmSimpleGraph
  Left = 49
  Top = 0
  Caption = 'FITradeoff || FU_T1ONO_LF1'
  ClientHeight = 690
  ClientWidth = 1255
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel: TPanel
    Left = 10
    Top = 8
    Width = 1237
    Height = 674
    Caption = 'Panel'
    TabOrder = 0
    object SimpleGraph: TSimpleGraph
      Left = 24
      Top = 24
      Width = 1201
      Height = 641
      TabOrder = 0
      object btnSaveGraph: TButton
        Left = 3
        Top = 3
        Width = 75
        Height = 25
        Caption = 'Save Graph'
        TabOrder = 0
        Visible = False
        OnClick = btnSaveGraphClick
      end
      object btnShowLegends: TButton
        Left = 3
        Top = 48
        Width = 75
        Height = 25
        Caption = 'Show Legend'
        TabOrder = 1
        Visible = False
        OnClick = btnShowLegendsClick
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 32
    Top = 24
  end
  object OpenDialog1: TOpenDialog
    OnShow = FormShow
    Filter = 'MS Excel Files (.xlsx; .xls)|*.xls; *.xlsx'
    Left = 464
  end
end
