require 'rspec'
require 'anagrams'

describe(Words) do
  describe('#words') do
    it('reads the value of a new Words instance') do
      user_input = Words.new("cat", "dog")
      expect(user_input.words()).to(eq(["cat", "dog"]))
    end
  end
  
  describe('#vowel_check') do
    it('checks that a string contains at least one vowel or y') do
      expect(Words.vowel_check("jnn")).to(eq(false))
      expect(Words.vowel_check("cat")).to(eq(true))
    end
  end

  describe('#anagram_check') do
    it('makes all user input lower case') do
      user_input = Words.new("JoAnna", "Miller")
      expect(user_input.anagram_check()).to(eq(["joanna", "miller"]))
    end
  end

end