class Rutinas {

    method intensidad() 

    method descanso(tiempoRutina)

    method calcularCalorias(tiempoRutina) {
      return 100 * (tiempoRutina - self.descanso(tiempoRutina)) * self.intensidad()
    }
}

class Running inherits Rutinas{
    var property intensidad

    override method descanso(tiempoRutina) {
      if (tiempoRutina > 20) {
        return 5
      } else {
        return 2
      }
    }
}

class Maraton inherits Running{
  override method calcularCalorias(tiempoRutina) {
    return super(tiempoRutina) * 2
  }
}

class Remo inherits Rutinas{
    const intensidad = 1.3

    override method intensidad() {
      return intensidad
    }

    override method descanso(tiempoRutina) {
      return tiempoRutina/5
    }
}

class RemoCompeticion inherits Remo {

    const intensidadCompetencia = 1.7

    override method intensidad() {
        return intensidadCompetencia
    }

    override method descanso(tiempoRutina) {
      return ((tiempoRutina/5) - 3).max(2)
    }
}