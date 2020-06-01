class Depositos {
	var bicis=[]
	method bicis(){
		return bicis
	}
	method agregarBicis(elemento){
		bicis.add(elemento)
	}
	method quitarBicis(elemento){
		bicis.remove(elemento)
	}
	method bicisRapidas(){
		return bicis.filter({bici=>bici.velocidadCrucero()>25})
	}
	method depositoNocturno(){
		return bicis.all({bici=>bici.tieneLuz()})
	}
	method llevarUnaCarga(kilos){
		return bicis.any({bici=>bici.carga()>kilos})
	}
	method marcaBiciMasRapida(){
		return bicis.max({bici=>bici.velocidadCrucero()}).marca()
	}
	method cargatotal(){
		return bicis.filter({bici=>bici.largoCent()>170}).sum({bici=>bici.carga()})
	}
	method cantBicisSinAccs(){
		return bicis.count({bici=>bici.accesorios().size()==0})
	}
	method bicisCompanera(gemela){
		return bici.filter({bici=>bici.marca()==gemela.marca() and 
			bici.largoCent() - gemela.largoCent() < 10
		})
	}
}

