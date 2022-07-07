//El profesor de geometr�a est� explicando a sus estudiantes las f�rmulas para calcular el �rea de 
//diferentes figuras geom�tricas, para ello requiere una aplicaci�n que le facilite el ejercicio 
//solicit�ndole los valores al estudiante. La aplicaci�n debe permitir que el estudiante seleccione 
//si desea calcular el �rea de un rect�ngulo, tri�ngulo o trapecio. No olvide solicitar los datos 
//necesarios para realizar cada c�lculo y mostrar su respectivo resultado. 
SubProceso menu()
	Escribir "CLASE #10 DE AREAS LAS FORMAS GEOMETRICAS";
	Escribir "Por favor elija la figura geometrica";
	Escribir "1. Rectangulo ";
	Escribir "2. Triangulo";
	Escribir "3. Trapecio";	
FinSubProceso

SubProceso rectan<- areaRectan()
	Definir rectan, altura, base Como Real;
	Escribir "Ingrese la altura del rectangulo";
	leer altura;
	Escribir "Ingrese la base";
	leer base;
	rectan <- base * altura;
FinSubProceso

SubProceso tri<-areaTriang()
	Definir altura, triangulo,tri, base Como Real;
	Escribir "Ingrese la altura del triangulo";
	leer altura;
	Escribir "Ingrese la base";
	leer base;	
	tri <- base * altura / 2;
FinSubProceso

SubProceso trapecio <- areaTrap()
	Definir altura, baseMayor, baseMenor, sumBases,trapecio como reales;
	Escribir "Ingrese la altura del trapecio";
	leer altura;
	Escribir "Ingrese la base mayor";
	leer baseMayor;
	Escribir "Ingrese la base menor";
	leer baseMenor;
	sumBases <- baseMayor + baseMenor;
	trapecio <- (sumBases * altura) / 2;
FinSubProceso

SubProceso salir <- cerrarApp()
	definir cerrar Como entero;
	Definir salir Como Logico;
	Escribir "�Desea salir?";
	Escribir "1. S�";
	Escribir "2. No";
	leer cerrar;
	si cerrar = 1 Entonces
		salir <- Verdadero;
	FinSi
FinSubProceso

Proceso actividad9
	definir  area Como Real;
	definir opcion como entero;
	definir salir, bandeja Como Logico;
	salir <- falso;
	
	Mientras salir = falso hacer
		bandeja <- falso;
		menu();
		leer opcion;		
		segun opcion Hacer
			1:		
				mientras bandeja = falso Hacer
					area <- areaRectan();
					Escribir area;	
					bandeja <- cerrarApp();
				FinMientras
						
			2:
				mientras bandeja = falso Hacer
				area<- areaTriang();
				Escribir area;	
				bandeja <- cerrarApp();
			FinMientras
			3:	
				mientras bandeja = falso Hacer
				area <- areaTrap();
				Escribir area;
				FinMientras
			De Otro Modo:
				Escribir "La opci�n que seleccionaste es erronea";
		FinSegun		
	
	FinMientras
	
	
FinProceso
