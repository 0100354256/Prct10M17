# create a Struct with :value and :next
Node = Struct.new(:value, :next, :prev)
# === Clase List
#  Clase _List_ compuesta por:
# * Método initialize
# * Método each
# * Método removeFirst
# * Método add
# * Método size
# * Método to_s
#
class List
 include Enumerable
 # head
 attr_accessor :head
 # Método initialize
 def initialize(first_value=nil)
   if first_value
     @head = Node.new(first_value, nil)
   end
 end
 # Método each
 def each
   actual = @head
   while actual != nil
     yield actual.value
     actual = actual.next
   end
 end
 # Método removeFirst
 def removeFirst
   current_node = @head
   if current_node[:next]
     @head = current_node[:next]
     current_node[:prev] = nil
   else
     @head = nil
   end
 end
 # Método add
 def add(value)
  if value.kind_of?(Array)
    index = 0
    if head[:value].nil?
      head[:value] = value[0]
      index = 1
    else

      while value[index] do
        newNode = Node.new(value[index], nil, nil)
        current_node = @head

        while current_node[:next]
          current_node = current_node[:next]
        end

        current_node[:next] = newNode
	newNode[:prev] = current_node
        index = index + 1
      end
    end

    nil
  else
    if head[:value].nil?
      head[:value] = value
    else
      newNode = Node.new(value, nil)
      current_node = @head

      while current_node[:next]
        current_node = current_node[:next]
      end

      current_node[:next] = newNode
      newNode[:prev] = current_node
    end
    nil
  end
 end
 # Método size
 def size()
  current_node = @head
  contador = 1
  while current_node[:next]
    current_node = current_node[:next]
    contador += 1
  end

  return contador
 end
 # Método to_s
 def to_s
  if @head
    s = ""

    current_node = @head
    while current_node[:next]
      s = s + current_node[:value] + " -> " 
      current_node = current_node[:next]
    end

    s = s + current_node[:value]
  else 
    nil
  end
 end
end