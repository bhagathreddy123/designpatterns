class Prototype
	def clone
		raise Notimplemented error, "must be implement in subclass"
	end
end

class ConcretePrototype1
	def clone
		return self.clone
	end

	def UsePrototype
	    puts "Inside ConcretePrototype1:UsePrototype()"
	end

end

class ConcretePrototype2
	def clone
		return self.clone
	end

	def UsePrototype
	    puts "Inside ConcretePrototype2:UsePrototype()"
	end
end

cp1protoObj = ConcretePrototype1.new
cpobj = cp1protoObj.clone
cpobj.UsePrototype

cp2protoObj = ConcretePrototype2.new
cpobj = cp2protoObj.clone
cpobj.UsePrototype

