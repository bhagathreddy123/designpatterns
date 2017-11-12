class AbstractClass
	def TemplateMethod
		puts "AbstractClass:TemplateMethod"
		self.PrimitiveOperation1
		self.PrimitiveOperation2
	end

	def PrimitiveOperation1
		raise Not ImplementedError, 'PrimitiveOperation1() must be defined in subclass'
	end

	def PrimitiveOperation2
		raise Not ImplementedError, 'PrimitiveOperation2() must be defined in subclass'
	end
end


class ConcreteClassA < AbstractClass
	def PrimitiveOperation1
		puts "inside ConcreteClassA:PrimitiveOperation1()"
	end

	def PrimitiveOperation2
		puts "inside ConcreteClassA:PrimitiveOperation2()"
	end
end

class ConcreteClassB < AbstractClass
	def PrimitiveOperation1
		puts "inside ConcreteClassB:PrimitiveOperation1()"
	end

	def PrimitiveOperation2
		puts "inside ConcreteClassB:PrimitiveOperation2()"
	end
end





obj = ConcreteClassA.new
obj.TemplateMethod()

obj = ConcreteClassB.new
obj.TemplateMethod()