require('pry')

class Words
  def initialize(str1, str2)
    @words = [str1, str2]
  end
  
  def words
    @words
  end 
  
  def anagram_check
    user_input = words
    condensed_input = Words.input_condenser(user_input)
    if condensed_input.class() == Array
      sorted_input = condensed_input.map() do |str|
        str.chars.sort.join 
      end
      if sorted_input[0] == sorted_input[1]
        "These words are anagrams!"
      else 
        Words.antigram_check(sorted_input)
      end 
    else 
      condensed_input
    end
  end

  def self.input_condenser(array)
    input_array = []
    array.each() do |element|
      if vowel_check(element) == false 
        break
      else
      input_array.push(element.downcase().gsub(/\W/, ''))
      end
    end
    if input_array.length == 2 
      input_array
    else
      "Please enter valid words!"
    end
  end

  def self.vowel_check(str)
    string_array = str.split(" ")
    if string_array.all?(/[aeiouy]/)
      true
    else
      false
    end
  end

  def self.antigram_check(array)
    result = true
    array[0].each_char do |char1|
      array[1].each_char do |char2|
        if char1 == char2 
          result = false
        end
      end
    end
    if result == false
      "These words are not anagrams!"
    else
      "These words have no matching characters!"
    end
  end

end
