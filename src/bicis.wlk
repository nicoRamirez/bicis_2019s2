import accesorios.*
class BicisConAccesorios{
	var property rodado=0
	var property largoCent=0
	var property marca
	var  accesorios=[]
	method accesorios(){
		return accesorios
	}
	method agregarAccesorios(elemento){
		accesorios.add(elemento)
	}
	method quitarAccesorios(elemento){
		accesorios.remove(elemento)
	}
	method altura(){
		return rodado * 2.5 + 15
	}
	method velocidadCrucero(){
		return if (largoCent > 120){rodado + 6} else{rodado +2}
	}
	method carga(){
		return accesorios.sum({cosa=>cosa.cargAccs()})
	}
	method peso(){
		return rodado / 2 + accesorios.sum({cosa=>cosa.peso()})
	}
	method tieneLuz(){
		return accesorios.any({cosa=>cosa.esLuminoso()})
	}
	method cantAccesLiviano(){
		return accesorios.count({cosa=>cosa.peso()<1})
	}
}
