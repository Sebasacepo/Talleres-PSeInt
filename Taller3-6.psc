//	Se está creando una aplicación que va a estar conectada con un prototipo que
//	permita almacenar contactos telefónicos en el dispositivo. 
//	Para ello cada contacto debe contener nombre completo, teléfono y organización. 
//	Se requiere que la aplicación permita añadir 3 contactos verificando que el número no 
//	esté almacenado, buscar contactos almacenados y eliminar contactos si el usuario lo requiere.
//	Recuerde que el sistema debe terminar cuando el usuario así lo indique.

//-telefono no se puede Repetir
//-3 contactos
//-Crud
//Terminar cuando se quiera

//Asignar valores vacios a los arrays
SubProceso valVacio <- asignarVal(array, tel, organ)
	definir num, pos Como Entero;	
	para num <- 0 hasta 2 Hacer	
		array[num] <- "sin agregar";
		tel[num]<-"Vacio";
		organ[num]<-"Vacio";
	FinPara	
FinSubProceso

//Eliminar
SubProceso avisoElimi()
	Escribir "****************************************";
	Escribir "******CONTACTO ELIMINADO CON EXITO******";
	Escribir "****************************************";
FinSubProceso
//proceso de eliminar
SubProceso delete(userName, tel, organ,num)
	userName[num] <- "sin agregar";
	tel[num]<-"Vacio";
	organ[num]<-"Vacio";
FinSubProceso


subProceso lista(userName, tel, organ)
	Definir num Como Entero;
	para num <- 0 hasta 2 Hacer						
		Escribir num +1,". Nombre:........ ",username[num];
		escribir "-  Telefono:........",tel[num];
		escribir "-  Organizacion:........ ",organ[num];
	FinPara	
FinSubProceso

//salir1
SubProceso resultado <- salEstancia()
	definir cerrar Como entero;
	Definir resultado Como Logico;
	Escribir "¿Desea salir?";
	Escribir "1. Sí";
	Escribir "2. No";
	leer cerrar;
	si cerrar = 1 Entonces
		resultado <- Verdadero;
	FinSi		
FinSubProceso

//salir2
subproceso num<-salirAsig(rang)
	Definir sal, num como entero;
	Escribir "¿Deseas agregar otro contacto?";
	Escribir "1. No";
	Escribir "2. Sí";
	leer sal;		
	si sal = 1 Entonces		
		num <- rang;
	FinSi
FinSubProceso

SubProceso menu()
	Escribir "*********Bienvenido a la app de contactos********";
	Escribir "1. Agregar contacto";
	Escribir "2. Consular contacto";
	Escribir "3. Eliminar un contactos";
	Escribir "4. Salir de la aplicación";
FinSubProceso

Proceso actividad6	
	Definir i, contac, respuesta,consulta,eliminar Como Entero;
	
	//arrays 0. nombre, 1. telefono, 2.organizacion
	definir userName, array, val, tel, organ,telefono, organizacion como caracter;
	definir  num, pos,sal, rang, e como entero;
	definir exit,salir,sistema como logico;
	dimension userName[3], tel[3], organ[3];
	
	array <- asignarVal(userName, tel, organ);	
	num <- 0;	
	
	sistema <- Verdadero;	
	
	mientras sistema = Verdadero Hacer	
		exit <- falso;
		menu();
		leer i;
		respuesta <- 1;	
		segun i Hacer
			1:	
				Escribir "AGREGAR USUARIO";
				rang <- 2;
				e <- 1;
				mientras exit = falso hacer
					
					para num <- 0 Hasta rang Hacer
						si userName[num] = "sin agregar" Entonces
							Escribir "Escriba el nombre del usuario";
							leer val;
							Escribir "Teléfono:";
							leer telefono;
							mientras telefono = tel[0] o telefono = tel[1] o telefono = tel[2] Hacer
								Escribir "Número repetido, otra vez";
								leer telefono;								
							FinMientras
							Escribir "Organizacion:";
							leer organizacion;
							username[num] <- val;
							tel[num]<- telefono;
							organ[num]<- organizacion;
							Escribir "****************************************";
							Escribir "****USUARIO AGREGADO CORRECTAMENTE******";
							Escribir "****************************************";		
							e <- e + 1;			
							si e <= 3 Entonces
								num <- salirAsig(rang);	
							FinSi
							si e = 4 Entonces
								Escribir "Se llenó la bandeja";
								exit <- Verdadero;								
							FinSi
							FinSi											
					FinPara
					exit <- Verdadero;
				FinMientras						
			2:
				salir <- falso;
				Mientras salir = falso Hacer		
					Escribir "****************************************";
					Escribir "**************** AGENDA ****************";
					Escribir "****************************************";	
					lista(userName, tel, organ);
					salir <- salEstancia();
				FinMientras
			
			3:
				Escribir "ELIMINAR";
				salir <- falso;
				mientras salir = falso Hacer			
					
					lista(userName, tel, organ);
					Escribir "4. salir al menú principal";
					leer eliminar;
					si eliminar = 4 Entonces
						Escribir "Salió correctamente";
						salir <- salEstancia();
					SiNo
						eliminar <- eliminar - 1;
						delete(userName, tel, organ, eliminar);	
					FinSi																	
				FinMientras
			4:
				sistema <- falso;
		FinSegun	
		
	FinMientras

	
FinProceso
