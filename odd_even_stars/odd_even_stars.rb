# Input:      Output:
#
# 2           **
#             **
#
# 5               *
#                **
#               ***
#              ****
#             *****

File.readlines('input.txt').each do |line|
  x = line.to_i

  x.odd? ? x.times { |i| puts "#{' ' * (x - i - 1)}#{'*' * (i + 1)}" } : x.times { puts '*' * x }
end

