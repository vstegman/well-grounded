# Ticket represents an event ticket
# It is based on The Well Grounded Rubyist, Ch 3

class Ticket
	VENUES = ["High School Gym", "Orpheum", "Savvis"]
	
	attr_reader :price, :event
	attr_accessor :date, :venue
	
	def initialize(price, event)
		 @price = price
		 @event = event
	
	end
# 	def price=(price)
# 		@price = price
# 	end
# 	def price
# 		@price
# 	end
	def discount_price(discount_pct)
		self.price = self.price * (1-discount_pct)
	end
	def self.most_expensive(*tickets)
		tickets.max_by(&:price)
	end
end

class Temperature
	def self.c2f(celsius)
		return celsius * 9.0/5 + 32
	end
	
	def self.f2c(fahrenheit)
		return (fahrenheit - 32 ) * 5.0/9
	end

end

