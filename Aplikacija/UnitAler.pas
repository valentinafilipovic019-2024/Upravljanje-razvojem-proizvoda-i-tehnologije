unit UnitAler;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons;

type
  TForm15 = class(TForm)
    Image1: TImage;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
  public
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses
  Unit12, UnitGlMeni;

procedure TForm15.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if (Components[i] is TSpeedButton) and (TSpeedButton(Components[i]).Left < 100) then
    begin
      Break;
    end;
  end;
end;

procedure TForm15.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TForm12, Form12);
  Form12.Show;
  Self.Hide;
end;

procedure TForm15.SpeedButton2Click(Sender: TObject);
begin
  Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

end.
