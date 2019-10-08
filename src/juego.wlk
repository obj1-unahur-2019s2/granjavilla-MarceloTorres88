import hector.*
import wollok.game.*
import oso.*
import direccion.*

object juegoGranja {
	var personajeAcual=hector
	method configurarTeclado(){
	keyboard.s().onPressDo({game.say(hector, "hola gente")})
	keyboard.o().onPressDo({hector.position(new Position(x = 0, y = 0))})
	keyboard.m().onPressDo({ hector.plantarMaiz() })
	keyboard.t().onPressDo({ hector.plantarTrigo() })
	keyboard.r().onPressDo({ hector.regarPlanta() })
	keyboard.c().onPressDo({ hector.cosecharPlanta() })
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
    game.addVisualCharacter(hector)
 	game.addVisualCharacter(oso)
    }
	

//	keyboard.left().onPressDo({ hector.moveteALaIzquierda()})
	method configurarColisiones(){
	// COLISIONES
	//game.whenCollideDo(oso, { objeto => objeto.teChocoElOso() })
	}
	method configurarAcciones(){}
	game.onThick(1000, "moverOso",moverEnDireccio(este))
	
}
