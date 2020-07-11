inherited FTecnicas: TFTecnicas
  Caption = 'T'#233'cnicas'
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
  object Label3: TLabel [2]
    Left = 423
    Top = 101
    Width = 29
    Height = 13
    Caption = 'Grupo'
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
    DataField = 'tecnica_id'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 120
    Width = 401
    Height = 21
    DataField = 'tecnica_descricao'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 160
    Width = 740
    Height = 153
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
        FieldName = 'tecnica_id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tecnica_descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Descri'#231#227'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Grupo'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 423
    Top = 120
    Width = 145
    Height = 21
    TabOrder = 5
    Text = 'Kata'
    Items.Strings = (
      '')
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQTecnica
    Left = 352
    Top = 72
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQGrupo
    ScopeMappings = <>
    Left = 648
    Top = 72
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkFillControlToField: TLinkFillControlToField
      Category = 'Quick Bindings'
      FieldName = 'Grupo'
      Track = False
      FillDataSource = BindSourceDB1
      FillValueFieldName = 'grupo_id'
      FillDisplayFieldName = 'grupo_descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'Grupo'
      Control = ComboBox1
      Track = True
      FillDataSource = BindSourceDB1
      FillValueFieldName = 'grupo_descricao'
      FillDisplayFieldName = 'grupo_descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DM.FDQTecnica
    ScopeMappings = <>
    Left = 376
    Top = 248
  end
end
