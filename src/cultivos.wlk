class Maiz {
	var property position
	var property esAdulta = false 
	
	method image() {
		if (esAdulta) {
			return "corn_adult.png"
		} else {
			return "corn_baby.png"
		}
	}
	
	method regate() {
		if (not esAdulta) { esAdulta = true }
	}
	
}

class Trigo {
	var property position
	
	method image() { return "wheat_0.png" }
	method regate() { /* a completar */ }
	

}
class Tomaco {
	var property position
	
	method image() { return "tomaco.png" }
	method regate() { /* a completar */ }
	
}