class Triplet

	def find
		(1..400).each do |a|
			(1...400).each do |b|
				return a*b*Math.sqrt(a**2 + b**2) if a+b+Math.sqrt(a**2+b**2)==1000 
			end
		end
	end

end

puts Triplet.new().find