require_relative '../lib/word_count.rb'
require 'rspec'

describe Words do 

  context 'when phrase is empty' do
    it 'returns empty string' do
      expect(Words.new("").count).to eq('')
    end
  end

  context 'when phrase is not empty' do
    it 'returns the count as hash ' do
      string = "olly olly in come free"
      expected_hash = { 'olly' => 2, 'in' => 1, 'come' => 1, 'free' => 1  }
      expect(Words.new(string).count).to eq(expected_hash)
    end
  end

end
