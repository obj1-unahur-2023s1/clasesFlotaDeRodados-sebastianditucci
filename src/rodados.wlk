import interioresMotores.*

class Corsa {
	var property color
	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300
	
}

class RenaultKwid {
	var property tieneTanqueAdicional
	method capacidad() {
		if (tieneTanqueAdicional) { return 3 }
		else { return 4 }
	}
	method velocidadMaxima() {
		if (tieneTanqueAdicional) { return 120 }
		else { return 110 }
	}
	method peso() {
		if (tieneTanqueAdicional) { return 1200 + 150 }
		else { return 1200 }
	}
	method color() = "azul"
}

object trafic {
	var property interior
	var property motor
	method color() = "blanco"
	method capacidad() = interior.capacidad()
	method velocidadMaxima() = motor.velocidadMaxima()
	method peso() = 4000 + interior.peso() + motor.peso()
}

class AutoEspecial {
	var property capacidad
	var property velocidadMaxima
	var property peso
	var property color
}

