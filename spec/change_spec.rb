require_relative '../lib/change.rb'
require 'rspec'

describe Change do 

  tests= {  [40, [1,5,10,25,100]] => [0,1,1,1,0], 
  			[50,[10,15,5]] => [0,3,1], 
  			[90, [50,10,5,20]] => [1,0,0,2], 
  			[15, [1,5,10,25,100]] => [0,1,1,0,0] 
  		}

	tests.each do |key, value|
		context 'when asked for a normal change' do
	    	it 'it returns money with least number of coins ' do
	      		expect(Change.new(key[0], key[1]).change).to eq(value)
	    	end
	  	end
	end

	tests= { [5, [10,20,30]] => [0,0,0] }
  	tests.each do |key, value|
		context 'when change value is smaller than the smallest coin value' do
	    	it 'it returns money with least number of coins ' do
	      		expect(Change.new(key[0], key[1]).change).to eq(value)
	    	end
	  	end
	end

	tests= { [-5, [10,20,30]] => "negative change not possible" }
  	tests.each do |key, value|
		context 'when asked for a negative change' do
	    	it 'it returns money with least number of coins ' do
	      		expect(Change.new(key[0], key[1]).change).to eq(value)
	    	end
	  	end
	end

end