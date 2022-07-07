//La Droguería Mi Salud presta sus servicios en la localidad de Suba 
//y requiere una aplicación para poder facturar los productos que vende
//a sus clientes y para ello, los productos tienen unas características 
//que deben indicársele al cliente para que pueda escoger el producto
//a comprar. Para cada cliente, se tienen las opciones de compra de
//producto, consulta de precios por producto y devoluciones en caso 
//de que se presenten.

SubProceso opciones()
	definir opcion Como Entero;
	Escribir "--------Bienvenido a La Drogería Mi Salud de Suba.-----------";
	Escribir "Por favor elija la opción que necesite";
	Escribir "1. comprar productos";
	Escribir "2. consultar precios de los productos";
	Escribir "3. Devoluciones ";
	Escribir "4. Salir";

FinSubProceso
//lista
subproceso productos()
	definir lista como caracter;
	definir precio, num como entero;
	Dimension precio[3];
	Dimension lista[3];
	lista[0] <- "Acetaminofén";
	lista[1] <- "Ritalina";
	lista[2] <- "dolex";
	precio[0]<- 3000;
	precio[1] <- 5000;
	precio[2]<- 2500;
	Escribir "Lista de objetos";
	para num <- 0 Hasta 2 Hacer
		escribir num +1,". ", lista[num],".....", precio[num];
	FinPara			
FinSubProceso
//salir
subproceso menu <- salirApp(num)
	Definir opcion Como Entero;
	Definir menu Como Logico;
	si num = 4 Entonces
		Escribir "Seguro que desea salir de la app?";
	SiNo
		Escribir "¿Desea volver al menú principal?";
	FinSi
	
	Escribir "1. Sí";
	Escribir "2. No";
	leer opcion;
	si opcion = 1 Entonces
		menu <- Verdadero;
	FinSi	
FinSubProceso

//comprar
SubProceso comprar()
	Definir producto como entero;
	Escribir "Escoge el producto que deseas llevar";
	productos();
	Leer producto;			
	si producto = 1 o producto = 2 o producto = 3 entonces
		Escribir "Usted compró el producto correctamente";
	FinSi	
FinSubProceso

SubProceso devolver()
	Definir producto como entero;
	Escribir "Escoge el producto que deseas devolver";
	productos();
	leer producto;
	si producto = 1 o producto = 2 o producto = 3 entonces
		Escribir "¿Usted devolvió el producto correctamente";		
	FinSi	
	
FinSubProceso

Proceso Actividad5	
	Definir devolucion Como Caracter;
	Definir producto, opcion Como Entero;
	Definir salir, menu Como Logico;
	salir <- falso;
	Mientras salir = Falso Hacer		
		menu <- falso;	
		opciones();
		leer opcion;	
		segun opcion hacer
			1:	
				Mientras menu = falso Hacer
					comprar();	
					menu <- salirApp(opcion);
				FinMientras				
			2:				
				Mientras menu = falso Hacer
					productos();
					menu <- salirApp(opcion);
				FinMientras			
			3:
				Mientras menu = falso Hacer
					devolver();
					menu <- salirApp(opcion);
				FinMientras		
			de otro modo:
				salir <- salirApp(opcion);
		FinSegun				
	FinMientras
	
FinProceso
