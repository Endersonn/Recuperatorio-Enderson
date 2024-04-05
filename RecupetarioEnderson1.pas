program RecupetarioEnderson1;
uses crt;
var
opcion:integer;

Procedure  Conversion_Binario;
var
  Frase_A_Convertir:string;
  Binario:string;
  Letra:char;
  i, j,CODIGOASCCI:integer;
  
begin 
clrscr;
writeln('INGRESA TU FRASE PARA CONVERTIRLA A BINARIO ');
write('---> '); readln(Frase_A_Convertir);

  for i := 1 to length(Frase_A_Convertir) do 
  begin
    Letra := Frase_A_Convertir[i];
    CODIGOASCCI := ord(Letra);
    binario := '';
    while CODIGOASCCI > 0 do 
    begin
    if (CODIGOASCCI mod 2) = 0 then
    Binario := '0' + Binario
    else
    binario := '1' + Binario;
    CODIGOASCCI := CODIGOASCCI div 2;
    end;
    for j := 1 to (8 - length(Binario)) do
      write('0');
    write(Binario, ' '); 
end;
end; 

begin
repeat
  writeln('|------------------------------------|');
  writeln('|       CONVERSION DE FRASES         |');     
  writeln('|------------------------------------|');
  Writeln('|              OPCIONES              |');
  writeln('|------------------------------------|');
  writeln('|(1) Transformar a Binario           |');
  writeln('|(2) Transformar a Hexadecimal       |');
  writeln('|(3) Transformar a Octal             |');
  writeln('|(3) Transformar a Romano            |');
  writeln('|------------------------------------|');
  writeln('|(4) Mostrar Frases Binarias         |');
  writeln('|(5) Mostrar Frases Hexadecimales    |');
  writeln('|(6) Mostrar Frases Octales          |');
  writeln('|(7) Mostrar Frases Romanas          |');
  writeln('|------------------------------------|');
  writeln('|(8) SALIR                           |');
  writeln('|------------------------------------|');
    write('|---> ');readln(opcion);
  

  While (opcion <> 1) and (opcion <> 2) and (opcion <> 3) and (opcion <> 4) 
  and (opcion <> 5) and (opcion <> 6) and (opcion <> 7) and (opcion <> 8) do 
  begin
    write('Opcion incorrecta por favor ingresa una opcion en pantalla: '); readln(opcion);  
  end;

  case opcion of
    1: begin 
    Conversion_Binario;
    end;

    2: begin 

    end;

    3: begin 

    end;

    4: begin 

    end;

    5: begin 

    end;
  

    6: begin 
     
    end; 
    
     7: begin 
     
    end; 
    
     8: begin 
     
    end; 
    
  end; 

until opcion = 8; 
end.
