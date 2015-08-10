require 'minitest/autorun'
require 'minitest/pride'

def first_factorial(num)

  num = (1..num).inject(:*)
  return num

end

def longest_word(sen)

  sen = sen.split(/\W/).max_by(&:length)
  return sen

end

def letter_changes(str)

  vowel = ["a", "e", "i", "o", "u"]
  alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p",
      "q","r","s","t","u","v","w","x","y","z"]
  new_string = ""
  str.each_char do |letter|
    index = alphabet.index(letter)
    if index == nil
      new_string << letter
      next
    end
    letter = alphabet.at(index+1)
    if vowel.include?(letter)
      new_string << letter.capitalize
    else
      new_string << letter
    end
  end
  return new_string

end

def simple_adding(num)
  range = (1..num)
  p range.reduce(:+)
  return range.reduce(:+)

end

class CodepenChallenge < MiniTest::Test

  def test_letter_change
    assert_equal "Ifmmp*3", letter_changes("hello*3")
    assert_equal "gvO Ujnft!",letter_changes("fun times!")
  end

  def test_simple_adding
    assert_equal 78, simple_adding(12)
    assert_equal 9870, simple_adding(140)
  end

end
