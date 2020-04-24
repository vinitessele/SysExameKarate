inherited FAluno: TFAluno
  Caption = 'Cadastro de Aluno'
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
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DBEdit2
  end
  object Label3: TLabel [2]
    Left = 16
    Top = 152
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit3
  end
  object Label4: TLabel [3]
    Left = 16
    Top = 192
    Width = 33
    Height = 13
    Caption = 'Celular'
    FocusControl = DBEdit4
  end
  object Label5: TLabel [4]
    Left = 16
    Top = 232
    Width = 28
    Height = 13
    Caption = 'E-Mail'
    FocusControl = DBEdit5
  end
  object Label7: TLabel [5]
    Left = 16
    Top = 277
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    FocusControl = DBEdit6
  end
  object Label8: TLabel [6]
    Left = 322
    Top = 277
    Width = 46
    Height = 13
    Caption = 'Academia'
  end
  inherited PanelTooBar: TPanel
    inherited DBNavigator1: TDBNavigator
      DataSource = DataSource1
      Hints.Strings = ()
    end
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 88
    Width = 134
    Height = 21
    DataField = 'aluno_id'
    DataSource = DataSource1
    Enabled = False
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 128
    Width = 145
    Height = 21
    DataField = 'aluno_cpf'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 168
    Width = 300
    Height = 21
    DataField = 'aluno_nome'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 16
    Top = 208
    Width = 156
    Height = 21
    DataField = 'aluno_celular'
    DataSource = DataSource1
    TabOrder = 5
  end
  object DBEdit5: TDBEdit
    Left = 16
    Top = 248
    Width = 300
    Height = 21
    DataField = 'aluno_email'
    DataSource = DataSource1
    TabOrder = 6
  end
  object DBEdit6: TDBEdit
    Left = 16
    Top = 291
    Width = 300
    Height = 21
    DataField = 'aluno_observacao'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 318
    Width = 740
    Height = 137
    DataSource = DataSource1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'aluno_id'
        Title.Alignment = taCenter
        Title.Caption = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aluno_cpf'
        Title.Alignment = taCenter
        Title.Caption = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aluno_nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 219
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aluno_celular'
        Title.Alignment = taCenter
        Title.Caption = 'Celular'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aluno_email'
        Title.Alignment = taCenter
        Title.Caption = 'E-Mail'
        Width = 184
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aluno_observacao'
        Title.Alignment = taCenter
        Title.Caption = 'Observacao'
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 322
    Top = 291
    Width = 145
    Height = 21
    ItemIndex = 0
    TabOrder = 9
    Text = 'Dojo Tessele'
    Items.Strings = (
      'Dojo Tessele'
      'Aguas Claras')
  end
  object DBImage2: TDBImage
    Left = 544
    Top = 63
    Width = 212
    Height = 218
    DataField = 'aluno_img'
    DataSource = DataSource1
    Stretch = True
    TabOrder = 10
  end
  object btnFoto: TBitBtn
    Left = 633
    Top = 287
    Width = 75
    Height = 25
    Hint = 'Inserir logo da academia'
    Caption = 'Foto'
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
    TabOrder = 11
    OnClick = btnFotoClick
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQAluno
    Left = 232
    Top = 80
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQAcademia
    ScopeMappings = <>
    Left = 344
    Top = 72
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB2
      FieldName = 'alunoacademia_id'
      Control = ComboBox1
      Track = True
      FillDataSource = BindSourceDB1
      FillValueFieldName = 'academia_id'
      FillDisplayFieldName = 'academia_nome'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = DM.FDQAluno
    ScopeMappings = <>
    Left = 288
    Top = 72
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 416
    Top = 152
  end
end
