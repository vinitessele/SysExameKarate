unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, IniFiles, System.IOUtils, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBBase;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDQAluno: TFDQuery;
    FDQAlunoaluno_id: TFDAutoIncField;
    FDQAlunoaluno_cpf: TStringField;
    FDQAlunoaluno_nome: TStringField;
    FDQAlunoaluno_celular: TStringField;
    FDQAlunoaluno_email: TStringField;
    FDQAlunoaluno_observacao: TStringField;
    FDQTecnica: TFDQuery;
    FDQTecnicatecnica_id: TFDAutoIncField;
    FDQTecnicatecnica_descricao: TStringField;
    FDQGrupo: TFDQuery;
    FDQListTecnicaDescricao: TFDQuery;
    FDQListTecnicaDescricaotecnica_id: TFDAutoIncField;
    FDQListTecnicaDescricaotecnica_descricao: TStringField;
    FDQGrupogrupo_id: TFDAutoIncField;
    FDQGrupogrupo_descricao: TStringField;
    FDQTecnicaGrupo: TStringField;
    FDQFaixa: TFDQuery;
    FDQFaixafaixa_id: TFDAutoIncField;
    FDQFaixafaixa_descricao: TStringField;
    FDQListTecnicaFaixa: TFDQuery;
    FDQListTecnicaFaixafaixatecnica_id: TFDAutoIncField;
    FDQListTecnicaFaixafaixa_id: TIntegerField;
    FDQListTecnicaFaixatecnica_id: TIntegerField;
    FDQListTecnicaFaixatecnica_id_1: TIntegerField;
    FDQListTecnicaFaixatecnica_descricao: TStringField;
    FDQListTecnicaFaixaGrupo: TStringField;
    FDQListTecnica: TFDQuery;
    FDQfaixatecnica: TFDQuery;
    FDQfaixatecnicafaixatecnica_id: TFDAutoIncField;
    FDQfaixatecnicafaixa_id: TIntegerField;
    FDQfaixatecnicatecnica_id: TIntegerField;
    FDQListTecnicatecnica_id: TFDAutoIncField;
    FDQListTecnicatecnica_descricao: TStringField;
    FDQListTecnicaGrupo: TStringField;
    FDQAlunoByNome: TFDQuery;
    FDQAlunoByNomealuno_id: TFDAutoIncField;
    FDQAlunoByNomealuno_cpf: TStringField;
    FDQAlunoByNomealuno_nome: TStringField;
    FDQAlunoByNomealuno_celular: TStringField;
    FDQAlunoByNomealuno_email: TStringField;
    FDQAlunoByNomealuno_observacao: TStringField;
    FDQExameAluno: TFDQuery;
    FDQExameAlunoexame_id: TFDAutoIncField;
    FDQExameAlunoexamealuno_id: TIntegerField;
    FDQExameAlunoexame_data: TDateField;
    FDQExameAlunoexamefaixa_id: TIntegerField;
    FDQExameAlunoTecnica: TFDQuery;
    FDQValidaAlunoExame: TFDQuery;
    FDQValidaAlunoExameexame_id: TFDAutoIncField;
    FDQValidaAlunoExameexamealuno_id: TIntegerField;
    FDQValidaAlunoExameexame_data: TDateField;
    FDQValidaAlunoExameexamefaixa_id: TIntegerField;
    FDQListTecnicasAlunoNotas: TFDQuery;
    FDQListTecnicasAlunoNotasexametecnica_id: TFDAutoIncField;
    FDQListTecnicasAlunoNotasexame_id: TIntegerField;
    FDQListTecnicasAlunoNotasexametecnicatecnica_id: TIntegerField;
    FDQListTecnicasAlunoNotastecnica_id: TIntegerField;
    FDQListTecnicasAlunoNotastecnica_descricao: TStringField;
    FDQListTecnicasAlunoNotasGrupo: TStringField;
    FDQExame: TFDQuery;
    FDQExameexame_id: TFDAutoIncField;
    FDQExameexamealuno_id: TIntegerField;
    FDQExameexame_data: TDateField;
    FDQExameexamefaixa_id: TIntegerField;
    FDQExamealuno_id: TIntegerField;
    FDQExamealuno_cpf: TStringField;
    FDQExamealuno_nome: TStringField;
    FDQExamealuno_celular: TStringField;
    FDQExamealuno_email: TStringField;
    FDQExamealuno_observacao: TStringField;
    FDQExameNota: TFDQuery;
    FDQExameAlunoTecnicaexametecnica_id: TFDAutoIncField;
    FDQExameAlunoTecnicaexame_id: TIntegerField;
    FDQExameAlunoTecnicaexametecnicatecnica_id: TIntegerField;
    FDQExameAlunoTecnicaexeme_avaliador: TStringField;
    FDQExameAlunoTecnicaExame_observacao: TStringField;
    FDQListTecnicasAlunoNotasexeme_avaliador: TStringField;
    FDQListTecnicasAlunoNotasExame_observacao: TStringField;
    FDQMediaExame: TFDQuery;
    FDQAcademia: TFDQuery;
    FDQAlunoalunoacademia_id: TIntegerField;
    FDQAlunoAcademia: TStringField;
    FDQAlunoaluno_img: TBlobField;
    FDQListaAlunoExame: TFDQuery;
    FDQListaAlunoExameexame_id: TFDAutoIncField;
    FDQListaAlunoExameexamealuno_id: TIntegerField;
    FDQListaAlunoExameexame_data: TDateField;
    FDQListaAlunoExameexamefaixa_id: TIntegerField;
    FDQListaAlunoExamealuno_id: TIntegerField;
    FDQListaAlunoExamealuno_cpf: TStringField;
    FDQListaAlunoExamealuno_nome: TStringField;
    FDQListaAlunoExamealuno_celular: TStringField;
    FDQListaAlunoExamealuno_email: TStringField;
    FDQListaAlunoExamealuno_observacao: TStringField;
    FDQListaAlunoExamealunoacademia_id: TIntegerField;
    FDQListaAlunoExamealuno_img: TBlobField;
    FDQListaAlunoExamefaixa_id: TIntegerField;
    FDQListaAlunoExamefaixa_descricao: TStringField;
    FDQListTecnicasAlunoMedias: TFDQuery;
    FDQListTecnicasAlunoMediasGrupo: TStringField;
    FDQListaAlunoExameacademia_nome: TStringField;
    FDQListaAlunoExameacademia_logo: TBlobField;
    FDQfaixatecnicatecnica_descricao: TStringField;
    FDQListaTecnicaFaixa: TFDQuery;
    FDQListaTecnicaFaixafaixatecnica_id: TFDAutoIncField;
    FDQListaTecnicaFaixafaixa_id: TIntegerField;
    FDQListaTecnicaFaixatecnica_id: TIntegerField;
    FDQListaTecnicaFaixatecnica_id_1: TIntegerField;
    FDQListaTecnicaFaixatecnica_descricao: TStringField;
    FDQListaTecnicaFaixaGrupo: TStringField;
    FDQListExame: TFDQuery;
    FDQListExameexame_id: TFDAutoIncField;
    FDQListExameexamealuno_id: TIntegerField;
    FDQListExameexame_data: TDateField;
    FDQListExameexamefaixa_id: TIntegerField;
    FDQListExamealuno_id: TIntegerField;
    FDQListExamealuno_cpf: TStringField;
    FDQListExamealuno_nome: TStringField;
    FDQListExamealuno_celular: TStringField;
    FDQListExamealuno_email: TStringField;
    FDQListExamealuno_observacao: TStringField;
    FDQListExamealunoacademia_id: TIntegerField;
    FDQListExamealuno_img: TBlobField;
    FDQListExamefaixa_id: TIntegerField;
    FDQListExamefaixa_descricao: TStringField;
    FDQFinalizaExame: TFDQuery;
    FDQFinalizaExamealuno_nome: TStringField;
    FDQFinalizaExameexame_id: TFDAutoIncField;
    FDQFinalizaExameexame_data: TDateField;
    FDQFinalizaExamefinalizado: TStringField;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQExameNotaEXAMETECNICA_ID: TIntegerField;
    FDQExameNotaEXAME_ID: TIntegerField;
    FDQExameNotaEXAMETECNICATECNICA_ID: TIntegerField;
    FDQExameNotaEXEME_AVALIADOR: TStringField;
    FDQExameNotaEXAME_OBSERVACAO: TStringField;
    FDQExameNotaEXAME_ID_1: TIntegerField;
    FDQExameNotaEXAMEALUNO_ID: TIntegerField;
    FDQExameNotaEXAME_DATA: TDateField;
    FDQExameNotaEXAMEFAIXA_ID: TIntegerField;
    FDQExameNotaFINALIZADO: TStringField;
    FDQExameNotaALUNO_ID: TIntegerField;
    FDQExameNotaALUNO_CPF: TStringField;
    FDQExameNotaALUNO_NOME: TStringField;
    FDQExameNotaALUNO_CELULAR: TStringField;
    FDQExameNotaALUNO_EMAIL: TStringField;
    FDQExameNotaALUNO_OBSERVACAO: TStringField;
    FDQExameNotaALUNOACADEMIA_ID: TIntegerField;
    FDQExameNotaALUNO_IMG: TBlobField;
    FDQExameNotaTECNICA_ID: TIntegerField;
    FDQExameNotaTECNICA_DESCRICAO: TStringField;
    FDQExameNotaGRUPO: TStringField;
    FDQAcademiaACADEMIA_NOME: TStringField;
    FDQAcademiaACADEMIA_LOGO: TBlobField;
    FDQAcademiaACADEMIA_ID: TFDAutoIncField;
    FDQExameNotaEXAME_NOTA: TSingleField;
    FDQListTecnicasAlunoNotasEXAME_NOTA: TSingleField;
    FDQExameAlunoTecnicaEXAME_NOTA: TSingleField;
    FDQMediaExameMEDIA: TFloatField;
    FDQListTecnicasAlunoMediasMEDIA: TFloatField;
    procedure FDQTecnicaBeforeInsert(DataSet: TDataSet);
    procedure FDQTecnicaBeforeEdit(DataSet: TDataSet);
    procedure FDQTecnicaAfterInsert(DataSet: TDataSet);
    procedure FDQTecnicaAfterEdit(DataSet: TDataSet);
    procedure FDQExameNotaexame_notaValidate(Sender: TField);
    procedure FDConnection1BeforeConnect(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM.FDConnection1BeforeConnect(Sender: TObject);
var
  ArqIni: TIniFile;
  sNomeArq: String;
  servidor: string;
  caminho: string;
  strPath: string;
begin
  ArqIni := TIniFile.Create(extractFilePath(ParamStr(0)) + 'Conf.ini');
  servidor := ArqIni.ReadString('SERVIDOR', 'Servidor', 'Erro ao ler o valor');
  caminho := ArqIni.ReadString('SERVIDOR', 'Database', 'Erro ao ler o valor');
  ArqIni.Free;
  strPath := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath,
    caminho + 'Bd.db');
{$IFDEF RELEASE}
  FDConnection1.Params.Values['DATABASE'] := strPath;
{$ELSE}
{$ENDIF}
end;

