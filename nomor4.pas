program Koko_Punya_Toko;
uses crt;

var
    jumlah, sisa: longint;
begin
    clrscr;
    jumlah := 0; 

    write('Masukkan Total kembalian : Rp ');
    readln(sisa);

    writeln('Rincian kembalian:');

    if sisa >= 100000 then
    begin
        writeln('Rp100000 : ', sisa div 100000, ' lembar');
        jumlah := jumlah + (sisa div 100000);
        sisa := sisa mod 100000;
    end;
    if sisa >= 75000 then
    begin
        writeln('Rp75000 : ', sisa div 75000, ' lembar');
        jumlah := jumlah + (sisa div 75000);
        sisa := sisa mod 75000;
    end;
    if sisa >= 50000 then
    begin
        writeln('Rp50000 : ', sisa div 50000, ' lembar');
        jumlah := jumlah + (sisa div 50000);
        sisa := sisa mod 50000;
    end;
    if sisa >= 20000 then
    begin
        writeln('Rp20000 : ', sisa div 20000, ' lembar');
        jumlah := jumlah + (sisa div 20000);
        sisa := sisa mod 20000;
    end;
    if sisa >= 10000 then
    begin
        writeln('Rp10000 : ', sisa div 10000, ' lembar');
        jumlah := jumlah + (sisa div 10000);
        sisa := sisa mod 10000;
    end;
    if sisa >= 5000 then
    begin
        writeln('Rp5000 : ', sisa div 5000, ' lembar');
        jumlah := jumlah + (sisa div 5000);
        sisa := sisa mod 5000;
    end;
    if sisa >= 2000 then
    begin
        writeln('Rp2000 : ', sisa div 2000, ' lembar');
        jumlah := jumlah + (sisa div 2000);
        sisa := sisa mod 2000;
    end;
    if sisa >= 1000 then
    begin
        writeln('Rp1000 : ', sisa div 1000, ' lembar');
        jumlah := jumlah + (sisa div 1000);
        sisa := sisa mod 1000;
    end;
    if sisa >= 500 then
    begin
        writeln('Rp500 : ', sisa div 500, ' lembar');
        jumlah := jumlah + (sisa div 500);
        sisa := sisa mod 500;
    end;
    if sisa >= 200 then
    begin
        writeln('Rp200 : ', sisa div 200, ' lembar');
        jumlah := jumlah + (sisa div 200);
        sisa := sisa mod 200;
    end;
    if sisa >= 100 then
    begin
        writeln('Rp100 : ', sisa div 100, ' lembar');
        jumlah := jumlah + (sisa div 100);
        sisa := sisa mod 100;
    end;

    if jumlah > 0 then
        writeln('Total jumlah kembalian yang diberikan: ', jumlah, ' lembar/koin')
    else
        writeln('Tidak ada kembalian');
    
end.
