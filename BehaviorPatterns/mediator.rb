class Mediator
	def sendMessage(message, colleagueObj)
		raise NotImplementedError, 'sendMessage() must be defined in subclass'
	end
end

class ConcreteMediator < Mediator
	def SetColleagues(concolleague1Obj, concolleague2Obj)
		@colleague1 = concolleague1Obj
		@colleague2 = concolleague2Obj
	end

	def SendMessage(message, colleagueObj)
		if colleagueObj = @colleague1
			@colleague2.ReceiveMessage(message)
		elsif colleagueObj == @colleague2
			@colleague1.ReceiveMessage(message)
		end
	end

end


class Colleague

	def initialize(mediatorObj)
		@mediator = mediatorObj
	end

	def sendMessage
        raise NotImplementedError, 'sendMessage() must be defined in subclass'
	end

	def receiveMessag
        raise NotImplementedError, 'receiveMessage() must be defined in subclass'
	end
end

class ConcreteColleague1 < Colleague
	def initialize(mediatorObj)
        super(mediatorObj)
	end

    def SendMessage(message)
        @mediator.SendMessage(message, self)
	end

    def ReceiveMessage(message)
        puts "ConcreteColleague1:ReceiveMessage()...Message = #{message}"
	end
end

class ConcreteColleage2 < Colleague
	def initialize(mediatorObj)
        super(mediatorObj)
	end

    def SendMessage(message)
        @mediator.SendMessage(message, self)
	end

    def ReceiveMessage(message)
        puts "ConcreteColleague2:ReceiveMessage()...Message = #{message}"
	end
end

m = ConcreteMediator.new
c1 = ConcreteColleague1.new(m)
c2 = ConcreteColleague1.new(m)
m.SetColleagues(c1, c2)
c1.SendMessage("I am colleague1")
c2.SendMessage("I am colleague2")