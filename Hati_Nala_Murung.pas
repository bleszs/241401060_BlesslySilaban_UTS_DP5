program Nala_Kemurungan_Hatinya;
uses crt;

var 
    n, i, hargaMinuman, uangnala: integer;
    bisaDibeli: integer;
    ulang: char;

begin 
    clrscr;

    repeat
        write('Masukkan jumlah minuman yang tersedia: '); 
        readln(n);
    until (n > 0);

    repeat
        repeat
            write('Masukkan uang yang Anda miliki: '); 
            readln(uangnala);
        until (uangnala >= 0);

        bisaDibeli := 0;

        writeln; 
        for i := 1 to n do
        begin
            write('Masukkan harga minuman ke-', i, ': '); 
            readln(hargaMinuman);

            if (uangnala >= hargaMinuman) then
            begin
                bisaDibeli := bisaDibeli + 1;
                writeln('Minuman yang bisa dibeli Nala:');
                writeln('Minuman ke-', i, ': Rp', hargaMinuman); 
            end;
        end;

        if (bisaDibeli = 0) then
        begin
            writeln('Maaf, uang tidak cukup untuk membeli minuman apapun.');
            write('Apakah Anda ingin memasukkan ulang jumlah uang? (Y/T): '); 
            readln(ulang);
            if (ulang = 'Y') then
            begin
            end
            else
            begin
                writeln('Terima kasih Nala-chan.'); 
                break; 
            end;
        end;

    until (bisaDibeli > 0); 

    if (bisaDibeli > 0) then
    begin
        writeln('Terima kasih Nala-chan.');
    end;
end.
