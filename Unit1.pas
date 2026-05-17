unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Menus,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Dobrodosli: TImage;
    MainMenu1: TMainMenu;
    Fajl1: TMenuItem;
    Proizvodi1: TMenuItem;
    Proizvodi2: TMenuItem;
    Razvoj1: TMenuItem;
    Izvestaji1: TMenuItem;
    dalje: TLabel;
    Label2: TLabel;
    PanelSignIn: TPanel;
    Image1: TImage;
    Label3: TLabel;
    Label4: TLabel;
    prijaviSe: TLabel;
    naslov: TLabel;
    Image2: TImage;
    procedure daljeClick(Sender: TObject);
    procedure prijaviSeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


 procedure TForm1.daljeClick(Sender: TObject);
begin
  // 1. Sakrivamo elemente prvog ekrana
  Dobrodosli.Visible := False; // tvoja slika sa malinama u pozadini
  Label2.Visible := False;     // tekst "Dobrodošli"
  dalje.Visible := False;      // roze dugme DALJE

  // 2. Palimo panel koji u sebi drži "Sign In" elemente
  PanelSignIn.Visible := True;
  Label3.Visible := True;      // Google tekst
  Label4.Visible := True;      // Facebook tekst
  naslov.Visible := True;      // Tekst "Ukusni kolaci..."
  prijaviSe.Visible := True;   // Roze dugme na panelu
end;


procedure TForm1.FormCreate(Sender: TObject);
begin
  // Čim se program upali, sakrivamo beli panel sa svim tekstovima unutar njega:
  PanelSignIn.Visible := False;
  Label3.Visible := False;
  Label4.Visible := False;
  naslov.Visible := False;

  // A osiguravamo da se uvodni ekran sa malinama vidi:
  Dobrodosli.Visible := True;
  Label2.Visible := True;
  dalje.Visible := True;
end;


procedure TForm1.prijaviSeClick(Sender: TObject);
begin
  // Kada se klikne "Prijavi se", panel se gasi i ostaje prazna bela forma
  PanelSignIn.Visible := False;
  ShowMessage('Prijava uspešna! Dobrodošli u glavni meni.');
end;

// SADA DODAJEMO OVAJ DEO KOJI ĆE SVE SAKRITI ČIM UPALIŠ PROGRAM:

end.


