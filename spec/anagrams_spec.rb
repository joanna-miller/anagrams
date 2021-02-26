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
    it('checks that each word in a string contains at least one vowel or y') do
      expect(Words.vowel_check("my name is jm")).to(eq(false))
      expect(Words.vowel_check("my name is jo")).to(eq(true))
    end
  end

  describe('#anagram_check') do
    it('makes all user input lower case') do
      user_input = Words.new("JoAnna", "Miller")
      expect(user_input.anagram_check()).to(eq(["joanna", "miller"]))
    end
    it('condenses user sentences into one word') do
      user_input = Words.new("JoAnna Miller", "is a student at epicodus")
      expect(user_input.anagram_check()).to(eq(["joannamiller", "isastudentatepicodus"]))
    end
  end

end