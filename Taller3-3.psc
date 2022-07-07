Proceso Actividad3
	definir i, as, espacio, num, as2, num2, tallo, i2, f, esp, l, t, ta, end, a, b, a2, b2,a3, b3,f2, esp2 Como Entero;	
	i <- 1;
	num <- 10;
	num2 <- 1;
	Repetir	
		espacio <-0;
		Repetir
			Escribir " " Sin Saltar;					
			espacio <- espacio +1;
		Hasta Que espacio = num 		
		num <- num - 1;
		
		
		as <--0;
		Repetir
			Escribir "*" Sin Saltar;					
			as <- as +1;
		Hasta Que as = i 					
		
		as2 <-0;
		repetir 
			Escribir "*" Sin Saltar;		
			as2 <- as2 + 1;
		Hasta Que as2 = num2
		num2 <- num2 + 1;
		
		Escribir "";
		
		i <- i+1;
	Hasta Que i = 11
	end <- 2;
	ta <- 0;
	Repetir 
		f<- 11;
		esp <- 1;
		repetir 
			Escribir " " Sin Saltar;
			esp <- esp + 1;
		Hasta Que esp == f
		
		l <- 3;
		t <- 0;
		
		repetir 
			Escribir "*" Sin Saltar;
			t <- t + 1;
		Hasta Que t == l
		Escribir "";
		ta <- ta + 1;
	Hasta Que ta = end
	
	a <- 8;
	b<-0;	
	repetir 
		Escribir " " Sin Saltar;
		b <- b+1;
	Hasta Que b = a
	
	a2 <- 8;
	b2 <-1;	
	repetir 
		Escribir "*" Sin Saltar;
		b2 <- b2+1;
	Hasta Que b2 = a2	
	Escribir "";
	
	
	
	f2<- 8;
	esp2 <- 1;
	repetir 
		Escribir " " Sin Saltar;
		esp2 <- esp2 + 1;
	Hasta Que esp2 == f2
	a3 <- 10;
	b3 <-1;	
	repetir 
		Escribir "*" Sin Saltar;
		b3 <- b3+1;
	Hasta Que b3 = a3	
	
	
	Escribir "";
	

	
	
//	
//	i2 <-0;
//	tallo <- 1;
//	Repetir
//		espacio <-0;
//		Repetir
//			Escribir "*" Sin Saltar;					
//		espacio <- espacio +1;
//		Hasta Que espacio = num 		
//		num <- num - 1;
//		
//		
//		Repetir
//			Escribir "*" Sin Saltar;
//			tallo <- tallo + 1;
//			
//		Hasta Que tallo = 6
//		i2 <- i2 + 1;
//	Hasta Que i2 = 4
//	
	


	
FinProceso
