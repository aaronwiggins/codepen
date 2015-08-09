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
  # alternate
  # return str.gsub(/[a-zA-Z]/) { |l| l.next }.gsub(/[aeiou]/) { |v| v.upcase }
  # or
  # string.split('').map do |char|
  #   char.next! if char =~ /[A-Za-z]/
  #   char.capitalize! if char =~ /[aeiou]/
  #   char
  # end.join
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

class CodepenChallenge < MiniTest::Test

  def test_letter_change
    assert_equal "Ifmmp*3", letter_changes("hello*3")
    assert_equal "gvO Ujnft!",letter_changes("fun times!")
  end

end
