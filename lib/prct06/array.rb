class Array

	def buclefor

          aux = true
            for i in 0 ...(self.length-1)
            aux = false
              for j in 0 ... (self.length-i-1)
                if self[j] > self[j+1]
                  
		  self[j] , self[j+1] = self[j+1], self[j]
                  aux = true

                end
              end
            break if aux == false
            end		
	    self

	end

	def caso_each

		aux = true
         	self.each_index do |i|
         	aux = false
         	self.each_index do |j|
            		if self[i] < self[j]
	             		self[i], self[j] = self[j], self[i]
                		aux = true
              		end
            	end
          	break if aux == false
          	end
        	self		

	end

end
