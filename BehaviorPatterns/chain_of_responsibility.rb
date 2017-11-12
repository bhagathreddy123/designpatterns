class Handler
  def initializer
    @successor = nil
  end

  def Handle(requestNo)
    raise NotImplemetnedError, 'Handle() must be defined in subclass'
  end

  def MakeSuccessor(handlerObj)
    @successor = handlerObj
  end
end


class ConcreteHandler1 < Handler
  def Handle(requestNo)
    puts "ConcreteHandler1:Handle()"
    if requestNo < 5
      puts "Handled Request Number : #{requestNo}"
    elsif @successor != nil
      @successor.Handle(requestNo)
    end
  end
end


class ConcreteHandler2 < Handler
    def Handle(requestNo)
      puts "ConcreteHandler2::Handle()"
      if requestNo < 10
        puts " Handle Request Number : #{requestNo}"
      elsif @successor != nil
        @successor.Handle(requestNo)
      end
    end
end

handle1 = ConcreteHandler1.new
handle2 = ConcreteHandler2.new
handle1.MakeSuccessor(handle2)
handle1.Handle(4)
handle1.Handle(6)
handle1.Handle(11)
