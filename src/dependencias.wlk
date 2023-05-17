import rodados.*
import pedidos.*

class Dependencia {
	const flotaDeRodados = []
	const pedidos = []	
	var property cantidadEmpleados
	method flotaDeRodados() = flotaDeRodados
	method agregarAFlota(rodado) { flotaDeRodados.add(rodado) }
	method quitarDeFlota(rodado) { flotaDeRodados.remove(rodado) }
	method agregarApedidos(pedido) { pedidos.add(pedido) }
	method quitarDePedidos(pedido) { pedidos.remove(pedido) }
	method pesoTotalDeFlota() = flotaDeRodados.sum({rodado => rodado.peso()})
	method estaBienEquipada() = flotaDeRodados.size() >= 3 and flotaDeRodados.all({rodado => rodado.velocidadMaxima() >= 100})
	method capacidadTotalEnColor(color) = flotaDeRodados.filter({rodado => rodado.color() == color}).sum({rodado => rodado.capacidad()})
	method colorDelRodadoMasRapido() = flotaDeRodados.max({rodado => rodado.velocidadMaxima()}).color()
	method capacidadFaltante() = self.cantidadEmpleados() - flotaDeRodados.sum({rodado => rodado.capacidad()})
	method esGrande() = self.cantidadEmpleados() >= 40 and flotaDeRodados.size() >= 5 
	method totalDePasajeros() = pedidos.sum({pedido => pedido.cantidadDePasajeros()})
	method esIncompatible(color) = pedidos.all({pedido => pedido.coloresIncompatibles().contains(color)})
	method hayAlgunRodadoQueSatisfagaElPedido(pedido) = flotaDeRodados.any({rodado => pedido.puedeSerSatisfechoPor(rodado)})
	method pedidosInsatisfechos() = pedidos.filter({pedido => !self.hayAlgunRodadoQueSatisfagaElPedido(pedido)})
	method relajar() = pedidos.forEach({pedido => pedido.relajar()})
}