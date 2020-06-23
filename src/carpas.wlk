import marcas.*
import jarras.*

class Carpas {
	var property limitePersonas
	const property personasEnCarpa = #{}
	var property tieneBandaMusical
	var property marcaDeCerveza
	
	method dejaEntrar(unaPersona){
		return personasEnCarpa.size() < limitePersonas and not unaPersona.estaEbrio()
	}
	
	method entraEnCarpa(unaPersona){
		if(self.dejaEntrar(unaPersona) and unaPersona.quiereEntrar(self)){
			personasEnCarpa.add(unaPersona)
		}else if(not unaPersona.quiereEntrar(self)){
			self.error("La persona no quiere entrar en la carpa")
		}else{
			self.error("La persona no puede entrar en la carpa.")
		}
	}
	
	method servirJarra(unaPersona,litros){
		if(personasEnCarpa.contains(unaPersona)){
			const jarra  = new Jarra(litros=litros, marca = self.marcaDeCerveza())
			unaPersona.tomarJarra(jarra)
		}else{
			self.error("La persona no se ha encontrado dentro de la carpa" )
		}
	}
}
