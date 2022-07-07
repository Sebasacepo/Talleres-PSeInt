//La escuela automovilística "El Maestro" requiere una aplicación que 
//permita registrar a sus clientes en los cursos de enseñanza 
//automovilística y establecer quienes lo han aprobado para continuar con el
//trámite de adquirir la licencia de conducción. Para cada usuario se debe permitir
//registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y 
//resultados de la prueba del curso (si fueron aprobados o no). Recuerde que el sistema
//debe terminar cuando el usuario así lo indique. Tenga presente que la escuela
//tiene capacidad máxima de gestionar 8 usuarios en su totalidad.

//Registrar ingreso por usuario
//consultar usuarios y resultados (aprobados o no)
//Terminar cuando se indique
//8 usuarios maximo

//menu inicio
SubProceso inicioMenu()
	Escribir "BIENVENIDO A ESCUELA AUTOMOVILISTICA EL MAESTRO";
	Escribir "Escoja la opción que necesita";
	Escribir "1. Registrar estudiante";
	Escribir "2. Consultar estudiante y asignar nota";
	Escribir "3. Salir";
FinSubProceso

//asignar datos vacios
SubProceso datos(userName, cc, nota)
	Definir num como entero;
	para num <- 0 hasta 7 Hacer		
		userName[num] <- "Cupo Disponible";
		cc[num] <- "Vacio";
		nota[num] <- "Sin nota";
	FinPara
FinSubProceso
//Imprimir datos
SubProceso impriDatos(userName, cc, nota)
	Definir num como entero;
	para num <- 0 hasta 7 Hacer
		escribir num + 1,". ", userName[num]," Cédula: ", cc[num]," Nota: ", nota[num];
	FinPara
FinSubProceso
//salir
SubProceso res <- salMenu(rango)
	Definir opcion, res Como Entero;
	Escribir "Desea agregar otro(a) estudiante";
	Escribir "1. Si";
	Escribir "2. No";
	leer opcion;
	si opcion = 2 Entonces
		res <- rango;							
	FinSi
FinSubProceso
//salir 2 
SubProceso sal <-  salConsulta()
	Definir salConsultar, sal Como Entero;
	Escribir "¿Desea consultar los usuarios nuevamente?";
	Escribir "1. Sí";
	Escribir "2. No";
	leer salConsultar;
	sal <- salConsultar;
FinSubProceso

Proceso Actividad8	
	definir salir, inicio, consulta,ponNota, salConsultar Como Entero;
	Definir userName, cc, text, cambio, curso, nota Como Caracter;
	Definir num,rango,opcion, totalCupos Como Entero;
	Definir valUserName, valCc como caracter;
	Dimension userName[8], cc[8], nota[8];
	
	datos(userName, cc, nota);		
	opcion <- 1;
	mientras opcion <> 3 Hacer		
		inicioMenu();
		leer opcion;
		inicio <- 1;		
		segun opcion hacer
			1:
			rango <- 7;
			mientras inicio <> 2 Hacer			
				Para num <- 0 hasta rango Hacer
					si userName[num] = "Cupo Disponible" Entonces
						Escribir "Ingrese nombre de usuario";		
						leer valUserName;
						Escribir "Documento de identidad";						
						leer valCc;						
						userName[num] <- valUserName;
						cc[num] <- valCc;				
						num<- salMenu(rango);
					SiNo					
						totalCupos<-  8 -num;
						Escribir totalCupos;
						si totalCupos = 1 Entonces
							Escribir "****No hay cupos disponibles****";
						FinSi
					FinSi					
				FinPara
				inicio <- 2;	
			FinMientras
		2:
			salConsultar <- 1;
			mientras salConsultar <> 2 Hacer	
				Escribir "Consultar usuario y sus notas";
				impriDatos(userName, cc, nota);	
				
				Escribir "Elija una opción";			
				Escribir "1. Asignar nota";
				Escribir "2. salir al menú de inicio";
				leer opcion;				
				mientras opcion = 1 Hacer	
					Escribir "Elige el usuario";
					leer num;
					num <- num - 1;
					Escribir "Elije la nota";
					Escribir "A = Aprobado";
					Escribir "D = Desprobado";
					leer text;					
					nota[num] <- text;	
					Escribir "Nota agregada correctamente";					
				opcion <- 2;				
			FinMientras
			salConsultar <-  salConsulta();
			FinMientras
		FinSegun
	FinMientras	
FinProceso
