class Isomer
	def initialize(word)
		@word = word.split("")
	end

	def is_isomer?
		@word.each{ |w| return false if @word.count(w) > 1   }
		true
	end
end