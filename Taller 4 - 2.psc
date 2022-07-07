Proceso punto2
//	Crear un arreglo de números enteros de 20 posiciones, el cual, debe ser llenado con números 
//	aleatorios entre 1 y 100; después de haber llenado dicho arreglo, se debe volver a recorrer
//	utilizando un ciclo diferente al que se usó para llenarse e imprimir los números pares e impares. Ejemplo
	
	//20 posiciones
	//llenar con numero aleatorios del 1 al 100
	//recorrer 2 veces
	//la primera impresión poner todos los impares
	//la segunda impresión poner todos los pares
	
	definir numCampos, pos, numRango, nAleatorio,rango,contComas Como entero;
	Definir sacarPar Como Real;
	Definir coma Como Caracter;
	Dimension numCampos[20];	
	pos <-0;
	
	Escribir "Numeros par: " Sin Saltar;
	contComas <- 1;
	para rango <- 1 hasta 20 Con Paso 1 Hacer		
		nAleatorio <- Aleatorio(1,100);	
		numCampos[pos] <- nAleatorio;
		si numCampos[pos] % 2 = 0 Entonces		
			si contComas = 1 Entonces
				coma <- "";
				contComas <- contComas + 1;
			SiNo
				coma <- ",";			
			FinSi			
			Escribir coma, numCampos[pos]  Sin Saltar;
		FinSi		
		pos <- pos +1;			
	FinPara
	pos<- 0;
	Escribir "";
	Escribir "Numeros impares: " Sin Saltar;
	contComas <- 1;
	coma <-",";
	Repetir
		si numCampos[pos] % 2 <> 0 Entonces
			si contComas = 1 Entonces
				Escribir numCampos[pos] Sin Saltar;	
				contComas <- contComas + 1 ;
			sino
				si contComas > 1 Entonces
					Escribir coma,  numCampos[pos] Sin Saltar;	
					
				FinSi
			FinSi				
		FinSi
		pos<- pos + 1;	
	Hasta Que pos = 20
	Escribir "";

FinProceso
