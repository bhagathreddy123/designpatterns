class Director
	def initialize
		@builder = nil
	end

	def SetBuilder(builderObj)
		@builder = builderObj
	end

	def Construct(name)
		if name == 'Product1' then
			@builder.create
			@builder.BuildPartA()
			@builder.BuildPartB()
		elsif name == 'Product2' then
			@builder.create()
			@builder.BuildPartC()
			@builder.BuildPartD()
		end
	end
end

class Builder
	def create
		raise Not implemented Error, 'create() must be defined in sub class'
	end
	
	def BuildPartA
		raise Not implemented Error, 'BuildPartA() must be defined in sub class'
	end
	
	def BuildPartB
		raise Not implemented Error, 'BuildPartB() must be defined in sub class'
	end
	
	def BuildPartC
		raise Not implemented Error, 'BuildPartC() must be defined in sub class'
	end
	
	def BuildPartD
		raise Not implemented Error, 'BuildPartD() must be defined in sub class'
	end

end

class ConcreteBuilder1 < Builder
	def initialize
		@product = nil
	end

	def create
		@product = Product1.new
	end

	def BuildPartA
	end
	
	def BuildPartB
	end
	
	def BuildPartC
	end
	
	def BuildPartD
	end

	def GetProduct
		return @product
	end
end

class ConcreteBuilder2 < Builder
	def initialize
		@product = nil
	end

	def create
		@product = Product2.new
	end

	def BuildPartA
	end
	
	def BuildPartB
	end
	
	def BuildPartC
	end
	
	def BuildPartD
	end

	def GetProduct
		return @product
	end
end

class Product1
	def UseProduct
		puts 'Inside Product1:UseProduct()'
	end
end

class Product2
	def UseProduct
		puts 'Inside Product2:UseProduct()'
	end
end

director = Director.new

builder1 = ConcreteBuilder1.new
director.SetBuilder(builder1)
director.Construct('Product1')
prod1 = builder1.GetProduct
prod1.UseProduct


builder2 = ConcreteBuilder2.new
director.SetBuilder(builder2)
director.Construct('Product2')
prod2 = builder2.GetProduct
prod2.UseProduct








