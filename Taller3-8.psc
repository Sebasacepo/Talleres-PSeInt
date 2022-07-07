Proceso Actividad8
//La escuela automovilística "El Maestro" requiere una aplicación que 
//permita registrar a sus clientes en los cursos de enseñanza 
//automovilística y establecer quienes lo han aprobado para continuar con el
//trámite de adquirir la licencia de conducción. Para cada usuario se debe permitir
//registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y 
//resultados de la prueba del curso (si fueron aprobados o no). Recuerde que el sistema
//debe terminar cuando el usuario así lo indique. Tenga presente que la escuela
//tiene capacidad máxima de gestionar 8 usuarios en su totalidad.
	
	//Registrar ingreso por usuario
	//consultar usuarios y resultados (aprobados o no)
	//Terminar cuando se indique
	//8 usuarios maximo
	
	definir opcion, salir, inicio, consulta,ponNota, salConsultar Como Entero;
	Definir userName, cc, text, cambio, curso Como Caracter;
	//Nombre de usuario
	definir userName1, userName2, userName3, userName4, userName5, userName6, userName7, userName8 Como Caracter;
	//cc
	Definir cc1,cc2,cc3,cc4,cc5,cc6,cc7,cc8 Como Caracter;
	//notas
	Definir nota1, nota2,nota3,nota4,nota5,nota6,nota7,nota8 Como Caracter;
	//cursando o no cursando
	Definir curso1, curso2, curso3, curso4, curso5, curso6, curso7,curso8 Como Caracter;
	
	userName1 <- "";
	cc1 <- "";
	nota1 <- "";
	curso1<- "";
	
	userName2 <- "";
	cc2 <- "";
	nota2 <- "";
	curso2<- "";
	
	userName3 <- "";
	cc3 <- "";
	nota3 <- "";
	curso3<- "";
	
	userName4 <- "";
	cc4 <- "";
	nota4 <- "";
	curso4<- "";
	
	userName5 <- "";
	cc5 <- "";
	nota5 <- "";
	curso5<- "";
	
	userName6 <- "";
	cc6 <- "";
	nota6 <- "";
	curso6<- "";
	
	userName7 <- "";
	cc7 <- "";
	nota7 <- "";
	curso7<- "";
	
	userName8 <- "";
	cc8 <- "";
	nota8 <- "";
	curso8<- "";
	
	opcion <- 1;
	mientras opcion <> 3 Hacer
		Escribir "BIENVENIDO A ESCUELA AUTOMOVILISTICA EL MAESTRO";
		Escribir "Escoja la opción que necesita";
		Escribir "1. Registrar usuario";
		Escribir "2. Consultar usuarios y resultados";
		Escribir "3. Salir";
		leer opcion;
		inicio <- 1;
		
		segun opcion hacer
			1:				
			mientras inicio <> 2 Hacer			
				
				si userName1 = "" Entonces
					Escribir "REGISTRO DE USUARIO";
					Escribir "Nombre de usuario";
					leer userName1;
					Escribir "Cédula";
					leer cc1;
				SiNo
					si userName2 = "" Entonces
						Escribir "REGISTRO DE USUARIO";
						Escribir "Nombre de usuario";
						leer userName2;
						Escribir "Cédula";
						leer cc2;
					SiNo
						si userName3 = "" Entonces
							Escribir "REGISTRO DE USUARIO";
							Escribir "Nombre de usuario";
							leer userName3;
							Escribir "Cédula";
							leer cc3;
						SiNo
							si userName4 = "" Entonces
								Escribir "REGISTRO DE USUARIO";
								Escribir "Nombre de usuario";
								leer userName4;
								Escribir "Cédula";
								leer cc4;
							SiNo
								si userName5 = "" Entonces
									Escribir "REGISTRO DE USUARIO";
									Escribir "Nombre de usuario";
									leer userName5;
									Escribir "Cédula";
									leer cc5;
								sino
									si userName6 = "" Entonces
										Escribir "REGISTRO DE USUARIO";
										Escribir "Nombre de usuario";
										leer userName6;
										Escribir "Cédula";
										leer cc6;
									sino
										si userName7 = "" Entonces
											Escribir "REGISTRO DE USUARIO";
											Escribir "Nombre de usuario";
											leer userName7;
											Escribir "Cédula";
											leer cc7;
										sino
											si userName8 = "" Entonces
												Escribir "REGISTRO DE USUARIO";
												Escribir "Nombre de usuario";
												leer userName8;
												Escribir "Cédula";
												leer cc8;
											sino
												Escribir "Todos los cupos están llenos";
											FinSi
										FinSi
									FinSi									
								FinSi	
							FinSi	
						FinSi							
					FinSi
				FinSi
			
				Escribir "****************************************";
				Escribir "****USUARIO AGREGADO CORRECTAMENTE*****";
				Escribir "****************************************";
				Escribir "¿Desea agregar otro usuario?";
				Escribir "1. Sí";
				Escribir "2. No";
				leer inicio;
			FinMientras
		2:
			salConsultar <- 1;
			mientras salConsultar <> 2 Hacer	
				si nota1 = "" Entonces

					nota1 <- "Sin nota";
					curso1<- "por evaluar";
				FinSi				
				si nota2 = "" Entonces
					
					nota2 <- "Sin nota";
					curso2<- "por evaluar";
				FinSi
				si nota3= "" Entonces
				
					nota3 <- "Sin nota";
					curso3<- "por evaluar";
				FinSi
				si nota4= "" Entonces
	
					nota4 <- "Sin nota";
					curso4<- "por evaluar";
				FinSi
				si nota5= "" Entonces

					nota5 <- "Sin nota";
					curso5<- "por evaluar";
				FinSi
				si nota6= "" Entonces

					nota6 <- "Sin nota";
					curso6<- "por evaluar";
					
				FinSi
				si nota7= "" Entonces

					nota7 <- "Sin nota";
					curso7<- "por evaluar";
				FinSi
				si nota8= "" Entonces

					nota8 <- "Sin nota";
					curso8<- "por evaluar";
				FinSi
				
				// cupos
				si userName1 = "" Entonces
					userName1 <- "No asignado";	
					nota1 <- "Sin nota";
					curso1<- "por evaluar";
				FinSi				
				si userName2 = "" Entonces
					userName2 <- "No asignado";
					nota2 <- "Sin nota";
					curso2<- "por evaluar";
				FinSi
				si userName3= "" Entonces
					userName3 <- "No asignado";			
					nota3 <- "Sin nota";
					curso3<- "por evaluar";
				FinSi
				si userName4= "" Entonces
					userName4 <- "No asignado";	
					nota4 <- "Sin nota";
					curso4<- "por evaluar";
				FinSi
				si userName5= "" Entonces
					userName5 <- "No asignado";	
					nota5 <- "Sin nota";
					curso5<- "por evaluar";
				FinSi
				si userName6= "" Entonces
					userName6 <- "No asignado";	
					nota6 <- "Sin nota";
					curso6<- "por evaluar";
					
				FinSi
				si userName7= "" Entonces
					userName7 <- "No asignado";
					nota7 <- "Sin nota";
					curso7<- "por evaluar";
				FinSi
				si userName8= "" Entonces
					userName8 <- "No asignado";	
					nota8 <- "Sin nota";
					curso8<- "por evaluar";
				FinSi
				
				Escribir "Consultar usuario y sus notas";
				Escribir "1. Usuario: ", userName1, " nota: ", nota1, " Estado: ", curso1; 
				Escribir "2. Usuario: ", userName2, " nota: ", nota2, " Estado: ", curso2;
				Escribir "3. Usuario: ", userName3, " nota: ", nota3, " Estado: ", curso3;
				Escribir "4. Usuario: ", userName4, " nota: ", nota4, " Estado: ", curso4;
				Escribir "5. Usuario: ", userName5, " nota: ", nota5, " Estado: ", curso5;
				Escribir "6. Usuario: ", userName6, " nota: ", nota6, " Estado: ", curso6;
				Escribir "7. Usuario: ", userName7, " nota: ", nota7, " Estado: ", curso7;
				Escribir "8. Usuario: ", userName8, " nota: ", nota8, " Estado: ", curso8;
				
				Escribir "Elija una opción";			
				Escribir "1. Asignar nota y estado a un usuario";
				Escribir "2. salir al menú de inicio";
				leer opcion;				
				mientras opcion = 1 Hacer	
					Escribir "Elige el usuario";
					leer ponNota;
				
				si ponNota = 1 Entonces
					Escribir "Elije la nota";
					Escribir "A = Aprobado";
					Escribir "D = Desprobado";
					leer text;					
					nota1 <- text;
					cambio <- nota1;
					Escribir "Elige el estado";
					Escribir "Sin cursar";
					Escribir "Cursado";
					leer curso1;
					Escribir "Nota agregada correctamente";	
				SiNo
					si ponNota = 2 Entonces
						Escribir "Elije la nota";
						Escribir "A = Aprobado";
						Escribir "D = Desprobado";
						leer text;
						nota2 <- text;
						cambio <- nota2;
						Escribir "Elige el estado";
						Escribir "Sin cursar";
						Escribir "Cursado";
						leer curso2;
						Escribir "Nota agregada correctamente";	
					SiNo
						si ponNota = 3 Entonces
							Escribir "Elije la nota";
							Escribir "A = Aprobado";
							Escribir "D = Desprobado";
							leer text;
							nota3 <- text;
							cambio <- nota3;
							Escribir "Elige el estado";
							Escribir "Sin cursar";
							Escribir "Cursado";
							leer curso3;
							Escribir "Nota agregada correctamente";	
						SiNo
							si ponNota = 4 Entonces
								Escribir "Elije la nota";
								Escribir "A = Aprobado";
								Escribir "D = Desprobado";
								leer text;
								nota4 <- text;
								cambio <- nota4;
								Escribir "Elige el estado";
								Escribir "Sin cursar";
								Escribir "Cursado";
								leer curso4;
								Escribir "Nota agregada correctamente";	
								
							SiNo
								si ponNota = 5 Entonces
									Escribir "Elije la nota";
									Escribir "A = Aprobado";
									Escribir "D = Desprobado";
									leer text;
									nota5 <- text;
									cambio <- nota5;
									Escribir "Elige el estado";
									Escribir "Sin cursar";
									Escribir "Cursado";
									leer curso5;
									Escribir "Nota agregada correctamente";	
								SiNo
									si ponNota = 6 Entonces
										Escribir "Elije la nota";
										Escribir "A = Aprobado";
										Escribir "D = Desprobado";
										leer text;
										nota6 <- text;
										cambio <- nota6;
										Escribir "Elige el estado";
										Escribir "Sin cursar";
										Escribir "Cursado";
										leer curso6;
										Escribir "Nota agregada correctamente";	
									SiNo
										si ponNota = 7 Entonces
											Escribir "Elije la nota";
											Escribir "A = Aprobado";
											Escribir "D = Desprobado";
											leer text;
											nota7 <- text;
											cambio <- nota7;
											Escribir "Elige el estado";
											Escribir "Sin cursar";
											Escribir "Cursado";
											leer curso7;
											Escribir "Nota agregada correctamente";	
										SiNo
											si ponNota = 8 Entonces
												Escribir "Elije la nota";
												Escribir "A = Aprobado";
												Escribir "D = Desprobado";
												leer text;
												nota8 <- text;
												cambio <- nota8;
												Escribir "Elige el estado";
												Escribir "Sin cursar";
												Escribir "Cursado";
												leer curso8;
												Escribir "Nota agregada correctamente";	
											SiNo
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi							
				FinSi
				opcion <- 2;
				
			FinMientras
			
			Escribir "¿Desea consultar los usuarios nuevamente?";
			Escribir "1. Sí";
			Escribir "2. No";
			leer salConsultar;
			FinMientras
		FinSegun

	FinMientras
	
FinProceso
