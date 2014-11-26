require "Prct10M17/list"
require "Prct10M17/preguntas"
# === Clase Examen
#  Clase _Examen_ compuesta por:
# * Método initialize
# * Método preguntas
# * Método respuestas
# * Método inv
# * Método invertir
# * Método size
#
class Examen
  # preguntas, tam
  attr_accessor :preguntas, :tam
  # Método initialize
  def initialize(preguntas)
    @preguntas = preguntas.head
    @tam = preguntas.size

    @listap=[]
    @listar=[]

    current_node = @preguntas
    while current_node[:next]
      @listap << current_node[:value]
      @listar << current_node[:value].obtenerCorrecta()
      current_node = current_node[:next]
    end
    @listap << current_node[:value]
    @listar << current_node[:value].obtenerCorrecta()
  end
  # Método preguntas
  def preguntas()
    return @listap
  end
  # Método respuestas
  def respuestas()
    return @listar
  end
  # Método inv
  def inv(lista, i)
    lista[lista.size-1-i]
  end
  # Método invertir
  def invertir(lista)
    output = lista.map.with_index do |x,i|
      inv(lista, i)
    end
  end
  # Método size
  def size()
    return tam
  end
  
end