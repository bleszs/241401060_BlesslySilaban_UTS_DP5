program deret_fibonacci;
uses crt;

var 
    a, i: integer;
    f1, f2, fnext, total: longint;

begin 
    clrscr;

    write('Masukkan nilai N: '); readln(a);

    f1 := 0;
    f2 := 1;
    total := f1 + f2;

    write('Sequence nya adalah = ', f1, ', ', f2);

    for i := 3 to a do 
    begin
        fnext := f1 + f2;
        write(', ', fnext);
        
        total := total + fnext;

        f1 := f2;
        f2 := fnext;
    end;

    writeln;
    writeln('Total = ', total);
end.
