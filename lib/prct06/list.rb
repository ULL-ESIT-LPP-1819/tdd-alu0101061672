# author Sonia Díaz
class List
# Incluimos el módulo Enumerable
	include Enumerable
# Se realiza para poder acceder al atributo y cambiarlo
	attr_accessor :node
# Inicializa los objetos 
	def initialize
		@Node = Struct.new( :value, :next, :prev)
		@head = nil
		@tail = nil
	end
	
# Inserta un nodo en la lista por la cabeza
#
# == Parameters:
# value
# El valor que contiene el nodo a insertar
#
	def insert_begin(value)

		if (@head == nil)

			@head = @Node.new(value,nil,nil)
			@tail = @head

		else

			@head[:prev] = @Node.new(value,@head,nil)
			@head = @head[:prev] 

		end

	end

# Esta función te devuelve el valor del nodo donde esté situada la cabecera
#
# == Returns:
#
# Devuelve el valor del nodo apuntado por la cabecera
#
	def get_value
		@head[:value]
	end

# Esta función te devuelve el nodo siguiente apuntado por la cabecera 
# 
# == Returns:
# 
#  Devuelve el nodo siguiente apuntado por la cabecera
#	
	def get_next
		@head[:next]
	end

# Inserta un nodo en la lista por la cola
#
# == Parameters:
# value
# El valor que contiene el nodo a insertar
#
	def insert_end(value)

		if (@head == nil)

			@head = @Node.new(value,nil,nil)
			@tail = @head

		else

			@tail[:next] = @Node.new(value,nil,@tail)
			@tail = @tail[:next]

		end

	end

# Esta función te devuelve el nodo previo apuntado por la cabecera 
# 
# == Returns:
# 
# Devuelve el nodo previo apuntado por la cabecera
#    
	def get_prev
		@head[:prev]
	end

# Extrae un nodo en la lista por la cabecera
#
# == Returns:
# El valor que contiene el nodo a extraer, y de no haber ningún nodo(lista vacía) devuelve una cadena
#
	def extract_begin

		if (@head == nil)
			"No se puede extraer un nodo, la lista se encuentra vacía"
		else
			valor = @head.value

			if @head == @tail
				@head,@tail = nil

			else
				@head = @head[:next]
				@head[:prev] = nil

			end
			valor
		end

	end

# Extrae un nodo en la lista por la cola
#
# == Returns:
# El valor que contiene el nodo a extraer, y de no haber ningún nodo(lista vacía) devuelve una cadena
#
	def extract_end

		if (@head == nil)
			"No se puede extraer un nodo, la lista se encuentra vacía"
		else
			valor = @tail.value

			if @head == @tail

				@head,@tail = nil

			else

				@tail = @tail[:prev]
				@tail[:next] = nil
				
			end
			valor			

		end
	end
	
# Comprueba si una lista se encuentra vacía
#
# == Returns:
# true si la lista se encuentra vacía y false si contiene algún nodo
# 
	def empty 
	
		return ((@head == nil)&&(@tail == nil))
			
	end

# Método para utilizar el módulo Enumerable que proporciona una forma de recorrer cada uno de los elementos en el orden correspondiente 
#
	def each

	    actual = @head
       	    while actual != nil do
             yield actual.value
             actual = actual.next
   	    end	

	end		


end
