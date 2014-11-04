module MyFirstModule
	def say_hello
		puts "hello"
	end
	def self.cl_hi
		puts "I can say hi without an instance"
	end
	
end

class ModTester
	include MyFirstModule
	
end

module Stacklike
	def stack
		@stack ||= [] # or-equals operand will provide a new array [] if @stack is nil or false
	end
	
	def add_to_stack(obj)
		stack.push(obj)
	end
	
	def take_from_stack
		return stack.pop
	end
end

class Stack
	include Stacklike
end

module M
  def report
    puts "'report' method in module M"
  end
end

class C
  include M
	prepend Stacklike
end

class D < C

end