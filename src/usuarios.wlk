import destinos.*

object pabloHari {
	
	const usuario = "PHari"
	const destinosConocidos = [lastToninas, goodAirs]
	var dineroEnCuenta = 1500
	const listaDeSiguiendo = []
	
	method getUsuario() = usuario
	
	method getDinero() = dineroEnCuenta
	
	method getSiguiendo() = listaDeSiguiendo
	
	method getDestinosConocidos() = destinosConocidos
	
	method restarDinero(unValor){
		dineroEnCuenta -= unValor
	}
	
	method agregarDestinoComoConocido(unDestino){
		destinosConocidos.add(unDestino)
	}
	
	method volarAUnDestino(unDestino){
		if (self.puedeVolarA(unDestino)){
			self.agregarDestinoComoConocido(unDestino)
			self.restarDinero(unDestino.getPrecio())
		}
	}
	
	method puedeVolarA(unDestino){
		return (unDestino.getPrecio() <= self.getDinero())
	}
	
	method millasRecorridas(){
		return ((self.getDestinosConocidos().sum({destino => destino.getPrecio()})) * 0.1)
	}
	
	method seguirUsuario(unUsuario){
		if (not (listaDeSiguiendo.contains(unUsuario))){
		listaDeSiguiendo.add(unUsuario)
		unUsuario.seguirUsuario(self)
		}
	}
}
