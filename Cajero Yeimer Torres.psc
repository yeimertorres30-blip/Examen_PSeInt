Algoritmo Cajero
	Definir saldo, retiro, deposito Como Real
	Definir opc Como Entero
	saldo <- 1000
	Escribir "Bienvenido a nuestro cajero, acontinuacion encontraras unas opciones"
	Repetir
		Escribir "1. Consultar saldo"
		Escribir "2. Deposito"
		Escribir "3. Retiro"
		Escribir "4. Salir"
		Leer opc
		Repetir
			si opc == 0 Entonces
				Escribir "No es una opcion valida"
				Leer opc
			FinSi
		Hasta Que opc > 0
		si opc == 1 Entonces
			Escribir "Tu saldo es de $", saldo
		SiNo
			si opc == 2 Entonces
				Escribir "Cuando vas a depositar"
				Leer deposito
				Repetir
					si deposito <= 0 Entonces
						Escribir "No se puede depositar un valor igual o inferio a 0"
						Leer deposito
					FinSi
				Hasta Que deposito > 0
				saldo <- saldo + deposito
			SiNo
				si opc == 3 Entonces
					Escribir "dime el monto a retirar"
					Leer retiro
					Repetir
						si retiro > saldo_final Entonces
							Escribir "Saldo insuficiente digite un saldo igual o inferior al que tiene"
							Escribir "Tu saldo es $", saldo
							Leer retiro
						FinSi
					Hasta Que retiro <= saldo
					saldo <- saldo - retiro
				FinSi
			FinSi
		FinSi
		Escribir "Tu saldo final es de $", saldo
	Hasta Que opc == 4
	Escribir "Has terminado el proceso vuelve pronto"
FinAlgoritmo
