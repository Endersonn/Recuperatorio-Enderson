program RecupetarioEnderson1;
uses crt;
var
opcion:integer;

begin
repeat
  writeln('|------------------------------------|');
  Writeln('|                                    |');
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
