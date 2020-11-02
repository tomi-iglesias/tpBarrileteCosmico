class MedioDeTransporte {
	var velocidad
		
	method velocidad() = velocidad
		
	method precioPorKm()
		
	method precioPorDistancia(unaDistancia){
		return self.precioPorKm() * unaDistancia
	}
}

class Avion inherits MedioDeTransporte{
	var property turbinas	
	
	method agregarTurbina(unImpulso){
		self.turbinas().add(unImpulso)
	}
	
	override method precioPorKm(){
		return self.turbinas().sum()
	}
}

class Micro inherits MedioDeTransporte{
	override method precioPorKm() = 5000
}

class Tren inherits MedioDeTransporte{
	//redondeado a 1 milla es 1.6km
	override method precioPorKm(){
		return (2300 / 1.6)
	}
}

class Barco inherits MedioDeTransporte{
	const property probabilidadDeChocar
	
	override method precioPorKm(){
		return (self.probabilidadDeChocar() * 1000)
	}
}

const avion = new Avion(
	velocidad = 800,
	turbinas = [2,5,5]
)