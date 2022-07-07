Proceso Actividad4
	//La video tienda que presta sus servicios de alquiler 
	//de películas a los usuarios del barrio el Porvenir, 
	//requiere de una aplicación que permita registrar el 
	//alquiler de las películas que adquieren sus usuarios.
	//Para cada usuario se debe permitir la opción de alquilar 
	//película, consultar películas disponibles y recibir 
	//película en la video tienda con la opción de realizar
	//anotaciones sobre estas si se llegan a presentar daños 
	//u otra novedad sobre la película.
	
	definir nameUser,peli1,peli2,peli3, peli,nomEntrega, detalles como Caracter;
	definir opcion Como Entero;
	Escribir "Bienvenido a PORVENIR, Elija una opción";
	Escribir "1.Alquilar una película";
	Escribir "2.Consultar películas disponibles";
	Escribir "3.Recibir película en la video tienda";
	leer opcion;
	
	peli1 <- "jhon wick";
	peli2 <- "los vengadores";
	peli3 <- "La mascara";
	
	segun opcion Hacer
		1:
			Escribir "¿Qué pelicula desea alquilar?";
			leer peli;
			si peli = peli1 o peli=peli2 o peli=peli3 entonces
				Escribir "Película alquilada";
			SiNo
				escribir "Esa película no está disponible";
				Escribir "Use la opcion 2 si desea consultar las películas";
			FinSi
		2:
			Escribir "Películas disponibles";
			Escribir peli1;
			Escribir peli2;
			Escribir peli3;	
		3:
			Escribir "¿Qué pelicula será entregada?";
			leer nomEntrega;
			Escribir "Escriba detalles sobre la película: ";
			leer detalles;
			Escribir "Muchas gracias por hacer parte de PORVENIR vuelva pronto";
		De Otro Modo:
			Escribir "Esa opción no es válida, nos vemos pronto";
	FinSegun
		
	
FinProceso
