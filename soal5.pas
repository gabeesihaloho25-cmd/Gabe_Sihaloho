program deretbilangan;                        

var
  n : integer;           // n = jumlah suku yang ditampilkan
                         

function SukuA(k : integer) : longint;         // deret a: 1,1,2,3,5,8,...
begin

  if k <= 2 then                               // suku ke-1 dan ke-2 bernilai 1
    SukuA := 1
  else                                         // suku lain = jumlah 2 suku sebelumnya
    SukuA := SukuA(k - 1) + SukuA(k - 2);      // fungsi memanggil dirinya sendiri
end;

function SukuB(k : integer) : longint;         // deret b: 1,2,4,8,16,...
var
  hasil, j : longint;
begin
  hasil := 1;                                  // suku pertama = 1
  for j := 2 to k do
    hasil := hasil * 2;                        // tiap suku = 2 x suku sebelumnya
  SukuB := hasil;                              // kembalikan hasil
end;

function SukuC(k : integer) : longint;         // deret c: 1,4,9,16,25,...
begin
  SukuC := k * k;                              // kuadrat dari urutan suku
end;

function SukuD(k : integer) : longint;         // deret d: 2,6,12,20,30,...
begin
  SukuD := k * (k + 1);                        // 1x2, 2x3, 3x4, ...
end;

procedure TampilA(jumlah : integer);           // jumlah = banyak suku yang dicetak
var
  i : integer;
begin
  for i := 1 to jumlah do
  begin
    write(SukuA(i));                           // panggil function SukuA
    if i < jumlah then write(', ');            // koma hanya di antara suku
  end;
  writeln;                                     // pindah baris
end;

procedure TampilB(jumlah : integer);
var
  i : integer;
begin
  for i := 1 to jumlah do
  begin
    write(SukuB(i));                           // panggil function SukuB
    if i < jumlah then write(', ');
  end;
  writeln;
end;

procedure TampilC(jumlah : integer);
var
  i : integer;
begin
  for i := 1 to jumlah do
  begin
    write(SukuC(i));                           // panggil function SukuC
    if i < jumlah then write(', ');
  end;
  writeln;
end;

procedure TampilD(jumlah : integer);
var
  i : integer;
begin
  for i := 1 to jumlah do
  begin
    write(SukuD(i));                           // panggil function SukuD
    if i < jumlah then write(', ');
  end;
  writeln;
end;

begin
  write('Input : ');
  readln(n);                                   // baca jumlah suku dari pengguna
  writeln;

  write('a. '); TampilA(n);                    // panggil procedure deret a
  write('b. '); TampilB(n);                    // panggil procedure deret b
  write('c. '); TampilC(n);                    // panggil procedure deret c
  write('d. '); TampilD(n);                    // panggil procedure deret d

  readln;                                     
end.
