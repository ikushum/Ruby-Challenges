require_relative '../lib/raindrops.rb'
require 'rspec'

describe Raindrops do 

  context 'number does not have any factors' do
    it 'returns the digit itself' do
      expect(Raindrops.new(34).speak).to eq(34)
    end
  end

  tests = { 28 => 'Plong', 30 => 'PlingPlang' }

  tests.each do |key, value|
    context 'number has any factors' do
      it 'returns corresponding sound' do
        expect(Raindrops.new(key).speak).to eq(value)
      end
    end
  end

end
