Proceso Actividad5
	//La Droguer�a Mi Salud presta sus servicios en la localidad de Suba 
	//y requiere una aplicaci�n para poder facturar los productos que vende
	//a sus clientes y para ello, los productos tienen unas caracter�sticas 
	//que deben indic�rsele al cliente para que pueda escoger el producto
	//a comprar. Para cada cliente, se tienen las opciones de compra de
	//producto, consulta de precios por producto y devoluciones en caso 
	//de que se presenten.	
	Definir prod1,prod2,prod3,devolucion Como Caracter;
	Definir producto, opcion, precio1, precio2,precio3 Como Entero;
	
	Escribir "--------Bienvenido a La Droger�a Mi Salud de Suba.-----------";
	Escribir "Por favor elija la opci�n que necesite";
	Escribir "1. comprar productos";
	Escribir "2. consultar precios de los productos";
	Escribir "3. Devoluciones ";
	leer opcion;
	
	prod1 <- "Acetaminof�n";
	prod2 <- "Ritalina";
	prod3 <- "dolex";
	precio1<- 3000;
	precio2 <- 5000;
	precio3<- 2500;
	
	segun opcion hacer
		1:
			Escribir "Por favor elija el producto que necesita comprar";
			escribir "1. Acetaminof�n";
			escribir "2. Ritalina";
			Escribir "3. dolex";
			Leer producto;
			
			si producto = 1 entonces
				Escribir "Usted compr� ", prod1;
				Escribir "Vuelva pronto a La Droger�a Mi Salud de Suba";
			SiNo 
				si producto = 2 entonces
					Escribir "Usted compr� ", prod2;
					Escribir "Vuelva pronto a La Droger�a Mi Salud de Suba";
				sino
					si producto = 3 Entonces
						Escribir "Usted compr� ", prod3;
						Escribir "Vuelva pronto a La Droger�a Mi Salud de Suba";
					FinSi
				FinSi							
			FinSi							
		2:
			Escribir "Catalogo de productos";
			Escribir prod1, " cuesta: ", precio1;
			Escribir prod2, " cuesta: ", precio2;
			Escribir prod3, " cuesta: ", precio3;
		3:
			Escribir "Por favor escriba el nombre del producto que quiere devolver";
			leer devolucion;
			Escribir "Producto devuelto satisfactoriamente";		
	FinSegun	
FinProceso
