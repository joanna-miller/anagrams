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

  describe('#anagram_check') do
    it('returns negative if two single word strings are not anagrams') do
      user_input = Words.new("joanna", "dawn")
      expect(user_input.anagram_check()).to(eq("These words are not anagrams!"))
    end
    it('returns positive if two single word strings are anagrams') do
      user_input = Words.new("stressed", "desserts")
      expect(user_input.anagram_check()).to(eq("These words are anagrams!"))
    end
    it('can identify a multi word anagram') do
      user_input = Words.new("a gentle man", "elegant man")
      expect(user_input.anagram_check()).to(eq("These words are anagrams!"))
    end
    it('can confirm that all words contain vowels') do
      user_input = Words.new("JoAnna", "Mllr")
      expect(user_input.anagram_check()).to(eq("Please enter valid words!"))
    end 
    it('can determine an anagram with case insensitivity') do
      user_input = Words.new("School master", "The classroom")
      expect(user_input.anagram_check()).to(eq("These words are anagrams!"))
    end 
    it('can call antigram_check to check if words are antigrams') do
      user_input = Words.new("hi", "bye")
      expect(user_input.anagram_check()).to(eq("These words have no matching characters!"))
    end 
  end

  describe('Words#antigram_check') do
    it('can determine if two words or phrases have no matching characters') do
      expect(Words.antigram_check(["joanna", "miller"])).to(eq("These words have no matching characters!"))
    end 
    it('will return no anagram found if no antigram is found') do
      expect(Words.antigram_check(["jan", "dawn"])).to(eq("These words are not anagrams!"))
    end 
  end

end