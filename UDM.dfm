object DM: TDM
  OldCreateOrder = False
  Height = 563
  Width = 831
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\vinic\Documents\Embarcadero\Studio\Projects\Sy' +
        'sExameKarate\bd\bd.db'
      'LockingMode=Normal'
      'DriverID=SQLite')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConnection1BeforeConnect
    Left = 32
    Top = 24
  end
  object FDQAluno: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aluno')
    Left = 24
    Top = 80
    object FDQAlunoaluno_id: TFDAutoIncField
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAlunoaluno_cpf: TStringField
      FieldName = 'aluno_cpf'
      Origin = 'aluno_cpf'
      Size = 11
    end
    object FDQAlunoaluno_nome: TStringField
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      Size = 60
    end
    object FDQAlunoaluno_celular: TStringField
      FieldName = 'aluno_celular'
      Origin = 'aluno_celular'
      Size = 12
    end
    object FDQAlunoaluno_email: TStringField
      FieldName = 'aluno_email'
      Origin = 'aluno_email'
      Size = 100
    end
    object FDQAlunoaluno_observacao: TStringField
      FieldName = 'aluno_observacao'
      Origin = 'aluno_observacao'
      Size = 200
    end
    object FDQAlunoalunoacademia_id: TIntegerField
      FieldName = 'alunoacademia_id'
      Origin = 'alunoacademia_id'
    end
    object FDQAlunoAcademia: TStringField
      FieldKind = fkLookup
      FieldName = 'Academia'
      LookupDataSet = FDQAcademia
      LookupKeyFields = 'academia_id'
      LookupResultField = 'academia_nome'
      KeyFields = 'alunoacademia_id'
      Size = 30
      Lookup = True
    end
    object FDQAlunoaluno_img: TBlobField
      FieldName = 'aluno_img'
      Origin = 'aluno_img'
    end
  end
  object FDQTecnica: TFDQuery
    Active = True
    BeforeInsert = FDQTecnicaBeforeInsert
    AfterInsert = FDQTecnicaAfterInsert
    BeforeEdit = FDQTecnicaBeforeEdit
    AfterEdit = FDQTecnicaAfterEdit
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tecnica')
    Left = 24
    Top = 440
    object FDQTecnicatecnica_id: TFDAutoIncField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQTecnicatecnica_descricao: TStringField
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      Size = 50
    end
    object FDQTecnicaGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 30
    end
  end
  object FDQGrupo: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from grupo')
    Left = 16
    Top = 264
    object FDQGrupogrupo_id: TFDAutoIncField
      FieldName = 'grupo_id'
      Origin = 'grupo_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQGrupogrupo_descricao: TStringField
      FieldName = 'grupo_descricao'
      Origin = 'grupo_descricao'
      Size = 50
    end
  end
  object FDQListTecnicaDescricao: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tecnica '
      'where tecnica_descricao like :tecnica')
    Left = 49
    Top = 320
    ParamData = <
      item
        Name = 'TECNICA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicaDescricaotecnica_id: TFDAutoIncField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicaDescricaotecnica_descricao: TStringField
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      Size = 50
    end
  end
  object FDQFaixa: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from faixa')
    Left = 16
    Top = 200
    object FDQFaixafaixa_id: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'faixa_id'
      Origin = 'faixa_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQFaixafaixa_descricao: TStringField
      DisplayLabel = 'Faixa - Descri'#231#227'o'
      FieldName = 'faixa_descricao'
      Origin = 'faixa_descricao'
      Size = 40
    end
  end
  object FDQListTecnicaFaixa: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from faixatecnica ft'
      'inner join tecnica t on t.tecnica_id = ft.tecnica_id'
      'where ft.faixa_id = :faixa'
      'order by grupo ')
    Left = 160
    Top = 376
    ParamData = <
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicaFaixafaixatecnica_id: TFDAutoIncField
      FieldName = 'faixatecnica_id'
      Origin = 'faixatecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicaFaixafaixa_id: TIntegerField
      FieldName = 'faixa_id'
      Origin = 'faixa_id'
    end
    object FDQListTecnicaFaixatecnica_id: TIntegerField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
    end
    object FDQListTecnicaFaixatecnica_id_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tecnica_id_1'
      Origin = 'tecnica_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListTecnicaFaixatecnica_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQListTecnicaFaixaGrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Grupo'
      Origin = 'Grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object FDQListTecnicaKihon: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tecnica t'
      
        'WHERE t.tecnica_id NOT IN (SELECT ft.tecnica_id FROM faixatecnic' +
        'a ft where ft.faixa_id =:faixa )'
      'and t.grupo = '#39'Kihon'#39)
    Left = 168
    Top = 320
    ParamData = <
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicaKihontecnica_id: TFDAutoIncField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicaKihontecnica_descricao: TStringField
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      Size = 50
    end
    object FDQListTecnicaKihonGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 30
    end
  end
  object FDQfaixatecnica: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from faixatecnica f'
      'inner join tecnica t on t.tecnica_id - f.tecnica_id')
    Left = 112
    Top = 200
    object FDQfaixatecnicafaixatecnica_id: TFDAutoIncField
      FieldName = 'faixatecnica_id'
      Origin = 'faixatecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQfaixatecnicafaixa_id: TIntegerField
      FieldName = 'faixa_id'
      Origin = 'faixa_id'
    end
    object FDQfaixatecnicatecnica_id: TIntegerField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
    end
    object FDQfaixatecnicatecnica_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object FDQListTecnicaKata: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tecnica t'
      
        'WHERE t.tecnica_id NOT IN (SELECT ft.tecnica_id FROM faixatecnic' +
        'a ft where ft.faixa_id =:faixa )'
      'and t.grupo = '#39'Kata'#39)
    Left = 264
    Top = 320
    ParamData = <
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicaKatatecnica_id: TFDAutoIncField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicaKatatecnica_descricao: TStringField
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      Size = 50
    end
    object FDQListTecnicaKataGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 30
    end
  end
  object FDQListTecnicaKumite: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tecnica t'
      
        'WHERE t.tecnica_id NOT IN (SELECT ft.tecnica_id FROM faixatecnic' +
        'a ft where ft.faixa_id =:faixa )'
      'and t.grupo = '#39'Kumite'#39)
    Left = 352
    Top = 320
    ParamData = <
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicaKumitetecnica_id: TFDAutoIncField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicaKumitetecnica_descricao: TStringField
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      Size = 50
    end
    object FDQListTecnicaKumiteGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 30
    end
  end
  object FDQListTecnicaOutros: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tecnica t'
      
        'WHERE t.tecnica_id NOT IN (SELECT ft.tecnica_id FROM faixatecnic' +
        'a ft where ft.faixa_id =:faixa )'
      'and t.grupo = '#39'Outros requisitos'#39)
    Left = 448
    Top = 320
    ParamData = <
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicaOutrostecnica_id: TFDAutoIncField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicaOutrostecnica_descricao: TStringField
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      Size = 50
    end
    object FDQListTecnicaOutrosGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 30
    end
  end
  object FDQAlunoByNome: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from aluno'
      'where aluno_nome like :aluno')
    Left = 104
    Top = 80
    ParamData = <
      item
        Name = 'ALUNO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQAlunoByNomealuno_id: TFDAutoIncField
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAlunoByNomealuno_cpf: TStringField
      FieldName = 'aluno_cpf'
      Origin = 'aluno_cpf'
      Size = 11
    end
    object FDQAlunoByNomealuno_nome: TStringField
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      Size = 60
    end
    object FDQAlunoByNomealuno_celular: TStringField
      FieldName = 'aluno_celular'
      Origin = 'aluno_celular'
      Size = 12
    end
    object FDQAlunoByNomealuno_email: TStringField
      FieldName = 'aluno_email'
      Origin = 'aluno_email'
      Size = 100
    end
    object FDQAlunoByNomealuno_observacao: TStringField
      FieldName = 'aluno_observacao'
      Origin = 'aluno_observacao'
      Size = 200
    end
  end
  object FDQExameAluno: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exame')
    Left = 16
    Top = 136
    object FDQExameAlunoexame_id: TFDAutoIncField
      FieldName = 'exame_id'
      Origin = 'exame_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQExameAlunoexamealuno_id: TIntegerField
      FieldName = 'examealuno_id'
      Origin = 'examealuno_id'
    end
    object FDQExameAlunoexame_data: TDateField
      FieldName = 'exame_data'
      Origin = 'exame_data'
    end
    object FDQExameAlunoexamefaixa_id: TIntegerField
      FieldName = 'examefaixa_id'
      Origin = 'examefaixa_id'
    end
  end
  object FDQExameAlunoTecnica: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exametecnica')
    Left = 112
    Top = 136
    object FDQExameAlunoTecnicaexametecnica_id: TFDAutoIncField
      FieldName = 'exametecnica_id'
      Origin = 'exametecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQExameAlunoTecnicaexame_id: TIntegerField
      FieldName = 'exame_id'
      Origin = 'exame_id'
    end
    object FDQExameAlunoTecnicaexametecnicatecnica_id: TIntegerField
      FieldName = 'exametecnicatecnica_id'
      Origin = 'exametecnicatecnica_id'
    end
    object FDQExameAlunoTecnicaexame_nota: TBCDField
      FieldName = 'exame_nota'
      Origin = 'exame_nota'
      Precision = 2
      Size = 2
    end
    object FDQExameAlunoTecnicaexeme_avaliador: TStringField
      FieldName = 'exeme_avaliador'
      Origin = 'exeme_avaliador'
      Size = 30
    end
    object FDQExameAlunoTecnicaExame_observacao: TStringField
      FieldName = 'Exame_observacao'
      Origin = 'Exame_observacao'
      Size = 100
    end
  end
  object FDQValidaAlunoExame: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exame '
      'where examealuno_id = :aluno'
      'and examefaixa_id = :faixa')
    Left = 25
    Top = 504
    ParamData = <
      item
        Name = 'ALUNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQValidaAlunoExameexame_id: TFDAutoIncField
      FieldName = 'exame_id'
      Origin = 'exame_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQValidaAlunoExameexamealuno_id: TIntegerField
      FieldName = 'examealuno_id'
      Origin = 'examealuno_id'
    end
    object FDQValidaAlunoExameexame_data: TDateField
      FieldName = 'exame_data'
      Origin = 'exame_data'
    end
    object FDQValidaAlunoExameexamefaixa_id: TIntegerField
      FieldName = 'examefaixa_id'
      Origin = 'examefaixa_id'
    end
  end
  object FDQListTecnicasAlunoNotas: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exametecnica et'
      'inner join tecnica t on t.tecnica_id = et.exametecnicatecnica_id'
      'where et.exame_id = :exame'
      'order by grupo')
    Left = 48
    Top = 376
    ParamData = <
      item
        Name = 'EXAME'
        DataType = ftInteger
        ParamType = ptInput
        Value = 8
      end>
    object FDQListTecnicasAlunoNotasexametecnica_id: TFDAutoIncField
      FieldName = 'exametecnica_id'
      Origin = 'exametecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicasAlunoNotasexame_id: TIntegerField
      FieldName = 'exame_id'
      Origin = 'exame_id'
    end
    object FDQListTecnicasAlunoNotasexametecnicatecnica_id: TIntegerField
      FieldName = 'exametecnicatecnica_id'
      Origin = 'exametecnicatecnica_id'
    end
    object FDQListTecnicasAlunoNotastecnica_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListTecnicasAlunoNotastecnica_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQListTecnicasAlunoNotasGrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Grupo'
      Origin = 'Grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQListTecnicasAlunoNotasexame_nota: TBCDField
      FieldName = 'exame_nota'
      Origin = 'exame_nota'
      Precision = 2
      Size = 2
    end
    object FDQListTecnicasAlunoNotasexeme_avaliador: TStringField
      FieldName = 'exeme_avaliador'
      Origin = 'exeme_avaliador'
      Size = 30
    end
    object FDQListTecnicasAlunoNotasExame_observacao: TStringField
      FieldName = 'Exame_observacao'
      Origin = 'Exame_observacao'
      Size = 100
    end
  end
  object FDQExame: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exame e '
      'inner join aluno a on a.aluno_id = e.examealuno_id'
      'where exame_data = :data')
    Left = 224
    Top = 136
    ParamData = <
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object FDQExameexame_id: TFDAutoIncField
      FieldName = 'exame_id'
      Origin = 'exame_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQExameexamealuno_id: TIntegerField
      FieldName = 'examealuno_id'
      Origin = 'examealuno_id'
    end
    object FDQExameexame_data: TDateField
      FieldName = 'exame_data'
      Origin = 'exame_data'
    end
    object FDQExameexamefaixa_id: TIntegerField
      FieldName = 'examefaixa_id'
      Origin = 'examefaixa_id'
    end
    object FDQExamealuno_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExamealuno_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_cpf'
      Origin = 'aluno_cpf'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object FDQExamealuno_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQExamealuno_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_celular'
      Origin = 'aluno_celular'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object FDQExamealuno_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_email'
      Origin = 'aluno_email'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQExamealuno_observacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_observacao'
      Origin = 'aluno_observacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
  object FDQExameNota: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select *'
      'from exametecnica ex '
      'inner join aluno a on a.aluno_id = e.examealuno_id'
      'inner join exame e  on ex.exame_id = e.exame_id'
      'inner join tecnica t on t.tecnica_id=ex.exametecnicatecnica_id'
      'where a.aluno_id = :aluno'
      'and   t.grupo = :grupo'
      'order by t.tecnica_id')
    Left = 312
    Top = 136
    ParamData = <
      item
        Name = 'ALUNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GRUPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQExameNotaexametecnica_id: TFDAutoIncField
      FieldName = 'exametecnica_id'
      Origin = 'exametecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQExameNotaexame_id: TIntegerField
      FieldName = 'exame_id'
      Origin = 'exame_id'
    end
    object FDQExameNotaexametecnicatecnica_id: TIntegerField
      FieldName = 'exametecnicatecnica_id'
      Origin = 'exametecnicatecnica_id'
    end
    object FDQExameNotaexame_nota: TBCDField
      FieldName = 'exame_nota'
      Origin = 'exame_nota'
      OnValidate = FDQExameNotaexame_notaValidate
      Precision = 2
      Size = 2
    end
    object FDQExameNotaexeme_avaliador: TStringField
      FieldName = 'exeme_avaliador'
      Origin = 'exeme_avaliador'
      Size = 30
    end
    object FDQExameNotaExame_observacao: TStringField
      FieldName = 'Exame_observacao'
      Origin = 'Exame_observacao'
      Size = 100
    end
    object FDQExameNotaaluno_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaaluno_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_cpf'
      Origin = 'aluno_cpf'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object FDQExameNotaaluno_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQExameNotaaluno_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_celular'
      Origin = 'aluno_celular'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object FDQExameNotaaluno_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_email'
      Origin = 'aluno_email'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQExameNotaaluno_observacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_observacao'
      Origin = 'aluno_observacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object FDQExameNotaexame_id_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'exame_id_1'
      Origin = 'exame_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaexamealuno_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'examealuno_id'
      Origin = 'examealuno_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaexame_data: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'exame_data'
      Origin = 'exame_data'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaexamefaixa_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'examefaixa_id'
      Origin = 'examefaixa_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotatecnica_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotatecnica_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQExameNotaGrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Grupo'
      Origin = 'Grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object FDQMediaExame: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select ROUND(avg(ex.exame_nota),2) as media'
      'from exametecnica ex '
      'inner join aluno a on a.aluno_id = e.examealuno_id'
      'inner join exame e  on ex.exame_id = e.exame_id'
      'inner join tecnica t on t.tecnica_id=ex.exametecnicatecnica_id'
      'where a.aluno_id = :aluno'
      'and   t.grupo = :grupo'
      'and   e.exame_data = :data')
    Left = 104
    Top = 264
    ParamData = <
      item
        Name = 'ALUNO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'GRUPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DATA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end>
    object FDQMediaExamemedia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'media'
      Origin = 'media'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object FDQAcademia: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from academia')
    Left = 192
    Top = 80
    object FDQAcademiaacademia_id: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'academia_id'
      Origin = 'academia_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQAcademiaacademia_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'academia_nome'
      Origin = 'academia_nome'
      Size = 50
    end
    object FDQAcademiaacademia_logo: TBlobField
      FieldName = 'academia_logo'
      Origin = 'academia_logo'
    end
  end
  object FDQListaAlunoExame: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exame e'
      'inner join aluno a on e.examealuno_id = a.aluno_id'
      'inner join faixa f on e.examefaixa_id = f.faixa_id'
      'inner join academia ac on ac.academia_id = a.alunoacademia_id'
      'order by exame_data desc')
    Left = 256
    Top = 392
    object FDQListaAlunoExameexame_id: TFDAutoIncField
      FieldName = 'exame_id'
      Origin = 'exame_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListaAlunoExameexamealuno_id: TIntegerField
      FieldName = 'examealuno_id'
      Origin = 'examealuno_id'
    end
    object FDQListaAlunoExameexame_data: TDateField
      FieldName = 'exame_data'
      Origin = 'exame_data'
    end
    object FDQListaAlunoExameexamefaixa_id: TIntegerField
      FieldName = 'examefaixa_id'
      Origin = 'examefaixa_id'
    end
    object FDQListaAlunoExamealuno_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListaAlunoExamealuno_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_cpf'
      Origin = 'aluno_cpf'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object FDQListaAlunoExamealuno_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQListaAlunoExamealuno_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_celular'
      Origin = 'aluno_celular'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object FDQListaAlunoExamealuno_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_email'
      Origin = 'aluno_email'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQListaAlunoExamealuno_observacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_observacao'
      Origin = 'aluno_observacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object FDQListaAlunoExamealunoacademia_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'alunoacademia_id'
      Origin = 'alunoacademia_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListaAlunoExamealuno_img: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_img'
      Origin = 'aluno_img'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListaAlunoExamefaixa_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'faixa_id'
      Origin = 'faixa_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListaAlunoExamefaixa_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'faixa_descricao'
      Origin = 'faixa_descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object FDQListaAlunoExameacademia_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'academia_nome'
      Origin = 'academia_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQListaAlunoExameacademia_logo: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'academia_logo'
      Origin = 'academia_logo'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQListTecnicasAlunoMedias: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select avg(exame_nota) media, Grupo from exametecnica et'
      'inner join tecnica t on t.tecnica_id = et.exametecnicatecnica_id'
      'where et.exame_id = :exame'
      'and grupo = :grupo'
      'order by grupo')
    Left = 392
    Top = 376
    ParamData = <
      item
        Name = 'EXAME'
        DataType = ftInteger
        ParamType = ptInput
        Value = 8
      end
      item
        Name = 'GRUPO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicasAlunoMediasmedia: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'media'
      Origin = 'media'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
    object FDQListTecnicasAlunoMediasGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 30
    end
  end
  object FDQListTecnicaFisico: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tecnica t'
      
        'WHERE t.tecnica_id NOT IN (SELECT ft.tecnica_id FROM faixatecnic' +
        'a ft where ft.faixa_id =:faixa )'
      'and t.grupo = '#39'F'#237'sico'#39)
    Left = 528
    Top = 320
    ParamData = <
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicaFisicotecnica_id: TFDAutoIncField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicaFisicotecnica_descricao: TStringField
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      Size = 50
    end
    object FDQListTecnicaFisicoGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 30
    end
  end
  object FDQListTecnicaTeoria: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tecnica t'
      
        'WHERE t.tecnica_id NOT IN (SELECT ft.tecnica_id FROM faixatecnic' +
        'a ft where ft.faixa_id =:faixa )'
      'and t.grupo = '#39'Teoria'#39)
    Left = 624
    Top = 320
    ParamData = <
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicaTeoriatecnica_id: TFDAutoIncField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicaTeoriatecnica_descricao: TStringField
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      Size = 50
    end
    object FDQListTecnicaTeoriaGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 30
    end
  end
end
