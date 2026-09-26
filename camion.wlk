object camion {
const cosas = []
const tara = 1000
const pesoMaximoPermitido = 2500
method verCargaDelCamion() = cosas

method cargarCamion(unaCosa){
    cosas.add(unaCosa)
}

method descargarCamion(unaCosa){
    cosas.remove(unaCosa)
}
method pesoTotalCamion() = tara + self.pesoTotalDeLaCarga() 
method pesoTotalDeLaCarga() = cosas.sum({c=> c.peso()})

method PesoCosasSonPares() = cosas.all({c=>c.peso().even()})

method hayAlgunaCosaQuePesa(unValor)=
    cosas.any({c=>c.peso()==unValor})

method primerCosaConNivelDePeligrosidad(unValor)=
    cosas.first({c=>c.peligrosidad() == unValor})

method cosasConMayorPeligrosidad(unValor)=
    cosas.filter({c=>c.peligrosidad() > unValor})

method cosasConMayorPeligrosidadQue(unaCosa)=
    cosas.filter({c=>c.peligrosidad() > unaCosa})

method estaExcedidoPeso()= self.pesoTotalCamion() > pesoMaximoPermitido

method puedeCircularEnRuta(nivelDePeligrosidad)=
    !(self.estaExcedidoPeso()) && !(self.cosasConMayorPeligrosidad(nivelDePeligrosidad))

method tieneAlgoQuePeseEntre(unMaximo,unMinimo)=
    cosas.any({c=>c.peso().between(unMaximo,unMinimo)})

method laCosaMasPesada() = cosas.max({c=>c.peso()})
}