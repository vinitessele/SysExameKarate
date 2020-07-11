object FFinalizar: TFFinalizar
  Left = 0
  Top = 0
  Caption = 'Finaliza Exame'
  ClientHeight = 448
  ClientWidth = 766
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
  object Label2: TLabel
    Left = 8
    Top = 27
    Width = 408
    Height = 23
    Caption = 'Lista de Exames que devem ser finalizados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 56
    Width = 742
    Height = 393
    Caption = 'Lista de examinados'
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 367
      Width = 183
      Height = 13
      Caption = '^2 cliques para abrir ou fechar exame'
    end
    object DBGrid1: TDBGrid
      Left = 14
      Top = 27
      Width = 713
      Height = 334
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
          FieldName = 'aluno_nome'
          Title.Alignment = taCenter
          Title.Caption = 'Nome'
          Width = 383
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'exame_data'
          Title.Alignment = taCenter
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'finalizado'
          Title.Alignment = taCenter
          Title.Caption = 'Finalizado'
          Visible = True
        end>
    end
  end
  object DataSource1: TDataSource
    DataSet = DM.FDQFinalizaExame
    Left = 472
    Top = 224
  end
end
