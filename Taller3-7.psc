Proceso Actividad7
//	El parqueadero "El guardi�n" presta sus servicios de parqueadero nocturno
//	para los usuarios del barrio y requiere una aplicaci�n que permita registrar
//	los veh�culos que se cuidan en estas instalaciones. Se sugiere que el
//	parqueadero tenga los atributos del veh�culo como son, placa y marca, y 
//	los datos del cliente como son nombre completo y n�mero de tel�fono.
//	Para cada veh�culo se debe permitir la opci�n de ingresar al parqueadero, 
//	retirar del parqueadero y consultar si un veh�culo se encuentra en el 
//	parqueadero. Recuerde que el sistema debe terminar cuando el usuario 
//	as� lo indique. Tenga en presente que el parqueadero solo puede almacenar m�ximo 5 veh�culos.
		
	//Datos: Carro y cliente	
	//ingreso
	//salida
	//consulta
	
	//salidas y opciones
	Definir opcion, AddOtro, salir, retirar, salRetirar, salConsulta, consulta, opcion2 Como Entero;
	//placas
	Definir placa, marca, nomClien, telComo como Caracter;
	//tipos
	definir tipo1,tipo2,tipo3,tipo4,tipo5 Como Caracter;
	//placas
	Definir placa1,placa2,placa3,placa4,placa5 Como Caracter;
	//marcas
	Definir marca1, marca2,marca3,marca4,marca5 Como Caracter;
	//Due�o
	Definir nomClien1,nomClien2,nomClien3,nomClien4,nomClien5 Como Caracter;
	//numero due�o
	Definir tel1,tel2,tel3,tel4,tel5 Como Caracter;
	
	//Vehiculo 1
	tipo1 <- "";
	placa1 <- "";
	marca1 <- "";
	nomClien1 <- "";
	tel1 <- "";	
	//vehiculo2
	tipo2 <- "";
	placa2 <- "";
	marca2 <- "";
	nomClien2 <- "";
	tel2 <- "";	
	//Vehiculo 3
	tipo3 <- "";
	placa3 <-"";
	marca3 <- "";
	nomClien3 <- "";
	tel3 <- "";
	//Vehiculo 4
	tipo4 <- "";
	placa4 <- "";
	marca4 <- "";
	nomClien4 <- "";
	tel4 <- "";
	//vehiculo 5
	tipo5 <- "";
	placa5 <- "";
	marca5 <- "";
	nomClien5 <- "";
	tel5 <- "";
	opcion2 <- 1;
	mientras opcion2 = 1 Hacer
		Escribir "*********BIENVENIDO AL PARQUEADERO EL GUARDIAN*********";	
		Escribir "Escoja una opci�n";
		Escribir "1. Ingresar vehiculo";
		Escribir "2. retirar vehiculo";
		Escribir "3. Consultar vehiculo";
		Escribir "4. Salir";
		leer opcion;
		AddOtro <- 1;

		segun opcion Hacer
			1: 
				Escribir "Escriba la informaci�n del vehiculo y del due�o";
				mientras AddOtro = 1 hacer
				si tipo1 = "" Entonces
					Escribir "Tipo de vehiculo";
					leer tipo1;
					Escribir "Placa del vehiculo";
					leer placa1;
					Escribir "Marca del vehiculo";
					leer marca1;
					Escribir "Nombre del cliente";
					leer nomClien1;
					Escribir "Tel�fono del cliente";
					leer tel1;
				SiNo
					si tipo2 = "" Entonces
						Escribir "Tipo de vehiculo";
						leer tipo2;
						Escribir "Placa del vehiculo";
						leer placa2;
						Escribir "Marca del vehiculo";
						leer marca2;
						Escribir "Nombre del cliente";
						leer nomClien2;
						Escribir "Tel�fono del cliente";
						leer tel2;
					SiNo
						si tipo3 = "" Entonces
							Escribir "Tipo de vehiculo";
							leer tipo3;
							Escribir "Placa del vehiculo";
							leer placa3;
							Escribir "Marca del vehiculo";
							leer marca3;
							Escribir "Nombre del cliente";
							leer nomClien3;
							Escribir "Tel�fono del cliente";
							leer tel3;
						SiNo
							si tipo4 = "" Entonces
								Escribir "Tipo de vehiculo";
								leer tipo4;
								Escribir "Placa del vehiculo";
								leer placa4;
								Escribir "Marca del vehiculo";
								leer marca4;
								Escribir "Nombre del cliente";
								leer nomClien4;
								Escribir "Tel�fono del cliente";
								leer tel4;
							SiNo
								si tipo5 = "" Entonces
									Escribir "Tipo de vehiculo";
									leer tipo5;
									Escribir "Placa del vehiculo";
									leer placa5;
									Escribir "Marca del vehiculo";
									leer marca5;
									Escribir "Nombre del cliente";
									leer nomClien5;
									Escribir "Tel�fono del cliente";			
									leer tel5;
								sino
									Escribir "Ya no hay cupos en el parqueadero";
									
								FinSi	
							FinSi	
						FinSi							
					FinSi
				FinSi
				Escribir "****************************************";
				Escribir "****VEHICULO AGREGADO CORRECTAMENTE*****";
				Escribir "****************************************";
				Escribir "�Desea agregar otro vehiculo?";
				Escribir "1. S�";
				Escribir "2. No";
				leer AddOtro;	
			FinMientras
		2:
			salRetirar <- 2;
		mientras salRetirar <> 1 hacer
			Mientras tipo1 = "" o tipo2 = "" o tipo3 = "" o tipo4 = "" o tipo5 = ""  Hacer					
				si tipo1 = "" Entonces
					tipo1 <- " Parqueadero vac�o";
				sino
					si tipo2 = "" Entonces
						tipo2 <- " Parqueadero vac�o";
					SiNo
						si tipo3 = "" Entonces
							tipo3 <- " Parqueadero vac�o";
						sino 
							si tipo4 = "" Entonces
								tipo4 <- " Parqueadero vac�o";
							sino 
								si tipo5 = "" Entonces							
									tipo5 <- " Parqueadero vac�o";
								SiNo
									Escribir "todos los parqueadores est�n llenos";
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinMientras
			
		
			Escribir "Elija el vehiculo que va retirar seg�n la placa y tipo";
			Escribir "1. ", tipo1, " " , placa1;
			Escribir "2. ", tipo2, " " , placa2;
			Escribir "3. ", tipo3, " " , placa3;
			Escribir "4. ", tipo4, " " , placa4;
			Escribir "5. ", tipo5, " " , placa5;	
			Escribir "6. Cancelar";
			leer retirar;
		
			si retirar = 1 Entonces
				tipo1 <- "";
				placa1 <- "";
				marca1 <- "";
				nomClien1 <- "";
				tel1 <- "";
				Escribir "****************************************";
				Escribir "****VEHICULO RETIRADO CORRECTAMENTE*****";
				Escribir "****************************************";
			sino
				si retirar = 2 Entonces
					tipo2 <- "";
					placa2 <- "";
					marca2 <- "";
					nomClien2 <- "";
					tel2 <- "";
					Escribir "****************************************";
					Escribir "****VEHICULO RETIRADO CORRECTAMENTE*****";
					Escribir "****************************************";
				SiNo
					si retirar = 3 Entonces
						veh3 <- "";
						tipo3 <- "";
						placa3 <-"";
						marca3 <- "";
						nomClien3 <- "";
						tel3 <- "";
						Escribir "****************************************";
						Escribir "****VEHICULO RETIRADO CORRECTAMENTE*****";
						Escribir "****************************************";
					sino 
						si retirar = 4 Entonces
							tipo4 <- "";
							placa4 <- "";
							marca4 <- "";
							nomClien4 <- "";
							tel4 <- "";
							Escribir "****************************************";
							Escribir "****VEHICULO RETIRADO CORRECTAMENTE*****";
							Escribir "****************************************";
						sino 
							si retirar = 5 Entonces
								tipo5 <- "";
								placa5 <- "";
								marca5 <- "";
								nomClien5 <- "";
								tel5 <- "";
								Escribir "****************************************";
								Escribir "****VEHICULO RETIRADO CORRECTAMENTE*****";
								Escribir "****************************************";
							SiNo
								si retirar = 6 Entonces
									AddOtro <- 2;
								SiNo															
									
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
			Escribir "�Desea Salir al men� principal?";
			Escribir "1. S�";
			Escribir "2. No";
			leer salRetirar;	
		FinMientras
		
	3:
		
		salConsulta <- 1;
		Mientras salConsulta <> 2 Hacer		
			si tipo1 = "" Entonces
				tipo1 <- " Parqueadero vac�o";
			FinSi
			si tipo2 = "" Entonces
				tipo2 <- " Parqueadero vac�o";
			FinSi
			si tipo3 = "" Entonces
				tipo3 <- " Parqueadero vac�o";
			FinSi
			si tipo4 = "" Entonces
				tipo4 <- " Parqueadero vac�o";
			FinSi
			si tipo5 = "" Entonces		
				tipo5 <- " Parqueadero vac�o";
			FinSi
			

			
		
		Escribir "ELIJA EL VEHICULO QUE EST� EN EL PARQUEADERO";
		Escribir "1. ", tipo1, " " , placa1;
		Escribir "2. ", tipo2, " " , placa2;
		Escribir "3. ", tipo3, " " , placa3;
		Escribir "4. ", tipo4, " " , placa4;
		Escribir "5. ", tipo5, " " , placa5;	
		Escribir "6. salir";
		leer consulta;
		
		si consulta = 1 Entonces
			Escribir "Tipo: ", tipo1;
			Escribir "Placa: " , placa1;
			Escribir "Marca: ", marca1;
			Escribir "Due�o: ", nomClien1;
			Escribir "Telefono: ", tel1;
		SiNo
			si consulta = 2 Entonces
				Escribir "Tipo: ", tipo2;
				Escribir "Placa: " , placa2;
				Escribir "Marca: ", marca2;
				Escribir "Due�o: ", nomClien2;
				Escribir "Telefono: ", tel2;
			sino
				si consulta = 3 Entonces
					Escribir "Tipo: ", tipo3;
					Escribir "Placa: " , placa3;
					Escribir "Marca: ", marca3;
					Escribir "Due�o: ", nomClien3;
					Escribir "Telefono: ", tel3;
				SiNo
					si consulta = 4 Entonces
						Escribir "Tipo: ", tipo4;
						Escribir "Placa: " , placa4;
						Escribir "Marca: ", marca4;
						Escribir "Due�o: ", nomClien4;
						Escribir "Telefono: ", tel4;
					sino 
						si consulta = 5 Entonces
							Escribir "Tipo: ", tipo5;
							Escribir "Placa: " , placa5;
							Escribir "Marca: ", marca5;
							Escribir "Due�o: ", nomClien5;
							Escribir "Telefono: ", tel5;
						SiNo
							Escribir "La opci�n es incorrecta o no hay vehiculo";						
							
						FinSi
					FinSi					
				FinSi
			FinSi
		FinSi
		Escribir "�Deseas hacer otra consulta?";
		Escribir "1. S�";
		Escribir "2. No";
		leer salConsulta;	
	FinMientras
	
	De Otro Modo:
		Escribir "Hasta la pr�xima";
		opcion2<-2;
	FinSegun
FinMientras
	
FinProceso
