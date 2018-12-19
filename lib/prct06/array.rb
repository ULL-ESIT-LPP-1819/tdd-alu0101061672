class Array

	def buclefor

          swapped = true
            for i in 0 ...(self.length-1)
            swapped = false
              for j in 0 ... (self.length-i-1)
                if self[j] > self[j+1]
                  self[j] , self[j+1] = self[j+1], self[j]
                  swapped = true
                end
              end
            break if swapped == false
            end		
	    self

	end

#	def each



#	end

end
