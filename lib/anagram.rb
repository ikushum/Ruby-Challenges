class Anagram
	def initialize(word, list)
		@word = word.split("").to_a
		@list = list
	end

	def find_anagram
		@list.map{|w| w if w.split("") - @word == [] && w.size == @word.size }.compact
	end
end