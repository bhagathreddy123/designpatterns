class Component
	def Operation
		raise NotImplementedError,"Operation() must be implement in subclass"
	end
end

class ConcreteComponent < Component
	def Operation
		puts "Inside ConcreteComponent::Operation"
	end
end

class Decorator < Component
	def initialize(obj)
		@comp = obj
	end

	def Operation
		puts "Decorator::Operation()"
		@comp.Operation
	end
end

class ConcreteDecoratorA < Decorator

	def initialize(obj)
		super(obj)
		@addedState = nil
	end

	def Operation
		super
		@addedState = 1
		puts "ConcreteDecoratorA::Operation()"
		puts "ConcreteDecoratorA::addedState = #{@addedState}"
	end
end

class ConcreteDecoratorB < Decorator

	def initialize(obj)
	super(obj)
	end

	def Operation
		super
		puts "ConcreteDecoratorB::Operation()"
		self.AddedBehavior
	end

	def AddedBehavior
		puts "ConcreteDecoratorB::AddedBehavior()"
	end
end


myComponent = ConcreteDecoratorA.new(ConcreteDecoratorB.new(ConcreteComponent.new))
myComponent.Operation