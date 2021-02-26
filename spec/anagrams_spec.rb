require 'rspec'
require 'anagrams'

describe(Words) do
  describe("#receiver") do
    it('reads the value of a new Words instance') do
      words = Words.new("cat", "dog")
      expect(words.receiver()).to(eq(["cat", "dog"]))
    end
  end
end