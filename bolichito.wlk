import colores.*
import objetos.*
import personas.*

object bolichito{

    var objetoEnVidriera = remera
    var objetoEnMostrador = pelota

    method esBrillante() {
        return objetoEnMostrador.material().brilla() && objetoEnVidriera.material().brilla()
      
    }

method objetoEnMostrador(objetoAPoner){
    objetoEnMostrador = objetoAPoner
}

method objetoEnVidriera(objetoAPoner){
    objetoEnVidriera = objetoAPoner
}

method esMonocromatico(){
    return objetoEnMostrador.color() == objetoEnVidriera.color()
}

method estaEquilibrado(){
    return objetoEnMostrador.peso() > objetoEnVidriera.peso()
}

method tieneColor(color){
    return objetoEnMostrador.color() == color || objetoEnVidriera.color() == color
}

method puedeMejorar(){
    return not self.estaEquilibrado() || self.esMonocromatico()
}

method puedeOfrecer_A_(unaPersona){
   return unaPersona.leGusta(objetoEnMostrador) || 
          unaPersona.leGusta(objetoEnVidriera)
}

method intercambiarObjetos(){
     const aux = objetoEnMostrador
    objetoEnMostrador = objetoEnVidriera
    objetoEnVidriera = aux
}
}
/* OTROS METODO PARA HACERLO
method intercambiarObjetos(){
    const aux = objetoEnMostrador
    self.objetoEnMostrador(objetoEnVidriera)
    self.objetoEnVidriera(aux)
}
*/



