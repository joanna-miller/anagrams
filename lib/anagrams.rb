#!/usr/bin/ruby
require('pry')

class Words < Array
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
    array.words.each() do |element|
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
    sorted_input = user_input.map() do |str|
      str.chars.sort.join 
    end
    if sorted_input[0] == sorted_input[1]
      return "These words are anagrams!"
    end
  end

end
