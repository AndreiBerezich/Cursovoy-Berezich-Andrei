object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Form2'
  ClientHeight = 567
  ClientWidth = 1020
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object MediaPlayer1: TMediaPlayer
    Left = 24
    Top = 336
    Width = 29
    Height = 30
    EnabledButtons = []
    VisibleButtons = []
    DoubleBuffered = True
    Display = Panel1
    Visible = False
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1025
    Height = 569
    TabOrder = 1
    object Image1: TImage
      Left = 456
      Top = 118
      Width = 137
      Height = 82
      OnClick = Image1Click
    end
    object Image2: TImage
      Left = 472
      Top = 288
      Width = 105
      Height = 54
      OnClick = Image2Click
    end
    object Image3: TImage
      Left = 472
      Top = 232
      Width = 105
      Height = 50
      OnClick = Image3Click
    end
    object Image4: TImage
      Left = 472
      Top = 352
      Width = 105
      Height = 53
      OnClick = Image4Click
    end
    object MediaPlayer2: TMediaPlayer
      Left = 88
      Top = 352
      Width = 29
      Height = 30
      VisibleButtons = []
      DoubleBuffered = True
      ParentDoubleBuffered = False
      TabOrder = 0
    end
  end
  object MainMenu1: TMainMenu
    Left = 216
    Top = 296
    object N1: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1042#1099#1081#1090#1080
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1055#1088#1086#1081#1090#1080' '#1090#1077#1089#1090
      OnClick = N3Click
    end
  end
end
