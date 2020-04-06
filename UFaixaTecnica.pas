unit UFaixaTecnica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.StdCtrls, System.Rtti, System.Bindings.Outputs,
  Vcl.Bind.Editors, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope;

type
  TFFaixaTecnica = class(TFModelo)
    ComboBox1: TComboBox;
    Label1: TLabel;
    ListViewTecnicas: TListView;
    ListViewTecnicasExame: TListView;
    Label2: TLabel;
    Label3: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    ListViewTecnicasKata: TListView;
    Label7: TLabel;
    Label8: TLabel;
    ListViewTecnicasKumite: TListView;
    Label9: TLabel;
    Label10: TLabel;
    ListViewTecnicasOutros: TListView;
    Label11: TLabel;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField5: TLinkListControlToField;
    BindSourceDB6: TBindSourceDB;
    LinkListControlToField6: TLinkListControlToField;
    procedure ComboBox1Change(Sender: TObject);
    procedure ListViewTecnicasDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListViewTecnicasExameDblClick(Sender: TObject);
    procedure ListViewTecnicasKataDblClick(Sender: TObject);
    procedure ListViewTecnicasKumiteDblClick(Sender: TObject);
    procedure ListViewTecnicasOutrosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFaixaTecnica: TFFaixaTecnica;

implementation

{$R *.dfm}

uses UDM;

procedure TFFaixaTecnica.ComboBox1Change(Sender: TObject);
begin
  inherited;
  DM.FDQListTecnicaFaixa.Active := True;
  DM.FDQListTecnicaKihon.Active := True;

  DM.FDQListTecnicaFaixa.Close;
  DM.FDQListTecnicaFaixa.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaFaixa.Open();

  // kihon
  DM.FDQListTecnicaKihon.Close;
  DM.FDQListTecnicaKihon.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKihon.Open();
  // Kata
  DM.FDQListTecnicaKata.Close;
  DM.FDQListTecnicaKata.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKata.Open();
  // Kumite
  DM.FDQListTecnicaKumite.Close;
  DM.FDQListTecnicaKumite.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKumite.Open();
  // Outros requisitos
  DM.FDQListTecnicaOutros.Close;
  DM.FDQListTecnicaOutros.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaOutros.Open();

end;

procedure TFFaixaTecnica.FormShow(Sender: TObject);
begin
  inherited;
  DM.FDQListTecnicaFaixa.Active := True;
  DM.FDQListTecnicaKihon.Active := True;

  DM.FDQListTecnicaFaixa.Close;
  DM.FDQListTecnicaFaixa.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaFaixa.Open();

  // kihon
  DM.FDQListTecnicaKihon.Close;
  DM.FDQListTecnicaKihon.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKihon.Open();
  // Kata
  DM.FDQListTecnicaKata.Close;
  DM.FDQListTecnicaKata.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKata.Open();
  // Kumite
  DM.FDQListTecnicaKumite.Close;
  DM.FDQListTecnicaKumite.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKumite.Open();
  // Outros requisitos
  DM.FDQListTecnicaOutros.Close;
  DM.FDQListTecnicaOutros.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaOutros.Open();

end;

procedure TFFaixaTecnica.ListViewTecnicasDblClick(Sender: TObject);
begin
  inherited;

  DM.fdqfaixatecnica.Active := True;
  DM.fdqfaixatecnica.Append;
  DM.FDQfaixatecnicafaixa_id.AsInteger := DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQfaixatecnicatecnica_id.AsInteger :=
    DM.FDQListTecnicaKihontecnica_id.AsInteger;
  DM.fdqfaixatecnica.Post;
  DM.FDConnection1.CommitRetaining;

  DM.FDQListTecnicaKihon.Active := True;

  // kihon
  DM.FDQListTecnicaKihon.Close;
  DM.FDQListTecnicaKihon.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKihon.Open();
  // Kata
  DM.FDQListTecnicaKata.Close;
  DM.FDQListTecnicaKata.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKata.Open();
  // Kumite
  DM.FDQListTecnicaKumite.Close;
  DM.FDQListTecnicaKumite.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKumite.Open();
  // Outros requisitos
  DM.FDQListTecnicaOutros.Close;
  DM.FDQListTecnicaOutros.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaOutros.Open();

  DM.FDQListTecnicaFaixa.Close;
  DM.FDQListTecnicaFaixa.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaFaixa.Open();
end;

