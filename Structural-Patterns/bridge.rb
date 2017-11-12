class Implementor
	def Operation
		raise NotImplementedError, "need to implement in subclass"
	end
end

class ConcreteImplementorA < Implementor
	def Operation
		puts "ConcreteImplementorA:Operation"
	end
end

class ConcreteImplementorB < Implementor
	def Operation
		puts "ConcreteImplementorB:Operation"
	end
end


class Abstraction
	def Operation
		raise NotimplementedError, "Operation must be defined in subclass"
	end
end

class RefindAbstraction1 < Abstraction
	def initialize
		@impl = ConcreteImplementorA.new
	end

	def Operation
		puts "RefindAbstraction1:Operation()"
		@impl.Operation
	end
end


class RefindAbstraction2 < Abstraction
	def initialize
		@impl = ConcreteImplementorB.new
	end

	def Operation
		puts "RefindAbstraction2:Operation()"
		@impl.Operation
	end
end

absObj  = RefindAbstraction1.new
absObj.Operation

absObj = RefindAbstraction2.new
absObj.Operation