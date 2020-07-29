unit UKumite;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors,
  Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  Vcl.Buttons;

type
  TFrmKumite = class(TForm)
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
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    ComboBox1: TComboBox;
    EditAvaliador: TEdit;
    ComboBox2: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    btn_Confirmar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btn_ConfirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmKumite: TFrmKumite;

implementation

{$R *.dfm}

uses UDM, UPrincipal, UExame, UExameFaixa;

procedure TFrmKumite.btn_ConfirmarClick(Sender: TObject);
var
  media: real;
  posicao, distbase, distgolpe, ataque, direcao, kyo, jitsu, defesa, contra,
    tecnicas, visao, kime, disposicao, zanchin: real;
begin
  posicao := strtofloat(DBEdit1.Text);
  tecnicas := strtofloat(DBEdit2.Text);
  distbase := strtofloat(DBEdit3.Text);
  distgolpe := strtofloat(DBEdit4.Text);
  ataque := strtofloat(DBEdit5.Text);
  direcao := strtofloat(DBEdit6.Text);
  kyo := strtofloat(DBEdit7.Text);
  jitsu := strtofloat(DBEdit8.Text);
  defesa := strtofloat(DBEdit9.Text);
  contra := strtofloat(DBEdit10.Text);
  visao := strtofloat(DBEdit11.Text);
  kime := strtofloat(DBEdit12.Text);
  disposicao := strtofloat(DBEdit13.Text);
  zanchin := strtofloat(DBEdit14.Text);
  media := (posicao + distbase + distgolpe + ataque + direcao + kyo + jitsu +
    defesa + contra + tecnicas + visao + kime + disposicao + zanchin) / 14;
  dm.FDQExameNota.Edit;
  dm.FDQExameNotaEXAME_NOTA.AsFloat := media;
  dm.FDQKumite.Post;
  dm.FDConnection1.CommitRetaining;
  close;

end;

procedure TFrmKumite.FormShow(Sender: TObject);
begin
  EditAvaliador.Text := FExame.EditAvaliador.Text;

  if dm.FDQKumite.Locate('id_exame; id_tecnica',
    VarArrayOf([dm.FDQExameNotaEXAME_ID.AsInteger,
    dm.FDQExameNotaTECNICA_ID.AsInteger]), []) then
  begin
    dm.FDQKumite.Edit;
  end
  else
  begin
    dm.FDQKumite.Append;
  end;
  dm.FDQKumiteID_EXAME.AsInteger := dm.FDQExameNotaEXAME_ID.AsInteger;
  dm.FDQKumiteID_TECNICA.AsInteger := dm.FDQExameNotaTECNICA_ID.AsInteger;
  dm.FDQKumiteID_ALUNO.AsInteger := dm.FDQExameNotaALUNO_ID.AsInteger;

end;

end.
