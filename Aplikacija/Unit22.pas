unit Unit22;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Buttons;

type
  TForm22 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Shape1: TShape;
    StaticText1: TStaticText;
    Button1: TButton;
    SpeedButton1: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form22: TForm22;

implementation
uses UnitMeniSc;

{$R *.dfm}

procedure TForm22.Button1Click(Sender: TObject);

var
  SvePorudzbine: string;
begin
  SvePorudzbine := '=========================================' + #13#10 +
                   '        PREGLED PRETHODNIH PORUDŽBINA        ' + #13#10 +
                   '=========================================' + #13#10 +
                   '1. PORUDŽBINA #4091 - Katarina Nikolic' + #13#10 +
                   '   - Proizvod: Nugat Svečana Torta (2.5 kg)' + #13#10 +
                   '  - Adresa: Radnička 23, Kragujevac' + #13#10 +
                   '   - Vreme isporuke: 14:30h | Status: Primljeno' + #13#10 +
                   '-----------------------------------------' + #13#10 +
                   '2. PORUDŽBINA #4092 - Katarina Nikolic' + #13#10 +
                   '   - Proizvod: Francuski Makaronsi (Set 24 kom)' + #13#10 +
                   '  - Adresa: Radnička 23, Kragujevac' + #13#10 +
                   '   - Vreme isporuke: 16:00h | Status: Primljeno' + #13#10 +
                   '-----------------------------------------' + #13#10 +
                   '3. PORUDŽBINA #4093 - Katarina Nikolic' + #13#10 +
                   '   - Proizvod: Domaća Krempita (Pleh 16 kom)' + #13#10 +
                   '   - Adresa: Radnička 23, Kragujevac' + #13#10 +
                   '   - Vreme isporuke: 17:15h | Status: Primljeno' + #13#10 +
                   '-----------------------------------------' + #13#10 +
                   '4. PORUDŽBINA #4094 - Katarina Nikolic' + #13#10 +
                   '   - Proizvod: Premium Ferrero Torta (2 kg)' + #13#10 +
                   '   - Adresa: Radnička 23, Kragujevac' + #13#10 +
                   '   - Vreme isporuke: 18:00h | Status: Primljeno' + #13#10 +
                   '-----------------------------------------' + #13#10 +
                   '5. PORUDŽBINA #4095 - Katarina Nikolic' + #13#10 +
                   '   - Proizvod: Voćni Kapri Kolač (1.5 kg)' + #13#10 +
                   '   - Adresa: Radnička 23, Kragujevac' + #13#10 +
                   '   - Vreme isporuke: 19:30h | Status: Primljeno' + #13#10 +
                   '=========================================';

  ShowMessage(SvePorudzbine);
end;


procedure TForm22.SpeedButton1Click(Sender: TObject);
begin
Form4.Show;
  Self.Hide;
end;

end.
