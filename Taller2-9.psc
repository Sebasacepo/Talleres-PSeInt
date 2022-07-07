Proceso actividad9
	//El profesor de geometría está explicando a sus estudiantes las fórmulas para calcular el área de 
	//diferentes figuras geométricas, para ello requiere una aplicación que le facilite el ejercicio 
	//solicitándole los valores al estudiante. La aplicación debe permitir que el estudiante seleccione 
	//si desea calcular el área de un rectángulo, triángulo o trapecio. No olvide solicitar los datos 
	//necesarios para realizar cada cálculo y mostrar su respectivo resultado.
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
			Escribir "La opción que seleccionaste es erronea";
	FinSegun
	
	
	
	
FinProceso
