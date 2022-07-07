Proceso actividad7
	//La Secretaría de Salud Municipal requiere de una aplicación que le permita calcular 
	//el IMC (Índice de masa corporal) y requiere los datos peso en kilogramos y estatura 
	//en metros Para cada persona encuestada adicional a los datos suministrados, 
	//debe mostrar el resultado para cada uno y establecer en qué rango se encuentra 
	//(bajo peso, normal, sobrepeso y obeso).
	Definir kg, estatura,imc Como Real;
	
	Escribir "Bienvenido con esta app puede calcular el IMC (indice de masa corporal)";
	Escribir "Por favor, ingrese su peso en KG";
	leer kg;
	Escribir "Por favor ingrese su estatura";
	leer estatura;
	
	imc <- kg/(estatura*estatura);
	Escribir imc;
	
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
	
FinProceso
