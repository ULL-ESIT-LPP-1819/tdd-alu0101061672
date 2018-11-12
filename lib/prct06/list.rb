class List

	attr_accessor :node

	def initialize
		@Node = Struct.new(:value, :next, :prev)
		@head = nil
		@tail = nil
	end

end
