import solicitantes.*
import profesionales.*
import universidades.*

class Empresa {
	const profesionales = #{}
	var property honorariosDeReferencia
	
	method cuantosEstudiaronEn(unaUniversidad) { 
		return profesionales.count({p=>p.universidad()==unaUniversidad})	
	}
	
	method profesionalesCaros() {
	 	return profesionales.filter({p=>p.honorariosPorHora()>honorariosDeReferencia})
	}
	
	method universidadesFormadoras(){ 
		return profesionales.map({p=>p.universidad()}).asSet()
	}

	method elProfesionalMasBarato(){
		return profesionales.min({p=>p.honorariosPorHora()})
	}
	
	method esDeGenteAcotada(){
		return not profesionales.any({p=>p.provinciasDondePuedeTrabajar().size()>3})
	}
	
	
	method esDeGenteAcotadaConAll() { 
		return profesionales.all({p=>p.provinciasDondePuedeTrabajar().size()<=3})
	}
	
	method puedeSatisfacerA(unSolicitante){
		return profesionales.any({p=>unSolicitante.puedeSerAtentidoPor(p)})	
	}
	
}