procedure TDM.FDQExameNotaexame_notaValidate(Sender: TField);
begin
  if (FDQExameNotaexame_nota.AsFloat < 0) or
    (FDQExameNotaexame_nota.AsFloat > 10) then
  begin
    Abort;
  end;
end;

procedure TDM.FDQTecnicaAfterEdit(DataSet: TDataSet);
begin
  if FDQTecnica.State in [dsEdit, dsInsert] then
    FDQTecnicaGrupo.AsString := DM.FDQGrupogrupo_descricao.AsString;
end;

procedure TDM.FDQTecnicaAfterInsert(DataSet: TDataSet);
begin
  if FDQTecnica.State in [dsEdit, dsInsert] then
    FDQTecnicaGrupo.AsString := DM.FDQGrupogrupo_descricao.AsString;
end;

procedure TDM.FDQTecnicaBeforeEdit(DataSet: TDataSet);
begin
  if FDQTecnica.State in [dsEdit, dsInsert] then
    FDQTecnicaGrupo.AsString := DM.FDQGrupogrupo_descricao.AsString;
end;

procedure TDM.FDQTecnicaBeforeInsert(DataSet: TDataSet);
begin
  if FDQTecnica.State in [dsEdit, dsInsert] then
    FDQTecnicaGrupo.AsString := DM.FDQGrupogrupo_descricao.AsString;
end;

end.
