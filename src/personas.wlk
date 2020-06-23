import jarras.*

class Personas {
	var property peso = 0
	var property jarrasCerveza = []
	var property leGustaMusicaTradicional = true
	var property aguante = 0
	
	method tomarJarra(unaJarra){
		jarrasCerveza.add(unaJarra)
	}
	
	method estaEbrio(){
		return self.alcoholIngerido() * peso > aguante 
	}
	
	method alcoholIngerido(){
		return jarrasCerveza.sum({jarra => jarra.litros()})
	}
	
	method leGustaMarcaCerveza(unaMarca)
	
	method pais()
}

class Belgas inherits Personas{
	const pais = "Belgica"
	override method pais(){ return pais }
	override method leGustaMarcaCerveza(unaMarca){
		return unaMarca.lupulo() > 4
	}
}

class Checos inherits Personas{
	const pais = "Checoslovaquia"
	override method pais(){ return pais }
	override method leGustaMarcaCerveza(unaMarca){
		return unaMarca.graduacionAlcohol() > 8
	}
}

class Alemanes inherits Personas{
	const pais = "Alemania"
	override method pais(){ return pais }
	override method leGustaMarcaCerveza(unaMarca){ return true }
}