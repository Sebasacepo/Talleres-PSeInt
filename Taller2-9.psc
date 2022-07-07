//El profesor de geometría está explicando a sus estudiantes las fórmulas para calcular el área de 
//diferentes figuras geométricas, para ello requiere una aplicación que le facilite el ejercicio 
//solicitándole los valores al estudiante. La aplicación debe permitir que el estudiante seleccione 
//si desea calcular el área de un rectángulo, triángulo o trapecio. No olvide solicitar los datos 
//necesarios para realizar cada cálculo y mostrar su respectivo resultado. 
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
	Escribir "¿Desea salir?";
	Escribir "1. Sí";
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
				Escribir "La opción que seleccionaste es erronea";
		FinSegun		
	
	FinMientras
	
	
FinProceso
