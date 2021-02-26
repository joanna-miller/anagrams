require 'rspec'
require 'anagrams'

describe(Words) do
  describe('#receiver') do
    it('reads the value of a new Words instance') do
      words = Words.new("cat", "dog")
      expect(words.receiver()).to(eq(["cat", "dog"]))
    end
  end
  describe('#anagram_check') do
    it('checks that input contains at least one vowel or y') do
      words = Words.new("jnn", "mllr")
      expect(words.anagram_check()).to(eq("Please input actual words!"))
    end
  end
  
end