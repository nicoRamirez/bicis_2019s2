object farolito {
	method peso(){
		return 0.5
	}
	method cargAccs(){
		return 0
	}
	method esLuminoso(){
		return conLuz.luminosidad()
	}
	
}
class Canasto{
	var property volumen=0
	method peso(){
		return volumen / 10
	}
	method cargAccs(){
		return volumen * 2
	}
	method esLuminoso(){
		return sinLuz.luminosidad()
	}
}
class MorrarDeBici{
	var property largo=0
	var property ojoDeGato=sinOjoDeGato
	method peso(){
		return 1.2
	}
	method cargAccs(){
		return largo / 3
	}
	method esLuminoso(){
		return if(ojoDeGato.contiene()){conLuz.luminosidad()}
		else{sinLuz.luminosidad()}
	}
}
object sinOjoDeGato{
	method contiene(){
		return false
	}
}
object conOjoDeGato{
	method contiene(){
		return true
	}
}
object conLuz{
	method luminosidad(){
		return true
	}
}
object sinLuz{
	method luminosidad(){
		return false
	}
}
