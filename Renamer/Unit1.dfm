object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 344
  ClientWidth = 579
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 12
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 250
    Height = 344
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alLeft
    TabOrder = 0
    object Splitter1: TSplitter
      Left = 1
      Top = 19
      Width = 248
      Height = 3
      Cursor = crVSplit
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      ExplicitTop = 18
      ExplicitWidth = 249
    end
    object Splitter2: TSplitter
      Left = 1
      Top = 136
      Width = 248
      Height = 3
      Cursor = crVSplit
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      ExplicitTop = 135
      ExplicitWidth = 249
    end
    object DriveComboBox1: TDriveComboBox
      Left = 1
      Top = 1
      Width = 248
      Height = 18
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      TabOrder = 0
      OnChange = DriveComboBox1Change
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 1
      Top = 22
      Width = 248
      Height = 114
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alTop
      FileList = FileListBox1
      TabOrder = 1
    end
    object FileListBox1: TFileListBox
      Left = 1
      Top = 139
      Width = 248
      Height = 204
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Align = alClient
      ItemHeight = 12
      MultiSelect = True
      ParentColor = True
      TabOrder = 2
      OnClick = FileListBox1Click
    end
    object Log1: TListBox
      Left = 47
      Top = 40
      Width = 154
      Height = 187
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      ItemHeight = 12
      TabOrder = 3
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 411
    Top = 0
    Width = 168
    Height = 344
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alRight
    TabOrder = 1
    object NewDir: TComboBox
      Left = 26
      Top = 32
      Width = 135
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 0
      OnChange = NewDirChange
    end
    object NewName: TComboBox
      Left = 26
      Top = 83
      Width = 135
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      TabOrder = 1
      OnChange = NewNameChange
    end
    object NewUndName: TButton
      Left = 45
      Top = 138
      Width = 90
      Height = 20
      Margins.Left = 2
      Margins.Top = 2
      Margins.Right = 2
      Margins.Bottom = 2
      Caption = 'NewUndName'
      TabOrder = 2
      OnClick = NewUndNameClick
    end
  end
  object logmemo: TMemo
    Left = 8
    Top = 163
    Width = 543
    Height = 269
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
end
