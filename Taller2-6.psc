Proceso actividad6
	//El taller de motos "El Maquinista" recibe motocicletas de alto 
	//cilindraje para realizar las respectivas revisiones y requiere 
	//una aplicación que le permita registrar los servicios generados 
	//a sus clientes. Para cada motocicleta se debe tener registro del 
	//ingreso al taller y las observaciones por parte del cliente. 
	//También debe existir registro de salida del taller con las 
	//novedades y otra de arreglos hechos por el mecánico en caso 
	//de que se requiera inventariar cambios repuestos en la motocicleta al entregarla.
	definir opcion, valorT Como Entero;
	definir tipoMoto,fechaIngreso,fechaSalida,novedades,reparacione Como Caracter;
	
	Escribir "-------------Bienvenido al taller de motos El Maquinista---------------";
	Escribir "Escoja la opción que desee realizar";
	Escribir "1. Ingreso al taller y observaciones";
	Escribir "2. Resgistro de salida y novedades";
	Escribir "3. Arreglos hechos por el mecánico";
	leer opcion;
	
segun opcion hacer
	1:
		Escribir "Escriba el tipo de motocicleta";
		leer tipoMoto;
		Escribir "Escriba fecha de ingreso";
		leer fechaIngreso;
		Escribir "Anotaciones adicionales";
		leer novedades;
		Escribir "*************EXITOSO*************";
		Escribir "Se agregaron los datos correctamente a la base de datos";
	2:
		Escribir "Por favor ingresa la fecha de salida de la moto";
		leer fechaSalida;
		Escribir "Escribe las novedades de la moto";
		leer novedades;
		Escribir "*************EXITOSO*************";
		Escribir "Se agregaron los datos correctamente a la base de datos";
	3:
		escribir "Ingrese las reparaciones que hicieron a la moto";
		leer reparacione;
		Escribir "Por favor ingrese el valor total de las reparaciones";
		leer valorT;
		Escribir "*************EXITOSO*************";
		Escribir "Se agregaron los datos correctamente a la base de datos";
FinSegun	
	
FinProceso
