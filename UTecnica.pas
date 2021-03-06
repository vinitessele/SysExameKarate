unit UTecnica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFTecnicas = class(TFModelo)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DataSource1: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField: TLinkFillControlToField;
    ComboBox1: TComboBox;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTecnicas: TFTecnicas;

implementation

{$R *.dfm}

uses UDM;

procedure TFTecnicas.ComboBox1Change(Sender: TObject);
begin
  inherited;
  if DM.FDQTecnica.State in [dsEdit, dsInsert] then
    DM.FDQTecnicaGrupo.AsString := DM.FDQGrupogrupo_descricao.AsString;
end;

procedure TFTecnicas.ComboBox1Exit(Sender: TObject);
begin
  inherited;
  if DM.FDQTecnica.State in [dsEdit, dsInsert] then
    DM.FDQTecnicaGrupo.AsString := DM.FDQGrupogrupo_descricao.AsString;
end;

procedure TFTecnicas.FormShow(Sender: TObject);
begin
  inherited;
  DM.FDQGrupo.Active := True;
  DM.FDQGrupo.Close;
  DM.FDQGrupo.Open();

  {
    while not DM.FDQGrupo.Eof do
     begin
       ComboBox1.Items.Add(DM.FDQGrupogrupo_descricao.AsString);
       DM.FDQGrupo.Next;
     end;
 }
end;

end.
