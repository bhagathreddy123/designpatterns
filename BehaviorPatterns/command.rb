class Receiver
  def Action
    puts "Inside Receiver:Action"
  end
end

class Command
  def Execute
    raise NotImplementedError, 'Execute() must be defined in Subclass'
  end
end

class ConcreteCommand < Command
  def initialize(receiverObj)
    @receiver = receiverObj
  end
