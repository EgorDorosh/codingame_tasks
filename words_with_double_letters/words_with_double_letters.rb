# frozen_string_literal: true

# Input                                       Output:
#
# double letters are cool                     2
# no doubles                                  0
# CheCkInG LetTers with difFerent cases       1
# tricky balloon                              1

File.readlines('input.txt').each do |line|
  words = line.downcase.split

  p words.reject { |word| word == word.squeeze }.size
end
