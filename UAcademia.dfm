inherited FAcademia: TFAcademia
  Caption = 'Academia'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 72
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 112
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  inherited PanelTooBar: TPanel
    inherited DBNavigator1: TDBNavigator
      DataSource = DataSource1
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 88
    Width = 134
    Height = 21
    DataField = 'academia_id'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 128
    Width = 329
    Height = 21
    DataField = 'academia_nome'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 174
    Width = 740
    Height = 209
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'academia_id'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'academia_nome'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'academia_logo'
        Visible = True
      end>
  end
  object btnlogo: TBitBtn
    Left = 415
    Top = 126
    Width = 75
    Height = 25
    Hint = 'Inserir logo da academia'
    Caption = 'Logo'
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000130B0000130B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333330070
      7700333333337777777733333333008088003333333377F73377333333330088
      88003333333377FFFF7733333333000000003FFFFFFF77777777000000000000
      000077777777777777770FFFFFFF0FFFFFF07F3333337F3333370FFFFFFF0FFF
      FFF07F3FF3FF7FFFFFF70F00F0080CCC9CC07F773773777777770FFFFFFFF039
      99337F3FFFF3F7F777F30F0000F0F09999937F7777373777777F0FFFFFFFF999
      99997F3FF3FFF77777770F00F000003999337F773777773777F30FFFF0FF0339
      99337F3FF7F3733777F30F08F0F0337999337F7737F73F7777330FFFF0039999
      93337FFFF7737777733300000033333333337777773333333333}
    NumGlyphs = 2
    TabOrder = 5
    OnClick = btnlogoClick
  end
  object DBImage1: TDBImage
    Left = 496
    Top = 63
    Width = 169
    Height = 105
    DataField = 'academia_logo'
    DataSource = DataSource1
    Stretch = True
    TabOrder = 6
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQAcademia
    Left = 296
    Top = 64
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 352
    Top = 64
  end
end
