Proceso tallerPunto5
	//Realizar un programa el cual solicite su nombre y apellidos, 
	//también debe capturar nombre y apellidos de su padre y madre.
	//Al finalizar debe imprimir en pantalla el siguiente mensaje 
	//"Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].*/
	Definir nomPropio, apePropio, nomMascota, tipoMascota, edadMascota  Como Caracter;
	
	//Mascota
	Escribir "Escriba su nombre de su mascota: ";
	Leer nomMascota;	
	Escribir "Escriba la edad de su mascota: ";
	leer edadMascota;
	Escribir "Escriba el tipo de mascota: ";
	leer tipoMascota;
	
	//Nombre dueño
	Escribir "Escriba su nombre: ";
	Leer nomPropio;	
	Escribir "Escriba su apellido: ";
	leer apePropio;
	
	Escribir nomMascota," es un(a) ", tipoMascota, " el cual, tiene ", edadMascota, " años de edad y ", nomPropio, " " , apePropio, " es actualmente su dueño(a).";
FinProceso
