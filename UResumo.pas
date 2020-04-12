unit UResumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, ComObj,
  ClipBRD;

type
  TFResumo = class(TForm)
    Image2: TImage;
    EditNome: TEdit;
    btnpesquisa: TSpeedButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label7: TLabel;
    procedure btnpesquisaClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FResumo: TFResumo;
  Path: string;
  Word, Arquivo, Doc: OleVariant;
  Clip: Integer;

implementation

{$R *.dfm}

uses UDM, UPrincipal, UPesquisa;

procedure TFResumo.btnpesquisaClick(Sender: TObject);
begin
  FPesquisa.ShowModal;
  EditNome.Text := dm.FDQAlunoByNomealuno_nome.AsString;
end;

procedure TFResumo.DBGrid1DblClick(Sender: TObject);
var
  Word: OleVariant;
  imagem: TImage;
  vFoto: TStream;
begin
  try

    // Pega o grafico da Tabela
    // Imagem.Picture.LoadFromFile(dm.FDQListaAlunoExame.FieldByName('academia_logo').AsString);
    vFoto := dm.FDQListaAlunoExame.CreateBlobStream
      (dm.FDQListaAlunoExame.FieldByName('academia_logo'), bmRead);
    imagem.Picture.LoadFromStream(vFoto);
    // Desenha
    imagem.Picture.SaveToFile(ExtractFilePath(Application.ExeName) +
      'MeuArquivo.jpg');
  finally
    imagem.Free;
  end;
  Path := ExtractFilePath(Application.ExeName);
  Word := CreateOleObject('Word.Basic');
  Word.Filenew;
  Word.AppShow;
  Word.Appmaximize;
  Word.CenterPara;
  Word.Insertpicture(Path + '\Imagem1.jpg');
  Word.FontSize(18);
  Word.Insert('Resumo do Exame');
  Word.FontSize(12);
  Word.Insert(#13 + dm.FDQListaAlunoExamealuno_nome.AsString);
  Word.Insert(#32 + dm.FDQListaAlunoExameexame_data.AsString);
  Word.Insert(#32 + dm.FDQListaAlunoExamefaixa_descricao.AsString);

  dm.FDQGrupo.Active := True;
  dm.FDQGrupo.Close;
  dm.FDQGrupo.Open();

  while not dm.FDQGrupo.Eof do
  begin
    dm.FDQListTecnicasAlunoMedias.Active := True;
    dm.FDQListTecnicasAlunoMedias.Close;
    dm.FDQListTecnicasAlunoMedias.ParamByName('exame').AsInteger :=
      dm.FDQListaAlunoExameexame_id.AsInteger;
    dm.FDQListTecnicasAlunoMedias.ParamByName('grupo').AsString :=
      dm.FDQGrupogrupo_descricao.AsString;
    dm.FDQListTecnicasAlunoMedias.Open();

    Word.FontSize(12);
    Word.Insert(#13 + dm.FDQListTecnicasAlunoMediasGrupo.AsString);
    Word.FontSize(12);
    Word.Insert(#13 + dm.FDQListTecnicasAlunoNotasexame_nota.AsString);

    dm.FDQGrupo.Next;
  end;

  // Word.Insertpicture(Path + '\Imagem1.jpg');
  // Word.Insert(#13'Imagem 2'#13);
  // Word.Insertpicture(Path + '\Imagem2.jpg');
end;

procedure TFResumo.Image2Click(Sender: TObject);
begin
  dm.FDQListaAlunoExame.Active := True;
  dm.FDQListaAlunoExame.Close;
  dm.FDQListaAlunoExame.SQL.Clear;
  dm.FDQListaAlunoExame.SQL.Add('select * from exame e ' +
    ' inner join aluno a on e.examealuno_id = a.aluno_id ' +
    ' inner join faixa f on e.examefaixa_id = f.faixa_id   ' +
    ' inner join academia ac on ac.academia_id = a.alunoacademia_id');

  if EditNome.Text <> EmptyStr then
  begin
    dm.FDQListaAlunoExame.SQL.Add(' where examealuno_id = ' +
      dm.FDQAlunoByNomealuno_id.AsString);
  end;
  dm.FDQListaAlunoExame.Open;
end;

end.
