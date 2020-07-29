object FrmKumite: TFrmKumite
  Left = 0
  Top = 0
  Caption = 'Kumite'
  ClientHeight = 505
  ClientWidth = 348
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
    Left = 32
    Top = 120
    Width = 36
    Height = 13
    Caption = 'Posi'#231#227'o'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 172
    Top = 120
    Width = 41
    Height = 13
    Caption = 'T'#233'cnicas'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 160
    Width = 69
    Height = 13
    Caption = 'Dist'#226'ncia Base'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 172
    Top = 160
    Width = 72
    Height = 13
    Caption = 'Dist'#226'ncia golpe'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 32
    Top = 200
    Width = 35
    Height = 13
    Caption = 'Ataque'
    FocusControl = DBEdit5
  end
  object Label6: TLabel
    Left = 172
    Top = 200
    Width = 36
    Height = 13
    Caption = 'Dire'#231#227'o'
    FocusControl = DBEdit6
  end
  object Label7: TLabel
    Left = 32
    Top = 240
    Width = 72
    Height = 13
    Caption = 'Explorou o Kyo'
    FocusControl = DBEdit7
  end
  object Label8: TLabel
    Left = 172
    Top = 240
    Width = 99
    Height = 13
    Caption = 'Manteve-se em Jitsu'
    FocusControl = DBEdit8
  end
  object Label9: TLabel
    Left = 32
    Top = 280
    Width = 34
    Height = 13
    Caption = 'Defesa'
    FocusControl = DBEdit9
  end
  object Label10: TLabel
    Left = 172
    Top = 280
    Width = 70
    Height = 13
    Caption = 'Contra ataque'
    FocusControl = DBEdit10
  end
  object Label11: TLabel
    Left = 32
    Top = 320
    Width = 25
    Height = 13
    Caption = 'Vis'#227'o'
    FocusControl = DBEdit11
  end
  object Label12: TLabel
    Left = 172
    Top = 320
    Width = 22
    Height = 13
    Caption = 'Kime'
    FocusControl = DBEdit12
  end
  object Label13: TLabel
    Left = 32
    Top = 368
    Width = 50
    Height = 13
    Caption = 'Disposi'#231#227'o'
    FocusControl = DBEdit13
  end
  object Label14: TLabel
    Left = 172
    Top = 368
    Width = 37
    Height = 13
    Caption = 'Zanchin'
    FocusControl = DBEdit14
  end
  object Label15: TLabel
    Left = 33
    Top = 89
    Width = 152
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
    Left = 32
    Top = 136
    Width = 134
    Height = 21
    DataField = 'POSICAO'
    DataSource = DataSource1
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 172
    Top = 136
    Width = 134
    Height = 21
    DataField = 'TECNICAS'
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 176
    Width = 134
    Height = 21
    DataField = 'DISTBASE'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 172
    Top = 176
    Width = 134
    Height = 21
    DataField = 'DISTGOLPE'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit5: TDBEdit
    Left = 32
    Top = 216
    Width = 134
    Height = 21
    DataField = 'ATAQUE'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit6: TDBEdit
    Left = 172
    Top = 216
    Width = 134
    Height = 21
    DataField = 'DIRECAO'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit7: TDBEdit
    Left = 32
    Top = 256
    Width = 134
    Height = 21
    DataField = 'KYO'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit8: TDBEdit
    Left = 172
    Top = 256
    Width = 134
    Height = 21
    DataField = 'JITSU'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 32
    Top = 296
    Width = 134
    Height = 21
    DataField = 'DEFESA'
    DataSource = DataSource1
    TabOrder = 8
  end
  object DBEdit10: TDBEdit
    Left = 172
    Top = 296
    Width = 134
    Height = 21
    DataField = 'CONTRAATAQUE'
    DataSource = DataSource1
    TabOrder = 9
  end
  object DBEdit11: TDBEdit
    Left = 32
    Top = 336
    Width = 134
    Height = 21
    DataField = 'VISAO'
    DataSource = DataSource1
    TabOrder = 10
  end
  object DBEdit12: TDBEdit
    Left = 172
    Top = 336
    Width = 134
    Height = 21
    DataField = 'KIME'
    DataSource = DataSource1
    TabOrder = 11
  end
  object DBEdit13: TDBEdit
    Left = 32
    Top = 384
    Width = 134
    Height = 21
    DataField = 'DISPOSICAO'
    DataSource = DataSource1
    TabOrder = 12
  end
  object DBEdit14: TDBEdit
    Left = 172
    Top = 384
    Width = 134
    Height = 21
    DataField = 'ZANCHIN'
    DataSource = DataSource1
    TabOrder = 13
  end
  object ComboBox1: TComboBox
    Left = 33
    Top = 8
    Width = 273
    Height = 21
    ItemIndex = 0
    TabOrder = 14
    Text = 'Vinicius Tessele'
    Items.Strings = (
      'Vinicius Tessele')
  end
  object EditAvaliador: TEdit
    Left = 33
    Top = 35
    Width = 273
    Height = 21
    Hint = 'Insira o nome do Avaliador'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
  end
  object ComboBox2: TComboBox
    Left = 33
    Top = 62
    Width = 273
    Height = 21
    ItemIndex = 0
    TabOrder = 16
    Text = 'Kata'
    Items.Strings = (
      'Kata'
      'Kihon'
      'Teoria'
      'Fisico'
      'Kumite')
  end
  object btn_Confirmar: TBitBtn
    Left = 108
    Top = 424
    Width = 134
    Height = 65
    Caption = 'Confirma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = btn_ConfirmarClick
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQKumite
    Left = 200
    Top = 208
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQExame
    ScopeMappings = <>
    Left = 168
    Top = 256
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'aluno_nome'
      Control = ComboBox1
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField2: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'grupo_descricao'
      Control = ComboBox2
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB3
      FieldName = 'TECNICA_DESCRICAO'
      Component = Label15
      ComponentProperty = 'Caption'
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DM.FDQGrupo
    ScopeMappings = <>
    Left = 176
    Top = 264
  end
  object BindSourceDB3: TBindSourceDB
    DataSet = DM.FDQExameNota
    ScopeMappings = <>
    Left = 184
    Top = 272
  end
end
