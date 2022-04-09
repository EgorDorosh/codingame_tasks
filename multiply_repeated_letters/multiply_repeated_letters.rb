# frozen_string_literal: true

# You are given a word of lowercase letters (a-z). For each character, double it the second time it appears in the
# original word, triple it for the third time etc.

# Input:      Output:
#
# bonobo      bonoobbooo

File.readlines('input.txt').each do |line|
  word = line.split('')
  result = ''
  letters = ''

  word.each do |letter|
    result += letter * letters.count(letter) if letters.include?(letter)
    letters += letter
    result += letter
  end

  puts result
end
