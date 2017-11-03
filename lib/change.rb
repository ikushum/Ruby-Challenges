class Change
	def initialize(money, coins)
		@money = money
		@coins = coins
	end

	def change
		return "negative change not possible" if @money < 0
		final_coins = Hash.new(0)
		@coins.sort.reverse.each do |i|
			@money < i ? final_coins[i]=0 : final_coins[i]=@money/i 
			@money = @money % i
		end
		@coins.map{|i| final_coins[i] }
	end

end
