	require_relative '../lib/roman.rb'
require 'rspec'

describe Roman do 

	context 'when supplied a negative number' do
	    it 'it returns its roman equivalent ' do
      		expect(Roman.new(-1).roman).to eq("Invalid Input")
    	end
	end

	context 'when supplied a number greater than 3000' do
	    it 'it returns its roman equivalent ' do
      		expect(Roman.new(3001).roman).to eq("Invalid Input")
    	end
	end

	context 'when supplied Zero' do
	    it 'it returns its roman equivalent ' do
      		expect(Roman.new(0).roman).to eq("Invalid Input")
    	end
	end	

	tests = { 1 => "I", 5 => "V", 9 => "IX", 22 => "XXII", 244 => "CCXLIV", 99 => "XCIX", 999 => "CMXCIX" }

	tests.each do |key, value|
		context 'when supplied a valid number' do
	    	it 'it returns its roman equivalent ' do
	      		expect(Roman.new(key).roman).to eq(value)
	    	end
	  	end
  	end

end