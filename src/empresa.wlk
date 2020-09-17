import destinos.*

object barrileteCosmico {
	
	const destinos = [garlicSea, silverSea, lastToninas, goodAirs]
		
	method obtenerLosDestinosMasImportantes(){
		return destinos.filter({destino => destino.esDestinoImportante()}).map({destino => destino.getNombre()})
	}
	
	method aplicarDescuentoADestinos(unPorcentaje){
		destinos.forEach({destino => destino.aplicarDescuento(unPorcentaje)})
	}
	
	method esExtrema(){
		return destinos.any({destino => destino.contieneVacunaEnEquipaje()})
	}
	
	method conocerCartaDeDestinos(){
		return destinos.map({destino => destino.getNombre()})
	}
	
	// metodo creado para test
	method conocerDestinosPeligrosos(){
		return destinos.filter({destino => destino.contieneVacunaEnEquipaje()}).map({destino => destino.getNombre()})
	}
}
