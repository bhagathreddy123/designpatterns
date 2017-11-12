class Subject
	def performOperation
		raise NotImplementedError, "performOperation() must be defined in subclass"
	end
end

class RealSubject < Subject
	def PerformOperation
		puts "RealSubject:PerformOperation()"
	end
end

class Proxy < Subject
	def initialize
		@realSubObj = nil
	end

	def PerformOperation
		if @realSubObj == nil
			@realSubObj = RealSubject.new
		end

		puts "Proxy:PerformOperation()"
		@realSubObj.PerformOperation
	end
end

obj = Proxy.new
obj.PerformOperation

