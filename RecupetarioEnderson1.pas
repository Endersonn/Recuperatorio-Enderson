program RecupetarioEnderson1;
uses crt;
var
opcion:integer;
opcion2: string;


Procedure Conversion_Binario_Y_Guardar;
var
  Frase_A_Convertir, Binario: string;
  Letra: char;
  i,j,CODIGOASCCI: integer;
  Archivo: text;

begin 
  clrscr;
  writeln('INGRESA TU FRASE PARA CONVERTIRLA A BINARIO ');
  write('---> '); readln(Frase_A_Convertir);

  assign(Archivo, 'frases_binarias.txt');
  
  // Verificamos si el archivo existe, si no existe lo creamos
  {$I-}
  reset(Archivo);
  {$I+}
  
  if IOResult <> 0 then
    rewrite(Archivo)
  else
    append(Archivo);

  // Guardamos la frase original en el archivo
  
  writeln(Archivo,'Frase: ', Frase_A_Convertir);


   for i := 1 to length(Frase_A_Convertir) do 
  begin
    Letra := Frase_A_Convertir[i];
    CODIGOASCCI := ord(Letra);
    Binario := '';
    while CODIGOASCCI > 0 do 
    begin
      if (CODIGOASCCI mod 2) = 0 then
        Binario := '0' + Binario
      else
        Binario := '1' + Binario;
      CODIGOASCCI := CODIGOASCCI div 2;
    end;
    for j := 1 to (8 - length(Binario)) do
      write('0');
    write(Binario, ' '); 
    write(Archivo,Binario,' '); 
	end;
	writeln(Archivo);
  close(Archivo);
end;




Procedure Conversion_Hexadecimal_Y_Guardar;
var
  Frase_A_Convertir, Hexadecimal: string;
  Letra: char;
  i, j, CODIGOASCCI: integer;
  Archivo: text;

begin 
  clrscr;
  writeln('INGRESA TU FRASE PARA CONVERTIRLA A HEXADECIMAL ');
  write('---> '); readln(Frase_A_Convertir);

  assign(Archivo, 'frases_hexadecimales.txt');

  // Verificamos si el archivo existe, si no existe lo creamos
  {$I-}
  reset(Archivo);
  {$I+}
  
  if IOResult <> 0 then
    rewrite(Archivo)
  else
    append(Archivo);

  // Guardamos la frase original en el archivo
  writeln(Archivo, 'Frase: ', Frase_A_Convertir);

  // Convertimos la frase a hexadecimal y la guardamos en el archivo
 for i := 1 to length(Frase_A_Convertir) do 
    begin
    letra := Frase_A_Convertir[i];
    CODIGOASCCI := ord(letra);
    Hexadecimal := '';
    
    while CODIGOASCCI > 0 do begin
    if (CODIGOASCCI mod 16) < 10 then
    Hexadecimal := chr((CODIGOASCCI mod 16) + 48) + Hexadecimal
    else
    Hexadecimal := chr((CODIGOASCCI mod 16) + 55) + Hexadecimal;
      
    CODIGOASCCI := CODIGOASCCI div 16;
    end;
    
    for j := 1 to (2 - length(Hexadecimal)) do
    write('0');
    
    write(Hexadecimal, ' ');

  // Guardamos la frase en hexadecimal en el archivo
  write(Archivo, Hexadecimal,' '); 
end;
writeln(Archivo);
  close(Archivo);
end;


Procedure Conversion_Octal_Y_Guardar;
var
  Frase_A_Convertir, Octal: string;
  Letra: char;
  i, j, CODIGOASCCI: integer;
  Archivo: text;

begin 
  clrscr;
  writeln('INGRESA TU FRASE PARA CONVERTIRLA A OCTAL ');
  write('---> '); readln(Frase_A_Convertir);

  assign(Archivo, 'frases_octales.txt');
  
  // Verificamos si el archivo existe, si no existe lo creamos
  {$I-}
  reset(Archivo);
  {$I+}
  
  if IOResult <> 0 then
    rewrite(Archivo)
  else
    append(Archivo);

  // Guardamos la frase original en el archivo
  writeln(Archivo, 'Frase: ', Frase_A_Convertir);

  // Convertimos la frase a octal y la guardamos en el archivo
  for i := 1 to length(Frase_A_Convertir) do 
  begin
    letra := Frase_A_Convertir[i];
    CODIGOASCCI := ord(letra);
    Octal := '';
    
    while CODIGOASCCI > 0 do 
    begin
      Octal := chr((CODIGOASCCI mod 8) + 48) + Octal;
      CODIGOASCCI := CODIGOASCCI div 8;
    end;
    

    for j := 1 to (3 - length(Octal)) do
      write('0');
      write(Octal, ' ');
      
    
    write(Archivo, Octal, ' '); 
  end;
  
  
  writeln(Archivo); 
  

  close(Archivo);
