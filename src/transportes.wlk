object camion {

  var carga = []
  var property cargaMaxima = 2000

  method cargar(cosa) {
    if (self.puedeCargar(cosa)) {
      carga.add(cosa)
    } else {
      throw new Exception('Carga maxima superada')
    }
  }

  method descargar(cosa) {
    carga.remove(cosa)
  }

  method tieneCargado(cosa) {
    return carga.any({ unaCosa => unaCosa === cosa })
  }

  method cargaActual() {
    return carga.sum({ unaCosa => unaCosa.peso() })
  }

  method cargaDisponible() = cargaMaxima - self.cargaActual()

  method puedeCargar(cosa) {
    return (cargaMaxima >= (self.cargaActual() + cosa.peso()))
  }

  method cosaMasPeligrosaCargada() {
    carga.sortedBy({ act , prev => act.peligrosidad() > prev.peligrosidad()})
    return carga.first()
  }

  method circularPorRuta(peligrosidadRuta) {
    return peligrosidadRuta > self.cosaMasPeligrosaCargada().peligrosidad()
  }

  method carga() {
    return carga
  }

}

object motoneta {

  var carga = []

  method cargar(cosa) {
    if (cosa.peso() <= 100 && cosa.peligrosidad() <= 5) {
      carga.add(cosa)
    }
  }

  method carga() {
    return carga
  }

}

