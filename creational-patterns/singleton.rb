require 'singleton'
class UserData
	include Singleton
	def setData(num)
		@data = num
	end
	def getData
		return @data
	end
end

UserData.instance().setData(10)
puts "Data=#{UserData.instance().getData()}"