import Localidad.*
import Usuario.*
import MedioDeTransporte.*
import Viaje.*

object barrileteCosmico {
	
	const localidades = [garlicSea, silverSea, lastToninas, goodAirs]
	const mediosDeTransporte = []
	
	method mediosDeTransporte() = mediosDeTransporte
	
	method obtenerLasLocalidadesMasImportantes(){
		return localidades.filter({localidad => localidad.esDestacada()})
	}
	
	method aplicarDescuentoALocalidades(unPorcentaje){
		localidades.forEach({localidad => localidad.aplicarDescuento(unPorcentaje)})
	}
	
	method esExtrema(){
		return localidades.any({localidad => localidad.esPeligrosa()})
	}
	
	method conocerCartaDeLocalidades(){
		return localidades.map({localidad => localidad.nombre()})
	}
	
	method armarViaje(unUsuario, unaLocalidad){  	
		const unaDistancia = unaLocalidad.calcularDistanciaA(unUsuario.origen())
  		return new Viaje(
  			origen = unUsuario.origen(),
  			destino = unaLocalidad,
  			medioDeTransporte = unUsuario.seleccionarMedioDeTransporte(self.mediosDeTransporte(), unaDistancia)
  		)
  	}
	
	// metodo creado para test
	method conocerLocalidadesPeligrosas(){
		return localidades.filter({localidad => localidad.esPeligrosa()}).map({localidad => localidad.nombre()})
	}
	
	method localidades() = localidades	
	
}
