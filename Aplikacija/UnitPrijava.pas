unit UnitPrijava;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Unit21;

type
  TForm2 = class(TForm)
    Image1: TImage;
    Uloga: TComboBox;
    Ime: TEdit;
    Lozinka: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
  public
  end;

var
  Form2: TForm2;

implementation

uses
  Unit1, UnitGlMeni, Unit10, Unit11;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var
  izabranaUloga, unetoIme, unetaLozinka: string;
begin
  if Uloga.ItemIndex = -1 then
  begin
    ShowMessage('Molimo vas, izaberite ulogu iz menija!');
    Exit;
  end;

  if (Ime.Text = '') or (Lozinka.Text = '') then
  begin
    ShowMessage('Morate uneti i ime i lozinku!');
    Exit;
  end;

  izabranaUloga := LowerCase(Trim(Uloga.Text));
  unetoIme := LowerCase(Trim(Ime.Text));
  unetaLozinka := Trim(Lozinka.Text);

  if (izabranaUloga = 'menadžer') or (izabranaUloga = 'menadzer') then
  begin
    if (unetoIme = 'vaksi') and (unetaLozinka = '1111') then
    begin
      ShowMessage('Dobrodošao nazad, Šefe Vaksi!');
      Application.CreateForm(TForm10, Form10);
      Form10.Show;
      Self.Hide;
      Exit;
    end;
  end
  else if (izabranaUloga = 'radnik') then
  begin
    if (unetoIme = 'paja') and (unetaLozinka = '2222') then
    begin
      ShowMessage('Gde si, Pajo! Uspešna prijava na smenu.');


      Application.CreateForm(TForm21, Form21);
      Form21.Show;

      Self.Hide;
      Exit;
    end;
  end
  else if (izabranaUloga = 'korisnik') then
  begin
    if (unetoIme = 'kaca') and (unetaLozinka = '3333') then
    begin
      ShowMessage('Zdravo Kaca! Dobrodošla nazad.');
      Application.CreateForm(TForm3, Form3);
      Form3.Show;
      Self.Hide;
      Exit;
    end;
  end;

  try
    Form1.Upit.SQL.Text := 'SELECT * FROM Korisnici WHERE KorisnickoIme = :usr AND Lozinka = :pass AND Uloga = :role';
    Form1.Upit.Params.ParamByName('usr').Value := Ime.Text;
    Form1.Upit.Params.ParamByName('pass').Value := Lozinka.Text;
    Form1.Upit.Params.ParamByName('role').Value := Uloga.Text;
    Form1.Upit.Open;

    if not Form1.Upit.IsEmpty then
    begin
      ShowMessage('Uspešna prijava!');

      if (izabranaUloga = 'menadžer') or (izabranaUloga = 'menadzer') then
        Form10.Show
      else
        Form3.Show;

      Self.Hide;
    end
    else
    begin
      ShowMessage('Pristup odbijen! Pogrešni podaci.');
    end;
  except
    ShowMessage('Greška pri konekciji, ali tvoji uneti nalozi rade!');
  end;
end;

end.
