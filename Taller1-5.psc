Proceso tallerPunto5
	//Realizar un programa el cual solicite el nombre de su mascota,
	//edad de la mascota, el tipo de mascota y su nombre completo. Al 
	//finalizar el sistema debe e imprimir en pantalla el siguiente mensaje:
	//[Nombre de Mascota] es un(a) [Tipo de Mascota], el cual, tiene 
	//[Edad de la Mascota] años de edad y [Nombre Completo] es actualmente su dueño(a).
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
