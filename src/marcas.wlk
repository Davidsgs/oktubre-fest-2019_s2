class Cerveza {
	var property nombreMarca
	var property paisOrigen
	var property graduacionAlcohol = 0
	const property lupulo = 0
	
}

object graduacion{
	var property graduacionReglamentaria = 8
}

class Rubia inherits Cerveza{}

class Negra inherits Cerveza{
	override method graduacionAlcohol(){
		return graduacion.graduacionReglamentaria().min(self.lupulo() * 2)
	}
}

class Roja inherits Negra{
	override method graduacionAlcohol(){
		return super() * 1.25
	}
}