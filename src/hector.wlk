import wollok.game.*
import cultivos.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	var property plantasCosechadas=[]
	
 method plantarMaiz(){
	game.addVisual(new Maiz(position=self.position()))
 }
 method regarPlanta(){
 	//devuelve una lista, si no toca nada. devuelve una lista vacia 
 	game.colliders(self).forEach({planta=>planta.regate()})
 }
 method cocecharPlanta(){
 	    game.colliders(self).forEach({planta=>
 	    game.removeVisual(planta)
 		plantasCosechadas.add(planta)
 		})
 }
 method cantidadDePlantasCosechadas(){
 	return plantasCosechadas.size()
 }
 method 
 
}