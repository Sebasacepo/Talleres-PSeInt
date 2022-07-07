Proceso actividad10
	//El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación
	//para llevar las cuentas de sus usuarios; por lo tanto, se sugiere que la cuenta tenga los atributos 
	//titular y cantidad. Para cada cliente las cuentas permitirán realizar ingresos, retiros o consultas 
	//de valor. En los ingresos no se pueden insertar valores negativos y para los retiros el valor no 
	//puede ser mayor al valor que tiene en la cuenta.
	Definir nomTitular,cc,nomTitular1,nomTitular2,nomTitular3 Como Caracter;
	Definir cantidad, opcion,cantidad1,cantidad2,cantidad3, canTotal Como Entero;
	
	nomTitular1 <- "Sebastian";
	cantidad1 <- 1000;
	nomTitular2 <- "Fernando";
	cantidad2 <- 2000;	
	nomTitular3 <- "Jhon";
	cantidad3 <- 4000;
	Escribir "----------------Bienvenido a SU BANCO FIEL-------------";
	Escribir "Por favor ingrese el nombre del cliente";
	leer nomTitular;
	Escribir "Por favor ingrese documento del titular";
	leer cc;
	

	Escribir "Por favor escoja una opción";
	Escribir "1. Depositar dinero ";
	Escribir "2. Retiros";
	Escribir "3. Consultar valor";
	leer opcion;

	
	segun opcion hacer
		1: 
			si nomTitular = nomTitular1 o nomTitular = nomTitular2 o nomTitular = nomTitular3  Entonces					
				Escribir "Ingresa el dinero que quieres depositar";
				leer cantidad;
				Escribir "************cantidad ingresada correctamente**************";
				Escribir "señor(a) ", nomTitular, " con documento: ", cc;
				si cantidad >0 Entonces
					Escribir "Usted ingresó: ", cantidad ;				
					Escribir "vuelva pronto";
				SiNo
					Escribir "El valor ingresado es incorrecto, por favor vuelva a intentarlo";
				FinSi
				
			SiNo
				Escribir "------------Error--------------";
				Escribir "señor(a) ", nomTitular, " con documento: ", cc; 
				escribir "Usted no está en la base de datos";
				Escribir "Por favor dirijase a nuestro banco más cercano";
				Escribir "Y solicite una cuenta o puede agendar una cita al 333555000";				
			FinSi
		2:
			Escribir "¿Cuánto dinero desea retirar?";
			leer cantidad;
			si nomTitular = nomTitular1 Entonces
				canTotal <- cantidad1 - cantidad;
			SiNo
				si nomTitular = nomTitular2 Entonces
					canTotal <- cantidad2 - cantidad;
				sino 
					si nomTitular = nomTitular3 Entonces
						canTotal <- cantidad3 - cantidad;
					sino 
						canTotal <- 0;
					FinSi
				FinSi
			FinSi		
			
			si canTotal >0 Entonces
				Escribir "señor(a) ", nomTitular, " con documento: ", cc;  
				Escribir "Retiró: ", cantidad, " Correctamente" ;
				Escribir "Su saldo actual es: ", canTotal;
				Escribir "vuelva pronto";
			sino
				Escribir "Saldo insuficiente o cuenta invalida, por favor, rectifique los datos";
			FinSi

		3:	
			Escribir "Consulta de saldo";
			si nomTitular = nomTitular1 Entonces
				cantidad <- cantidad1;
			SiNo
				si nomTitular = nomTitular2 Entonces
					cantidad <- cantidad2;
				sino 
					si nomTitular = nomTitular3 Entonces
						cantidad <- cantidad3;
					sino 
						cantidad <- 0;
					FinSi
				FinSi
			FinSi		
			
			si cantidad < 1 Entonces
				Escribir "Usted no tiene saldo o no tiene cuenta, por favor intentelo más tarde";
			SiNo
				Escribir "Señor(a)", nomTitular;
				Escribir "Su saldo es: ", cantidad;
				Escribir "Vuelva pronto";
			FinSi
			
			
		De Otro Modo:
			escribir "La opcion que elegiste no está disponible. por favor intenta de nuevo";
	FinSegun
	
	
FinProceso
