object deposito {

  var cosasRecibidas = []

  method recibir(cosas) {
    cosasRecibidas.addAll(cosas)
  }

  method llenar(transporte) {
    cosasRecibidas.forEach({ unaCosa => transporte.cargar(unaCosa)})
    cosasRecibidas.clear()
  }

  method cosasRecibidas() {
    return cosasRecibidas
  }

}

