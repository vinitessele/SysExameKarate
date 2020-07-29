object DM: TDM
  OldCreateOrder = False
  Height = 563
  Width = 831
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\vinic\Documents\Embarcadero\Studio\Projects\Sy' +
        'sExameKarate\bd\BANCO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    BeforeConnect = FDConnection1BeforeConnect
    Left = 32
    Top = 24
  end
  object FDQAluno: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'gen_aluno'
    UpdateOptions.AutoIncFields = 'aluno_id'
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
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'gen_tecnica'
    UpdateOptions.AutoIncFields = 'tecnica_id'
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
  object FDQListTecnica: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM tecnica t'
      
        'WHERE t.tecnica_id NOT IN (SELECT ft.tecnica_id FROM faixatecnic' +
        'a ft where ft.faixa_id =:faixa )'
      'order by grupo')
    Left = 168
    Top = 320
    ParamData = <
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object FDQListTecnicatecnica_id: TFDAutoIncField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListTecnicatecnica_descricao: TStringField
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      Size = 50
    end
    object FDQListTecnicaGrupo: TStringField
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
      'inner join tecnica t on t.tecnica_id = f.tecnica_id')
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
    object FDQExameAlunoTecnicaEXAME_NOTA: TSingleField
      FieldName = 'EXAME_NOTA'
      Origin = 'EXAME_NOTA'
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
    object FDQListTecnicasAlunoNotasEXAME_NOTA: TSingleField
      FieldName = 'EXAME_NOTA'
      Origin = 'EXAME_NOTA'
    end
  end
  object FDQExame: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exame e '
      'inner join aluno a on a.aluno_id = e.examealuno_id'
      'where finalizado is null or finalizado = '#39#39
      '')
    Left = 224
    Top = 136
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
      'inner join exame e  on ex.exame_id = e.exame_id'
      'inner join aluno a on a.aluno_id = e.examealuno_id'
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
    object FDQExameNotaEXAMETECNICA_ID: TIntegerField
      FieldName = 'EXAMETECNICA_ID'
      Origin = 'EXAMETECNICA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQExameNotaEXAME_ID: TIntegerField
      FieldName = 'EXAME_ID'
      Origin = 'EXAME_ID'
    end
    object FDQExameNotaEXAMETECNICATECNICA_ID: TIntegerField
      FieldName = 'EXAMETECNICATECNICA_ID'
      Origin = 'EXAMETECNICATECNICA_ID'
    end
    object FDQExameNotaEXEME_AVALIADOR: TStringField
      FieldName = 'EXEME_AVALIADOR'
      Origin = 'EXEME_AVALIADOR'
      Size = 30
    end
    object FDQExameNotaEXAME_OBSERVACAO: TStringField
      FieldName = 'EXAME_OBSERVACAO'
      Origin = 'EXAME_OBSERVACAO'
      Size = 100
    end
    object FDQExameNotaEXAME_ID_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EXAME_ID_1'
      Origin = 'EXAME_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaEXAMEALUNO_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EXAMEALUNO_ID'
      Origin = 'EXAMEALUNO_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaEXAME_DATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'EXAME_DATA'
      Origin = 'EXAME_DATA'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaEXAMEFAIXA_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EXAMEFAIXA_ID'
      Origin = 'EXAMEFAIXA_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaFINALIZADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FINALIZADO'
      Origin = 'FINALIZADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object FDQExameNotaALUNO_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ALUNO_ID'
      Origin = 'ALUNO_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaALUNO_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALUNO_CPF'
      Origin = 'ALUNO_CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object FDQExameNotaALUNO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALUNO_NOME'
      Origin = 'ALUNO_NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQExameNotaALUNO_CELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALUNO_CELULAR'
      Origin = 'ALUNO_CELULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object FDQExameNotaALUNO_EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALUNO_EMAIL'
      Origin = 'ALUNO_EMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQExameNotaALUNO_OBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALUNO_OBSERVACAO'
      Origin = 'ALUNO_OBSERVACAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object FDQExameNotaALUNOACADEMIA_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ALUNOACADEMIA_ID'
      Origin = 'ALUNOACADEMIA_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaALUNO_IMG: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'ALUNO_IMG'
      Origin = 'ALUNO_IMG'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaTECNICA_ID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICA_ID'
      Origin = 'TECNICA_ID'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQExameNotaTECNICA_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICA_DESCRICAO'
      Origin = 'TECNICA_DESCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQExameNotaGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQExameNotaEXAME_NOTA: TSingleField
      FieldName = 'EXAME_NOTA'
      Origin = 'EXAME_NOTA'
    end
  end
  object FDQMediaExame: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select ROUND(avg(ex.exame_nota),2) as media'
      'from exametecnica ex'
      'inner join exame e  on ex.exame_id = e.exame_id '
      'inner join aluno a on a.aluno_id = e.examealuno_id'
      'inner join tecnica t on t.tecnica_id=ex.exametecnicatecnica_id'
      'where a.aluno_id = :aluno'
      'and  t.grupo = :grupo'
      'and  e.finalizado is null or e.finalizado = '#39#39
      'and  e.exame_id = :exameid')
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
        Name = 'EXAMEID'
        DataType = ftInteger
        ParamType = ptInput
        Value = 1
      end>
    object FDQMediaExameMEDIA: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQAcademia: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpNone
    UpdateOptions.GeneratorName = 'gen_academia'
    UpdateOptions.AutoIncFields = 'academia_id'
    SQL.Strings = (
      'select * from academia')
    Left = 192
    Top = 80
    object FDQAcademiaACADEMIA_NOME: TStringField
      FieldName = 'ACADEMIA_NOME'
      Origin = 'ACADEMIA_NOME'
      Size = 50
    end
    object FDQAcademiaACADEMIA_LOGO: TBlobField
      FieldName = 'ACADEMIA_LOGO'
      Origin = 'ACADEMIA_LOGO'
    end
    object FDQAcademiaACADEMIA_ID: TFDAutoIncField
      FieldName = 'ACADEMIA_ID'
      Origin = 'ACADEMIA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
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
    Top = 376
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
      'group by grupo'
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
    object FDQListTecnicasAlunoMediasGrupo: TStringField
      FieldName = 'Grupo'
      Origin = 'Grupo'
      Size = 30
    end
    object FDQListTecnicasAlunoMediasMEDIA: TFloatField
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
    end
  end
  object FDQListaTecnicaFaixa: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from faixatecnica f'
      'inner join tecnica t on t.tecnica_id = f.tecnica_id'
      'where faixa_id = :faixa')
    Left = 272
    Top = 312
    ParamData = <
      item
        Name = 'FAIXA'
        DataType = ftInteger
        ParamType = ptInput
        Value = 8
      end>
    object FDQListaTecnicaFaixafaixatecnica_id: TFDAutoIncField
      FieldName = 'faixatecnica_id'
      Origin = 'faixatecnica_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListaTecnicaFaixafaixa_id: TIntegerField
      FieldName = 'faixa_id'
      Origin = 'faixa_id'
    end
    object FDQListaTecnicaFaixatecnica_id: TIntegerField
      FieldName = 'tecnica_id'
      Origin = 'tecnica_id'
    end
    object FDQListaTecnicaFaixatecnica_id_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'tecnica_id_1'
      Origin = 'tecnica_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListaTecnicaFaixatecnica_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tecnica_descricao'
      Origin = 'tecnica_descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQListaTecnicaFaixaGrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Grupo'
      Origin = 'Grupo'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object FDQListExame: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      'select * from exame e '
      'inner join aluno a on a.aluno_id = e.examealuno_id'
      'inner join faixa f on e.examefaixa_id = f.faixa_id'
      'where e.finalizado is null or e.finalizado = '#39#39
      'order by exame_data desc, aluno_nome, faixa_id')
    Left = 544
    Top = 360
    object FDQListExameexame_id: TFDAutoIncField
      FieldName = 'exame_id'
      Origin = 'exame_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQListExameexamealuno_id: TIntegerField
      FieldName = 'examealuno_id'
      Origin = 'examealuno_id'
    end
    object FDQListExameexame_data: TDateField
      FieldName = 'exame_data'
      Origin = 'exame_data'
    end
    object FDQListExameexamefaixa_id: TIntegerField
      FieldName = 'examefaixa_id'
      Origin = 'examefaixa_id'
    end
    object FDQListExamealuno_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_id'
      Origin = 'aluno_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListExamealuno_cpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_cpf'
      Origin = 'aluno_cpf'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object FDQListExamealuno_nome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQListExamealuno_celular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_celular'
      Origin = 'aluno_celular'
      ProviderFlags = []
      ReadOnly = True
      Size = 12
    end
    object FDQListExamealuno_email: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_email'
      Origin = 'aluno_email'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object FDQListExamealuno_observacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_observacao'
      Origin = 'aluno_observacao'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object FDQListExamealunoacademia_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'alunoacademia_id'
      Origin = 'alunoacademia_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListExamealuno_img: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'aluno_img'
      Origin = 'aluno_img'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListExamefaixa_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'faixa_id'
      Origin = 'faixa_id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQListExamefaixa_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'faixa_descricao'
      Origin = 'faixa_descricao'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
  end
  object FDQFinalizaExame: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'select a.aluno_nome, e.exame_id, e.exame_data, finalizado from e' +
        'xame e'
      'inner join exametecnica et on e.exame_id = et.exame_id'
      'inner join aluno a on a.aluno_id = e.examealuno_id'
      'inner join tecnica t on t.tecnica_id = et.exametecnicatecnica_id'
      'group by a.aluno_nome, e.exame_id, e.exame_data, finalizado'
      'order by e.exame_data desc')
    Left = 200
    Top = 200
    object FDQFinalizaExamealuno_nome: TStringField
      FieldName = 'aluno_nome'
      Origin = 'aluno_nome'
      Size = 60
    end
    object FDQFinalizaExameexame_id: TFDAutoIncField
      FieldName = 'exame_id'
      Origin = 'exame_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQFinalizaExameexame_data: TDateField
      FieldName = 'exame_data'
      Origin = 'exame_data'
    end
    object FDQFinalizaExamefinalizado: TStringField
      FieldName = 'finalizado'
      Origin = 'finalizado'
      FixedChar = True
      Size = 1
    end
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    VendorLib = 'C:\Windows\System32\GDS32.DLL'
    Left = 568
    Top = 40
  end
  object FDQAvKata: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'gen_avaliacaokata'
    UpdateOptions.AutoIncFields = 'ID'
    SQL.Strings = (
      'select * from avaliacaokata')
    Left = 296
    Top = 80
    object FDQAvKataID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQAvKataID_TECNICA: TIntegerField
      FieldName = 'ID_TECNICA'
      Origin = 'ID_TECNICA'
      Required = True
    end
    object FDQAvKataID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
      Origin = 'ID_ALUNO'
      Required = True
    end
    object FDQAvKataPOSICAO: TSingleField
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
    end
    object FDQAvKataTECNICAS: TSingleField
      FieldName = 'TECNICAS'
      Origin = 'TECNICAS'
    end
    object FDQAvKataRITMO: TSingleField
      FieldName = 'RITMO'
      Origin = 'RITMO'
    end
    object FDQAvKataVISAO: TSingleField
      FieldName = 'VISAO'
      Origin = 'VISAO'
    end
    object FDQAvKataKIME: TSingleField
      FieldName = 'KIME'
      Origin = 'KIME'
    end
    object FDQAvKataDISPOSICAO: TSingleField
      FieldName = 'DISPOSICAO'
      Origin = 'DISPOSICAO'
    end
    object FDQAvKataZANCHIN: TSingleField
      FieldName = 'ZANCHIN'
      Origin = 'ZANCHIN'
    end
    object FDQAvKataID_EXAME: TIntegerField
      FieldName = 'ID_EXAME'
      Origin = 'ID_EXAME'
    end
  end
  object FDQKumite: TFDQuery
    Active = True
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'gen_kumite'
    UpdateOptions.AutoIncFields = 'id'
    SQL.Strings = (
      'select * from kumite')
    Left = 192
    Top = 256
    object FDQKumiteID: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object FDQKumiteID_TECNICA: TIntegerField
      FieldName = 'ID_TECNICA'
      Origin = 'ID_TECNICA'
      Required = True
    end
    object FDQKumiteID_ALUNO: TIntegerField
      FieldName = 'ID_ALUNO'
      Origin = 'ID_ALUNO'
      Required = True
    end
    object FDQKumiteID_EXAME: TIntegerField
      FieldName = 'ID_EXAME'
      Origin = 'ID_EXAME'
      Required = True
    end
    object FDQKumitePOSICAO: TSingleField
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'POSICAO'
      Origin = 'POSICAO'
    end
    object FDQKumiteTECNICAS: TSingleField
      DisplayLabel = 'T'#233'cnicas'
      FieldName = 'TECNICAS'
      Origin = 'TECNICAS'
    end
    object FDQKumiteDISTBASE: TSingleField
      DisplayLabel = 'Dist'#226'ncia Base'
      FieldName = 'DISTBASE'
      Origin = 'DISTBASE'
    end
    object FDQKumiteDISTGOLPE: TSingleField
      DisplayLabel = 'Dist'#226'ncia golpe'
      FieldName = 'DISTGOLPE'
      Origin = 'DISTGOLPE'
    end
    object FDQKumiteATAQUE: TSingleField
      DisplayLabel = 'Ataque'
      FieldName = 'ATAQUE'
      Origin = 'ATAQUE'
    end
    object FDQKumiteDIRECAO: TSingleField
      DisplayLabel = 'Dire'#231#227'o'
      FieldName = 'DIRECAO'
      Origin = 'DIRECAO'
    end
    object FDQKumiteKYO: TSingleField
      DisplayLabel = 'Explorou o Kyo'
      FieldName = 'KYO'
      Origin = 'KYO'
    end
    object FDQKumiteJITSU: TSingleField
      DisplayLabel = 'Manteve-se em Jitsu'
      FieldName = 'JITSU'
      Origin = 'JITSU'
    end
    object FDQKumiteDEFESA: TSingleField
      DisplayLabel = 'Defesa'
      FieldName = 'DEFESA'
      Origin = 'DEFESA'
    end
    object FDQKumiteCONTRAATAQUE: TSingleField
      DisplayLabel = 'Contra ataque'
      FieldName = 'CONTRAATAQUE'
      Origin = 'CONTRAATAQUE'
    end
    object FDQKumiteVISAO: TSingleField
      DisplayLabel = 'Vis'#227'o'
      FieldName = 'VISAO'
      Origin = 'VISAO'
    end
    object FDQKumiteKIME: TSingleField
      DisplayLabel = 'Kime'
      FieldName = 'KIME'
      Origin = 'KIME'
    end
    object FDQKumiteDISPOSICAO: TSingleField
      DisplayLabel = 'Disposi'#231#227'o'
      FieldName = 'DISPOSICAO'
      Origin = 'DISPOSICAO'
    end
    object FDQKumiteZANCHIN: TSingleField
      DisplayLabel = 'Zanchin'
      FieldName = 'ZANCHIN'
      Origin = 'ZANCHIN'
    end
  end
end
