unit UnitKal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm16 = class(TForm)
    Image1: TImage;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
  public
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses
  UnitGlMeni, Unit12;

procedure TForm16.FormCreate(Sender: TObject);
begin
  Button1.OnClick := Button1Click;
end;

procedure TForm16.Button1Click(Sender: TObject);
var
  broj1, broj2, rezultat: Double;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') then
  begin
    ShowMessage('Unesite oba iznosa!');
    Exit;
  end;

  try
    broj1 := StrToFloat(Edit1.Text);
    broj2 := StrToFloat(Edit2.Text);

    rezultat := broj2 - broj1;

    ShowMessage('Zarada iznosi: ' + FloatToStr(rezultat) + ' RSD');
  except
    on E: EConvertError do
      ShowMessage('Unesite ispravne brojeve!');
  end;
end;

procedure TForm16.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(TForm12, Form12);
  Form12.Show;
  Self.Hide;
end;

procedure TForm16.SpeedButton1Click(Sender: TObject);
begin
Application.CreateForm(TForm3, Form3);
  Form3.Show;
  Self.Hide;
end;

procedure TForm16.SpeedButton3Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
end;

end.
