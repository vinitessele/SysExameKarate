inherited FGrupo: TFGrupo
  Caption = 'Grupo'
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 16
    Top = 64
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel [1]
    Left = 16
    Top = 104
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
    FocusControl = DBEdit2
  end
  inherited PanelTooBar: TPanel
    inherited DBNavigator1: TDBNavigator
      DataSource = DataSource1
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 80
    Width = 134
    Height = 21
    DataField = 'grupo_id'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 120
    Width = 654
    Height = 21
    DataField = 'grupo_descricao'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 168
    Width = 654
    Height = 120
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
        FieldName = 'grupo_id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grupo_descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQGrupo
    Left = 344
    Top = 88
  end
end
