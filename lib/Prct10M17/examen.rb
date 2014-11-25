require "Prct10M17/list"
require "Prct10M17/preguntas"

class Examen
  attr_accessor :preguntas, :tam

  def initialize(preguntas)
    @preguntas = preguntas.head
    @tam = preguntas.size
  end

  def preguntas()
    lista=[]
    current_node = @preguntas
    while current_node[:next]
      lista << current_node[:value]
      current_node = current_node[:next]
    end
    lista << current_node[:value] 

    return lista
  end

  def respuestas()
    lista=[]
    current_node = @preguntas
    while current_node[:next]
      lista << current_node[:value].obtenerCorrecta()
      current_node = current_node[:next]
    end
    lista << current_node[:value].obtenerCorrecta()

    return lista
  end

  def size()
    return tam
  end
end