require_relative '../lib/raindrops.rb'
require 'rspec'

describe Raindrops do 

  context 'number does not have any factors' do
    it 'returns the digit itself' do
      expect(Raindrops.new(34).speak).to eq(34)
    end
  end

  context 'number has any factors' do
    it 'returns corresponding sound' do
      expect(Raindrops.new(28).speak).to eq('Plong')
    end

    it 'returns corresponding sound' do
      expect(Raindrops.new(30).speak).to eq('PlingPlang')
    end
  end

end
