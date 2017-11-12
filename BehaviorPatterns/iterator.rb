class Aggregate
	def CreateIterator
		raise NotImplemeted, "need to be defined in subclass"
	end
end

class ConcreteAggregate < Aggregate
	def initialize
		@elements = Array.new
	end

	def CreateIterator
		return ConcreteIterator.new(self)
	end

	def Size
		return @elements.length
	end
	
	def Add(value)
		@elements << value
	end

	def GetElement(index)
		return @elements[index]
	end
end

class ObjectIterator
	
	def First
		raise NotImplemetedError, 'First() must be defined in subclass'
	end

	def Next
		raise NotImplemetedError,'Next() must be defined in subclass'
	end

	def IsDone
		raise NotImplemetedError, 'IsDone() must be defined in subclass'
	end

	def CurrentItem
		raise NotImplemetedError, 'CurrentItem() must be defined in subclass'
	end
end

class ConcreteIterator < ObjectIterator
	
	def initialize(obj)
		@aggregateObj = obj
		@currentElement = 0
	end

	def First 
		@currentElement = 0
	end

	def Next
		@currentElement += 1
	end

	def IsDone
		if @currentElement >= @aggregateObj.Size
			return true
		else
			return false
		end
	end
	def CurrentItem
		return @aggregateObj.GetElement(@currentElement)
	end
end

obj = ConcreteAggregate.new
obj.Add("AAAA")
obj.Add("BBBB")
obj.Add("CCCC")
obj.Add("DDDD")
itr = obj.CreateIterator
itr.First
while !itr.IsDone
	puts "Element = #{itr.CurrentItem}"
	itr.Next
end