import MedioDeTransporte.*
import Localidad.*

class Viaje {
	var origen
	var destino
	var medioDeTransporte
	
	method origen() = origen
	
	method destino() = destino
	
	method medioDeTransporte() = medioDeTransporte
	
	method distanciaEntreLocalidades(){
		return origen.calcularDistanciaA(destino)
	}
	
	method precio(){
		return medioDeTransporte.precioPorDistancia(self.distanciaEntreLocalidades()) + destino.precio()
	}
}

const viajeASilverSea = new Viaje(
	origen = garlicSea,
	destino = silverSea,
	medioDeTransporte = avion
)

const viajeALastToninas = new Viaje(
	origen = garlicSea,
	destino = lastToninas,
	medioDeTransporte = avion
)