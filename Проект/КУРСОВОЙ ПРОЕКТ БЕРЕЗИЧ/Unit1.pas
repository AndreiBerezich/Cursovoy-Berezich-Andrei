unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.MPlayer, Vcl.Imaging.jpeg,
  Vcl.Samples.Gauges;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Timer1: TTimer;
    MediaPlayer1: TMediaPlayer;
    Gauge1: TGauge;
    Image1: TImage;
    Label5: TLabel;
    procedure Timer1Timer(Sender: TObject);
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

uses Unit2, Unit3;

procedure TForm1.FormCreate(Sender: TObject); //при создании формы воспроизводится аудио
begin
MediaPlayer1.filename:='loadmenu.wav';
MediaPlayer1.Open;
MediaPlayer1.Play;

end;

procedure TForm1.Timer1Timer(Sender: TObject); //таймер для установки времени полосы загрузки
begin
gauge1.progress:= gauge1.progress+1;
label4.caption:='Загрузка элементов программы, подождите...' + inttostr(gauge1.progress);
if gauge1.progress=100 then
begin
  Timer1.enabled:=false;
  Form2.ShowModal;
  Form1.close;
end;
end;

end.
