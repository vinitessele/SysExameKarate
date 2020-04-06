unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, FireDAC.VCLUI.Wait, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, IniFiles, System.IOUtils;

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
    FDQListTecnicaKihon: TFDQuery;
    FDQfaixatecnica: TFDQuery;
    FDQfaixatecnicafaixatecnica_id: TFDAutoIncField;
    FDQfaixatecnicafaixa_id: TIntegerField;
    FDQfaixatecnicatecnica_id: TIntegerField;
    FDQListTecnicaKihontecnica_id: TFDAutoIncField;
    FDQListTecnicaKihontecnica_descricao: TStringField;
    FDQListTecnicaKihonGrupo: TStringField;
    FDQListTecnicaKata: TFDQuery;
    FDQListTecnicaKumite: TFDQuery;
    FDQListTecnicaOutros: TFDQuery;
    FDQListTecnicaKatatecnica_id: TFDAutoIncField;
    FDQListTecnicaKatatecnica_descricao: TStringField;
    FDQListTecnicaKataGrupo: TStringField;
    FDQListTecnicaKumitetecnica_id: TFDAutoIncField;
    FDQListTecnicaKumitetecnica_descricao: TStringField;
    FDQListTecnicaKumiteGrupo: TStringField;
    FDQListTecnicaOutrostecnica_id: TFDAutoIncField;
    FDQListTecnicaOutrostecnica_descricao: TStringField;
    FDQListTecnicaOutrosGrupo: TStringField;
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
    FDQExameAlunoTecnicaexame_nota: TBCDField;
    FDQExameAlunoTecnicaexeme_avaliador: TStringField;
    FDQExameAlunoTecnicaExame_observacao: TStringField;
    FDQListTecnicasAlunoNotasexame_nota: TBCDField;
    FDQListTecnicasAlunoNotasexeme_avaliador: TStringField;
    FDQListTecnicasAlunoNotasExame_observacao: TStringField;
    FDQExameNotaexametecnica_id: TFDAutoIncField;
    FDQExameNotaexame_id: TIntegerField;
    FDQExameNotaexametecnicatecnica_id: TIntegerField;
    FDQExameNotaexame_nota: TBCDField;
    FDQExameNotaexeme_avaliador: TStringField;
    FDQExameNotaExame_observacao: TStringField;
    FDQExameNotaaluno_id: TIntegerField;
    FDQExameNotaaluno_cpf: TStringField;
    FDQExameNotaaluno_nome: TStringField;
    FDQExameNotaaluno_celular: TStringField;
    FDQExameNotaaluno_email: TStringField;
    FDQExameNotaaluno_observacao: TStringField;
    FDQExameNotaexame_id_1: TIntegerField;
    FDQExameNotaexamealuno_id: TIntegerField;
    FDQExameNotaexame_data: TDateField;
    FDQExameNotaexamefaixa_id: TIntegerField;
    FDQExameNotatecnica_id: TIntegerField;
    FDQExameNotatecnica_descricao: TStringField;
    FDQExameNotaGrupo: TStringField;
    FDQMediaExame: TFDQuery;
    FDQMediaExamemedia: TWideStringField;
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
  servidor := ArqIni.ReadString('SERVIDOR', 'Servidor',
    'Erro ao ler o valor');
  caminho := ArqIni.ReadString('SERVIDOR', 'Database',
    'Erro ao ler o valor');
  ArqIni.Free;
  strPath := System.IOUtils.TPath.Combine(System.IOUtils.TPath.GetDocumentsPath,
    caminho + 'Bd.db');
  FDConnection1.Params.Values['DATABASE'] := strPath;
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