end;





procedure Conversion_Romano_Y_Guardar; 
var
  Frase_A_Convertir, Romano: string;
  Letra: char;
  i: integer;
  CODIGOASCCI: integer;
  Archivo: text;
begin 
  clrscr;
  writeln('INGRESA TU FRASE PARA CONVERTIRLA A ROMANO ');
  write('---> '); readln(Frase_A_Convertir);
  
  assign(Archivo, 'frases_romanas.txt');
  
  // Verificar si el archivo existe, si no, crearlo
  {$I-}
  reset(Archivo);
  {$I+}
  
  if IOResult <> 0 then
    rewrite(Archivo)
  else
    append(Archivo);

  
  writeln(Archivo, 'Frase: ', Frase_A_Convertir);

 
  for i := 1 to length(Frase_A_Convertir) do 
  begin
    letra := Frase_A_Convertir[i];
    CODIGOASCCI := ord(letra);
    Romano := '';
    
    while CODIGOASCCI >= 1000 do begin
      Romano := Romano + 'M';
      CODIGOASCCI := CODIGOASCCI - 1000;
    end;
    
    if CODIGOASCCI >= 900 then begin
      Romano := Romano + 'CM';
      CODIGOASCCI := CODIGOASCCI - 900;
    end
    else if CODIGOASCCI >= 500 then begin
      Romano := Romano + 'D';
      CODIGOASCCI := CODIGOASCCI - 500;
    end;
    
    while CODIGOASCCI >= 100 do begin
      Romano := Romano + 'C';
      CODIGOASCCI := CODIGOASCCI - 100;
    end;
    
    if CODIGOASCCI >= 90 then begin
      Romano := Romano + 'XC';
      CODIGOASCCI := CODIGOASCCI - 90;
    end
    else if CODIGOASCCI >= 50 then begin
      Romano := Romano + 'L';
      CODIGOASCCI := CODIGOASCCI - 50;
    end;
    
    while CODIGOASCCI >= 10 do begin
      Romano := Romano + 'X';
      CODIGOASCCI := CODIGOASCCI - 10;
    end;
    
    if CODIGOASCCI >= 9 then begin
      Romano := Romano + 'IX';
      CODIGOASCCI := CODIGOASCCI - 9;
    end
    else if CODIGOASCCI >= 5 then begin
      Romano := Romano + 'V';
      CODIGOASCCI := CODIGOASCCI - 5;
    end;
    
    while CODIGOASCCI >= 1 do begin
      Romano := Romano + 'I';
      CODIGOASCCI := CODIGOASCCI - 1;
    end;
    write(Romano, ' ');
    write(Archivo,Romano,' ');
  end; 
	writeln(Archivo); 
  

  // Cerrar el archivo
  close(Archivo);

end;





begin
repeat
clrscr;
  writeln('|------------------------------------|');
  writeln('|       CONVERSION DE FRASES         |');     
  writeln('|------------------------------------|');
  Writeln('|              OPCIONES              |');
  writeln('|------------------------------------|');
  writeln('|(1) Transformar a Binario           |');
  writeln('|(2) Transformar a Hexadecimal       |');
  writeln('|(3) Transformar a Octal             |');
  writeln('|(4) Transformar a Romano            |');
  writeln('|------------------------------------|');
  writeln('|(5) Mostrar Frases Binarias         |');
  writeln('|(6) Mostrar Frases Hexadecimales    |');
  writeln('|(7) Mostrar Frases Octales          |');
  writeln('|(8) Mostrar Frases Romanas          |');
  writeln('|------------------------------------|');
    write('|---> ');readln(opcion);
  
  While (opcion <> 1) and (opcion <> 2) and (opcion <> 3) and (opcion <> 4) 
  and (opcion <> 5) and (opcion <> 6) and (opcion <> 7) and (opcion <> 8) do 
  begin
    write('Opcion incorrecta por favor ingresa una opcion en pantalla: '); readln(opcion);  
  end;

  case opcion of
    1: begin 
    Conversion_Binario_Y_Guardar;
    end;

    2: begin 
    Conversion_Hexadecimal_Y_Guardar;
    end;

    3: begin 
    Conversion_Octal_Y_Guardar;
    end;

    4: begin
    Conversion_Romano_Y_Guardar; 
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
  
	writeln;
	Writeln('Quieres volver a convertir otra frase? (Si/No)'); 
	write('---> '); Readln(opcion2);
	until (opcion2 = 'No') or (opcion2 = 'NO') or (opcion2 = 'no');	  
	
end.
