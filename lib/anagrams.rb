class Words < String
  def initialize(str1, str2)
    @words = [str1, str2]
  end

  def words
    @words
  end 

  def self.vowel_check(str)
    string_array = str.split(" ")
    string_array.all?(/[aeiouy]/)
  end

  def anagram_check()
    array = self.words.map() do |str|
      str.downcase().gsub(/\s/, '')
    end
    array
  end

end