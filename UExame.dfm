inherited FCadExame: TFCadExame
  Caption = 'Cadastro de Exame'
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 57
    Width = 764
    Height = 72
    Align = alTop
    Caption = 'Aluno e Faixa'
    TabOrder = 2
    object btnpesquisa: TSpeedButton
      Left = 207
      Top = 27
      Width = 58
      Height = 22
      Hint = 'Pesquisa o aluno'
      Caption = 'F9'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = btnpesquisaClick
    end
    object Label1: TLabel
      Left = 271
      Top = 9
      Width = 31
      Height = 13
      Caption = 'Faixas'
    end
    object btnCarregar: TSpeedButton
      Left = 526
      Top = 27
      Width = 133
      Height = 22
      Hint = 'Carrega as t'#233'cnicas a serem avaalidas'
      Caption = 'Carregar t'#233'cnicas'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      NumGlyphs = 2
      OnClick = btnCarregarClick
    end
    object LabelData: TLabel
      Left = 520
      Top = 6
      Width = 5
      Height = 19
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 447
      Top = 9
      Width = 73
      Height = 13
      Caption = 'Data do Exame'
    end
    object EditNome: TEdit
      Left = 8
      Top = 27
      Width = 193
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object ComboBox1: TComboBox
      Left = 271
      Top = 28
      Width = 170
      Height = 21
      TabOrder = 1
    end
    object EditData: TEdit
      Left = 447
      Top = 27
      Width = 90
      Height = 21
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 129
    Width = 764
    Height = 329
    Align = alClient
    Caption = 'T'#233'cnicas'
    TabOrder = 3
    object Label3: TLabel
      Left = 8
      Top = 15
      Width = 73
      Height = 13
      Caption = 'Data do exame'
    end
    object DBGrid1: TDBGrid
      Left = 8
      Top = 60
      Width = 745
      Height = 229
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'tecnica_descricao'
          Title.Alignment = taCenter
          Title.Caption = 'T'#233'cnica'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grupo'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'examenota'
          Title.Alignment = taCenter
          Title.Caption = 'Nota'
          Width = 51
          Visible = True
        end>
    end
    object EditDataAlteracao: TEdit
      Left = 8
      Top = 33
      Width = 109
      Height = 21
      TabOrder = 1
    end
    object btnAlterar: TButton
      Left = 123
      Top = 33
      Width = 75
      Height = 21
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = btnAlterarClick
    end
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQFaixa
    ScopeMappings = <>
    Left = 600
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
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQListTecnicasAlunoNotas
    Left = 560
    Top = 201
  end
end