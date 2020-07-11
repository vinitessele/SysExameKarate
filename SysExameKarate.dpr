program SysExameKarate;

uses
  Vcl.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UModelo in 'UModelo.pas' {FModelo},
  UAluno in 'UAluno.pas' {FAluno},
  UTecnica in 'UTecnica.pas' {FTecnicas},
  UGrupo in 'UGrupo.pas' {FGrupo},
  UFaixa in 'UFaixa.pas' {FFaixa},
  UFaixaTecnica in 'UFaixaTecnica.pas' {FFaixaTecnica},
  UExame in 'UExame.pas' {FCadExame},
  UPesquisa in 'UPesquisa.pas' {FPesquisa},
  UExameFaixa in 'UExameFaixa.pas' {FExame},
  UConfiguracao in 'UConfiguracao.pas' {FConfiguracao},
  UAcademia in 'UAcademia.pas' {FAcademia},
  UResumo in 'UResumo.pas' {FResumo},
  UListExames in 'UListExames.pas' {FListaExames},
  UFinalizaExames in 'UFinalizaExames.pas' {FFinalizar};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFModelo, FModelo);
  Application.CreateForm(TFAluno, FAluno);
  Application.CreateForm(TFTecnicas, FTecnicas);
  Application.CreateForm(TFGrupo, FGrupo);
  Application.CreateForm(TFFaixa, FFaixa);
  Application.CreateForm(TFFaixaTecnica, FFaixaTecnica);
  Application.CreateForm(TFCadExame, FCadExame);
  Application.CreateForm(TFPesquisa, FPesquisa);
  Application.CreateForm(TFExame, FExame);
  Application.CreateForm(TFConfiguracao, FConfiguracao);
  Application.CreateForm(TFAcademia, FAcademia);
  Application.CreateForm(TFResumo, FResumo);
  Application.CreateForm(TFListaExames, FListaExames);
  Application.CreateForm(TFFinalizar, FFinalizar);
  Application.Run;
end.
