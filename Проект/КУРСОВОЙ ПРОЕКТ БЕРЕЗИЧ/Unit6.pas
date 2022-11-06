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
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
//���� ������ ������� ������ � �� ��������� ����� �����
if (RadioGroup2.ItemIndex>-1) and (not Eof(f)) then begin
if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1; //���� ��������� ������� �������������
RadioGroup2.Items.Clear; //������ ������� ������ �� ���� ������������
Repeat //� ��������� ���� ��� ���������� �������
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
Label1.Caption:=('��������� ������: ' +s);
until (s[1]='-') or (Eof(f));
end
//���� ����� ����� ���������, ������ ������� �����������
Else if Eof(f) then begin
delete(s,1,1);
Nvern:=StrToInt(s);
if RadioGroup2.ItemIndex = Nvern-1 then ball:=ball+1;
Label1.Caption:=IntToStr(ball);
Label2.Visible:=True; //����� ���������� ������
CloseFile(f);
Image1.Enabled:=False; //������ ���������� ����������� � ���������� �������
end;
end;

procedure TForm6.Image3Click(Sender: TObject);
begin
form6.close;
form2.show;
if form4.checkbox1.checked then //��������������� ����� ������� ���� � ���������� ����� �������
begin
  SndPlaySound('������� ������.wav', SND_ASYNC);
end;
end;

procedure TForm6.RadioGroup1Click(Sender: TObject);
begin
RadioGroup1.Enabled:=false; //����� �������� ���������� ����������
RadioGroup2.Enabled:=true; //��������� ���������� ���� � ��������
Image1.Enabled:=true; //������ �����
case RadioGroup1.ItemIndex of //� ����������� �� ���������� �������� ���������� f
0: AssignFile( f ,'�������1.txt', CP_UTF8);//����������� � ������� �������
1: AssignFile( f ,'�������2.txt', CP_UTF8);
end;
reset(f); //��������� ���� ��� ������
readln(f,s); //��������� ������ ������ �� �����
ball:=0; //���������� ���������� ������ 0
repeat
if (s[1]='-') then begin //���� ������ ������ ������ �-� ������ ��� ������
delete(s,1,1);
RadioGroup2.Caption:=s;
end
else if s[1]='*' then
 begin //���� ���� ������ �*� ������ ��� ����� ������� ������
delete(s,1,1);
Nvern:=StrToInt(s);
end
else RadioGroup2.Items.Add(s); //����� ��� ������� ������
readln(f,s); //��������� ��������� ������ �� �����
until (s[1]='-') or (Eof(f)); //���������� � ����������� ��������� ������� � RadiGroup �� ��� ���

// ���� �� ��������� ��������� ������ ��� ����� �����
end;


end.
