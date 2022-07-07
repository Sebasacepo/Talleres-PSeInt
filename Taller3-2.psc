Proceso Actividad2

		definir ast, i, espacio,as, num Como Entero;
		i <- 1;		
		num <- 10;
		mientras i <> 11 Hacer				
			espacio <- 1;
			mientras espacio <> num Hacer
				Escribir " " Sin Saltar;
				espacio <- espacio + 1;
				
			FinMientras
			num <- num - 1;
			as <-0;
			Mientras as <> i Hacer
				Escribir "*" Sin Saltar ;
				as <- as + 1;
			FinMientras
			Escribir "";
			
			i <- i +1;
			
		FinMientras						
	FinProceso
