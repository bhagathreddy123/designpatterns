class Flyweight
	def Operation(extrinsicState)
		raise NotImplementedError, "Operation() need to be implement in subclass"
	end
end

class ConcreteFlyweight < Flyweight

	def initialize(key)
		if (key == "flyweight1")
			@intrinsicState = 101
		elsif key == "flyweight2"
			@intrinsicState = 102
		elsif key == "flyweight3"
			@intrinsicState = 103
		end
	end

	def Operation(extrinsicState)
		puts "Inside ConcreteFlyweight:Operation()"
		puts "intrinsic State = #{@intrinsicState}, extrinsic State = #{extrinsicState}"
	end
end


class UnsharedConcreteFlyweight < Flyweight
	def initialize(value)
		@allState = value
	end

	def Operation(extrinsicState)
		puts "Inside UnsharedConcreteFlyweight:Operation()"
		puts "All State = #{@allState}, extrinsic State = #{extrinsicState}"
	end
end


class FlyweightFactory
	def initialize
		@flyweightPool = Hash.new
	end

	def GetFlyweight(key)
		if @flyweightPool.has_key?(key)
			puts "Flyweight from existing pool"
			return @flyweightPool[key]
		else
			obj = ConcreteFlyweight.new(key)
			@flyweightPool[key] = obj
			puts "New Flyweight in pool"
			return obj
		end
	end
end

flyweightFactoryObj = FlyweightFactory.new

flyweight1 = flyweightFactoryObj.GetFlyweight("flyweight1")
flyweight1.Operation(10)


flyweight1 = flyweightFactoryObj.GetFlyweight("flyweight1")
flyweight1.Operation(20)

flyweight1 = flyweightFactoryObj.GetFlyweight("flyweight1")
flyweight1.Operation(30)

flyweight1 = flyweightFactoryObj.GetFlyweight("flyweight1")
flyweight1.Operation(50)


unsharedflyweight = UnsharedConcreteFlyweight.new(500)
unsharedflyweight.Operation(1000)
















