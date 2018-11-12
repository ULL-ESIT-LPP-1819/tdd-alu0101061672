class List

	attr_accessor :node

	def initialize
		@Node = Struct.new(:value, :next, :prev)
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
end
