require_relative '../lib/pythagorean_triplet.rb'
require 'rspec'

describe Triplet do 

	context 'when asked for pythagorean triplet' do
    	it 'it returns their product ' do
      		expect(Triplet.new().find).to eq(200*375*425)
    	end
  	end

end