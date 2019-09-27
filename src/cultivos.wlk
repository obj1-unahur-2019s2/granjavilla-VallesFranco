import wollok.game.*
import hector.*

class Maiz {
	var property adulto = false 
	method regar() {
		adulto = true 
	}
	method image() {
		return if (adulto) {
			"corn_adult.png"
		} else {
			"corn_baby.png"
		}
	}
}

class Tomaco {
	var property position 
	method regar() {
		self.position.up(1)
	}
}

class Trigo {
	var property adulto = false
	var etapa = 0
	method regar() {
		adulto = true
		etapa += 1
	}
	method image() {
		return if (adulto and etapa == 1) {
			"wheat_1.png"
		} else if (adulto and etapa == 2) {
			"wheat_2.png"
		} else if (adulto and etapa == 3) {
			"wheat_3.png"
		} else {
			"wheat_0.png"
		}
	}
}

