//Matriz quemada obligatoria
SubProceso matriz(matrizBi)
	matrizBi[0 , 0] <- "01";
	matrizBi[0 , 1] <- "02";
	matrizBi[0 , 2] <- "03";
	matrizBi[0 , 3] <- "04";
	matrizBi[0 , 4] <- "05";
	matrizBi[1 , 0] <- "06";
	matrizBi[1 , 1] <- "07";
	matrizBi[1 , 2] <- "08";
	matrizBi[1 , 3] <- "09";
	matrizBi[1 , 4] <- "10";
	matrizBi[2 , 0] <- "11";
	matrizBi[2 , 1] <- "12";
	matrizBi[2 , 2] <- "13";
	matrizBi[2 , 3] <- "14";
	matrizBi[2 , 4] <- "15";
	matrizBi[3 , 0] <- "16";
	matrizBi[3 , 1] <- "17";
	matrizBi[3 , 2] <- "18";
	matrizBi[3 , 3] <- "19";
	matrizBi[3 , 4] <- "20";	
FinSubProceso

SubProceso imprimir1(matrizBi)
	Definir fila, col Como Entero;
	para fila <- 0 Hasta 3 Hacer
		para col <- 0 hasta 4 Hacer
			Escribir matrizBi[fila, col], " " sin saltar;
		FinPara
		Escribir " ";
	FinPara
	Escribir " ";
FinSubProceso

SubProceso imprimir2(matrizBi)
	Definir fila, col, serp Como Entero;
	fila <- 0;
	para serp <- 0 hasta 1 Hacer	
		para col <- 0 hasta 4 Hacer
			Escribir matrizBi[fila, col], " "sin saltar;
		FinPara
		Escribir "";
		fila <- fila + 1;
		para col <- 4 hasta 0 Con Paso -1 Hacer
			Escribir matrizBi[fila, col], " "sin saltar;
		FinPara
		fila<- fila +1;
		Escribir "";
	FinPara	
	
FinSubProceso

Proceso Actividad4	
	definir  fila, col, num, cont, back,serp Como Entero;
	Definir matrizBi Como caracter;
	Dimension matrizBi[4,5];	
	matriz(matrizBi);	
	imprimir1(matrizBi);
	imprimir2(matrizBi);	
FinProceso



