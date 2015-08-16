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

  str.gsub(/[a-zA-Z]/) { |letter| letter.next }
      .gsub(/[aeiou]/) { |letter| letter.capitalize }

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

def alphabet_soup(str)

  str.downcase.chars.sort.join

end

def ab_check(str)
  boolean = []
  str.each_char.with_index do |letter, index|
    if index+1 > str.length-3
      break
    elsif "#{letter}" == "a" && str[index+4] == "b"
      boolean << true
      break
    elsif "#{letter}" == "b" && str[index+4] == "a"
      boolean << true
      break
    else
      boolean << false
    end
  end
  boolean.include?(true) ? true : false
end

def vowel_count(str)
  str = str.downcase
  counter = 0
  vowels = ["a", "e", "i", "o", "u"]
  str.each_char do |letter|
    if vowels.include?(letter)
      counter += 1
    end
  end
  counter

end

def word_count(str)

  str.split.count

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

  def test_alphabet_soup
    assert_equal "bcdeeorty", alphabet_soup("coderbyte")
    assert_equal "ahhloop", alphabet_soup("hooplah")
  end

  def test_ab_check
    assert_equal false, ab_check("after badly")
    assert_equal true, ab_check("Laura sobs")
    assert_equal true, ab_check("lane borrowed")
  end

  def test_vowel_count
    assert_equal 2, vowel_count("hello")
    assert_equal 3, vowel_count("coderbyte")
  end

  def test_word_count
    assert_equal 2, word_count("Hello World")
    assert_equal 3, word_count("one 22 three")
  end
end
