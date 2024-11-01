program KasirNomor1;
uses crt;

var
    nama, pesan, hari, kode : string;
    member : boolean;
    jumlah, jumlahbarang, poin, i : integer;
    hargaawal, totalharga, hargaakhir, total_sebelum_diskon : real;

begin
    clrscr;
    jumlahbarang := 0;
    hargaakhir := 0;
    total_sebelum_diskon := 0;

    writeln('Selamat datang di Supermarket AHY!');
    writeln('Daftar Produk:');
    writeln('1. Sabun (Rp7000)');
    writeln('2. Pasta Gigi (Rp16000)');
    writeln('3. Es Krim (Rp20000)');
    writeln('4. Nugget (Rp25000)');
    writeln('5. TV Second (Rp150000)');
    writeln('6. Kipas Portabel (Rp50000)');
    writeln('7. Susu Kedelai (Rp12000)');
    writeln('8. Yogurt (Rp10000)');

    write('Nama Anda (- jika anda bukan member): '); readln(nama);
    member := nama <> '-';
    write('Hari: '); readln(hari);
    write('Apakah ingin memesan? (Iya/Tidak): '); readln(pesan);

    if (pesan = 'Tidak') or (pesan = 'tidak') then
        halt;

    for i := 1 to 10 do
    begin
        if (pesan = 'Iya') or (pesan = 'iya') then
        begin
            write('Pilih kode produk (1-8): '); readln(kode);

            if (kode = '1') then
                hargaawal := 7000
            else if (kode = '2') then
                hargaawal := 16000
            else if (kode = '3') then
                hargaawal := 20000
            else if (kode = '4') then
                hargaawal := 40000
            else if (kode = '5') then
                hargaawal := 15000
            else if (kode = '6') then
                hargaawal := 30000
            else if (kode = '7') then
                hargaawal := 15000
            else if (kode = '8') then
                hargaawal := 20000
            else
            begin
                writeln('Kode tidak valid');
                write('Pesan lagi? (Iya/Tidak): '); readln(pesan);
            end;

            write('Jumlah yang ingin dibeli: '); readln(jumlah);
            jumlahbarang := jumlahbarang + jumlah;
            totalharga := hargaawal * jumlah;
            total_sebelum_diskon := total_sebelum_diskon + totalharga;
            hargaakhir := hargaakhir + totalharga;

            write('Pesan lagi? (Iya/Tidak): '); readln(pesan);
        end
        else
            pesan := 'Tidak';
    end;

    writeln('Total sebelum diskon: Rp', total_sebelum_diskon:0:0);

    if member then
    begin
        writeln('Anda adalah member, diskon 10%');
        hargaakhir := hargaakhir * 0.9;
    end;

    if jumlahbarang >= 10 then
    begin
        writeln('Diskon tambahan 5% karena pembelian >= 10 barang');
        hargaakhir := hargaakhir * 0.95;
    end;

    writeln('Total setelah diskon: Rp', hargaakhir:0:0);

    poin := trunc(hargaakhir) div 50000;
    writeln('Poin yang diperoleh: ', poin);
    if poin >= 50 then
        writeln('Anda mendapat voucher diskon 20%');

end.
