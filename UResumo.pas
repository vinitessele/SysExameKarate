unit UResumo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, WordXP,
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
    Label1: TLabel;
    Image1: TImage;
    RadioGroup1: TRadioGroup;
    procedure btnpesquisaClick(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);

  private
    { Private declarations }

  public
    { Public declarations }
    function PadronizaTamanho(Imagem: TBitmap; W, H: Integer): TBitmap;
  end;

var
  FResumo: TFResumo;
  Path: string;
  Word, Arquivo, Doc: OleVariant;
  Clip: Integer;

implementation

{$R *.dfm}

uses UDM, UPrincipal, UPesquisa;

function TFResumo.PadronizaTamanho(Imagem: TBitmap; W, H: Integer): TBitmap;
var
  B: TBitmap;
begin
  B := TBitmap.Create;
  try
    B.Width := W;
    B.Height := H;
    B.Canvas.StretchDraw(Rect(0, 0, W, H), Imagem);
    Result := Imagem.Create;
    Result.Assign(B);
  finally
    B.Free;
  end;
end;

procedure TFResumo.btnpesquisaClick(Sender: TObject);
begin
  FPesquisa.ShowModal;
  EditNome.Text := dm.FDQAlunoByNomealuno_nome.AsString;
end;

procedure TFResumo.DBGrid1DblClick(Sender: TObject);
var
  // Word: OleVariant;
  Word: Variant;
  vFoto: TStream;
  caminho: string;
  Temp: TBitmap;
  Rect: TRect;
  grupo: string;
  cont: Integer;
