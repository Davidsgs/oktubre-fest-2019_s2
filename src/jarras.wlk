class Jarra {
	var property litros
	var property marca
	
	method contenidoAlcohol(){
		return litros * (marca.graduacionAlcohol() / 100)
	}
	
}
