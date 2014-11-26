require "Prct10M17/preguntas"
# === Clase SeleccionSimple
#  Clase _SeleccionSimple_ compuesta por:
# * Método initialize
#
class SeleccionSimple < Preguntas
  # respuestas
  attr_accessor :respuestas
  # Método initialize
  def initialize (dificultad, correcta, pregunta, respuestas)
    super(dificultad, correcta, pregunta)
    @respuestas = respuestas
  end
end