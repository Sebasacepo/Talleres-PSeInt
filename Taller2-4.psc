//La video tienda que presta sus servicios de alquiler 
//de películas a los usuarios del barrio el Porvenir, 
//requiere de una aplicación que permita registrar el 
//alquiler de las películas que adquieren sus usuarios.
//Para cada usuario se debe permitir la opción de alquilar 
//película, consultar películas disponibles y recibir 
//película en la video tienda con la opción de realizar
//anotaciones sobre estas si se llegan a presentar daños 
//u otra novedad sobre la película.

SubProceso arrayMovie(caso)
	Definir listar, num Como entero;
	Definir peli Como Caracter;
	Dimension peli[3];
	
	si caso =2 Entonces
		Escribir "Películas disponibles";
	SiNo
		si caso = 1 Entonces
			Escribir "¿Qué película desea entregar ";
		sino 
			si caso = 3 entonces
				Escribir "¿Que película desea entregar?";
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
		Escribir "Película alquilada";
	SiNo
		si peli = 4 Entonces
			Escribir "ir al menú principal";
		SiNo
			escribir "Esa película no está disponible";
			Escribir "Use la opcion 2 si desea consultar las películas";
		FinSi		
	FinSi	
FinSubProceso

//Entregar Película
SubProceso giveMovie(num)
	Definir peli Como Entero;
	arrayMovie(num);
	leer peli;	
	si peli = 1 o peli=2 o peli=3 entonces
		Escribir "Película alquilada";
	SiNo
		escribir "Esa película no existe o no disponible";
	FinSi	
FinSubProceso

SubProceso menu<- salirMenu()
	Definir opcion Como Entero;
	Definir menu como logico;
	Escribir "Desea salir?";
	Escribir "1. No";
	Escribir "2. Sí";
	leer opcion;				
	si opcion = 2 Entonces
		menu <- Verdadero;
	FinSi

FinSubProceso

//Salir
SubProceso out()
	salir <- Verdadero;
FinSubProceso
//menú principal
subproceso menuPrin()
	Escribir "Bienvenido a PORVENIR, Elija una opción";
	Escribir "1.Alquilar una película";
	Escribir "2.Consultar películas disponibles";
	Escribir "3.Recibir película en la video tienda";
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


