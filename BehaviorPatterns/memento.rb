


class Memento 

	def initialize(value)
		@state = value
	end

	def SetState(value)
		@state = value
	end

	def GetState
		return @state
	end
end

class Originator
	def SetState(value)
		@state = value
	end

	def GetState
		return @state
	end

	def CreateMemento
		return (Memento.new(@state))
	end

	def SetMemento(memento)
		puts "going to previous state"
		@state = memento.GetState
	end

end


class Caretaker 
	def initialize(originatorObj)
        @memento = nil
        @origin = originatorObj #You can get access of Originator in some other way too
	end

	def Execute
        @memento = @origin.CreateMemento
        @origin.SetState(0)
	end

	def Unexecute
	    @origin.SetMemento(@memento)
	end

end


originator = Originator.new
#Setting initial state
originator.SetState(1)
puts "The state value is : #{originator.GetState}"

caretaker = Caretaker.new(originator)
#change the state to 0
caretaker.Execute
puts "The state value is : #{originator.GetState}"

#Back to state 1
caretaker.Unexecute
puts "The state value is : #{originator.GetState}"


	