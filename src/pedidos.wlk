import rodados.*

class Pedido {
	var property distanciaARecorrer
	var property tiempoMaximo
	var property cantidadDePasajeros
	const coloresIncompatibles = #{}
	method coloresIncompatibles() = coloresIncompatibles
	method agregarColorIncompatible(color) { coloresIncompatibles.add(color) }
	method sacarColorIncompatible(color) { coloresIncompatibles.remove(color) }
	method velocidadRequerida() = distanciaARecorrer / tiempoMaximo
	method puedeSerSatisfechoPor(auto) {
		return (auto.velocidadMaxima() - self.velocidadRequerida()) >= 10 and auto.capacidad() >= cantidadDePasajeros and !coloresIncompatibles.contains(auto.color())  
	}
	method acelerar() { tiempoMaximo -= 1 }
	method relajar() { tiempoMaximo += 1 }
}
