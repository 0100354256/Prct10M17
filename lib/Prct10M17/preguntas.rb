# === Clase Preguntas
#  Clase _Preguntas_ compuesta por:
# * Método initialize
# * Método obtenerPregunta
# * Método obtenerRespuestas
# * Método obtenerCorrecta
# * Método <=>
# * Método to_s
#
class Preguntas
  # pregunta, correcta
  attr_accessor :pregunta, :correcta

  include Comparable
  # dificultad
    attr :dificultad
  # Método initialize
  def initialize (dificultad, correcta, pregunta)
    @dificultad = dificultad
    @correcta = correcta
    @pregunta = pregunta
  end
  # Método obtenerPregunta
  def obtenerPregunta
    @pregunta
  end
  # Método obtenerRespuestas
  def obtenerRespuestas
    @respuestas
  end
  # Método obtenerCorrecta
  def obtenerCorrecta
    correcta
  end
  # * Método <=>
  def <=>(another)
    @dificultad <=> another.dificultad
  end
  # * Método to_s
  def to_s
    "#{@pregunta} #{"\n"} #{@respuestas.join("\n ")} #{"\n"}"
 end
end