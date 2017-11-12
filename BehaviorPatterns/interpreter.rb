class AbstractExpression
	def Interpret(context)
		raise NotImplemetedError, 'Interpret() must be defined in subclass'
	end
end

class TerminalExpression < AbstractExpression
	def Interpret(context)
		puts 'Inside TerminalExpression:Interpret()'
	end
end


class NonTerminalExpression < AbstractExpression
	def Interpret(context)
		puts 'Inside NonTerminalExpression:Interpret()'
	end
end

class Context
	def initialize(value)
		@expression = value
	end

	def SetExpression(value)
		@expression = value
	end

	def GetExpression
		return @expression
	end

end

contextObj = Context.new("AAAABBBBCCCCDDDD")
expressionList = Array.new
expressionList << NonTerminalExpression.new
expressionList << TerminalExpression.new
expressionList << TerminalExpression.new
for expr in expressionList
	expr.Interpret(contextObj)
end