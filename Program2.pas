
//���� ���. � ������ ���� �������� ��� ���� (�����, �����������, ...), ��������, ����, ��� ������. ������������ ����� �� �������� � ����

uses
  crt;
const n=10;

type
  tvin = record
    
    typew: string;
    name: string;
    color: string;
    year: integer;
  end;

var
  a: array [0..n] of tvin;
  v: tvin;
  b: string;



procedure menu; forward;

procedure add;
begin
  writeln;
  writeln('������� ��� ����(�����,�����������, �������)');
  readln(v.typew);
  writeln('������� �������� ����');
  readln(v.name);
  writeln('������� ���� ����');
  readln(v.color);
  writeln('������� ��� ������');
  readln(v.year);
  writeln('��� ����', '   ', v.typew);
  writeln('�������� ����', '   ', v.name);
  writeln('���� ����', '   ', v.color);
  writeln('��� ������', '   ', v.year);
  sleep(200);
  writeln;
  menu;
end;

procedure search;
begin
  writeln('������� �������� ����');
  readln(b);
  with b do 
  begin
    if b = v.name then begin
      writeln('��� ����', '   ', v.typew);
      writeln('�������� ����', '   ', v.name);
      writeln('���� ����', '   ', v.color);
      writeln('��� ������', '   ', v.year);
    end
    else  writeln('��� ������ ���� � ���� ������');
  end;
  writeln;
  menu;
end;

procedure menu;//��������� ����
var
  x: integer;
begin
  writeln('1-add');
  writeln('2-exit');
  writeln('3-search');
  readln(x);
  case x of
    1: add;
    2: exit;
    3: search;
  end;
end;

begin//�������� ���������
  menu;
end.