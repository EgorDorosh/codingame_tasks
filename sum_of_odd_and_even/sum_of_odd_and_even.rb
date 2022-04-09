# frozen_string_literal: true

# Calculate the sum of all even and odd numbers from 0 to n.

# Input:      Output:
#
# 5           9
#             6

File.readlines('input.txt').each do |line|
  number = line.to_i

  p (0..number).inject { |res, n| n.odd? ? res + n : res }
  p (0..number).inject { |res, n| n.even? ? res + n : res }
end
