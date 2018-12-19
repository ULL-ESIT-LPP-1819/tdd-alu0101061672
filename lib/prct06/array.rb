class Array
include Comparable
	def buclefor
	
		aux = []	
	
		for i in(1..(self.length))
						
			if(self[i].factor_conversionKcal > self[i+1].factor_conversionKcal)
				aux = self[i]
				self[i] = self[i+1]
				self[i+1] = aux

			end
		end
		
	        self

	end

#	def each



#	end

end
