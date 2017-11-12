class Component
	def Operation
		raise NotImplementedError, "Operation must be defined in sub class"
	end
end

class Leaf < Component
	def initialize(name)
		@value = name
	end

	def Operation
		puts "Leaf:Operation()"
		puts "value = #{@value}"
	end
end

class Composite < Component
	def initialize
		@elements = Array.new
	end

	def Operation
		puts "Composite:Operation()"
		for item in @elements
			item.Operation
		end
	end

	def Add(obj)
		@elements << obj
	end
end

root = Composite.new
root.Add(Leaf.new("Leaf A"))
root.Add(Leaf.new("Leaf B"))

comp = Composite.new
comp.Add(Leaf.new("Leaf XA"))
comp.Add(Leaf.new("Leaf XB"))

root.Add(comp)
root.Add(Leaf.new("Leaf C"))
root.Operation