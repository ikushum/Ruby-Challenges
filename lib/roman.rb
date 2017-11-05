class Roman

	def initialize(number)
		@number = number
	end


	def roman
		return "Invalid Input" if @number > 3000 || @number <= 0
		values = { 1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M" } 
		roman = ""
		while @number != 0
			lower_limit, upper_limit = values.keys.select{|n| n if n <= @number}.max , values.keys.select{|n| n if n >= @number}.min
			if (@number < 10 and @number == 4)
				roman += "IV"
				@number = 0
			elsif (@number < 10 and @number == 9)
				roman += "IX"		
				@number = 0
			elsif (@number.to_s[0] == "9" && @number >= 900)	
				roman += "CM"
				@number-= 900
			elsif (@number.to_s[0] == "9" && @number >= 90)	
				roman += "XC"
				@number-= 90								
			elsif (@number.to_s[0] == "4")	
				roman += values[lower_limit] + values[upper_limit]
				@number-= (upper_limit - lower_limit)		
			else
				roman += values[lower_limit]
				@number-= lower_limit
			end
		end
		return roman
	end

end
