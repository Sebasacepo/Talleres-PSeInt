Proceso Actividad4
	//La video tienda que presta sus servicios de alquiler 
	//de pel�culas a los usuarios del barrio el Porvenir, 
	//requiere de una aplicaci�n que permita registrar el 
	//alquiler de las pel�culas que adquieren sus usuarios.
	//Para cada usuario se debe permitir la opci�n de alquilar 
	//pel�cula, consultar pel�culas disponibles y recibir 
	//pel�cula en la video tienda con la opci�n de realizar
	//anotaciones sobre estas si se llegan a presentar da�os 
	//u otra novedad sobre la pel�cula.
	
	definir nameUser,peli1,peli2,peli3, peli,nomEntrega, detalles como Caracter;
	definir opcion Como Entero;
	Escribir "Bienvenido a PORVENIR, Elija una opci�n";
	Escribir "1.Alquilar una pel�cula";
	Escribir "2.Consultar pel�culas disponibles";
	Escribir "3.Recibir pel�cula en la video tienda";
	leer opcion;
	
	peli1 <- "jhon wick";
	peli2 <- "los vengadores";
	peli3 <- "La mascara";
	
	segun opcion Hacer
		1:
			Escribir "�Qu� pelicula desea alquilar?";
			leer peli;
			si peli = peli1 o peli=peli2 o peli=peli3 entonces
				Escribir "Pel�cula alquilada";
			SiNo
				escribir "Esa pel�cula no est� disponible";
				Escribir "Use la opcion 2 si desea consultar las pel�culas";
			FinSi
		2:
			Escribir "Pel�culas disponibles";
			Escribir peli1;
			Escribir peli2;
			Escribir peli3;	
		3:
			Escribir "�Qu� pelicula ser� entregada?";
			leer nomEntrega;
			Escribir "Escriba detalles sobre la pel�cula: ";
			leer detalles;
			Escribir "Muchas gracias por hacer parte de PORVENIR vuelva pronto";
		De Otro Modo:
			Escribir "Esa opci�n no es v�lida, nos vemos pronto";
	FinSegun
		
	
FinProceso
