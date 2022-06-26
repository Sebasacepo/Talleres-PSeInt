Proceso tallerPunto3
	//Realizar un programa el cual solicite su nombre y apellidos, 
	//también debe capturar nombre y apellidos de su padre y madre.
	//Al finalizar debe imprimir en pantalla el siguiente mensaje 
	//"Yo [Nombre Completo], soy hijo de [Nombre de la Madre] y [Nombre del Padre].*/
	Definir nomPropio, apePropio, nomPadre, apePadre, nomMadre, apeMadre Como Caracter;
	
	//Nombre y apellido propios
	Escribir "Escriba su nombre: ";
	Leer nomPropio;	
	Escribir "Escriba su apellido: ";
	leer apePropio;
	
	//Nombre y apellidos del padre
	Escribir "Escriba el nombre del padre: ";
	Leer nomPadre;	
	Escribir "Escriba el apellido des padre: ";
	leer apePadre;
	
	//Nombre y apellidos de la madre
	Escribir "Escriba el nombre de la madre: ";
	Leer nomMadre;	
	Escribir "Escriba el apellido de la madre: ";
	leer apeMadre;
	
	Escribir "Yo ", nomPropio," ", apePropio, " soy hijo de ",nomPadre," ", apePadre, " y ", nomMadre," ", apeMadre ;
	
FinProceso
