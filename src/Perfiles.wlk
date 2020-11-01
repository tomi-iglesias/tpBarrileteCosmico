object empresarial{
	
	method seleccionarMedioDeTransporte(mediosDeTransporte, unaDistancia, dineroDeUsuario) {
		return mediosDeTransporte.max({transporte => transporte.velocidad()})
	}
}

object estudiantil{
	
	method seleccionarTransporte(mediosDeTransporte, unaDistancia, dineroDeUsuario){
		const mediosCosteables = mediosDeTransporte.filter({transporte => transporte.precioPorDistancia(unaDistancia) >= dineroDeUsuario})
		return mediosCosteables.max({transporte => transporte.velocidad()})
	}
}

object grupoFamiliar{
	method seleccionarTransporte(mediosDeTransporte, unaDistancia, dineroDeUsuario){
		return mediosDeTransporte.anyOne()
	}
}