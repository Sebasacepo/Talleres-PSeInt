//Realizar un programa en el cual se solicite el nombre,
//apellidos y edad de la persona. Si la persona es mayor o igual
//a 18 años, entonce se deberá imprimir en pantalla [Nombre completo]
//usted es mayor de edad, por lo tanto puede entrar a la fiesta. Si la edad
//de la persona es menor que 18 años, entonces, deberá imprimirse el
//siguiente mensaje: [Nombre completo] usted es menor de edad, por lo tanto,
//no puede entrar a la fiesta, por favor devuélvase a su casa.
SubProceso autorizacion(nombre, apellido, edad)
	si edad < 17 Entonces
		escribir nombre," ", apellido, " Usted es menor de edad por lo tanto no puede entrar a la fiesta, por favor, devuélvase para su casa";
	SiNo
		Escribir nombre," ", apellido, " usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	FinSi
FinSubProceso

SubProceso nombre<-pedirNom()
	Definir nombre Como Caracter;
	Escribir "Por favor, escriba su nombre";
	leer nombre;	
FinSubProceso
SubProceso apellido <- pedirApe()
	Definir apellido Como Caracter;
	Escribir "Escriba su apellido";
	leer apellido;
FinSubProceso
SubProceso edad <- pedirEdad()	
	definir edad como entero;
	Escribir "Escriba su edad";
	Leer edad;		
FinSubProceso

Proceso Actividad3
	Definir nombre, apellido, datos Como Caracter;
	definir edad como entero;

	nombre <- pedirNom();
	apellido <- pedirApe();
	edad <- pedirEdad();
	
autorizacion(nombre, apellido, edad);
FinProceso
