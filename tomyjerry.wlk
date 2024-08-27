object tom {
	
	var energia = 50
	 
	method comer(raton) {
		energia = energia + self.energiaQueAporta(raton)
	}
	
	method correr(distancia){
		energia = energia - self.energiaQueGasta(distancia)
	}
	
	method velocidadMaxima()  {
		return 5 + energia / 10
	}

	method energiaQueGasta(distancia) {
		return distancia / 2
	}

	method puedeComer(raton, distancia) {
		return self.energiaQueGasta(distancia) < energia 
	}

	method quiereComer(raton, distancia) {
		return self.puedeComer(raton, distancia) and self.convieneComer(raton, distancia)
	}

	method convieneComer(raton, distancia) {
		return self.energiaQueGasta(distancia) < self.energiaQueAporta(raton)
	}

	method energiaQueAporta(raton) {
		return 12 + raton.peso()
	}
	
}

object jerry {
	var property edad = 2

	method peso() {
		return edad * 20
	}
}

object nibbles {
	method peso() {
		return 35
	}
}


