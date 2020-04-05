inherited FFaixa: TFFaixa
  Caption = 'Faixa'
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
    Width = 82
    Height = 13
    Caption = 'Faixa - Descri'#231#227'o'
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
    DataField = 'faixa_id'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 128
    Width = 524
    Height = 21
    DataField = 'faixa_descricao'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 168
    Width = 524
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
        FieldName = 'faixa_id'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'faixa_descricao'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQFaixa
    Left = 312
    Top = 72
  end
end
