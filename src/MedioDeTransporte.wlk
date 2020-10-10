class MedioDeTransporte {
		var velocidad
		var precioPorKm
		
		method getVelocidad() = velocidad
		
		method getPrecioPorKm() = precioPorKm
		
		method precioPorDistancia(unaDistancia){
			return self.getPrecioPorKm() * unaDistancia
		}
}
