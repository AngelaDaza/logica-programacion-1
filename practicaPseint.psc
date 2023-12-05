SubProceso llenarArreglo(num)
	Definir i Como Entero;
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Escribir (i+1),". Ingrese un numero";
		Leer num[i];
	FinPara
FinSubProceso

SubProceso mitad <- encontrarCentro(arrego, may, men)
	Definir contadorMayor, contadorMenor, i, mitad Como Entero;;
	contadorMayor <- 0;
	contadorMenor <- 0;
	
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Si arrego[i] = may Entonces
			contadorMayor <- contadorMayor +1;
		FinSi
		Si arrego[i] = men Entonces
			contadorMenor <- contadorMenor +1;
		FinSi
	FinPara
	
	Si contadorMayor > 1 Entonces
		mitad <- may;
	FinSi
	
	Si contadorMenor > 1 Entonces
		mitad <- men;
	FinSi
FinSubProceso

Proceso practicaPseint
	Definir num, i, mayor, centro, menor Como Entero;
	mayor <- 0;
	centro <- 0;
	menor <- 0;
	
	Dimension num[3];
	llenarArreglo(num);
	
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Si mayor < num[i] Entonces
			mayor <- num[i];
		FinSi
	FinPara
	
	menor <- mayor;
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Si menor > num[i] Entonces
			menor <- num[i];
		FinSi
	FinPara
	
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Si num[i] > menor y num[i] < mayor Entonces
			centro <- num[i];
		FinSi
	FinPara
	
	Si centro = 0 Entonces
		centro <- encontrarCentro(num, mayor, menor);
	FinSi
	
	Si menor = mayor Entonces
		Escribir "Los siguientes son numeros iguales: ", menor, "-", mayor;	
	SiNo
		Si centro = mayor Entonces
			Escribir "Los siguientes son numeros iguales: ", centro, "-", mayor;	
		SiNo
			Si centro = menor Entonces
				Escribir "Los siguientes son numeros iguales: ", centro, "-", menor;
			FinSi
		FinSi
	FinSi
	
	Escribir "De mayor a menor: ",mayor, ",", centro, ",", menor, ",";
	Escribir "De menor a mayor: ",menor, ",", centro, ",", mayor, ",";
	
	
FinProceso