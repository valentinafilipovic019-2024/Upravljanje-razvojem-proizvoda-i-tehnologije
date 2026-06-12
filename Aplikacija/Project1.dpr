program Project1;

uses
  Vcl.Forms,
  System.Classes,
  Vcl.ExtCtrls,
  Vcl.Buttons,
  Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage,
  Unit1 in 'Unit1.pas' {Form1},
  UnitGlMeni in 'UnitGlMeni.pas' {Form3},
  UnitMeniSc in 'UnitMeniSc.pas' {Form4},
  UnitNugat in 'UnitNugat.pas' {Form5},
  UnitKorpa in 'UnitKorpa.pas' {Form6},
  UnitPlacanje in 'UnitPlacanje.pas' {Form7},
  UnitUspesno in 'UnitUspesno.pas' {Form8},
  UnitSsignin in 'UnitSsignin.pas' {Form9},
  UnitPrijava in 'UnitPrijava.pas' {Form2},
  Unit10 in 'Unit10.pas' {Form10},
  Unit11 in 'Unit11.pas' {Form11},
  Unit12 in 'Unit12.pas' {Form12},
  Unit13 in 'Unit13.pas' {Form13},
  UnitStatusTeh in 'UnitStatusTeh.pas' {Form14},
  UnitAler in 'UnitAler.pas' {Form15},
  UnitKal in 'UnitKal.pas' {Form16},
  UnitIsp in 'UnitIsp.pas' {Form17},
  UnitOtpis in 'UnitOtpis.pas' {Form18},
  UnitNabav in 'UnitNabav.pas' {Form19},
  UnitDok in 'UnitDok.pas' {Form20},
  Unit21 in 'Unit21.pas' {Form21},
  Unit22 in 'Unit22.pas' {Form22};

{$R *.res}

begin
  Application.Initialize;

  // Prisilno registrujemo klase pre kreiranja formi da Delphi ne baci EClassNotFound
  RegisterClass(TImage);
  RegisterClass(TSpeedButton); // <-- DODATO OVO!

  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm22, Form22);
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
