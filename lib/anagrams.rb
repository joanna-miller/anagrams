require('pry')

class Words
  def initialize(str1, str2)
    @words = [str1, str2]
  end

  def words
    @words
  end 

  def self.vowel_check(str)
    string_array = str.split(" ")
    if string_array.all?(/[aeiouy]/)
      true
    else
      false
    end
  end

  def self.input_condenser(array)
    input_array = []
    array.each() do |element|
      if vowel_check(element) == false 
        break
      else
      input_array.push(element.downcase().gsub(/\s/, ''))
      end
    end
    if input_array.length == 2 
      input_array
    else
      "Please enter valid words!"
    end
  end

  def anagram_check
    user_input = words
    condensed_input = Words.input_condenser(user_input)
    if condensed_input.class() != Array
      return condensed_input
    else 
      sorted_input = condensed_input.map() do |str|
        str.chars.sort.join 
      end
      if sorted_input[0] == sorted_input[1]
        "These words are anagrams!"
      else 
        "These words are not anagrams!"
      end
    end
  end

end
