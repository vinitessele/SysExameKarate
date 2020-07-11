object FListaExames: TFListaExames
  Left = 0
  Top = 0
  Caption = 'Lista de Exames'
  ClientHeight = 400
  ClientWidth = 694
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
    Left = 12
    Top = 15
    Width = 275
    Height = 23
    Caption = 'Lista de Exames cadastrados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 12
    Top = 363
    Width = 158
    Height = 13
    Caption = '^2 cliques para acessar o exame'
  end
  object DBGrid1: TDBGrid
    Left = 12
    Top = 44
    Width = 670
    Height = 313
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        FieldName = 'exame_id'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'exame_data'
        Title.Alignment = taCenter
        Title.Caption = 'Data'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'aluno_nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Width = 312
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'faixa_descricao'
        Title.Alignment = taCenter
        Title.Caption = 'Faixa'
        Width = 130
        Visible = True
      end>
  end
  object btnFechar: TBitBtn
    Left = 312
    Top = 367
    Width = 75
    Height = 25
    Caption = '&Fechar'
    TabOrder = 1
    OnClick = btnFecharClick
  end
  object btnExcluir: TBitBtn
    Left = 568
    Top = 363
    Width = 114
    Height = 32
    Caption = '&Excluir exame'
    TabOrder = 2
    OnClick = btnExcluirClick
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQListExame
    Left = 552
    Top = 160
  end
end
