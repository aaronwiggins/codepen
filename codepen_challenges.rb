def first_factorial(num)

  num = (1..num).inject(:*)
  return num

end

def longest_word(sen)

  sen = sen.split(/\W/).max_by(&:length)
  return sen

end
