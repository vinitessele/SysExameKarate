unit UExame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.Imaging.pngimage;

type
  TFCadExame = class(TFModelo)
    GroupBox1: TGroupBox;
    EditNome: TEdit;
    btnpesquisa: TSpeedButton;
    Label1: TLabel;
    ComboBox1: TComboBox;
    btnCarregar: TSpeedButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    GroupBox2: TGroupBox;
    LabelData: TLabel;
    EditData: TEdit;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label3: TLabel;
    EditDataAlteracao: TEdit;
    btnAlterar: TButton;
    Image2: TImage;
    Image1: TImage;
    procedure btnpesquisaClick(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnAlterarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadExame: TFCadExame;

implementation

{$R *.dfm}

uses UPesquisa, UDM, UListExames;

procedure TFCadExame.btnAlterarClick(Sender: TObject);
begin
  inherited;
  dm.FDQExameAluno.Active := True;
  dm.FDQExameAluno.Edit;
  dm.FDQExameAlunoexame_data.AsDateTime := StrToDate(EditDataAlteracao.Text);
  dm.FDQExameAluno.Post;
  dm.FDConnection1.CommitRetaining;
end;

procedure TFCadExame.btnCarregarClick(Sender: TObject);
var
  grd: TDBGrid;
begin
  inherited;
  if EditNome.Text = EmptyStr then
  begin
    ShowMessage('Selecione o aluno primeiro');
    Abort;
  end;

  dm.FDQValidaAlunoExame.Active := True;
  dm.FDQValidaAlunoExame.Close;
  dm.FDQValidaAlunoExame.ParamByName('aluno').AsInteger :=
    dm.FDQAlunoByNomealuno_id.AsInteger;
  dm.FDQValidaAlunoExame.ParamByName('faixa').AsInteger :=
    dm.FDQFaixafaixa_id.AsInteger;
  dm.FDQValidaAlunoExame.Open();

  if dm.FDQValidaAlunoExame.RecordCount > 0 then
  begin
    ShowMessage('Exame j� lan�ado para este aluno e faixa');
    EditDataAlteracao.Text := dm.FDQValidaAlunoExameexame_data.AsString;
    dm.FDQListTecnicasAlunoNotas.Active := True;
    dm.FDQListTecnicasAlunoNotas.Close;
    dm.FDQListTecnicasAlunoNotas.ParamByName('exame').AsInteger :=
      dm.FDQValidaAlunoExameexame_id.AsInteger;
    dm.FDQListTecnicasAlunoNotas.Open();
  end
  else
  begin
    dm.FDQListTecnicaFaixa.Active := True;
    dm.FDQListTecnicaFaixa.Close;
    dm.FDQListTecnicaFaixa.ParamByName('faixa').AsInteger :=
      dm.FDQFaixafaixa_id.AsInteger;
    dm.FDQListTecnicaFaixa.Open();

    dm.FDQExameAluno.Active := True;
    dm.FDQExameAluno.Append;
    dm.FDQExameAlunoexamealuno_id.AsInteger :=
      dm.FDQAlunoByNomealuno_id.AsInteger;
    dm.FDQExameAlunoexamefaixa_id.AsInteger := dm.FDQFaixafaixa_id.AsInteger;
    dm.FDQExameAlunoexame_data.AsDateTime := StrToDate(EditData.Text);

    dm.FDQExameAluno.Post;

    dm.FDQListTecnicaFaixa.First;
    dm.FDQExameAlunoTecnica.Active := True;
    while not dm.FDQListTecnicaFaixa.Eof do
    begin
      dm.FDQExameAlunoTecnica.Append;
      dm.FDQExameAlunoTecnicaexame_id.AsInteger :=
        dm.FDQExameAlunoexame_id.AsInteger;
      dm.FDQExameAlunoTecnicaexametecnicatecnica_id.AsInteger :=
        dm.FDQListTecnicaFaixatecnica_id.AsInteger;
      dm.FDQExameAlunoTecnica.Post;
      dm.FDConnection1.CommitRetaining;
      dm.FDQListTecnicaFaixa.Next;
    end;
    dm.FDQListTecnicasAlunoNotas.Active := True;
    dm.FDQListTecnicasAlunoNotas.Close;
    dm.FDQListTecnicasAlunoNotas.ParamByName('exame').AsInteger :=
      dm.FDQExameAlunoexame_id.AsInteger;
    dm.FDQListTecnicasAlunoNotas.Open();

  end;

end;

procedure TFCadExame.btnpesquisaClick(Sender: TObject);
begin
  inherited;
  FPesquisa.ShowModal;
  EditNome.Text := dm.FDQAlunoByNomealuno_nome.AsString;
end;

procedure TFCadExame.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_F9 then
  begin
    FPesquisa.ShowModal;
    EditNome.Text := dm.FDQAlunoByNomealuno_nome.AsString;
  end;
end;

procedure TFCadExame.FormShow(Sender: TObject);
begin
  inherited;
  dm.FDQFaixa.Active := True;
  EditData.Text := DateToStr(Date);
  FListaExames.ShowModal;
  if nomealuno <> EmptyStr then
  begin
    dm.FDQAlunoByNome.Active := True;
    dm.FDQAlunoByNome.Close;
    dm.FDQAlunoByNome.ParamByName('aluno').AsString := nomealuno;
    dm.FDQAlunoByNome.Open();
    EditNome.Text := dm.FDQAlunoByNomealuno_nome.AsString;
    dm.FDQFaixa.Active := True;
    dm.FDQFaixa.Locate('faixa_id', dm.FDQListExamefaixa_id.AsInteger, []);
  end;

end;

end.
