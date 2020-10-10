class Localidad {
	var nombre 
	var precio 
	var equipajeImprescindible
	var kmDeUbicacion
	
	method getPrecio() = precio
	
	method getNombre() = nombre
	
	method getEquipajes() = equipajeImprescindible
	
	method getUbicacion() = kmDeUbicacion
	
	method esDestinoImportante(){
		return self.getPrecio() > 2000
	}
	
	method aplicarDescuento(unPorcentaje){
		precio -= self.getPrecio() * unPorcentaje
		self.getEquipajes().add("Certificado de descuento")
	}
	
	method esPeligroso(){
		return (self.getEquipajes().any({elemento => elemento.contains("Vacuna")}))
	}
	
	method calcularDistanciaA(unaLocalidad){
		var distancia = self.getUbicacion() - unaLocalidad.getUbicacion() 		
		if (distancia > 0){
			return distancia
		} else {
			return distancia * -1
		}
	}
}
