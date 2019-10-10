import hector.*
import wollok.game.*
import oso.*
import direccion.*

object juegoGranja {
	var personajeActual=hector
	method configurarTeclado(){
	keyboard.s().onPressDo({game.say(hector, "hola gente")})
	keyboard.o().onPressDo({hector.position(new Position(x = 0, y = 0))})
	keyboard.m().onPressDo({ hector.plantarMaiz() })
	keyboard.t().onPressDo({ hector.plantarTrigo() })
	keyboard.r().onPressDo({ hector.regarPlanta() })
	keyboard.c().onPressDo({ hector.cosecharPlanta() })
	keyboard.p().onPressDo({
		game.say(hector,"tengo cosechadas"+hector.cantidadDePlantasCosechadas()+"plantas")
	})
	self.configurarMovimientos()
	}
	
	method configurarMovimientos(){
		keyboard.up().onPressDo({
			if(personajeActual.position().y()<game.height() - 1){
			personajeActual.position(personajeActual.position().up(1))
			}
		})
	}
	
    method configurarPersonajes(){
    game.addVisualCharacter(hector)//las teclas manejalas bos, sino seria addVisua
 	game.addVisual(oso)
    }
	

//	keyboard.left().onPressDo({ hector.moveteALaIzquierda()})
	method configurarColisiones(){
	// COLISIONES
	//game.whenCollideDo(oso, { objeto => objeto.teChocoElOso() })
	}
	method configurarAcciones(){
		//game.onTick(1000, "moverOso",{oso.moverEnDireccion(este)})
		game.onTick(1000, "moverOso",{oso.moveteAlAzar()})
	}
	
}
