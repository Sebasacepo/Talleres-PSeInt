//El taller de motos "El Maquinista" recibe motocicletas de alto 
//cilindraje para realizar las respectivas revisiones y requiere 
//una aplicación que le permita registrar los servicios generados 
//a sus clientes. Para cada motocicleta se debe tener registro del 
//ingreso al taller y las observaciones por parte del cliente. 
//También debe existir registro de salida del taller con las 
//novedades y otra de arreglos hechos por el mecánico en caso 
//de que se requiera inventariar cambios repuestos en la motocicleta al entregarla.

//cerrar app
SubProceso salir <- cerrarApp()
	definir cerrar Como entero;
	Definir salir Como Logico;
	Escribir "¿Desea salir de la app?";
	Escribir "1. Sí";
	Escribir "2. No";
	leer cerrar;
	si cerrar = 1 Entonces
		salir <- Verdadero;
	FinSi
FinSubProceso

subproceso select <- menu()
	definir select Como Entero;
	Escribir "-------------Bienvenido al taller de motos El Maquinista---------------";
	Escribir "Escoja la opción que desee realizar";
	Escribir "1. Ingreso al taller y observaciones";
	Escribir "2. Resgistro de salida y novedades";
	Escribir "3. Arreglos hechos por el mecánico";
	Escribir "4. Salir";
	leer select;
FinSubProceso

//Datos de la motocicleta
SubProceso datosMoto()
	definir tipoMoto,fechaIngreso,novedades Como Caracter;
	Escribir "Escriba el tipo de motocicleta";
	leer tipoMoto;
	Escribir "Escriba fecha de ingreso";
	leer fechaIngreso;
	Escribir "Anotaciones adicionales";
	leer novedades;
	Escribir "*************EXITOSO*************";
	Escribir "Se agregaron los datos correctamente a la base de datos";
FinSubProceso
//anotaciones extra de la moto
subproceso anotaciones()
	Definir reparacione, valorT Como Caracter;
	escribir "Ingrese las reparaciones que hicieron a la moto";
	leer reparacione;
	Escribir "Por favor ingrese el valor total de las reparaciones";
	leer valorT;
	Escribir "*************EXITOSO*************";
	Escribir "Se agregaron los datos correctamente a la base de datos";
FinSubProceso
//Salidas de la moto
SubProceso salidaMoto()
	Definir fechaSalida, novedades como caracter;
	Escribir "Por favor ingresa la fecha de salida de la moto";
	leer fechaSalida;
	Escribir "Escribe las novedades de la moto";
	leer novedades;
	Escribir "*************EXITOSO*************";
	Escribir "Se agregaron los datos correctamente a la base de datos";
FinSubProceso

Proceso actividad6
	definir opcion, valorT Como Entero;
	Definir exitMenu Como Logico;

	Definir salir Como Logico;
	salir <- falso;
	mientras salir = falso hacer
		opcion<- menu();
		exitMenu <- falso;
		segun opcion hacer
			1:
				mientras exitMenu = falso Hacer
					datosMoto();
					exitMenu <- cerrarApp();	
				FinMientras
			2: 
				mientras exitMenu = falso Hacer
					salidaMoto();
					exitMenu <- cerrarApp();	
				FinMientras
			3:
				mientras exitMenu = falso Hacer
					anotaciones();
					exitMenu <- cerrarApp();	
				FinMientras
			De Otro Modo:
				salir <- cerrarApp();
		FinSegun	
	FinMientras
	

	
FinProceso
