Proceso actividad8
	//El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere una aplicación que le permita 
	//registrar los pedidos de los clientes en cuanto a las tortas que realiza. Cada torta tiene unas 
	//características propias como sabor, cantidad (porciones) y decoraciones). Se requiere que la 
	//aplicación permita registrar los pedidos, las tortas disponibles y las ventas que se registren diariamente.

	
	//resgistrar pedidos, tortas disponibles, venta diaria
	definir opcion,val Como Entero;
	Definir producto,pedido,torta2,torta3,torta1 Como Caracter;
	
	Escribir "bienvenido";
	Escribir "Por favor elija la opción que se va utilizar";
	Escribir "1. Pedido nuevo";
	Escribir "2. Tortas disponibles";
	Escribir "3. Registrar venta"; 
	leer opcion;
	
	torta1 <- "P. Chocolate";
	torta2 <- "P. Vainilla";
	torta3 <- "P. Fresa";
	
	segun opcion Hacer
		1:
			Escribir "Por favor agregue la lista de pedidos";
			leer pedido;
			
			Escribir "El pedido fue agregado correctamente";
		2:
			Escribir "LISTA DE TORTAS";
			Escribir torta1;
			Escribir torta2;
			Escribir torta3;
		3:
			Escribir "Por favor escriba todas las ventas";
			Leer producto;
			Escribir "Por favor digite el valor total del pedido";
			Leer val;
			Escribir "La venta fue agregada correctamente a la base de datos";
		De Otro Modo:
			Escribir "Opción equivocada, por favor ingrese una correcta";
			
		
	FinSegun
	
	

FinProceso
