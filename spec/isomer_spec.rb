require_relative '../lib/isomer.rb'
require 'rspec'

describe Isomer do 

  tests = { "asdfgh" => true, 
  			"asdfga" => false, 
  			"apple ball" => false, 
  			"isomers" => false, 
  			"lumberjacks" => true, 
  			"background" => true, 
  			"downstream" => true  
  		 }

  tests.each do |key, value|
	  context 'when a word is supplied' do
	    it 'returns if it is isogram or not' do
	      expect(Isomer.new(key).is_isomer?).to eq(value)
	    end
	  end
	end

end
