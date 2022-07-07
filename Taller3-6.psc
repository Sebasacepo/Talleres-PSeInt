Proceso actividad6
//	Se está creando una aplicación que va a estar conectada con un prototipo que
//	permita almacenar contactos telefónicos en el dispositivo. 
//	Para ello cada contacto debe contener nombre completo, teléfono y organización. 
//	Se requiere que la aplicación permita añadir 3 contactos verificando que el número no 
//	esté almacenado, buscar contactos almacenados y eliminar contactos si el usuario lo requiere.
//	Recuerde que el sistema debe terminar cuando el usuario así lo indique.
	
	//-telefono no se puede Repetir
	//-3 contactos
	//-Crud
	//Terminar cuando se quiera
	
	definir userName1,userName2,userName3, tel1,tel2,tel3, organ1, organ2,organ3 Como Caracter;
	Definir i, num,contac, respuesta,consulta, salir,eliminar Como Entero;
	Definir sistema Como Logico;
	i <- 1;
	sistema <- Verdadero;
	userName1 <- "";
	tel1 <- "/";
	organ1 <- "";
	username2 <- "";
	tel2 <- "*";
	organ2 <- "";
	username3 <- "";
	tel3 <- "-";
	organ3 <- "";
	
	mientras sistema = Verdadero Hacer	
		Escribir "*********Bienvenido a la app de contactos********";
		Escribir "1. Agregar contacto";
		Escribir "2. Consular contacto";
		Escribir "3. Eliminar un contactos";
		Escribir "4. Salir de la aplicación";
		leer i;
		respuesta <- 1;	
		segun i Hacer
			1:	
				salir <- 1;
				mientras salir = 1 hacer
					si userName1 = "" Entonces
						Escribir "Escriba nombre de usuario";
						leer userName1;
						Escribir "Escriba número de teléfono";
						leer tel1;						
						Escribir "Escriba la organización a la que pertenece";
						leer organ1;		
						si tel1 = tel2 o tel1 = tel3 Entonces
							Escribir "Error, el número que introdujo está repetido";
							Escribir "Introduce los datos de nuevo";
							userName1 <- "";
							tel1 <- "/";
							organ1 <- "";
						SiNo
							Escribir "****************************************";
							Escribir "****USUARIO AGREGADO CORRECTAMENTE******";
							Escribir "****************************************";
						finSi
						
					SiNo				
						si username2 = "" Entonces
							Escribir "Escriba nombre de usuario";
							leer username2;	
							Escribir "Escriba número de teléfono";
							leer tel2;
							Escribir "Escriba la organización a la que pertenece";
							leer organ2;	
							si tel2 = tel1 o tel2 = tel3 Entonces
								Escribir "Error, el número que introdujo está repetido";
								Escribir "Introduce los datos de nuevo";
								username2 <- "";
								tel2 <- "*";
								organ2 <- "";
							SiNo
								Escribir "****************************************";
								Escribir "****USUARIO AGREGADO CORRECTAMENTE******";
								Escribir "****************************************";
							FinSi
							
						SiNo
							si username3 = "" Entonces
								Escribir "Escriba nombre de usuario";
								leer username3;	
								Escribir "Escriba número de teléfono";
								leer tel3;
								Escribir "Escriba la organización a la que pertenece";
								leer organ3;	
								si tel3 = tel1 o tel3 = tel2 Entonces
									Escribir "Error, el número que introdujo está repetido";
									Escribir "Introduce los datos de nuevo";
									username3 <- "";
									tel3 <- "-";
									organ3 <- "";
								SiNo
									Escribir "****************************************";
									Escribir "****USUARIO AGREGADO CORRECTAMENTE******";
									Escribir "****************************************";
								FinSi
							SiNo
								Escribir "Agenda llena, borre un usuario para agregar otro";
							FinSi
						FinSi
					FinSi					
					Escribir "¿Desea almacenar otro contacto?";
					Escribir "1. Si";
					Escribir "2. No";
					leer salir;				
					
				FinMientras				
					
			2:
				salir <- 1;
				Mientras salir = 1 Hacer				
					Escribir "Ingrese el número de usuario que desa consultar";
					si userName1 = "" Entonces
						userName1 <- "Usuario no asignado";		
					FinSi				
					si userName2 = "" Entonces
						userName2 <- "Usuario no asignado";
					FinSi
					si userName3= "" Entonces
						userName3 <- "Usuario no asignado";								
					FinSi
					Escribir "Escoje el usuario que deseas consultar";
					Escribir "1. ", userName1;
					Escribir "2. ", username2;
					Escribir "3. ", username3;
					Escribir "4. Salir";
					leer consulta;
					si consulta = 1 Entonces
						Escribir "****************************************";
						Escribir "********INFORMACIÓN DEL CONTACTO********";
						Escribir "****************************************";
						Escribir "Usuario: ", userName1;
						Escribir "telefono: ", tel1;
						Escribir "Organización: ", organ1;
					SiNo
						si consulta = 2 Entonces
							Escribir "****************************************";
							Escribir "********INFORMACIÓN DEL CONTACTO********";
							Escribir "****************************************";
							Escribir "Usuario: ", userName2;
							Escribir "telefono: ", tel2;
							Escribir "Organización: ", organ2;
						SiNo
							si consulta = 3 Entonces
								Escribir "****************************************";
								Escribir "********INFORMACIÓN DEL CONTACTO********";
								Escribir "****************************************";
								Escribir "Usuario: ", userName3;
								Escribir "telefono: ", tel3;
								Escribir "Organización: ", organ3;
							sino 
								Escribir "¿Seguro que desea salir al menú principal?";
								Escribir "1. Si";
								Escribir "2. No";
								leer salir;
								si salir = 1 Entonces
									salir <- 2;
								SiNo
									salir <- 1;
								FinSi
							FinSi
						FinSi
					FinSi
					si salir = 2 Entonces					
					Escribir "¿Desea consultar otro contacto?";
					Escribir "1. Si";
					Escribir "2. No";
					leer salir;
					FinSi
				FinMientras
			
			3:
				salir <- 2;
				mientras salir = 2 Hacer			
					Escribir "Escoje el usuario que desea eliminar";
					si userName1 = "" Entonces
						userName1 <- "Usuario no asignado";		
					FinSi				
					si userName2 = "" Entonces
						userName2 <- "Usuario no asignado";
					FinSi
					si userName3= "" Entonces
						userName3 <- "Usuario no asignado";								
					FinSi
					Escribir "1. ", userName1;
					Escribir "2. ", username2;
					Escribir "3. ", username3;
					Escribir "4. salir al menú principal";
					leer eliminar;
					
					si eliminar = 1 Entonces
						userName1<- "";
						tel1 <-"/";
						organ1 <- "";
						Escribir "****************************************";
						Escribir "******CONTACTO ELIMINADO CON EXITO******";
						Escribir "****************************************";
					SiNo
						si eliminar = 2 Entonces
							userName2<- "";
							tel2 <-"*";
							organ2 <- "";
							Escribir "****************************************";
							Escribir "******CONTACTO ELIMINADO CON EXITO******";
							Escribir "****************************************";
						SiNo
							si eliminar = 3 Entonces
								userName3<- "";
								tel3 <-"-";
								organ3 <- "";
								Escribir "****************************************";
								Escribir "******CONTACTO ELIMINADO CON EXITO******";
								Escribir "****************************************";
							SiNo
								si eliminar = 4 Entonces
									Escribir "Salió correctamente";
									salir <- 2;
									
								SiNo									
															
									
								FinSi
							FinSi
						FinSi
					FinSi
					Escribir "¿Desea salir al menú principal?";
					Escribir "1. Si";
					Escribir "2. No";
					leer salir;			
				FinMientras
			4:
				sistema <- falso;
		FinSegun	
		
	FinMientras

	
FinProceso
