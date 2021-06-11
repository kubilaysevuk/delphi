unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  saniye:integer;
  litre:double;
  sonuc:double;
  fiyat:double;
  fatura:double;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

procedure TForm1.Button1Click(Sender: TObject);
begin
Timer1.Enabled:=True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Timer1.Enabled:=False;
ShowMessage ( FloatToStr(sonuc) + ' Litre Su Harcadınız.');
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Label4.Text := '20 Derece';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 Label4.Text := '30 Derece';
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 Label4.Text := '40 Derece';
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
//Bir muslugun saniyede 0.23 litre su harcadıgı kabul edilmiştir.
//Suyun metrekup fiyati 5₺ olarak hesaplanmistir
litre:=0.23;
fiyat:=0.005;
saniye:= saniye+1;
sonuc:= litre*saniye;
fatura:= sonuc*fiyat;

  Label1.Text:= FloatToStr(sonuc) + ' LİTRE ' ;
  Label2.Text:= IntToStr (Saniye) + ' Saniye ' ;
  Label3.Text:= FloatToStr (fatura) + ' TL  ' ;
end;

end.
