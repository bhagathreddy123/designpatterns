class AbstractFactory
	def create_product1
		# puts "not Implemented"
		raise NotImplementedError, 'CreatePoduct1() must be defined in subclass'
	end

	def create_product2
		# puts "not Implemented"
		raise NotImplementedError, 'CreatePoduct2() must be defined in subclass'
	end
end

class ConcreteFactory1 < AbstractFactory
	def create_product1
		# puts "implemented concrete Factory1 class method1"
		return Product1_1.new
	end

	def create_product2
		# puts "implemented concrete Factory1 class method2"
		return Product2_1.new
	end
end

class ConcreteFactory2 < AbstractFactory
	def create_product1
		# puts "implemented concrete Factory2 class method1"
		return Product1_2.new
	end

	def create_product2
		# puts "implemented concrete Factory2 class method2"
		return Product2_2.new
	end
end

class AbstractProduct1
	def Display
		raise NotImplementedError, "Display() must be defined in sub class"
	end

end

class Product1_1 < AbstractProduct1
	def Display
		puts "inside Product1_1:Display()"
	end
end

class Product1_2 < AbstractProduct1
	def Display
		puts "inside Product1_2:Display()"
	end
end

class AbstractProduct2
	def Display
		raise NotImplementedError, "Display() must be defined in sub class"
	end
end


class Product2_1 < AbstractProduct2
	def Display
		puts "inside Product2_1:Display()"
	end
end


class Product2_2 < AbstractProduct2
	def Display
		puts "inside Product2_2:Display()"
	end
end

# abstract_factory = AbstractFactory.new
# abstract_factory.create_product1
# abstract_factory.create_product2


concrete_factory1 = ConcreteFactory1.new
# concrete_factory1.create_product1
prod1 = concrete_factory1.create_product1
prod1.Display
prod2 = concrete_factory1.create_product2
prod2.Display

concrete_factory2 = ConcreteFactory2.new
 prod1 = concrete_factory2.create_product1
 prod1.Display
 prod2 = concrete_factory2.create_product2
 prod2.Display


