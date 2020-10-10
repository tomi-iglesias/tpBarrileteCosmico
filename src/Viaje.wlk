class Viaje {
	var origen
	var destino
	var medioDeTransporte
	
	method getOrigen() = origen
	
	method getDestino() = destino
	
	method getMedioDeTransporte() = medioDeTransporte
	
	method distanciaEntreLocalidades(){
		return origen.calcularDistanciaA(destino)
	}
	
	method precio(){
		return medioDeTransporte.precioPorDistancia(self.distanciaEntreLocalidades()) + destino.getPrecio()
	}
}