procedure TFFaixaTecnica.ListViewTecnicasExameDblClick(Sender: TObject);
begin
  inherited;
  DM.fdqfaixatecnica.Delete;
  DM.FDConnection1.CommitRetaining;
  // kihon
  DM.FDQListTecnicaKihon.Close;
  DM.FDQListTecnicaKihon.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKihon.Open();
  // Kata
  DM.FDQListTecnicaKata.Close;
  DM.FDQListTecnicaKata.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKata.Open();
  // Kumite
  DM.FDQListTecnicaKumite.Close;
  DM.FDQListTecnicaKumite.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKumite.Open();
  // Outros requisitos
  DM.FDQListTecnicaOutros.Close;
  DM.FDQListTecnicaOutros.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaOutros.Open();

  DM.FDQListTecnicaFaixa.Close;
  DM.FDQListTecnicaFaixa.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaFaixa.Open();
end;

procedure TFFaixaTecnica.ListViewTecnicasKataDblClick(Sender: TObject);
begin
  inherited;
  DM.fdqfaixatecnica.Active := True;
  DM.fdqfaixatecnica.Append;
  DM.FDQfaixatecnicafaixa_id.AsInteger := DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQfaixatecnicatecnica_id.AsInteger :=
    DM.FDQListTecnicaKatatecnica_id.AsInteger;
  DM.fdqfaixatecnica.Post;
  DM.FDConnection1.CommitRetaining;

  DM.FDQListTecnicaKihon.Active := True;

  // kihon
  DM.FDQListTecnicaKihon.Close;
  DM.FDQListTecnicaKihon.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKihon.Open();
  // Kata
  DM.FDQListTecnicaKata.Close;
  DM.FDQListTecnicaKata.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKata.Open();
  // Kumite
  DM.FDQListTecnicaKumite.Close;
  DM.FDQListTecnicaKumite.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKumite.Open();
  // Outros requisitos
  DM.FDQListTecnicaOutros.Close;
  DM.FDQListTecnicaOutros.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaOutros.Open();

  DM.FDQListTecnicaFaixa.Close;
  DM.FDQListTecnicaFaixa.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaFaixa.Open();
end;

procedure TFFaixaTecnica.ListViewTecnicasKumiteDblClick(Sender: TObject);
begin
  inherited;
  DM.fdqfaixatecnica.Active := True;
  DM.fdqfaixatecnica.Append;
  DM.FDQfaixatecnicafaixa_id.AsInteger := DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQfaixatecnicatecnica_id.AsInteger :=
    DM.FDQListTecnicaKumitetecnica_id.AsInteger;
  DM.fdqfaixatecnica.Post;
  DM.FDConnection1.CommitRetaining;

  DM.FDQListTecnicaKihon.Active := True;

  // kihon
  DM.FDQListTecnicaKihon.Close;
  DM.FDQListTecnicaKihon.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKihon.Open();
  // Kata
  DM.FDQListTecnicaKata.Close;
  DM.FDQListTecnicaKata.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKata.Open();
  // Kumite
  DM.FDQListTecnicaKumite.Close;
  DM.FDQListTecnicaKumite.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKumite.Open();
  // Outros requisitos
  DM.FDQListTecnicaOutros.Close;
  DM.FDQListTecnicaOutros.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaOutros.Open();

  DM.FDQListTecnicaFaixa.Close;
  DM.FDQListTecnicaFaixa.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaFaixa.Open();
end;

procedure TFFaixaTecnica.ListViewTecnicasOutrosDblClick(Sender: TObject);
begin
  inherited;
  DM.fdqfaixatecnica.Active := True;
  DM.FDQListTecnicaOutros.Active := True;
  DM.fdqfaixatecnica.Append;
  DM.FDQfaixatecnicafaixa_id.AsInteger := DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQfaixatecnicatecnica_id.AsInteger :=
    DM.FDQListTecnicaOutrostecnica_id.AsInteger;
  DM.fdqfaixatecnica.Post;
  DM.FDConnection1.CommitRetaining;

  DM.FDQListTecnicaKihon.Active := True;

  // kihon
  DM.FDQListTecnicaKihon.Close;
  DM.FDQListTecnicaKihon.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKihon.Open();
  // Kata
  DM.FDQListTecnicaKata.Close;
  DM.FDQListTecnicaKata.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKata.Open();
  // Kumite
  DM.FDQListTecnicaKumite.Close;
  DM.FDQListTecnicaKumite.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaKumite.Open();
  // Outros requisitos
  DM.FDQListTecnicaOutros.Close;
  DM.FDQListTecnicaOutros.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaOutros.Open();

  DM.FDQListTecnicaFaixa.Close;
  DM.FDQListTecnicaFaixa.ParamByName('faixa').AsInteger :=
    DM.FDQFaixafaixa_id.AsInteger;
  DM.FDQListTecnicaFaixa.Open();
end;

end.