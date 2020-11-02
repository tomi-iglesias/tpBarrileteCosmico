import Perfiles.*
import Viaje.*
import Localidad.*

class Usuario {
	var usuario
	var origen 
	var viajesConocidos 
	var dineroEnCuenta
	var property listaDeSiguiendo
	var perfil
	
	method perfil() = perfil
	
	method usuario() = usuario
	
	method dinero() = dineroEnCuenta
	
	method siguiendo() = listaDeSiguiendo
	
	method viajesConocidos() = viajesConocidos
	
	method origen () = origen
	
	method kilometrosRecorridos(){
		return self.viajesConocidos().sum({unViaje => unViaje.distanciaEntreLocalidades()})
	}
	
	method restarDinero(unValor){
		dineroEnCuenta -= unValor
	}
	
	method realizarUnViaje(unViaje) {
		if (self.puedeViajarA(unViaje)){
			viajesConocidos.add(unViaje)
			self.restarDinero(unViaje.precio())
			origen = unViaje.destino()
		}
	}
	
	method puedeViajarA(unViaje){
		return (unViaje.precio() <= self.dinero())
	}
	
	method seguirUsuario(unUsuario){
		if (!self.listaDeSiguiendo().contains(unUsuario)){
		listaDeSiguiendo.add(unUsuario)
		unUsuario.seguirUsuario(self)
		}
	}
	
	method seleccionarMedioDeTransporte(mediosDeTransporte, unaDistancia){
		return self.perfil().seleccionarMedioDeTransporte(mediosDeTransporte, unaDistancia,self.dinero())
	}
}

const pabloHari = new Usuario(
	origen = garlicSea,
	usuario = "PHari",
	viajesConocidos = [viajeALastToninas],
	dineroEnCuenta = 20000,
	listaDeSiguiendo = #{},
	perfil = empresarial
)

const tomasIglesias = new Usuario(
	usuario = "tomi-iglesias",
	origen = marbella,
	viajesConocidos = [],
	dineroEnCuenta = 400000,
	listaDeSiguiendo = #{},
	perfil = empresarial
)

const sofiaCupolo = new Usuario(
	usuario = "scupolo",
	origen = lastToninas,
	viajesConocidos = [],
	dineroEnCuenta = 1000000,
	listaDeSiguiendo = #{},
	perfil = estudiantil
)
