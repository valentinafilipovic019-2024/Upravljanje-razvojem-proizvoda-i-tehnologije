unit UnitIsp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm17 = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
  public
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

uses
  Unit13,
  UnitGlMeni;

procedure TForm17.SpeedButton1Click(Sender: TObject);
begin
  MessageDlg('Isporuka margarina kasni 2 sata! Za vise informacija pozovite vozaca.',
             mtWarning, [mbOK], 0);
end;

procedure TForm17.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TForm13, Form13);
  Form13.Show;
  Self.Hide;
end;

procedure TForm17.SpeedButton3Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

end.