begin

  try
    // Pega o grafico da Tabela
    // Imagem.Picture.LoadFromFile(dm.FDQListaAlunoExame.FieldByName('academia_logo').AsString);

    caminho := (ExtractFilePath(Application.ExeName) + 'MinhaImagem.png');

    vFoto := dm.FDQListaAlunoExame.CreateBlobStream
      (dm.FDQListaAlunoExame.FieldByName('academia_logo'), bmRead);
    if vFoto.Size > 0 then
    begin
      Image1.Picture.LoadFromStream(vFoto);
      Temp := TBitmap.Create;
      Temp.Assign(Image1.Picture.Graphic);
      Temp := PadronizaTamanho(Temp, 80, 80);
      Image1.Picture.Assign(nil);

      try
        Temp.SaveToFile(caminho);
      finally
        Temp.Free;
      end;

    end
    else
    begin
      Image1.Picture.Bitmap.LoadFromFile(caminho);
      Temp := TBitmap.Create;
      Temp.Assign(Image1.Picture.Graphic);
      Temp := PadronizaTamanho(Temp, 80, 80);
      Image1.Picture.Assign(nil);

      try
        Temp.SaveToFile(caminho);
      finally
        Temp.Free;
      end;
    end;
    Path := ExtractFilePath(Application.ExeName);
    Word := CreateOleObject('Word.Basic');
    Word.Filenew;
    Word.AppShow;
    Word.Appmaximize;
    // 1, coluna, linha
    Word.TableInsertTable(1, 2, 1);
    Word.centerPara;
    Word.TableSelectTable; // seleciona a tabela inteira
    Word.TableAutoFormat(Format := 1);
    // usa a auto formatacao de tabelas do Word a vigesima para ser exato muda forma da tabela max 30
    Word.startOfRow; // coloca o cursor piscando no comeco da linha
    Word.LeftPara;
    Word.Insertpicture(caminho);
    Word.Insert(#13);

    // Resumo

    if RadioGroup1.ItemIndex = 0 then
    begin
      // Word.LeftPara;
      // Word.Insertpicture(caminho);
      Word.NextCell;
      Word.bold; // coloca negrito
      Word.centerPara;
      Word.Insert('Ficha de Exame médias');
      Word.Insert(#32 + dm.FDQListaAlunoExameexame_data.AsString);
      Word.bold(false); // tira o negrito
      Word.Insert(#32 + dm.FDQListaAlunoExamealuno_nome.AsString);
      Word.Insert(#32 + dm.FDQListaAlunoExamefaixa_descricao.AsString);
      Word.Insert(#13);
      // Word.tableSplitCells(NumColumns := 3, NumRows := 1);
      // divide a celula em 3 colunas e 1 linha
      dm.FDQGrupo.Active := True;
      dm.FDQGrupo.Close;
      dm.FDQGrupo.Open();
      dm.FDQGrupo.First;
      // Word.tableSplitCells(NumColumns := dm.FDQGrupo.RecordCount, NumRows := 1);
      while not dm.FDQGrupo.Eof do
      begin
        dm.FDQListTecnicasAlunoMedias.Active := True;
        dm.FDQListTecnicasAlunoMedias.Close;
        dm.FDQListTecnicasAlunoMedias.ParamByName('exame').AsInteger :=
          dm.FDQListaAlunoExameexame_id.AsInteger;
        dm.FDQListTecnicasAlunoMedias.ParamByName('grupo').AsString :=
          dm.FDQGrupogrupo_descricao.AsString;
        dm.FDQListTecnicasAlunoMedias.Open();

        Word.NextCell;
        Word.justifyPara; // coloca o texto no esquerda
        Word.bold(false); // tira o negrito
        Word.FontSize(10);
        Word.Insert(#32#32#32 + dm.FDQGrupogrupo_descricao.AsString);
        Word.Insert(#32#32#32 + formatfloat('#0.00',
          dm.FDQListTecnicasAlunoMediasmedia.AsFloat));
        dm.FDQGrupo.Next;
      end;

      // Word.FileSaveAs((ExtractFilePath(Application.ExeName) +
      // dm.FDQListaAlunoExamealuno_nome.AsString + '.doc'), 3);
      // Salva o arquivo
      // monta uma tabela com o texto selecionado
      // Word.Insertpicture(Path + '\Imagem1.jpg');
      // Word.Insert(#13'Imagem 2'#13);
      // Word.Insertpicture(Path + '\Imagem2.jpg');
    end
    else if RadioGroup1.ItemIndex = 1 then
    begin
      Word.NextCell;
      Word.bold; // coloca negrito
      Word.centerPara;
      Word.Insert('Ficha de Exame Completa');
      Word.Insert(#32 + dm.FDQListaAlunoExameexame_data.AsString);
      Word.bold(false); // tira o negrito
      Word.Insert(#13 + dm.FDQListaAlunoExamealuno_nome.AsString);
      Word.centerPara;
      Word.Insert(#13 + dm.FDQListaAlunoExamefaixa_descricao.AsString);
      Word.NextCell;

      dm.FDQGrupo.Active := True;
      dm.FDQGrupo.Close;
      dm.FDQGrupo.Open();
      dm.FDQGrupo.First;

      dm.FDQListTecnicasAlunoNotas.Active := True;
      dm.FDQListTecnicasAlunoNotas.Close;
      dm.FDQListTecnicasAlunoNotas.ParamByName('exame').AsInteger :=
        dm.FDQListaAlunoExameexame_id.AsInteger;
      dm.FDQListTecnicasAlunoNotas.Open();

      while not dm.FDQListTecnicasAlunoNotas.Eof do
      begin
        Word.bold(false); // tira o negrito
        // Word.LeftPara;
        Word.justifyPara; // coloca o texto no esquerda

        if grupo <> dm.FDQListTecnicasAlunoNotasGrupo.AsString then
        begin
          // média por grupo
          dm.FDQListTecnicasAlunoMedias.Active := True;
          dm.FDQListTecnicasAlunoMedias.Close;
          dm.FDQListTecnicasAlunoMedias.ParamByName('exame').AsInteger :=
            dm.FDQListTecnicasAlunoNotasexame_id.AsInteger;
          dm.FDQListTecnicasAlunoMedias.ParamByName('grupo').AsString :=
            dm.FDQListTecnicasAlunoNotasGrupo.AsString;
          dm.FDQListTecnicasAlunoMedias.Open();

          Word.centerPara;
          Word.Insert(dm.FDQListTecnicasAlunoNotasGrupo.AsString + #32 + 'Média'
            + #32 + formatfloat('#0.00',
            dm.FDQListTecnicasAlunoMediasmedia.AsFloat));
          Word.NextCell;
          Word.NextCell;
          grupo := dm.FDQListTecnicasAlunoNotasGrupo.AsString;
        end;
        Word.justifyPara;
        Word.Insert(dm.FDQListTecnicasAlunoNotastecnica_descricao.AsString);
        Word.NextCell;
        Word.Insert(dm.FDQListTecnicasAlunoNotasexame_nota.AsString);
        Word.NextCell;
        dm.FDQListTecnicasAlunoNotas.Next;
      end;
      // Word.FileSaveAs((ExtractFilePath(Application.ExeName) +
      // dm.FDQListaAlunoExamealuno_nome.AsString + '.doc'), 3);
      // Salva o arquivo

    end
    else if RadioGroup1.ItemIndex = 2 then
    begin
      Word.NextCell;
      Word.bold; // coloca negrito
      Word.centerPara;
      Word.Insert('Ficha de Exame Completa');
      Word.Insert(#32 + dm.FDQListaAlunoExameexame_data.AsString);
      Word.bold(false); // tira o negrito
      Word.Insert(#13 + dm.FDQListaAlunoExamealuno_nome.AsString);
      Word.centerPara;
      Word.Insert(#13 + dm.FDQListaAlunoExamefaixa_descricao.AsString);
      Word.NextCell;

      dm.FDQGrupo.Active := True;
      dm.FDQGrupo.Close;
      dm.FDQGrupo.Open();
      dm.FDQGrupo.First;

      dm.FDQListTecnicasAlunoNotas.Active := True;
      dm.FDQListTecnicasAlunoNotas.Close;
      dm.FDQListTecnicasAlunoNotas.ParamByName('exame').AsInteger :=
        dm.FDQListaAlunoExameexame_id.AsInteger;
      dm.FDQListTecnicasAlunoNotas.Open();

      while not dm.FDQListTecnicasAlunoNotas.Eof do
      begin
        Word.bold(false); // tira o negrito
        // Word.LeftPara;
        Word.justifyPara; // coloca o texto no esquerda

        if grupo <> dm.FDQListTecnicasAlunoNotasGrupo.AsString then
        begin
          // média por grupo
          dm.FDQListTecnicasAlunoMedias.Active := True;
          dm.FDQListTecnicasAlunoMedias.Close;
          dm.FDQListTecnicasAlunoMedias.ParamByName('exame').AsInteger :=
            dm.FDQListTecnicasAlunoNotasexame_id.AsInteger;
          dm.FDQListTecnicasAlunoMedias.ParamByName('grupo').AsString :=
            dm.FDQListTecnicasAlunoNotasGrupo.AsString;
          dm.FDQListTecnicasAlunoMedias.Open();

          Word.centerPara;
          // Word.Insert(dm.FDQListTecnicasAlunoNotasGrupo.AsString + #32 + 'Média'
          // + #32 + formatfloat('#0.00',
          // dm.FDQListTecnicasAlunoMediasmedia.AsFloat));
          Word.NextCell;
          Word.NextCell;
          grupo := dm.FDQListTecnicasAlunoNotasGrupo.AsString;
        end;
        Word.justifyPara;
        Word.Insert(dm.FDQListTecnicasAlunoNotastecnica_descricao.AsString);
        Word.NextCell;
        // Word.Insert(dm.FDQListTecnicasAlunoNotasexame_nota.AsString);
        Word.NextCell;
        dm.FDQListTecnicasAlunoNotas.Next;
      end;

    end;

  finally
    Image1.Picture.Assign(nil);
  end;
end;

procedure TFResumo.Image2Click(Sender: TObject);
var
  Data: TDate;
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

  dm.FDQListaAlunoExame.SQL.Add(' order by exame_data desc');
  dm.FDQListaAlunoExame.Open;
end;

end.
