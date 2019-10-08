import wollok.game.*
import direccion.*

object oso {
	var property position = new Position(x = 3, y = 7)
	
	method image() = "oso.png"
	
    method moverEnDireccio(direccion){
    	self.position(direccion.siguientePosicion(self.position()))
    }	
}