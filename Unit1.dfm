object Form1: TForm1
  Left = 227
  Top = 215
  Width = 1245
  Height = 728
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 0
    Top = 41
    Width = 545
    Height = 423
    DataSource = ds1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 1229
    Height = 41
    Align = alTop
    Caption = 'pnl1'
    TabOrder = 1
    object dbnvgr1: TDBNavigator
      Left = 400
      Top = 8
      Width = 240
      Height = 25
      DataSource = ds1
      TabOrder = 0
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 464
    Width = 1229
    Height = 226
    Align = alBottom
    Caption = 'pnl2'
    TabOrder = 2
    object lbl1: TLabel
      Left = 736
      Top = 8
      Width = 29
      Height = 24
      Caption = 'lbl1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object dbmmojijie: TDBMemo
      Left = 16
      Top = 8
      Width = 337
      Height = 209
      DataField = 'jijie'
      DataSource = ds1
      ScrollBars = ssBoth
      TabOrder = 0
    end
    object dbmmoxiangjie: TDBMemo
      Left = 360
      Top = 8
      Width = 257
      Height = 209
      DataField = 'xiangjie'
      DataSource = ds1
      ScrollBars = ssBoth
      TabOrder = 1
    end
    object btn1: TButton
      Left = 632
      Top = 40
      Width = 225
      Height = 25
      Caption = #20889#20837#21040#24211#20869
      TabOrder = 2
      OnClick = btn1Click
    end
    object mmo1: TMemo
      Left = 632
      Top = 80
      Width = 225
      Height = 65
      Lines.Strings = (
        'mmo1')
      TabOrder = 3
    end
    object mmo2: TMemo
      Left = 872
      Top = 16
      Width = 345
      Height = 193
      Lines.Strings = (
        'mmo2')
      ScrollBars = ssBoth
      TabOrder = 4
    end
    object chk1: TCheckBox
      Left = 632
      Top = 16
      Width = 97
      Height = 17
      Caption = 'stop'
      TabOrder = 5
    end
    object edt1: TEdit
      Left = 632
      Top = 152
      Width = 121
      Height = 21
      TabOrder = 6
      Text = 'edt1'
    end
    object btn2: TButton
      Left = 632
      Top = 184
      Width = 225
      Height = 25
      Caption = #25104#35821#20889#20837#24211
      TabOrder = 7
      OnClick = btn2Click
    end
  end
  object dbgrd2: TDBGrid
    Left = 552
    Top = 48
    Width = 673
    Height = 409
    DataSource = ds2
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dbmmocontent: TDBMemo
    Left = 576
    Top = 328
    Width = 201
    Height = 89
    DataField = 'content'
    DataSource = ds2
    TabOrder = 4
  end
  object dbmmoderivation: TDBMemo
    Left = 784
    Top = 328
    Width = 185
    Height = 89
    DataField = 'derivation'
    DataSource = ds2
    TabOrder = 5
  end
  object dbmmosamples: TDBMemo
    Left = 984
    Top = 328
    Width = 201
    Height = 89
    DataField = 'samples'
    DataSource = ds2
    TabOrder = 6
  end
  object con1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\code\xhzd\'#26032#21326#23383#20856'.m' +
      'db;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 200
    Top = 8
  end
  object tbl1: TADOTable
    Active = True
    Connection = con1
    CursorType = ctStatic
    TableName = 'xhzd_surnfu'
    Left = 232
    Top = 8
  end
  object ds1: TDataSource
    DataSet = tbl1
    Left = 272
    Top = 8
  end
  object tbl2: TADOTable
    Active = True
    Connection = con2
    CursorType = ctStatic
    TableName = 'CY'
    Left = 688
    Top = 8
  end
  object con2: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\code\xhzd\cycd.m' +
      'db;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 728
    Top = 8
  end
  object ds2: TDataSource
    DataSet = tbl2
    Left = 776
    Top = 8
  end
end
