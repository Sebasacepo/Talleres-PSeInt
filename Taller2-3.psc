Proceso Actividad3
	//Realizar un programa en el cual se solicite el nombre,
	//apellidos y edad de la persona. Si la persona es mayor o igual
	//a 18 años, entonce se deberá imprimir en pantalla [Nombre completo]
	//usted es mayor de edad, por lo tanto puede entrar a la fiesta. Si la edad
	//de la persona es menor que 18 años, entonces, deberá imprimirse el
	//siguiente mensaje: [Nombre completo] usted es menor de edad, por lo tanto,
	//no puede entrar a la fiesta, por favor devuélvase a su casa.
	Definir nombre, apellido Como Caracter;
	definir edad como entero;
	Escribir "Por favor, escriba su nombre";
	leer nombre;
	Escribir "Escriba su apellido";
	leer apellido;
	Escribir "Escriba su edad";
	Leer edad;
	
	si edad < 17 Entonces
		escribir nombre," ", apellido, " Usted es menor de edad por lo tanto no puede entrar a la fiesta, por favor, devuélvase para su casa";
	SiNo
		Escribir nombre," ", apellido, " usted es mayor de edad, por lo tanto puede entrar a la fiesta";
	FinSi
	
	
FinProceso
