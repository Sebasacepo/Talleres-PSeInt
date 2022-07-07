//	Crear un vector de tipo Entero con 5 posiciones, llenarlo con información solicitada al usuario.
//	Después de recoger toda la información, se requiere imprimir el índice de cada posición en el arreglo 
//con su valor de la siguiente manera:
SubProceso vector(vec)
	Definir n, num Como Entero;
	para num <- 0 Hasta 4 Hacer		
		Escribir "Escriba un datos para la posicion ", num + 1 ," del vector";
		leer n;
		vec[num] <- n;
	FinPara
FinSubProceso

SubProceso imprimir(vec)
	Definir todos Como Entero;
	para todos <- 0 Hasta 4 Con Paso 1 hacer
		Escribir "[",todos,"]", vec[todos];		
	FinPara			
FinSubProceso

Proceso punto1
	definir vec, todos,n, n1, n2, n3, n4, n5, num como entero;	
	Dimension vec[5];
	vector(vec);	
	imprimir(vec);
FinProceso
