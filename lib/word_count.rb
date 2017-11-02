class Words
  def initialize(phrase)
    @phrase = phrase
  end

  def count	
  	return "" if @phrase.empty?
 	counts = Hash.new(0)
  	@phrase.split(" ").each { |word| counts[word] += 1 }
  	counts
  end
end

