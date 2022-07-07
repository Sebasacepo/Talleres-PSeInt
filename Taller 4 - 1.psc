Proceso punto1
//	Crear un vector de tipo Entero con 5 posiciones, llenarlo con información solicitada al usuario.
//	Después de recoger toda la información, se requiere imprimir el índice de cada posición en el arreglo 
//con su valor de la siguiente manera:

	
	definir vec, todos, n1, n2, n3, n4, n5 como entero;
	
	Dimension vec[5];
	
	Escribir "Escriba un datos para la posicion 1 del vector";
	leer n1;
	Escribir "Escriba un datos para la posicion 2 del vector";
	leer n2;
	Escribir "Escriba un datos para la posicion 3 del vector";
	leer n3;
	Escribir "Escriba un datos para la posicion 4 del vector";
	leer n4;
	Escribir "Escriba un datos para la posicion 5 del vector";
	leer n5;
	
	vec[0] <- n1;
	vec[1] <- n2;
	vec[2] <- n3;
	vec[3] <- n4;
	vec[4] <- n5;
	
	para todos <- 0 Hasta 4 Con Paso 1 hacer
		Escribir vec[todos];
		
	FinPara
	
	
	
	
	

	
	
FinProceso
