unit UAvaliacaoKata;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Buttons, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFrmAvaliaKata = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    btn_Confirmar: TBitBtn;
    ComboBox1: TComboBox;
    EditAvaliador: TEdit;
    ComboBox2: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkFillControlToField1: TLinkFillControlToField;
    Label8: TLabel;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkListControlToField2: TLinkListControlToField;
    procedure FormShow(Sender: TObject);
    procedure btn_ConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAvaliaKata: TFrmAvaliaKata;

implementation

{$R *.dfm}

uses UDM, UExame, UExameFaixa;

procedure TFrmAvaliaKata.btn_ConfirmarClick(Sender: TObject);
var
  media: real;
  posicao, tecnicas, ritmo, visao, kime, disposicao, zanchin: real;
begin
  posicao := strtofloat(DBEdit1.Text);
  tecnicas := strtofloat(DBEdit2.Text);
  ritmo := strtofloat(DBEdit3.Text);
  visao := strtofloat(DBEdit4.Text);
  kime := strtofloat(DBEdit5.Text);
  disposicao := strtofloat(DBEdit6.Text);
  zanchin := strtofloat(DBEdit7.Text);
  media := (posicao + tecnicas + ritmo + visao + kime + disposicao +
    zanchin) / 7;
  dm.FDQExameNota.Edit;
  dm.FDQExameNotaEXAME_NOTA.AsFloat := media;
  dm.FDQAvKata.Post;
  dm.FDConnection1.CommitRetaining;
  close;
end;

procedure TFrmAvaliaKata.FormShow(Sender: TObject);
begin
  EditAvaliador.Text := FExame.EditAvaliador.Text;

  if dm.FDQAvKata.Locate('id_exame; id_tecnica',
    VarArrayOf([dm.FDQExameNotaEXAME_ID.AsInteger,
    dm.FDQExameNotaTECNICA_ID.AsInteger]), []) then
  begin
    dm.FDQAvKata.Edit;
  end
  else
  begin
    dm.FDQAvKata.Append;
  end;
  dm.FDQAvKataID_EXAME.AsInteger := dm.FDQExameNotaEXAME_ID.AsInteger;
  dm.FDQAvKataID_TECNICA.AsInteger := dm.FDQExameNotaTECNICA_ID.AsInteger;
  dm.FDQAvKataID_ALUNO.AsInteger := dm.FDQExameNotaALUNO_ID.AsInteger;

end;

end.
