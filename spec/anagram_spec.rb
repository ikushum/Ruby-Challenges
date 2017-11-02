require_relative '../lib/anagram.rb'
require 'rspec'

describe Anagram do 

  word="creative"
  list=["enlists", "google", "reactive", "banana"]
  expected_list=["reactive"]

  context 'when a word is supplied' do
    it 'returns its anagram pair/pairs' do
      expect(Anagram.new(word, list).find_anagram).to eq(expected_list)
    end
  end

end
