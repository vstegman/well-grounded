class VinceIterator

	def initialize(*args)
		@array = [1,2,3,4,5]
	end
	def v_each
		c = 0
		until c == @array.size()
			yield(@array[c])
			c += 1
		end	
		self
	end

	def v_map
		mapped_array = []
		v_each do |v|
			mapped_array << yield(v)
		end
		return mapped_array
	end
	
	def divide_me(num)
	
		begin
			result = 100 / num
		rescue
			puts "Error, what did you do???"
			return
		end
		puts "your %i entry resulted in: %i" %[num,result]
	
	end
	
end


