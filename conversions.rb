
class Person
	include Comparable
	
	attr_accessor :first_name, :last_name, :age
	
	def initialize(first,last,age)
		self.first_name = first
		self.last_name = last
		self.age = age
		puts first
	end
	
	def <=>(other_person)
		self.age.to_i <=> other_person.age.to_i
	end	
	def to_s
		"#{first_name} #{last_name}; age: #{age.to_s}"
	end
	
	def to_str
		self.to_s
	end
	
	def to_a
		[first_name,last_name,age]
	end
	
	def to_ary
		self.to_a
	end

	def +(x)
		self.age = age.to_i + x.to_i
		return self
	end

end
