require "Prct10M17/list"
require "Prct10M17/preguntas"

class Examen
  attr_accessor :preguntas, :tam

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

  def preguntas()
    return @listap
  end

  def respuestas()
    return @listar
  end

  def inv(lista, i)
    lista[lista.size-1-i]
  end
  
  def invertir(lista)
    output = lista.map.with_index do |x,i|
      inv(lista, i)
    end
  end

  def size()
    return tam
  end
  
end