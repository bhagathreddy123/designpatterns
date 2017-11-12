class SubSystemClass1

	def SubSysClass1Method1
		puts "Using SubSystemClass1:SubSysClass1Method1()"

	end

	def SubSysClass1Method2
		puts "Using SubSystemClass1:SubSysClass1Method2()"
	end

end

class SubSystemClass2

	def SubSysClass2Method1
		puts "Using SubSystemClass2:SubSysClass2Method1()"
	end

	def SubSysClass2Method2
		puts "Using SubSystemClass2:SubSysClass2Method2()"
	end
end

class SubSystemClass3

	def SubSysClass3Method1
		puts "Using SubSystemClass3:SubSysClass3Method1()"
	end

	def SubSysClass3Method2
		puts "Using SubSystemClass3:SubSysClass3Method2()"
	end
end


class FacadeSystem
	def initialize
		@subSysClass1 = SubSystemClass1.new
		@subSysClass2 = SubSystemClass2.new
		@subSysClass3 = SubSystemClass3.new
	end

	def Method1
		puts "Using FacadeSystem:Method1()"
		@subSysClass1.SubSysClass1Method1
		 @subSysClass2.SubSysClass2Method2
		 @subSysClass3.SubSysClass3Method1
	end

	def Method2
		puts "Using FacadeSystem:Method2()"
		@subSysClass1.SubSysClass1Method2
		 @subSysClass2.SubSysClass2Method1
		 @subSysClass3.SubSysClass3Method2
	end
end

facadSys = FacadeSystem.new
facadSys.Method1
facadSys.Method2


