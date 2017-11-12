class Element
    def Accept(v)
        raise NotImplementedError, 'Accept() must be defined in subclass'
	end
end

class ConcreteElementA < Element
    def Accept(v)
        puts "ConcreteElementA::Accept()"
        v.VisitConcreteElementA(self)
	end
end

class ConcreteElementB < Element
    def Accept(v)
        puts "ConcreteElementB::Accept()"
        v.VisitConcreteElementB(self)
	end
end

class Visitor
    def VisitConcreteElementA(elem)
        raise NotImplementedError, 'VisitConcreteElementA() must be defined in subclass'
	end
    
    def VisitConcreteElementB(elem)
        raise NotImplementedError, 'VisitConcreteElementB() must be defined in subclass'
	end
end

class ConcreteVisitor1 < Visitor
    def VisitConcreteElementA(elem)
        puts "ConcreteVisitor1:VisitConcreteElementA()"
	end

    def VisitConcreteElementB(elem)
        puts "ConcreteVisitor1:VisitConcreteElementB()"
	end
end

class ConcreteVisitor2 < Visitor
    def VisitConcreteElementA(elem)
        puts "ConcreteVisitor2:VisitConcreteElementA()"
	end

    def VisitConcreteElementB(elem)
        puts "ConcreteVisitor2:VisitConcreteElementB()"
	end
end


elements = Array.new

eleA = ConcreteElementA.new
eleB = ConcreteElementB.new

elements << eleA
elements << eleB


visitor1 = ConcreteVisitor1.new
visitor2 = ConcreteVisitor2.new

for elem in elements
    elem.Accept(visitor1)
    elem.Accept(visitor2)
end

