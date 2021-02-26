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

  def self.input_condenser(array)
    
    input_array = array.words.map() do |str|
      str.downcase().gsub(/\s/, '')
    end
    # array.each() do |element|
    #   Words.vowel_check(element)
    #   if false
    #     return "Please input valid words!"
    #     break
    #   end
    # end
  end



end