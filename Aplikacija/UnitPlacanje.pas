unit UnitPlacanje;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  UnitUspesno, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm7 = class(TForm)
    Image1: TImage;
    LabelLoyalty: TLabel;
    SpeedButton1: TSpeedButton;
    procedure Image14Click(Sender: TObject);

    procedure LabelLoyaltyClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

procedure TForm7.Image14Click(Sender: TObject);
begin
Application.CreateForm(TForm8, Form8);
  Form8.Show;
  Self.Hide;
end;



procedure TForm7.LabelLoyaltyClick(Sender: TObject);

var
  UnetiKod: string;
begin

  UnetiKod := InputBox('Loyalty Program', 'Unesite Vaš tajni loyalty kod za popust:', '');


  if UnetiKod = '' then Exit;


  if UnetiKod = 'KACA20' then
  begin

    LabelLoyalty.Caption := 'Cena: 2360 din';
    ShowMessage('Uspešno! Aktiviran je popust od 20%. Nova cena je prikazana.');
  end
  else
  begin
    ShowMessage('Uneli ste nepostojeći ili nevažeći kod! Pokušajte ponovo.');
  end;
end;


procedure TForm7.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm8, Form8);
    Form8.Show;
Self.Hide;
end;

end.
