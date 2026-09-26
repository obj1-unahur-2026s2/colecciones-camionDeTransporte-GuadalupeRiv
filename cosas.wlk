object knightRider {
    method peso() = 500
    method peligrosidad() = 10
    
}

object bumblebee {
    var estaTransformadoEnRobot = false
    
    method transformarseEnRobot(){
        estaTransformadoEnRobot =true
    }
   
    method transformarseEnAuto(){
        estaTransformadoEnRobot = false
    }

    method peso() = 800
    
    
    method peligrosidad(){
        if (estaTransformadoEnRobot){
            return 30
        } else{
            return 15
        }
    }
}

 object paqueteDeLadrillos {
    const pesoLadrillo= 2
    var cantLadrillos = 0

    method agregarCantLadrillos(unNro){
        cantLadrillos= unNro
    }
    
    method peso() = pesoLadrillo * cantLadrillos
    
    method peligrosidad() = 2
    
}

object arenaAGranel{
    var peso = 0

    method peso() = peso

    method cambiarPeso(unPeso){
        peso = unPeso
    }

    method peligrosidad() = 1
}

object bateriaAntiaerea{
    var estaCargada = true
    method descargarMisiles(){
        estaCargada = false
    }

   
    method cargarMisiles(){
        estaCargada = true
    }

    method peso(){
        if(estaCargada){
            return 300
    } else {
        return 200
    }
    }

    method peligrosidad(){
        if(estaCargada){
            return 100     
    } else{
        return 0
    }
    }
}

object contenedorPortuario{
    const taraContenedor = 100
    const cargaContenedor=[]

    method ponerEnContenedor(unaCosa){
        cargaContenedor.add(unaCosa)
    }
    method sacarDeContenedor(unaCosa){
        cargaContenedor.remove(unaCosa)
    }

    method pesoTotalDeLaCargaContenedor() = cargaContenedor.sum({c=>c.peso()})
    method peso()= taraContenedor +  self.pesoTotalDeLaCargaContenedor()

    method peligrosidad(){
        if(cargaContenedor.isEmpty()){
            return 0
        } else{
    return cargaContenedor.max({c=>c.peligrosidad()}).peligrosidad()
    }
}
}

object residuosRadioactivos{
    var peso = 0
    method peso() = peso

    method cambiarPeso(unPeso){
        peso=unPeso
    }

    method peligrosidad() =200
} 

object embalajeDeSeguridad{
    var cosaEmbalada = bumblebee

    method cambiarCosaEmbalada(unaCosa){
        cosaEmbalada =unaCosa
    }

    method peso() = cosaEmbalada.peso()

    method peligrosidad()= cosaEmbalada.peligrosidad() /2
}


