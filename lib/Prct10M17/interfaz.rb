require "Prct10M17/examen"

class Interfaz
  attr_accessor :examen
  def initialize(examen)
    @examen = examen
  end
  
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

  def simular()
    puts @examen.preguntas()

    respuestas=[4, 1, 3] #Respuestas del usuario

    print "\nFallos: "
    print comprobar(respuestas)
    print "\n"
  end
end