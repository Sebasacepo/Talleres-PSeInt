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

//salir
subproceso num<-salirAsig(rango)
	Definir opcion, num Como Entero;
	Escribir "Desea Agregar otro carro?";
	Escribir "1. S�";
	Escribir "2. No";
	leer opcion;
	si opcion = 2 Entonces
		num <- rango;
	FinSi
FinSubProceso

//salir2
SubProceso exit<- salMenu()
	Definir salConsulta, exit Como Entero;
	Escribir "�Desea Salir al men� principal?";
	Escribir "1. S�";
	Escribir "2. No";
	leer salConsulta;	
	exit <- salConsulta;				
FinSubProceso

//Eliminar
SubProceso delete(placa,marca,nomClien,tel,num)
	placa[num] <- "Vac�o";
	marca[num] <- "Vac�o";
	nomClien[num]<- "Vac�o";
	tel[num]<- "Vaci�";	
FinSubProceso

//Asignar valores vacios
SubProceso datos(placa,marca,nomClien,tel)
	Definir num Como Entero;
	para num <- 0 hasta 4 hacer
		placa[num] <- "Vac�o";
		marca[num] <- "Vac�o";
		nomClien[num]<- "Vac�o";
		tel[num]<- "Vaci�";		
	FinPara	
FinSubProceso

//imprimir Datos
subproceso impriDatos(placa,marca,nomClien,tel)
	definir num Como Entero;
	para num <- 0 hasta 4 hacer
		Escribir num +1,": Parqueadero";
		
		Si placa[num] <> "Vac�o" Entonces
			Escribir "placa:.......... ", placa[num];
			Escribir "Marca :.......... ",marca[num];
			Escribir "Nombre del cliente;..... ",nomClien[num];
			Escribir "Tel�fono:.......... ", tel[num];
		SiNo
			Escribir "Vac�o";
		FinSi		
	FinPara
FinSubProceso
//carteles
SubProceso cartel()
	Escribir "****************************************";
	Escribir "****VEHICULO RETIRADO CORRECTAMENTE*****";
	Escribir "****************************************";
FinSubProceso
SubProceso menu()
	Escribir "*********BIENVENIDO AL PARQUEADERO EL GUARDIAN*********";	
	Escribir "Escoja una opci�n";
	Escribir "1. Ingresar vehiculo";
	Escribir "2. retirar vehiculo";
	Escribir "3. Consultar vehiculo";
	Escribir "4. Salir";
FinSubProceso

Proceso Actividad7
	//salidas y opciones
	Definir opcion, AddOtro, salir, retirar, salRetirar, salConsulta, consulta, opcion2 Como Entero;
	Definir placa, marca, nomClien, tel como Caracter;
	Definir lista,datoPlaca,datoMarca,datoNomClien, datoTel, sal Como Caracter;
	Definir rango, num, inicio,e,totalCupos Como Entero;
	dimension placa[5], marca[5], nomClien[5], tel[5];
	
	datos(placa,marca,nomClien,tel);		
	opcion2 <- 1;
	mientras opcion2 = 1 Hacer
		menu();
		leer opcion;
		AddOtro <- 1;
		num <- 0;
		segun opcion Hacer
			1: 
				Escribir "Escriba la informaci�n del vehiculo";
				rango <- 4;				
				e <- 4;
				mientras AddOtro = 1 hacer					
					para num <- 0 hasta rango Hacer						
						si placa[num] = "Vac�o" Entonces
							Escribir "Placa: ";
							leer datoPlaca;
							Escribir "Marca: ";
							leer datoMarca;
							Escribir "Nombre del cliente: ";
							leer datoNomClien;
							Escribir "Tel�fono: ";
							leer datoTel;				
							placa[num] <-datoPlaca;
							marca[num] <-datoMarca;
							nomClien[num]<- datoNomClien;
							tel[num]<- datoNomClien;	
							num <- salirAsig(rango);
						SiNo
							totalCupos<-  5 -num;				
							si totalCupos = 1 Entonces
								Escribir "****No hay parqueaderos disponibles****";
							FinSi
						FinSi														
					FinPara
					AddOtro<- 2;		
			FinMientras
		2:
			salConsulta <- 2;
		mientras salConsulta <> 1 hacer			
				
			Escribir "Elija el vehiculo que va retirar seg�n la placa y tipo";
			impriDatos(placa,marca,nomClien,tel);
			Escribir "6. Cancelar";
			leer retirar;
			si retirar = 6 Entonces
				si retirar = 6 Entonces
					AddOtro <- 2;
				SiNo
					retirar <- retirar - 1;
					delete(placa,marca,nomClien,tel, retirar);
					cartel();	
				FinSi
			FinSi					
			salConsulta <- salMenu();			
		FinMientras		
	3:		
		salConsulta <- 2;
		Mientras salConsulta <> 1 Hacer		
		impriDatos(placa,marca,nomClien,tel);
		salConsulta <- salMenu();
	FinMientras	
	De Otro Modo:
		Escribir "Hasta la salir";
		opcion2<-2;
	FinSegun
FinMientras	
FinProceso
