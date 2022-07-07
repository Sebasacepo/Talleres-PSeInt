//Realizar un programa en el cual se solicite la edad de una persona. 
//Si la persona es menor a 18 años, deberá mostrar en pantalla: 
//Usted aún es un niño(a).
SubProceso edad()
	definir edadMenor, res Como Entero;
	Definir respuesta Como Caracter;
	Escribir "Escribe tu edad";
	leer res;	
	edadMenor <- res;
	si edadMenor < 18 Entonces
		respuesta <- "Usted es menor";
		Escribir respuesta;
	FinSi
FinSubProceso

Proceso actividad2	
	edad();
FinProceso
