Proceso actividad9
	//El profesor de geometr�a est� explicando a sus estudiantes las f�rmulas para calcular el �rea de 
	//diferentes figuras geom�tricas, para ello requiere una aplicaci�n que le facilite el ejercicio 
	//solicit�ndole los valores al estudiante. La aplicaci�n debe permitir que el estudiante seleccione 
	//si desea calcular el �rea de un rect�ngulo, tri�ngulo o trapecio. No olvide solicitar los datos 
	//necesarios para realizar cada c�lculo y mostrar su respectivo resultado.
	definir rectangulo, triangulo, trapecio, area, base, altura, baseMayor, baseMenor,sumBases Como Real;
	definir opcion como entero;
	
	Escribir "CLASE #10 DE AREAS LAS FORMAS GEOMETRICAS";
	Escribir "Por favor elija la figura geometrica";
	Escribir "1. Rectangulo ";
	Escribir "2. Triangulo";
	Escribir "3. Trapecio";
	leer opcion;
	
	segun opcion Hacer
		1:
			Escribir "Ingrese la altura del rectangulo";
			leer altura;
			Escribir "Ingrese la base";
			leer base;
			area <- base * altura;
			Escribir area;
			
		2:
			Escribir "Ingrese la altura del triangulo";
			leer altura;
			Escribir "Ingrese la base";
			leer base;
			area <- (base * altura) / 2;
			Escribir area;
			
		3:
			Escribir "Ingrese la altura del trapecio";
			leer altura;
			Escribir "Ingrese la base mayor";
			leer baseMayor;
			Escribir "Ingrese la base menor";
			leer baseMenor;
			sumBases <- baseMayor + baseMenor;
			area <- (sumBases * altura) / 2;
			Escribir area;
		De Otro Modo:
			Escribir "La opci�n que seleccionaste es erronea";
	FinSegun
	
	
	
	
FinProceso
