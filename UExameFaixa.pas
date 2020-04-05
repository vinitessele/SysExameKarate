unit UExameFaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Data.DB, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  TFExame = class(TForm)
    GroupBox1: TGroupBox;
    StatusBar1: TStatusBar;
    Label1: TLabel;
    ComboBox1: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    EditAvaliador: TEdit;
    Label3: TLabel;
    ComboBox2: TComboBox;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    btnCarregar: TSpeedButton;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    EditMedia: TEdit;
    Label4: TLabel;
    BtnConfirmar: TBitBtn;
    Image1: TImage;
    Label5: TLabel;
    Label2: TLabel;
    Image2: TImage;
    procedure FormShow(Sender: TObject);
    procedure btnCarregarClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FExame: TFExame;

implementation

{$R *.dfm}

uses UDM;

procedure TFExame.btnCarregarClick(Sender: TObject);
var
  lb: TLabel;
  campo: TEdit;
  i: Integer;
begin
  dm.FDQExameNota.Active := True;
  dm.FDQExameNota.Close;
  dm.FDQExameNota.ParamByName('aluno').AsInteger :=
    dm.FDQExamealuno_id.AsInteger;
  dm.FDQExameNota.ParamByName('data').AsDate := Date;
  dm.FDQExameNota.ParamByName('grupo').AsString :=
    dm.FDQGrupogrupo_descricao.AsString;
  dm.FDQExameNota.Open();

  (*
    dm.FDQExameNota.First;
    i := 100;

    while not dm.FDQExameNota.Eof do
    begin
    lb := TLabel.Create(Self);
    campo := TEdit.Create(Self);
    lb.top := i;
    campo.top := i;
    lb.left := 20;
    campo.left := 180;
    lb.Parent := TFExame(Self);
    campo.Parent := TFExame(Self);
    campo.Name := 'edit_' + dm.FDQExameNotatecnica_id.AsString;
    campo.Width := 60;
    campo.Text := EmptyStr;
    lb.Caption := dm.FDQExameNotatecnica_descricao.AsString;
    lb.Name := 'labeletecnica' + dm.FDQExameNotatecnica_id.AsString;
    i := i + 20;
    dm.FDQExameNota.Next;
    end;
  *)

end;

procedure TFExame.BtnConfirmarClick(Sender: TObject);

begin
  if EditAvaliador.Text = EmptyStr then
  begin
    EditAvaliador.SetFocus;
    Abort;
  end;
  dm.FDQExameNota.First;
  while not dm.FDQExameNota.Eof do
  begin
    dm.FDQExameNota.Edit;
    dm.FDQExameNotaexeme_avaliador.AsString := EditAvaliador.Text;
    dm.FDQExameNota.Next;
  end;

  dm.FDQMediaExame.Active := True;
  dm.FDQMediaExame.Close;
  dm.FDQMediaExame.ParamByName('aluno').AsInteger :=
    dm.FDQExamealuno_id.AsInteger;
  dm.FDQMediaExame.ParamByName('data').AsDate := Date;
  dm.FDQMediaExame.ParamByName('grupo').AsString :=
    dm.FDQGrupogrupo_descricao.AsString;
  dm.FDQMediaExame.Open();

  EditMedia.Text := dm.FDQMediaExamemedia.AsString;
end;

procedure TFExame.DBGrid1ColExit(Sender: TObject);
begin
  if dm.FDQExameNota.State in [dsEdit, dsInsert] then
    dm.FDQExameNotaexeme_avaliador.AsString := EditAvaliador.Text;
end;

procedure TFExame.FormShow(Sender: TObject);
begin
  dm.FDQExame.Active := True;
  dm.FDQExame.Close;
  dm.FDQExame.ParamByName('data').AsDate := Date;
  dm.FDQExame.Open();
  Label1.Caption := 'Data :' + DateToStr(Date)
end;

end.
