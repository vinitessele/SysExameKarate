inherited FFaixaTecnica: TFFaixaTecnica
  Caption = 'Associa'#231#227'o Faixa com t'#233'cnicas'
  ClientHeight = 499
  OnShow = FormShow
  ExplicitHeight = 538
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 63
    Width = 31
    Height = 13
    Caption = 'Faixas'
  end
  object Label2: TLabel [1]
    Left = 8
    Top = 109
    Width = 110
    Height = 13
    Caption = 'Lista de T'#233'cnicas Kihon'
  end
  object Label3: TLabel [2]
    Left = 432
    Top = 109
    Width = 101
    Height = 13
    Caption = 'T'#233'cnicas para exame'
  end
  object Label4: TLabel [3]
    Left = 8
    Top = 263
    Width = 118
    Height = 13
    Caption = '^2 Clique para Adicionar'
  end
  object Label5: TLabel [4]
    Left = 416
    Top = 439
    Width = 117
    Height = 13
    Caption = '^2 Clique para Remover'
  end
  object Label6: TLabel [5]
    Left = 8
    Top = 285
    Width = 106
    Height = 13
    Caption = 'Lista de T'#233'cnicas Kata'
  end
  object Label7: TLabel [6]
    Left = 8
    Top = 439
    Width = 118
    Height = 13
    Caption = '^2 Clique para Adicionar'
  end
  object Label8: TLabel [7]
    Left = 192
    Top = 109
    Width = 116
    Height = 13
    Caption = 'Lista de T'#233'cnicas Kumite'
  end
  object Label9: TLabel [8]
    Left = 192
    Top = 263
    Width = 118
    Height = 13
    Caption = '^2 Clique para Adicionar'
  end
  object Label10: TLabel [9]
    Left = 192
    Top = 285
    Width = 166
    Height = 13
    Caption = 'Lista de T'#233'cnicas Outros requisitos'
  end
  object Label11: TLabel [10]
    Left = 192
    Top = 439
    Width = 118
    Height = 13
    Caption = '^2 Clique para Adicionar'
  end
  inherited PanelTooBar: TPanel
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Visible = False
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 480
    ExplicitTop = 480
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 80
    Width = 257
    Height = 21
    TabOrder = 2
    OnChange = ComboBox1Change
  end
  object ListViewTecnicas: TListView
    Left = 8
    Top = 128
    Width = 161
    Height = 129
    Columns = <>
    Items.ItemData = {
      05EE0000000500000000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF010000
      000C470075006500640061006E0020006200610072006100690000000000FFFF
      FFFFFFFFFFFF00000000FFFFFFFF020000000D4F0069007A0075006B00690020
      00630068007500640061006E0000000000FFFFFFFFFFFFFFFF00000000FFFFFF
      FF030000000C4F0069007A0075006B00690020006A006F00640061006E000000
      0000FFFFFFFFFFFFFFFF00000000FFFFFFFF040000000853006F0074006F0020
      0075006B00650000000000FFFFFFFFFFFFFFFF00000000FFFFFFFF0500000009
      4D0061006500200067007500650072006900}
    TabOrder = 3
    ViewStyle = vsList
    OnDblClick = ListViewTecnicasDblClick
  end
  object ListViewTecnicasExame: TListView
    Left = 416
    Top = 128
    Width = 169
    Height = 305
    Columns = <>
    ColumnClick = False
    TabOrder = 4
    ViewStyle = vsList
    OnDblClick = ListViewTecnicasExameDblClick
  end
  object ListViewTecnicasKata: TListView
    Left = 8
    Top = 304
    Width = 161
    Height = 129
    Columns = <>
    TabOrder = 5
    ViewStyle = vsList
    OnDblClick = ListViewTecnicasKataDblClick
  end
  object ListViewTecnicasKumite: TListView
    Left = 192
    Top = 128
    Width = 161
    Height = 129
    Columns = <>
    TabOrder = 6
    ViewStyle = vsList
    OnDblClick = ListViewTecnicasKumiteDblClick
  end
  object ListViewTecnicasOutros: TListView
    Left = 192
    Top = 304
    Width = 161
    Height = 129
    Columns = <>
    TabOrder = 7
    ViewStyle = vsList
    OnDblClick = ListViewTecnicasOutrosDblClick
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQFaixa
    ScopeMappings = <>
    Left = 88
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'faixa_descricao'
      Control = ComboBox1
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField2: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'tecnica_descricao'
      Control = ListViewTecnicas
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField3: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'tecnica_descricao'
      Control = ListViewTecnicasExame
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField4: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB4
      FieldName = 'tecnica_descricao'
      Control = ListViewTecnicasKata
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField5: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB5
      FieldName = 'tecnica_descricao'
      Control = ListViewTecnicasKumite
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField6: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB6
      FieldName = 'tecnica_descricao'
      Control = ListViewTecnicasOutros
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DM.FDQListTecnicaKihon
    ScopeMappings = <>
    Left = 216
    Top = 8
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = DM.FDQListTecnicaFaixa
    ScopeMappings = <>
    Left = 144
    Top = 8
  end
  object BindSourceDB4: TBindSourceDB
    DataSet = DM.FDQListTecnicaKata
    ScopeMappings = <>
    Left = 408
    Top = 8
  end
  object BindSourceDB5: TBindSourceDB
    DataSet = DM.FDQListTecnicaKumite
    ScopeMappings = <>
    Left = 344
    Top = 8
  end
  object BindSourceDB6: TBindSourceDB
    DataSet = DM.FDQListTecnicaOutros
    ScopeMappings = <>
    Left = 280
    Top = 8
  end
end
