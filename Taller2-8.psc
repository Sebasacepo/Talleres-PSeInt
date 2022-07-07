//El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere una aplicación que le permita 
//registrar los pedidos de los clientes en cuanto a las tortas que realiza. Cada torta tiene unas 
//características propias como sabor, cantidad (porciones) y decoraciones). Se requiere que la 
//aplicación permita registrar los pedidos, las tortas disponibles y las ventas que se registren diariamente.

subproceso menu()
	Escribir "bienvenido";
	Escribir "Por favor elija la opción que se va utilizar";
	Escribir "1. Pedido nuevo";
	Escribir "2. Tortas disponibles";
	Escribir "3. Registrar venta"; 
FinSubProceso

SubProceso registrarVenta()
	Definir producto Como Caracter;
	Definir val Como Entero;
	Escribir "Por favor escriba todas las ventas";
	Leer producto;
	Escribir "Por favor digite el valor total del pedido";
	Leer val;
	Escribir "La venta fue agregada correctamente a la base de datos";
FinSubProceso
SubProceso salir <- cerrarApp()
	definir cerrar Como entero;
	Definir salir Como Logico;
	Escribir "¿Desea salir?";
	Escribir "1. Sí";
	Escribir "2. No";
	leer cerrar;
	si cerrar = 1 Entonces
		salir <- Verdadero;
	FinSi
FinSubProceso

SubProceso listaTortas()
	definir torta Como Caracter;
	definir lisTor Como Entero;
	Dimension torta[3];
	torta[0] <- "P. Chocolate";
	torta[1] <- "P. Vainilla";
	torta[2] <- "P. Fresa";
	
	para lisTor <- 0 Hasta 2 Hacer
		escribir torta[lisTor];
	FinPara
FinSubProceso

SubProceso hacerPedido()
	definir exitVenta como logico;
	definir producto como caracter;
	Definir precio, sal como entero;
	exitVenta<-falso;
	mientras exitVenta = falso hacer
		Escribir "Por favor escriba las ventas";
		leer producto;
		Escribir "Escriba su precio:";
		leer precio;
		Escribir "Desea registrar otra venta?";
		Escribir "1. Si";
		Escribir "2. No";
		leer sal;
		si sal = 2 Entonces
			exitVenta<- Verdadero;
		FinSi
	FinMientras


FinSubProceso

Proceso actividad8	
	//resgistrar pedidos, tortas disponibles, venta diaria
	definir opcion,val Como Entero;
	Definir pedido Como Caracter;
	Definir salir,salMenu Como Logico;
	

	salir <- falso;
	mientras salir = falso Hacer
		menu();
		leer opcion;
		salMenu<-falso;
		segun opcion Hacer
			1:
				mientras salMenu = falso Hacer
					registrarVenta();
					Escribir "Si no sales podrás volver agregar otro producto";
					salMenu <- cerrarApp();
				FinMientras	
			2:
				mientras salMenu = falso Hacer
					Escribir "LISTA DE TORTAS";
					listaTortas();					
					salMenu <- cerrarApp();
				FinMientras				
			3:
				mientras salMenu = falso Hacer
				hacerPedido();	
				salMenu <- cerrarApp();
				FinMientras	
			De Otro Modo:
				salir <- cerrarApp();
				
				
		FinSegun
	FinMientras
	
	
	

FinProceso
