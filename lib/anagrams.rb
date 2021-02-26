class Words < String
  def initialize(str1, str2)
    @words = [str1, str2]
  end

  def words
    @words
  end 

  def self.vowel_check(str)
    if str.match(/[aeiouy]/)
      return true
    else
      return false
    end
  end

  def anagram_check()

  end

end