inherited FFaixaTecnica: TFFaixaTecnica
  Caption = 'Associa'#231#227'o Faixa com t'#233'cnicas'
  ClientHeight = 557
  ClientWidth = 800
  OnShow = FormShow
  ExplicitWidth = 816
  ExplicitHeight = 596
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel [0]
    Left = 8
    Top = 63
    Width = 31
    Height = 13
    Caption = 'Faixas'
  end
  object Image2: TImage [1]
    Left = 560
    Top = 63
    Width = 38
    Height = 38
    Picture.Data = {
      0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
      0025080600000023B7EB47000004604944415478DABD986B681C5514C7FF7726
      BBD9C44993EE2635F84853ADF8C248EB33141F48B0918228A8D02FB56A11A4E0
      87825235B622A9A5223E403F548D7D08562B05350A2660FBA1C40553292908BE
      5A9A1AFA256E924D76DBEE63E67ACEECCD3AB3BB999D4D462FFCB973EF64EFF9
      DD73CEBD736F444F4F0FA80892AE14723C737F1045924CA59CE3590A02602375
      A43029A21456005A4000963298255D52E2E73C03B0F17A52236999AAEB155490
      254FCA902E9066559D61003666905A486D9AA6C5F3F93C8410905282DA76CDE2
      3E56D1AF527A5A74FE6D2E97432693816118DDD49C24CD90520CC0C69B4951FA
      C1A95EA31E8F1861AC0CEB814E7F3C6BE2AB541687CF4FA2A9A9A98BBAA64849
      06B08D936296658D7E74654BE0C69D105B26A6A1EBFA1DD44C3004034415402B
      B9343ED41975BBF1EE7BA06D7E8E32A20ED6E14F2187079704F1D0B9190E1D87
      E1EF798018CF5E41C4BF5FB9DCF503FDB5B780AB3A8A6D73CB134B02587F768A
      73A35B852051154074DF07ED99AD9C71B00EEE853C7E744900BDE3D35C5506A8
      1482224847278581F6A86C0672E2DCBF2F689588B577418E9DE0540FDE0388B6
      427B7003C4FDEBED3CB04B6212D6F0B7109DD79287EEB5BBACFE9720CF9E0E18
      A07505F49D6F020D8DEE516693B46535DB8F72681072E418E4F909B7C71EE885
      76E73AEAFF8B42F7E1E200C4F537437B6167D92CACA343909F0D944F2FD2008D
      0C8B0D8FD25E1A29009EF903D61BAF2C2E0744D75A68CF6FAFE84AEBEB2F2007
      8F141A6D9743DC780BB44DCF16DAB493CA5FC620BFF91272FC8CFF109402E83B
      F6001DABECD80A8D36274E4447913F8D40AC680728170A54162C364A61412E5B
      11BCB65510213786E8533197B49BDACBBB20AEB9AE6C5076B3FC7CBF5D572B35
      79A052D1FA7683B3DFDE170EED831CFD910067AB1A0E0CC00ECD3B1F034DCB16
      B52BD6BE0F54F2C2F6D72156DF0073EB26FAA25F0A0EC0970768E7D3DF3F08FC
      F92BCCB7FB83F5802F80F62BA0F7BF0B79FA3758BB5FAD19C07315F80A41AC0D
      FA9E0FE8A3F403AC037B8305F0B50A1E7E1C8264EED806946CBF4B0E019D88E2
      C3AB62DE00DBFA206EEA22F7F751187E0FD603B500982FD229692A1188078A47
      32F8C8017DD77B742C320B2158447178A078242B1E4AE9383E3A7075F47F3F94
      168FE5E974FAD463EDB1FFF458FE5DF202DF355CC772D7C5646E6E2E1EA18F50
      2814720DF06473041B5B1A7C193B347311FB49F3971BAE29BFEC7764BCEC62E2
      7535134A3CD0C86602A806C1C6F74DDBB35CA7BAA4D28257B36A97D33AA51041
      9CF08260E30792F6B7E176146EC17925CFCB29B0F0F57C1EA05E8135902B4F3E
      B5BCB10CC231F335D4BCA88C644A002A5ECF5D033997212D19E10030941A4DD3
      1C7B3A7A5911828D0F24527468AEBB55B936A56403D098D231A6CB9E27800784
      4110271982CB2753695E5A6B1C862B1AF705B0402985E0643552A9D4CFFC92AE
      DCB729A3B34EE32AF9BC07F609500AC12B85A71F56EF38A1D2CAFDBE8DD70AE0
      8408C3FD5F94F92596ADC538977F00510D5188634A4DE00000000049454E44AE
      426082}
  end
  inherited PanelTooBar: TPanel
    Width = 800
    Visible = False
    ExplicitWidth = 800
    inherited DBNavigator1: TDBNavigator
      Visible = False
    end
  end
  inherited StatusBar1: TStatusBar
    Top = 538
    Width = 800
    ExplicitTop = 538
    ExplicitWidth = 800
  end
  object ComboBox1: TComboBox
    Left = 8
    Top = 80
    Width = 529
    Height = 21
    TabOrder = 2
    OnChange = ComboBox1Change
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 107
    Width = 753
    Height = 182
    Caption = 'Grupo de t'#233'cnicas dispon'#237'veis '
    TabOrder = 3
    object Label2: TLabel
      Left = 3
      Top = 159
      Width = 120
      Height = 13
      Caption = '^2 cliques para adicionar'
    end
    object DBGrid1: TDBGrid
      Left = 3
      Top = 24
      Width = 747
      Height = 129
      DataSource = DataSource1
      Options = [dgTitles, dgIndicator, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
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
          Title.Caption = 'T'#233'cnica'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Grupo'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 295
    Width = 753
    Height = 242
    Caption = 'T'#233'cnicas Adicionadas no exame'
    TabOrder = 4
    object Label3: TLabel
      Left = 3
      Top = 224
      Width = 120
      Height = 13
      Caption = '^2 cliques para Remover'
    end
    object DBGrid2: TDBGrid
      Left = 3
      Top = 25
      Width = 747
      Height = 193
      DataSource = DataSource2
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid2DblClick
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
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQListTecnica
    Left = 584
    Top = 144
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = DM.FDQFaixa
    ScopeMappings = <>
    Left = 512
    Top = 152
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
  object DataSource2: TDataSource
    DataSet = DM.FDQListaTecnicaFaixa
    Left = 536
    Top = 336
  end
end
