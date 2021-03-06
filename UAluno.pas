unit UAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UModelo, Data.DB, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, Vcl.Buttons,
  Vcl.ExtDlgs;

type
  TFAluno = class(TFModelo)
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
    DBEdit6: TDBEdit;
    DBGrid1: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    ComboBox1: TComboBox;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    BindSourceDB2: TBindSourceDB;
    DBImage2: TDBImage;
    btnFoto: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure ComboBox1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnFotoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FAluno: TFAluno;

implementation

{$R *.dfm}

uses UDM;

procedure TFAluno.btnFotoClick(Sender: TObject);
begin
  inherited;
  If OpenPictureDialog1.Execute Then
  begin
    DBImage2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    DBImage2.Stretch := True;
  end;
end;

procedure TFAluno.ComboBox1Exit(Sender: TObject);
begin
  inherited;
  dm.FDQAlunoalunoacademia_id.AsInteger := dm.FDQAcademiaacademia_id.AsInteger;
end;

procedure TFAluno.FormShow(Sender: TObject);
begin
  inherited;
  dm.FDQAcademia.Active := True;
  dm.FDQAluno.Active := True;
end;

end.
