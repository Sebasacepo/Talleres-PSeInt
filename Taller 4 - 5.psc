Proceso punto5
	//El usuario deberá insertar la fila y columna de la cual desea ver el resultado, el resultado de cada celda 
	//debe estar previamente calculado en una matriz bidimensional la cual cada resultado obedecerá a la fila y 
	//columna insertada por el usuario.
	
	definir tabla,fila, col, posF, posC, val, mul, respuesta Como Entero;
	Definir cerrar Como Logico;
	Dimension tabla[10,10];
	fila <- 1;
	
	Escribir"-------------------Columnas----------------------";
	Escribir "     " Sin Saltar;
	para col <- 1 hasta 9 Hacer
		Escribir col, "    " Sin Saltar;
	FinPara
	Escribir "";	
	para posF <- 1 Hasta 9 Hacer
		Escribir fila,": " Sin Saltar;
		para posC <- 1 Hasta 9 Hacer
			tabla[posF, posC] <- PosC*posF;
			Escribir "|",PosC, "x" Sin Saltar;
			Escribir posF , "|" Sin Saltar;					
		FinPara	
		Escribir "";
		fila <- fila + 1;
	FinPara
	cerrar <- falso;
	Mientras cerrar = falso Hacer		
		Escribir "Por favor inserte la fila";
		leer fila;
		Escribir "Por favor inserte la columna";
		leer col;
		Escribir fila, "x", col, "= ", tabla[fila,col];	
		
		Escribir "¿Desea consultar otra vez?";
		Escribir "1. Sí";
		Escribir "2. No";
		leer respuesta;
		si respuesta = 2 Entonces
			cerrar <- Verdadero;
		FinSi
		
	FinMientras

	
	
FinProceso
