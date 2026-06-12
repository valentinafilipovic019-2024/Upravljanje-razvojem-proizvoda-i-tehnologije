unit UnitDok;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Buttons;

type
  TForm20 = class(TForm)
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
  public
  end;

var
  Form20: TForm20;

implementation

{$R *.dfm}

uses
  Unit13, UnitGlMeni;

procedure TForm20.SpeedButton1Click(Sender: TObject);
begin
  Form13.Show;
  Self.Hide;
end;

procedure TForm20.SpeedButton2Click(Sender: TObject);
begin
  Form13.Show;
  Self.Hide;
end;

procedure TForm20.SpeedButton3Click(Sender: TObject);
begin
  Form13.Show;
  Self.Hide;
end;

end.
