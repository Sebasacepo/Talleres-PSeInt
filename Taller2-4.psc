//La video tienda que presta sus servicios de alquiler 
//de pel�culas a los usuarios del barrio el Porvenir, 
//requiere de una aplicaci�n que permita registrar el 
//alquiler de las pel�culas que adquieren sus usuarios.
//Para cada usuario se debe permitir la opci�n de alquilar 
//pel�cula, consultar pel�culas disponibles y recibir 
//pel�cula en la video tienda con la opci�n de realizar
//anotaciones sobre estas si se llegan a presentar da�os 
//u otra novedad sobre la pel�cula.

SubProceso arrayMovie(caso)
	Definir listar, num Como entero;
	Definir peli Como Caracter;
	Dimension peli[3];
	
	si caso =2 Entonces
		Escribir "Pel�culas disponibles";
	SiNo
		si caso = 1 Entonces
			Escribir "�Qu� pel�cula desea entregar ";
		sino 
			si caso = 3 entonces
				Escribir "�Que pel�cula desea entregar?";
			FinSi
		FinSi			
	FinSi	
	peli[0] <- "1. jhon wick";
	peli[1] <- "2. los vengadores";
	peli[2] <- "3. La mascara";	
	num <- 2;
	para  listar <- 0 Hasta num Con Paso 1 Hacer
		Escribir peli[listar];			
	FinPara
	Escribir num + 2,". Salir";
FinSubProceso

//Alquilar pelis
SubProceso movieList(num)
	Definir peli Como Entero;
	arrayMovie(num);	
	leer peli;	
	si peli = 1 o peli=2 o peli=3 entonces
		Escribir "Pel�cula alquilada";
	SiNo
		si peli = 4 Entonces
			Escribir "ir al men� principal";
		SiNo
			escribir "Esa pel�cula no est� disponible";
			Escribir "Use la opcion 2 si desea consultar las pel�culas";
		FinSi		
	FinSi	
FinSubProceso

//Entregar Pel�cula
SubProceso giveMovie(num)
	Definir peli Como Entero;
	arrayMovie(num);
	leer peli;	
	si peli = 1 o peli=2 o peli=3 entonces
		Escribir "Pel�cula alquilada";
	SiNo
		escribir "Esa pel�cula no existe o no disponible";
	FinSi	
FinSubProceso

SubProceso menu<- salirMenu()
	Definir opcion Como Entero;
	Definir menu como logico;
	Escribir "Desea salir?";
	Escribir "1. No";
	Escribir "2. S�";
	leer opcion;				
	si opcion = 2 Entonces
		menu <- Verdadero;
	FinSi

FinSubProceso

//Salir
SubProceso out()
	salir <- Verdadero;
FinSubProceso
//men� principal
subproceso menuPrin()
	Escribir "Bienvenido a PORVENIR, Elija una opci�n";
	Escribir "1.Alquilar una pel�cula";
	Escribir "2.Consultar pel�culas disponibles";
	Escribir "3.Recibir pel�cula en la video tienda";
	Escribir "4.Salir";
FinSubProceso

Proceso Actividad4	
	definir nameUser,nomEntrega, detalles como Caracter;
	Definir salir, menu Como Logico;
	definir opcion Como Entero;
	
	salir <- falso;
	
	
	mientras salir = falso Hacer
		menuPrin();
		leer opcion;
		menu<- Falso;
		
		segun opcion Hacer
			1:				
				mientras menu = falso Hacer
					movieList(opcion);
					menu <- salirMenu();
				FinMientras
			2:	
				mientras menu = falso Hacer
				arrayMovie(opcion);
				menu <- salirMenu();
				FinMientras
			
			3:
				mientras menu = falso Hacer
					giveMovie(opcion);
					menu <- salirMenu();
				FinMientras
				
			De Otro Modo:
				Escribir "Nos vemos pronto";
				out();
		FinSegun
		
	FinMientras
		FinProceso


