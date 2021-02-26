require 'rspec'
require 'anagrams'

describe(Words) do
  describe('#words') do
    it('reads the value of a new Words instance') do
      user_input = Words.new("cat", "dog")
      expect(user_input.words()).to(eq(["cat", "dog"]))
    end
  end

  describe('Words#vowel_check') do
    it('checks that a string contains at least one vowel or y') do
      expect(Words.vowel_check("jnn")).to(eq(false))
      expect(Words.vowel_check("cat")).to(eq(true))
    end
    it('checks that each word in a string contains at least one vowel or y') do
      expect(Words.vowel_check("my name is jm")).to(eq(false))
      expect(Words.vowel_check("my name is jo")).to(eq(true))
    end
  end

  describe('Words#input_condenser') do
    it('makes all user input lower case') do
      expect(Words.input_condenser(["JoAnna", "Miller"])).to(eq(["joanna", "miller"]))
    end
    it('condenses user sentences into one word') do
      expect(Words.input_condenser(["JoAnna Miller", "is a student at epicodus"])).to(eq(["joannamiller", "isastudentatepicodus"]))
    end
    it('can call vowel_check to confirm that all words contain vowels') do
      expect(Words.input_condenser(["JoAnna", "Mllr"])).to(eq("Please enter valid words!"))
    end 
  end

  describe('#anagram_check')
  it('returns negative if two single word strings are not anagrams') do
    user_input = Words.new("joanna", "miller")
    expect(user_input.anagram_check()).to(eq("These words are not anagrams!"))
  end
  it('returns positive if two single word strings are anagrams') do
    user_input = Words.new("stressed", "desserts")
    expect(user_input.anagram_check()).to(eq("These words are anagrams!"))
  end
  # it('can identify a multi word anagram') do
  #   user_input = Words.new("a gentle man", "elegant man")
  #   expect(input.anagram_check(input)).to(eq("These words are anagrams!"))
  # end
end