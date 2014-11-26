require "Prct10M17/examen"
# === Clase Interfaz
#  Clase _Interfaz_ compuesta por:
# * Método initialize
# * Método comprobar
# * Método simular
#
class Interfaz
  # examen
  attr_accessor :examen
  # Método initialize
  def initialize(examen)
    @examen = examen
  end
  # Método comprobar
  def comprobar(respuestas)
    correctas = @examen.respuestas()

    i = 0
    fallos = 0
    while (i < @examen.size)
      if (correctas[i] != respuestas[i])
       fallos += 1
      end

      i += 1
    end

    return fallos
  end
  # Método simular
  def simular()
    puts @examen.preguntas()

    respuestas=[4, 1, 3] #Respuestas del usuario

    print "\nFallos: "
    print comprobar(respuestas)
    print "\n"
  end
end