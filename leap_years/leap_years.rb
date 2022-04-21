# frozen_string_literal: true

require 'date'

# Leap years are years which are multiples of 4, with the exception of centennial years (years that are multiples
# of 100) that aren't multiples of 400.
# Given two years as an entry, print the number of leap years in between those two years, including the two given years.

# Input:      Output:
#
# 1800
# 2400        146

File.readlines('input.txt').each do |line|
  first_year, last_year = line.split(';').map(&:to_i)

  puts (first_year..last_year).count { |year| Date.leap?(year) }
end
