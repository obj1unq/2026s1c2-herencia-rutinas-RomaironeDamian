import gimnasia.*


class Persona {

  method peso()

  method peso(_peso)

  method tiempoPorRutina() 

  method kilosPorCalorias()

  method pesoAPerder(rutina) {
    
  }

  method perderPeso(rutina) {
    self.peso(self.peso() - self.calcularCaloriasPorRutina(rutina)) 
  }

  method calcularCaloriasPorRutina(rutina) {
    return rutina.calcularCalorias(self.tiempoPorRutina()) / self.kilosPorCalorias()
  }
}

class PersonaSedentaria inherits Persona {
  var property kilosPorCalorias = 7000
  var property tiempoPorRutina
  var property peso 

  override method perderPeso(rutina) {
    if (peso > 50) {
        super(rutina)
    }
  }
}

class PersonaAtleta inherits Persona {
  var property kilosPorCalorias = 8000
  var property tiempoPorRutina = 90
  var property peso

  override method perderPeso(rutina) {
    if (rutina.calcularCalorias(tiempoPorRutina) > 10000) {
        self.peso(self.peso() - (self.calcularCaloriasPorRutina(rutina) - 1)) 
    }
  }
}