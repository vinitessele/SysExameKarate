inherited FAluno: TFAluno
  Caption = 'Cadastro de Aluno'
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
  object Label6: TLabel [5]
    Left = 16
    Top = 272
    Width = 58
    Height = 13
    Caption = 'Observa'#231#227'o'
    FocusControl = DBEdit6
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
    Top = 288
    Width = 300
    Height = 21
    DataField = 'aluno_observacao'
    DataSource = DataSource1
    TabOrder = 7
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 315
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
  object DataSource1: TDataSource
    DataSet = DM.FDQAluno
    Left = 648
    Top = 80
  end
end
