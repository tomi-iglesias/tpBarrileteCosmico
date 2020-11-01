class Localidad {
	var nombre 
	var precio 
	var equipajeImprescindible
	var kmDeUbicacion
	
	method precio() = precio
	
	method nombre() = nombre
	
	method equipajes() = equipajeImprescindible
	
	method ubicacion() = kmDeUbicacion
	
	method esDestacada(){
		return self.precio() > 2000
	}
	
	method aplicarDescuento(unPorcentaje){
		precio -= self.precio() * unPorcentaje
		self.equipajes().add("Certificado de descuento")
	}
	
	method esPeligrosa(){
		return (self.equipajes().any({elemento => elemento.contains("Vacuna")}))
	}
	
	method calcularDistanciaA(unaLocalidad){
		const distancia = self.ubicacion() - unaLocalidad.ubicacion() 		
		if (distancia > 0){
			return distancia
		} else {
			return distancia * -1
		}
	}
}

class Playa inherits Localidad{
	
	override method esPeligrosa(){
		return false
	}
}

class Montania inherits Localidad {
	var altura
	
	override method esDestacada(){
		return true
	}
	
	override method esPeligrosa(){
		return (super() && altura > 5000)
	}
}

class CiudadHistorica inherits Localidad{
	var cantidadDeMuseos
	
	override method esDestacada(){
		return (super() && cantidadDeMuseos >= 3)
	}
	
	override method esPeligrosa(){
		return (!self.equipajes().any({elemento => elemento.contains("Seguro de Asistencia al Viajero")}))
	}
}


const garlicSea = new Localidad(
	kmDeUbicacion = 114,
	nombre = "Garlic's Sea",
	precio = 2500,
	equipajeImprescindible = ["Cania de pescar, Piloto"]
) 
	
const silverSea = new Localidad(
	kmDeUbicacion = 1114,
	nombre = "Silver's Sea",
	precio = 1350,
	equipajeImprescindible = ["Protector solar", "Equipo de buceo"]
)

const lastToninas = new Localidad(
	kmDeUbicacion = 444,
	nombre = "Last Toninas",
	precio = 3500,
	equipajeImprescindible = ["Vacuna gripal", "Vacuna b", "Necronomicon"]
)

const goodAirs = new Localidad (
	kmDeUbicacion = 0,
	nombre = "Good Airs",
	precio = 1500,
	equipajeImprescindible = ["Cerveza", "Protector solar"]	
)

