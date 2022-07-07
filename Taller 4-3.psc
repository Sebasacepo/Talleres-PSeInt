//Imprimir los números primos del 1 al 1000, el resultado debe ser buscado de forma matemátic
//Si termina en 5 NO es primo
//Si el numero es par NO es primo
//El cociente debe ser menor
SubProceso tablaPrimos()
	Definir primo, divisor,contPrimo, coma Como Entero;
	
	coma <- 1;
	Para primo <- 1 Hasta 1000 Hacer
		contPrimo<-0;
		para divisor <- 1 hasta primo Hacer			
			si primo % divisor = 0 Entonces				
				contPrimo <- contPrimo + 1;		
			FinSi			
		FinPara
		Si contPrimo = 2 Entonces
			si coma = 1 Entonces
				Escribir primo Sin Saltar;
				coma <- coma +1;
			SiNo
				Escribir ", ", primo Sin Saltar;
			FinSi			
		FinSi
		
	FinPara
	Escribir "";
FinSubProceso

Proceso punto3	
	tablaPrimos();	
FinProceso
