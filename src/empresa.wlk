import localidades.*
import Usuario.*
import MedioDeTransporte.*
import Viaje.*

object barrileteCosmico {
	
	const localidades = [garlicSea, silverSea, lastToninas, goodAirs]
	const mediosDeTransporte = [1,2,3,4,5]
	
	method getMediosDeTransporte() = mediosDeTransporte
	
	method obtenerLasLocalidadesMasImportantes(){
		return localidades.filter({localidad => localidad.esDestinoImportante()})
	}
	
	method aplicarDescuentoALocalidades(unPorcentaje){
		localidades.forEach({localidad => localidad.aplicarDescuento(unPorcentaje)})
	}
	
	method esExtrema(){
		return localidades.any({localidad => localidad.esPeligroso()})
	}
	
	method conocerCartaDeLocalidades(){
		return localidades.map({localidad => localidad.getNombre()})
	}
	
	method armarViaje(unUsuario, unaLocalidad, unMedioDeTransporte){  	
  		return new Viaje(
  			origen = unUsuario.getOrigen(),
  			destino = unaLocalidad,
  			medioDeTransporte = unMedioDeTransporte
  		)
  	}
	
	// metodo creado para test
	method conocerLocalidadesPeligrosas(){
		return localidades.filter({localidad => localidad.esPeligroso()}).map({localidad => localidad.getNombre()})
	}
	
	method getLocalidades() = localidades	
}
