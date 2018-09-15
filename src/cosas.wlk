object knightRider {

  method peso() = 500

  method peligrosidad() = 10

}

object bumblebee {

  var property esRobot = true

  method peso() = 800

  method peligrosidad() {
    if (!esRobot) {
      return 15
    } else {
      return 30
    }
  }

}

object ladrillos {

  var cantidad = 1

  method setCantidad(num) {
    cantidad = num
  }

  method peso() = 2 * cantidad

  method peligrosidad() = 2

}

object contenedorPortuario {

  var contenido = []

  method contenido(cosas) = contenido.addAll(cosas)

  method peso() {
    if (contenido.size() === 0) {
      return 0
    }
    return contenido.sum({ unaCosa => unaCosa.peso() }) + 100
  }

  method peligrosidad() {
    contenido.sortedBy({ act , prev => act.peligrosidad() > prev.peligrosidad()})
    return contenido.first().peligrosidad()
  }

}

object embalajeDeSeguridad {

  var property contenido = null

  method peso() = contenido.peso()

  method peligrosidad() = contenido.peligrosidad() / 2

}

