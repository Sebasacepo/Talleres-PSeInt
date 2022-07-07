//El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación
//para llevar las cuentas de sus usuarios; por lo tanto, se sugiere que la cuenta tenga los atributos 
//titular y cantidad. Para cada cliente las cuentas permitirán realizar ingresos, retiros o consultas 
//de valor. En los ingresos no se pueden insertar valores negativos y para los retiros el valor no 
//puede ser mayor al valor que tiene en la cuenta.

//llamar arreglo
subproceso lisClientes(nomTitular, acantidad)	
	Definir numClie, num Como entero;
	num <- 0;
	para numClie <-0 Hasta 2 Hacer
		Escribir num +1, nomTitular[numClie], " = ", acantidad[numClie];		
	FinPara
FinSubProceso

//pedir nombre de usuario
SubProceso nomTitular <- pedirUsuario()
	Definir nomTitular Como Caracter;
	Escribir "Por favor ingrese el nombre del cliente";
	leer nomTitular;
FinSubProceso
//pedir Dinero
SubProceso valor<-pedirDinero(nomTitular)
	definir cantidad, valor Como entero;
	Escribir "Ingresa el dinero que quieres depositar";
	leer cantidad;
	si cantidad >1 Entonces
		Escribir "************cantidad ingresada correctamente**************";
		Escribir "señor(a) ", nomTitular, " se ingresó: ", cantidad;
	sino 
		Escribir "señor(a) ", nomTitular, " se ingresó: ", cantidad;
	FinSi
	valor <- cantidad;
FinSubProceso

//Opciones de app
subproceso opcion <-opciones()	
	Definir opcion Como Entero;
	Escribir "----------------Bienvenido a SU BANCO FIEL-------------";	
	Escribir "Por favor escoja una opción";
	Escribir "1. Depositar dinero ";
	Escribir "2. Retiros";
	Escribir "3. Consultar valor";
	leer opcion;
FinSubProceso

//Verificar usuario
SubProceso busUsuario<- verificarUsu(nomTitular)
	Definir anomTitular Como Caracter;	
	
		busUsuario <- Verdadero;
FinSubProceso

SubProceso salir <- cerrarApp()
	definir cerrar Como entero;
	Definir salir Como Logico;
	Escribir "¿Desea salir?";
	Escribir "1. No";
	Escribir "2. Sí";
	leer cerrar;
	si cerrar = 2 Entonces
		salir <- Falso;
	sino 
		si cerrar = 1 Entonces
			salir <- Verdadero;
		FinSi
	FinSi	
FinSubProceso

//Mensaje de error
SubProceso msgError(nomTitular)
	Escribir "------------Error--------------";
	Escribir "señor(a) ", nomTitular; 
	escribir "No está en la base de datos";
	Escribir "Por favor dirijase a nuestro banco más cercano";
	Escribir "Y solicite una cuenta o puede agendar una cita al 333555000";		
FinSubProceso

//Error cantidad
SubProceso cantidadError(cantidad)
	si cantidad >= 1 Entonces
		Escribir "Usted ingresó: ", cantidad;				
		Escribir "vuelva pronto";
	SiNo
		Escribir "***************************ERROR*********************************";
		Escribir "El valor ingresado es incorrecto, por favor vuelva a intentarlo";
		Escribir "*****************************************************************";
	FinSi			
FinSubProceso

//pedir valor
SubProceso retiro <- valRetiro()
	Definir retiro Como Entero;
	Escribir "¿Cuánto se va a retirar?";
	Leer retiro;
FinSubProceso


Proceso actividad10
	Definir nomTitular, dimen Como Caracter;
	Definir cantidad, opcion, canTotal,numClie, valor, num, retiro Como Entero;
	Definir busUsuario, salir,existeTitular Como Logico;	
	Definir anomTitular como caracter;
	Definir acantidad como entero;
	dimension anomTitular[3], acantidad[3];
	anomTitular[0] <- "Sebastian";
	acantidad[0] <- 1000;
	anomTitular[1] <- "Fernando";
	acantidad[1] <- 2000;	
	anomTitular[2] <- "Jhon";
	acantidad[2] <- 4000;
	salir <- falso;
	
	mientras salir = falso Hacer
		opcion <- opciones();	
		busUsuario<- Verdadero;
		segun opcion hacer
			1: 					
				mientras busUsuario = verdadero Hacer
					nomTitular <- pedirUsuario();
					existeTitular <- falso;
					num <- 0;
					mientras existeTitular = falso hacer
						si nomTitular = anomTitular[num] Entonces
							cantidad <- pedirDinero(nomTitular);	
							cantidadError(cantidad);
							existeTitular <- Verdadero;
						sino							
							num <- num + 1;
							si num >2 Entonces
								Escribir "***El usuario no existe o copiaste mal el nombre***";
								existeTitular <- Verdadero;		
								
							FinSi
						FinSi						
					FinMientras
					busUsuario <- cerrarApp();
				FinMientras	
				busUsuario<- falso;
			2:
				Escribir "*************RETIRAR DINERO***********************";
				mientras busUsuario = verdadero Hacer
					nomTitular <- pedirUsuario();
					retiro <- valRetiro();
					existeTitular <- falso;
					num <- 0;
					mientras existeTitular = falso hacer
						si nomTitular = anomTitular[num] Entonces							
							retiro<-	acantidad[num] - retiro;
							si retiro > 0 Entonces
								Escribir "Señor(a) su saldo anterior era de", anomTitular[num];
								acantidad[num] <- retiro;
								Escribir "***********El saldo se actualizó correctamente************";
								Escribir anomTitular[num]," = ", retiro;
								
							SiNo
								Escribir "***********ERROR******************";
								Escribir "Usted no cuenta con saldo suficiente";
							FinSi								
							//cantidadError(cantidad);
							existeTitular <- Verdadero;
						sino							
							num <- num + 1;
							si num >2 Entonces
								Escribir "***El usuario no existe o copiaste mal el nombre***";
								existeTitular <- Verdadero;									
							FinSi
						FinSi						
					FinMientras
					busUsuario <- cerrarApp();
				FinMientras	
				busUsuario<- falso;				
			3:	
				Escribir "*******************CONSULTA EL SALDO*************************";
				mientras busUsuario = verdadero Hacer
					nomTitular <- pedirUsuario();
					existeTitular <- falso;
					num <- 0;
					mientras existeTitular = falso hacer
						si nomTitular = anomTitular[num] Entonces
							Escribir anomTitular[num]," = ", acantidad[num];
							//cantidadError(cantidad);
							existeTitular <- Verdadero;
						sino							
							num <- num + 1;
							si num >2 Entonces
								Escribir "***El usuario no existe o copiaste mal el nombre***";
								existeTitular <- Verdadero;		
								
							FinSi
						FinSi						
					FinMientras
					busUsuario <- cerrarApp();
				FinMientras	
				busUsuario<- falso;			

			De Otro Modo:
				escribir "La opcion que elegiste no está disponible. por favor intenta de nuevo";
		FinSegun
	FinMientras
	
	
	
FinProceso
