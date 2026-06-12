unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.Buttons;

type
  TForm12 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
  public
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses
  Unit13, UnitStatusTeh, UnitAler, UnitKal, Unit11, UnitGlMeni;

procedure TForm12.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TForm13, Form13);
  Form13.Show;
  Self.Hide;
end;

procedure TForm12.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TForm14, Form14);
  Form14.Show;
  Self.Hide;
end;

procedure TForm12.SpeedButton3Click(Sender: TObject);
begin
  Application.CreateForm(TForm15, Form15);
  Form15.Show;
  Self.Hide;
end;

procedure TForm12.SpeedButton4Click(Sender: TObject);
begin
  Application.CreateForm(TForm16, Form16);
  Form16.Show;
  Self.Hide;
end;

procedure TForm12.SpeedButton5Click(Sender: TObject);
begin
  Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

procedure TForm12.SpeedButton6Click(Sender: TObject);
begin
  Application.CreateForm(TForm11, Form11);
  Form11.Show;
  Self.Hide;
end;

end.
