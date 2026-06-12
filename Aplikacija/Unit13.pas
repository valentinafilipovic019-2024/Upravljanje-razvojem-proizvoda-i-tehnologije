unit Unit13;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm13 = class(TForm)
    Image1: TImage;
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
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
  public
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses
  UnitIsp, UnitOtpis, UnitNabav, UnitDok, Unit12, UnitGlMeni, UnitAler, UnitKal;

procedure TForm13.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm17, Form17);
  Form17.Show;
  Self.Hide;
end;

procedure TForm13.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(TForm18, Form18);
  Form18.Show;
  Self.Hide;
end;

procedure TForm13.SpeedButton3Click(Sender: TObject);
begin
Application.CreateForm(TForm19, Form19);
  Form19.Show;
  Self.Hide;
end;

procedure TForm13.SpeedButton4Click(Sender: TObject);
begin
Application.CreateForm(TForm20, Form20);
  Form20.Show;
  Self.Hide;
end;

procedure TForm13.SpeedButton5Click(Sender: TObject);
begin
Application.CreateForm(TForm12, Form12);
  Form12.Show;
  Self.Hide;
end;

procedure TForm13.SpeedButton6Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

end.
