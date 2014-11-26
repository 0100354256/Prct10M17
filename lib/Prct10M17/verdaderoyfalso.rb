require "Prct10M17/preguntas"
# === Clase VerdaderoYFalso
#  Clase _VerdaderoYFalso_ compuesta por:
# * Método initialize
#
class VerdaderoYFalso < Preguntas
  # respuestas
  attr_accessor :respuestas
  # Método initialize
  def initialize (dificultad, correcta, pregunta)
    super(dificultad, correcta, pregunta)
    @respuestas = ["V", "F"]
  end
end