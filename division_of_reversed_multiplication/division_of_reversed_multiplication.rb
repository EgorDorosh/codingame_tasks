# frozen_string_literal: true

# Input:        Output:
#
# 2
# 3 4           10.5

File.readlines('input.txt').each do |line|
  data = line.split
  number_of_multipliers = data.first.to_f
  multipliers = data.last.split(',').map(&:to_i)

  p multipliers.inject(:*).to_s.reverse.to_i / number_of_multipliers
end
