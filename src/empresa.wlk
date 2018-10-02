object deposito {

  var cosasRecibidas = []

  method recibir(cosas) {
    cosasRecibidas.addAll(cosas)
  }

  method llenar(transporte) {
    cosasRecibidas.forEach({ unaCosa => transporte.cargar(unaCosa)})
    // TODO y si no puedo cargar todo?
    cosasRecibidas.clear()
  }

  method cosasRecibidas() {
    return cosasRecibidas
  }

}

