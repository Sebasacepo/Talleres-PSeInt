Proceso sin_titulo
	//Utilizando el ciclo que usted desee, crear un men� de ejecuci�n infinita hasta que el usuario desee terminar dicho ciclo.
	Definir opcion Como entero;
	Definir nombre Como Caracter;
	
	opcion <- 0;
	
	mientras opcion <> 3 Hacer
		Escribir "Por favor escoja una opci�n";
		Escribir "1. Capturar nombre";
		Escribir "2. Saludar persona";
		Escribir "3. salir del sistema";
		leer opcion;
		segun opcion Hacer
			1:
				Escribir "Escriba su nombre";
				leer nombre;
				Escribir "Su nombre es: ", nombre;
			2: 
				Escribir "Hola qu� tal";
			3:
				Escribir "Sali� con exito, vuelva pronto";
		FinSegun		
	FinMientras
FinProceso
