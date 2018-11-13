class List

	attr_accessor :node

	def initialize
		@Node = Struct.new( :value, :next, :prev)
		@head = nil
		@tail = nil
	end
	
	def insert_begin(value)

		if (@head == nil)

			@head = @Node.new(value,nil,nil)
			@tail = @head

		else

			@head[:prev] = @Node.new(value,@head,nil)
			@head = @head[:prev] 

		end

	end

	def get_value
		@head[:value]
	end

	
	def get_next
		@head[:next]
	end

	def insert_end(value)

		if (@head == nil)

			@head = @Node.new(value,nil,nil)
			@tail = @head

		else

			@tail[:next] = @Node.new(value,nil,@tail)
			@tail = @tail[:next]

		end

	end

	def get_prev
		@head[:prev]
	end

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
	

	def empty 
	
		return ((@head == nil)&&(@tail == nil))
			
	end

end
