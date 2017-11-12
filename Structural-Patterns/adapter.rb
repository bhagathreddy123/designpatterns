class Target
	def Request
		raise NotImplemented, 'need to implement in subclass'
	end
end

class Adapter < Target
	@adaptee

	def initialize
		@adaptee = Adaptee.new
	end

	def Request 
		puts "Inside Adapter::Request()"
		@adaptee.SpecificRequest
	end

end

class Adaptee
	def SpecificRequest
		puts "Inside Adaptee::SpecificRequest"
	end
end


target = Adapter.new
target.Request


