import jarras.*
import carpas.*
import marcas.*

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
	
	method quiereEntrar(unaCarpa){
		return self.leGustaMusicaTradicional() == unaCarpa.tieneBanda() and self.leGustaMarcaCerveza(unaCarpa.marcaDeCerveza())
	}
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
	override method quiereEntrar(unaCarpa){
		return super(unaCarpa) and unaCarpa.personasEnCarpa().size().even()
	}
}