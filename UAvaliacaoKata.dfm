object FrmAvaliaKata: TFrmAvaliaKata
  Left = 0
  Top = 0
  Caption = 'Avalia'#231#227'o do Kata'
  ClientHeight = 505
  ClientWidth = 243
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 136
    Width = 36
    Height = 13
    Caption = 'Posi'#231#227'o'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 176
    Width = 41
    Height = 13
    Caption = 'T'#233'cnicas'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 216
    Width = 27
    Height = 13
    Caption = 'Ritmo'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 56
    Top = 256
    Width = 25
    Height = 13
    Caption = 'Vis'#227'o'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 56
    Top = 296
    Width = 22
    Height = 13
    Caption = 'Kime'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 56
    Top = 336
    Width = 50
    Height = 13
    Caption = 'Disposi'#231#227'o'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 56
    Top = 376
    Width = 37
    Height = 13
    Caption = 'Zanchin'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 8
    Top = 97
    Width = 5
    Height = 19
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 152
    Width = 134
    Height = 21
    DataField = 'POSICAO'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 192
    Width = 134
    Height = 21
    DataField = 'TECNICAS'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 232
    Width = 134
    Height = 21
    DataField = 'RITMO'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 56
    Top = 272
    Width = 134
    Height = 21
    DataField = 'VISAO'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 56
    Top = 312
    Width = 134
    Height = 21
    DataField = 'KIME'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 56
    Top = 352
    Width = 134
    Height = 21
    DataField = 'DISPOSICAO'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 56
    Top = 392
    Width = 134
    Height = 21
    DataField = 'ZANCHIN'
    DataSource = DataSource1
    TabOrder = 6
  end
  object btn_Confirmar: TBitBtn
    Left = 56
    Top = 432
    Width = 134
    Height = 65
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btn_ConfirmarClick
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 16
    Width = 161
    Height = 21
    ItemIndex = 0
    TabOrder = 8
    Text = 'Vinicius Tessele'
    Items.Strings = (
      'Vinicius Tessele')
  end
  object EditAvaliador: TEdit
    Left = 40
    Top = 43
    Width = 161
    Height = 21
    Hint = 'Insira o nome do Avaliador'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object ComboBox2: TComboBox
    Left = 40
    Top = 70
    Width = 161
    Height = 21
    ItemIndex = 0
    TabOrder = 10
    Text = 'Kata'
    Items.Strings = (
      'Kata'
      'Kihon'
      'Teoria'
      'Fisico'
      'Kumite')
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQAvKata
    Left = 256
    Top = 144
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQExame
    ScopeMappings = <>
    Left = 120
    Top = 256
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 164
    Top = 133
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'aluno_nome'
      Control = ComboBox1
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'TECNICA_ID'
      Track = True
      FillDataSource = BindSourceDB2
      FillDisplayFieldName = 'TECNICA_DESCRICAO'
      AutoFill = False
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'TECNICA_DESCRICAO'
      Component = Label8
      ComponentProperty = 'Caption'
    end
    object LinkListControlToField2: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = FExame.BindSourceDB2
      FieldName = 'grupo_descricao'
      Control = ComboBox2
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DM.FDQExameNota
    ScopeMappings = <>
    Left = 128
    Top = 264
  end
end
