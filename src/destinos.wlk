/** First Wollok example */
object garlicSea {
	const nombre = "Garlic's Sea"
	var precio = 2500
	const equipajeImprescindible = ["Cania de pescar, Piloto"]
	
	method getPrecio() = precio
	
	method getNombre() = nombre
	
	method getEquipajes() = equipajeImprescindible
	
	method esDestinoImportante(){
		return self.getPrecio() > 2000
	}
	
	method aplicarDescuento(unPorcentaje){
		precio -= self.getPrecio() * unPorcentaje
		self.agregarEquipajeImprescindible("Certificado de descuento")
	}
	
	method agregarEquipajeImprescindible(unEquipaje){
		self.getEquipajes().add(unEquipaje)
	}
	
	method tieneElemento(unElemento){
		return (self.getEquipajes().contains(unElemento))
	}
	
	method contieneVacunaEnEquipaje(){
		return (self.tieneElemento("Vacuna B") || self.tieneElemento("Vacuna gripal"))
	}
	
}

object silverSea{
	const nombre = "Silver's Sea"
	var precio = 1350
	const equipajeImprescindible = ["Protector solar", "Equipo de buceo"]
	
	method getNombre() = nombre
	
	method getPrecio() = precio
	
	method getEquipajes() = equipajeImprescindible
	
	method esDestinoImportante(){
		return self.getPrecio() > 2000
	}
	
	method aplicarDescuento(unPorcentaje){
		precio -= self.getPrecio() * unPorcentaje
		self.agregarEquipajeImprescindible("Certificado de descuento")
	}
	
	method agregarEquipajeImprescindible(unEquipaje){
		self.getEquipajes().add(unEquipaje)
	}
	
	method tieneElemento(unElemento){
		return (self.getEquipajes().contains(unElemento))
	}
	
	method contieneVacunaEnEquipaje(){
		return (self.tieneElemento("Vacuna b") || self.tieneElemento("Vacuna gripal"))
	}
}

object lastToninas{
	const nombre = "Last Toninas"
	var precio = 3500
	const equipajeImprescindible = ["Vacuna gripal", "Vacuna b", "Necronomicon"]
	
	method getNombre() = nombre
	
	method getEquipajes() = equipajeImprescindible
	
	method getPrecio() = precio
	
	method esDestinoImportante(){
		return self.getPrecio() > 2000
	}
	
	method aplicarDescuento(unPorcentaje){
		precio -= self.getPrecio() * unPorcentaje
		self.agregarEquipajeImprescindible("Certificado de descuento")
	}
	
	method agregarEquipajeImprescindible(unEquipaje){
		self.getEquipajes().add(unEquipaje)
	}
	
	method tieneElemento(unElemento){
		return (self.getEquipajes().contains(unElemento))
	}
	
	method contieneVacunaEnEquipaje(){
		return (self.tieneElemento("Vacuna b") || self.tieneElemento("Vacuna gripal"))
	}
}

object goodAirs{
	const nombre = "Good Airs"
	var precio = 1500
	const equipajeImprescindible = ["Cerveza", "Protector solar"]
	
	method getNombre() = nombre
	
	method getPrecio() = precio
	
	method getEquipajes() = equipajeImprescindible

	method esDestinoImportante(){
		return self.getPrecio() > 2000
	}
	
	method aplicarDescuento(unPorcentaje){
		precio -= self.getPrecio() * unPorcentaje
		self.agregarEquipajeImprescindible("Certificado de descuento")
	}
	
	method agregarEquipajeImprescindible(unEquipaje){
		self.getEquipajes().add(unEquipaje)
	}
	
	method tieneElemento(unElemento){
		return (self.getEquipajes().contains(unElemento))
	}
	
	method contieneVacunaEnEquipaje(){
		return (self.tieneElemento("Vacuna b") || self.tieneElemento("Vacuna gripal"))
	}
}
