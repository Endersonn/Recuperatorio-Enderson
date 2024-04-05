program RegistroDeReportes;

uses
  SysUtils, crt;

type
  Reporte = record
    ID: integer;
    Titulo: string;
    Categoria: string;
    Contenido: string;
    Fecha: string;
    Status: string;
  end;

procedure CrearReporte;
var
  NuevoReporte: Reporte;
  Archivo: Text;
begin
  Assign(Archivo, 'reportes.txt');
  {$I-}
  reset(Archivo);
  {$I+}
 
  if IOResult <> 0 then
    rewrite(Archivo)
  else
    append(Archivo);
     clrscr;
  // Solicitar los datos del nuevo reporte al usuario
  writeln('Ingrese los datos del nuevo reporte:');
  write('ID: '); readln(NuevoReporte.ID);
  write('Titulo: '); readln(NuevoReporte.Titulo);
  write('Categoria: '); readln(NuevoReporte.Categoria);
  write('Contenido: '); readln(NuevoReporte.Contenido);
  write('Fecha: '); readln(NuevoReporte.Fecha);
  NuevoReporte.Status :=  'ACTIVO'; 
  writeln(Archivo, 'Titulo: ', NuevoReporte.Titulo);
  writeln(Archivo, 'ID: ', NuevoReporte.ID);
  writeln(Archivo, 'Categoria: ', NuevoReporte.Categoria);
  writeln(Archivo, 'Contenido: ', NuevoReporte.Contenido);
  writeln(Archivo, 'Fecha: ', NuevoReporte.Fecha);
  writeln(Archivo, 'Status: ', NuevoReporte.Status); 
  writeln(Archivo, '-------------------------');
  writeln('Reporte creado y guardado correctamente.');
  Close(Archivo);
end;





var
  opcion: integer;
begin
  
  repeat
    clrscr;
    writeln('|------------------------------------|');
    writeln('|        REGISTRO DE REPORTES        |');     
    writeln('|------------------------------------|');
    Writeln('|              OPCIONES              |');
    writeln('|------------------------------------|');
    writeln('|(1) Crear Reporte                   |');
    writeln('|(2) Mostrar Reportes                |');
    writeln('|(3) Salir                           |');
    writeln('|------------------------------------|');
    readln(opcion);
    While (opcion <> 1) and (opcion <> 2) and (opcion <> 3) do 
    begin
      write('Opcion incorrecta por favor ingresa una opcion en pantalla: '); readln(opcion);  
    end;
    case opcion of
      1: begin CrearReporte;  readkey; end;
      2: begin  end;
      3: writeln('Saliendo del programa...');  
    end;
  until opcion = 3;
end.
