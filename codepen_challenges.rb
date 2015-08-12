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
  return range.reduce(:+)

end

def letter_capitalize(str)

  str = str.split.map(&:capitalize).join(' ')
  return str

end

# def SimpleSymbols(str)
#
#   # code goes here
#   return str
#
# end
def check_nums(num1, num2)

  if num1 < num2
    true
  elsif num1 > num2
    false
  else
    return -1
  end

end

def time_convert(num)

  minutes = num % 60
  hours = num / 60
  time = "#{hours}:#{minutes}"

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

  def test_letter_capitalize
    assert_equal "Hello World", letter_capitalize("hello world")
    assert_equal "I Ran Here", letter_capitalize("i ran here")
  end

  # def test_simple_symbols
  #   assert true, simple_symbols("+d+=3=+s+")
  #   assert false, simple_symbols("f++d+")
  # end

  def test_check_nums
    assert_equal -1, check_nums(8, 8)
    assert_equal true, check_nums(3, 122)
    assert_equal false, check_nums(3, 1)
  end

  def test_time_covert
    assert_equal "2:6", time_convert(126)
    assert_equal "0:45", time_convert(45)
  end
end
