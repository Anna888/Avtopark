
//База вин. О каждом вине хранится тип вина (сухое, полусладкое, ...), название, цвет, год урожая. Организовать поиск по названию и типу

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
  writeln('Введите тип вина(сухое,полусладкое, сладкое)');
  readln(v.typew);
  writeln('Введите название вина');
  readln(v.name);
  writeln('Введите цвет вина');
  readln(v.color);
  writeln('Введите год урожая');
  readln(v.year);
  writeln('Тип вина', '   ', v.typew);
  writeln('Название вина', '   ', v.name);
  writeln('Цвет вина', '   ', v.color);
  writeln('Год урожая', '   ', v.year);
  sleep(200);
  writeln;
  menu;
end;

procedure search;
begin
  writeln('Введите название вина');
  readln(b);
  with b do 
  begin
    if b = v.name then begin
      writeln('Тип вина', '   ', v.typew);
      writeln('Название вина', '   ', v.name);
      writeln('Цвет вина', '   ', v.color);
      writeln('Год урожая', '   ', v.year);
    end
    else  writeln('нет такого вина в базе данных');
  end;
  writeln;
  menu;
end;

procedure menu;//процедура меню
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

begin//основная программа
  menu;
end.