import profesionales.*

class Persona {
	var property provinciaDondeVive 
	
	method puedeSerAtentidoPor(unProfesional){
		return unProfesional.provinciasDondePuedeTrabajar().contains(provinciaDondeVive)
	}
	
}

class Institucion{
	const universidadesQueReconoce=#{}
	method agregarUniversidad(unaUniversidad) {
		universidadesQueReconoce.add(unaUniversidad)
	}
	
	method quitarUniversidad(unaUniversidad) {
		universidadesQueReconoce.remove(unaUniversidad)
	}
	
	method puedeSerAtentidoPor(unProfesional){
		return universidadesQueReconoce.contains(unProfesional.universidad())
	}
	
}

class Club{
	const provincias=#{}
		method agregarUniversidad(unaProvincia) {
		provincias.add(unaProvincia)
	}
	
	method quitarUniversidad(unaProvincia) {
		provincias.remove(unaProvincia)
	}
	
	method puedeSerAtentidoPor(unProfesional){
		return not provincias.intersection{(unProfesional.provinciasDondePuedeTrabajar())}.isEmpty()
	}
	
	
}
