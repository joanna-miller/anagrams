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
      return true
    else
      return false
    end
  end

  def self.input_condenser(array)
    input_array = []
    array.words.each() do |element|
      if vowel_check(element) == false 
        break
      else
      input_array.push(element)
      end
    end
    if input_array.length == 2 
      word_array = input_array.map() do |str|
        str.downcase().gsub(/\s/, '')
      end
      return word_array
    else
      return "Please enter valid words!"
    end
  end

end