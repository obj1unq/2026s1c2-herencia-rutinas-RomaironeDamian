import personas.*

class Club {
  const property predios

  method mejorPredio(persona) {
    return predios.max({predio => self.cantidadCaloriasDelPredioPara(predio,persona)})
  }

  method cantidadCaloriasDelPredioPara(predio, persona) {
    return predio.rutinas().sum({rutina => persona.calcularCaloriasPorRutina(rutina)})
  }

  method prediosTranquis(persona) {
    
  }

  method rutinasMasExigentesDelClub(persona) {
    
  }
}

class Predio {
  const property rutinas

  method rutinas() {
    return rutinas
  }

  method agregarRutina(rutina) {
    rutinas.add(rutina)
  }
}
