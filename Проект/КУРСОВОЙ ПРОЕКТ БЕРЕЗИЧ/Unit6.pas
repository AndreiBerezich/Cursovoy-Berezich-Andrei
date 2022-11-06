unit Unit6;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Imaging.jpeg,mmsystem;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    Image1: TImage;
    Image2: TImage;
    Label2: TLabel;
    Image3: TImage;
    procedure Image1Click(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  f: text;
  s: string;
  Nvern, ball: integer;

implementation

{$R *.dfm}

uses Unit4, Unit2;

procedure TForm6.Image1Click(Sender: TObject);
begin
if form4.checkbox1.checked then //воспроизведение звука нажатия если в настройках стоит галочка
begin
  SndPlaySound('нажатие кнопки.wav', SND_ASYNC);
end;
//Если выбран вариант ответа и не достигнут конец файла
if (RadioGroup2.ItemIndex>-1) and (not Eof(f)) then begin
if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1; //Если выбранный вариант соответствует
RadioGroup2.Items.Clear; //номеру верного ответа то балл прибавляется
Repeat //и очищается поле для следующего вопроса
if (s[1]='-') then begin
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then begin
delete(s,1,1);
Nvern:=StrToInt(s);
end
else RadioGroup2.Items.Add(s);
readln(f,s);
Label1.Caption:=('Следующий вопрос: ' +s);
until (s[1]='-') or (Eof(f));
end
//Если конец файла достигнут, значит вопросы закончились
Else if Eof(f) then begin
delete(s,1,1);
Nvern:=StrToInt(s);
if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1;
Label1.Caption:=IntToStr(ball);
Label2.Visible:=True; //Вывод количества баллов
CloseFile(f);
Image1.Enabled:=False; //кнопка становится недоступной в завершении проекта
end;
end;

procedure TForm6.Image3Click(Sender: TObject);
begin
form6.close;
form2.show;
if form4.checkbox1.checked then //воспроизведение звука нажатия если в настройках стоит галочка
begin
  SndPlaySound('нажатие кнопки.wav', SND_ASYNC);
end;
end;

procedure TForm6.RadioGroup1Click(Sender: TObject);
begin
RadioGroup1.Enabled:=false; //Выбор варианта становится недоступен
RadioGroup2.Enabled:=true; //Доступным становится поле с вопросом
Image1.Enabled:=true; //Кнопка Далее
case RadioGroup1.ItemIndex of //В зависимости от выбранного варианта переменная f
0: AssignFile( f ,'вариант1.txt', CP_UTF8);//связывается с разными файлами
1: AssignFile( f ,'вариант2.txt', CP_UTF8);
end;
reset(f); //Открываем файл для чтения
readln(f,s); //Считываем первую строку из файла
ball:=0; //изначально количество баллов 0
repeat
if (s[1]='-') then begin //Если первый символ строки ‘-‘ значит это вопрос
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then
 begin //Если перв символ ‘*’ значит это номер верного ответа
delete(s,1,1);
Nvern:=StrToInt(s);
end
else RadioGroup2.Items.Add(s); //Иначе это вариант ответа
readln(f,s); //Считываем следующую строку из файла
until (s[1]='-') or (Eof(f)); //Считывание и отправление вариантов ответов в RadiGroup до тех пор

// пока не достигнут следующий вопрос или конец файла
end;


end.
