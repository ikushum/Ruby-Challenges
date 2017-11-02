require_relative '../lib/leap.rb'
require 'rspec'

describe Leap do 
  tests = { 1997 => 'not leap', 1996 => 'leap', 1900 => 'not leap', 2000 => 'leap' }
  tests.each do |key, value|
    context 'when a year is given' do
      it 'returns if the year is leap or not' do
        expect(Leap.new(key).calculate  ).to eq(value)
      end
    end
  end
end
