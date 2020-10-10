class Usuario {
	var usuario
	var origen 
	var viajesConocidos = []
	var dineroEnCuenta
	var listaDeSiguiendo = #{}
	
	method getUsuario() = usuario
	
	method getDinero() = dineroEnCuenta
	
	method getSiguiendo() = listaDeSiguiendo
	
	method getViajesConocidos() = viajesConocidos
	
	method getOrigen () = origen
	
	method kilometrosRecorridos(){
		return self.getViajesConocidos().sum({unViaje => unViaje.distanciaEntreLocalidades()})
	}
	
	method restarDinero(unValor){
		dineroEnCuenta -= unValor
	}
	
	method realizarUnViaje(unViaje) {
		if (self.puedeViajarA(unViaje)){
			viajesConocidos.add(unViaje)
			self.restarDinero(unViaje.precio())
			origen = unViaje.getDestino()
		}
	}
	
	method puedeViajarA(unViaje){
		return (unViaje.precio() <= self.getDinero())
	}
	
	method seguirUsuario(unUsuario){
		listaDeSiguiendo.add(unUsuario)
		unUsuario.seguirUsuario(self)
	}
	
	
	
}
