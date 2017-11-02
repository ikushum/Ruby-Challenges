class Leap
	def initialize(year)
		@year = year
	end

	def calculate
		@year%4==0 && @year%100 != 0 || @year%400 == 0 ? 'leap' : 'not leap'
	end
end