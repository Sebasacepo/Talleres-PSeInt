//La Secretaría de Salud Municipal requiere de una aplicación que le permita calcular 
//el IMC (Índice de masa corporal) y requiere los datos peso en kilogramos y estatura 
//en metros Para cada persona encuestada adicional a los datos suministrados, 
//debe mostrar el resultado para cada uno y establecer en qué rango se encuentra 
//(bajo peso, normal, sobrepeso y obeso).

SubProceso IMC <- calcularIMC(kg, estatura)	
	definir imc Como Real;
	imc <- kg/(estatura*estatura);
FinSubProceso

SubProceso tablaImc(imc)
	si imc < 18.6 Entonces
		Escribir "Bajo peso";
	sino 
		si imc > 18.5 y imc < 25 Entonces
			Escribir "Peso normal";
		SiNo
			si imc > 24.9 y imc <29.9 Entonces
				Escribir "Sobrepeso";
			sino 
				si imc > 29.9 Entonces
					Escribir "Obesidad";
				FinSi				
			FinSi
		FinSi
	FinSi	
FinSubProceso

//salir
SubProceso salir <- cerrarApp()
	definir cerrar Como entero;
	Definir salir Como Logico;
	Escribir "¿Desea salir de la app?";
	Escribir "1. Sí";
	Escribir "2. No";
	leer cerrar;
	si cerrar = 1 Entonces
		salir <- Verdadero;
	FinSi
FinSubProceso

Proceso actividad7
	Definir kg, estatura,imc,indice Como Real;
	Definir salir Como Logico;
	
	salir <- falso;
	mientras salir = falso hacer
		Escribir "Bienvenido con esta app puede calcular el IMC (indice de masa corporal)";
		Escribir "Por favor, ingrese su peso en KG";
		leer kg;
		Escribir "Por favor ingrese su estatura";
		leer estatura;
		indice <- calcularIMC(kg, estatura);
		
		Escribir indice;
		imc <- indice;
		tablaImc(imc);	
		salir <- cerrarApp();
	FinMientras


	
FinProceso
