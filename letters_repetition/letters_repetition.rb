# frozen_string_literal: true

# Input:              Output:
#
# Apple               11AA
# Orange              1O
# Pineapple           111P
# Pear                1P

File.readlines('input.txt').each do |line|
  row = line.upcase.chomp.split('').tally.sort_by { |letter| letter[1] }.reverse
  reps = row[0].last
  puts '1' * reps + line[0] * reps
end

