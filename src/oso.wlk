import wollok.game.*
import direccion.*

object oso {
	var property position = new Position(x = 3, y = 7)
	
	method image() = "oso.png"
	//que la direccion me diga a dónde me tengo que mover
	//para eso, le tnego que decir donde estoy parado ahora
	method mover(direccion){
		position=direccion.siguientePosicion(position)
	}
    method moverALaIzquierda(){
    	if(position.x()>0){
    		position=position.left(1)
    	}
    }
    method moverHaciaArriba(){
    	//height = altura , width = ancho
    	if(position.y()<game.height()-1){
    		position=position.up(1)
    	}
    }		
    method moveteAlAzar(){
    	//tira el dado, entre  y 4.99999999...
    	//truncate(n):"recorta" un número n posiciones a la derecha de la coma
    	var dado=1.randomUpTo(5).truncate(0)
    	if(dado==1){self.moverEnDireccion(oeste)}
    	if(dado==2){self.moverEnDireccion(norte)}
    	if(dado==3){self.moverEnDireccion(este)}
    	if(dado==4){self.moverEnDireccion(sur)}
    }
    method moverEnDireccion(direccion){
    	position=direccion.siguientePosicion(position)
    }
    
}