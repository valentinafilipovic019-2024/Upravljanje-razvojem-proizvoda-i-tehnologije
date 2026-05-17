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

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


 procedure TForm1.daljeClick(Sender: TObject);
begin

  Dobrodosli.Visible := False;
  Label2.Visible := False;
  dalje.Visible := False;


  PanelSignIn.Visible := True;
  Label3.Visible := True;
  Label4.Visible := True;
  naslov.Visible := True;
  prijaviSe.Visible := True;
end;


procedure TForm1.FormCreate(Sender: TObject);
begin

  PanelSignIn.Visible := False;
  Label3.Visible := False;
  Label4.Visible := False;
  naslov.Visible := False;


  Dobrodosli.Visible := True;
  Label2.Visible := True;
  dalje.Visible := True;
end;


procedure TForm1.prijaviSeClick(Sender: TObject);
begin

  PanelSignIn.Visible := False;
  ShowMessage('Prijava uspešna! Dobrodošli u glavni meni.');
end;



end.


