require_relative './classes/my_zip_code_finder'
require_relative './classes/distance_finder'
require_relative './classes/closest_zip_finder'

require 'pry-byebug'

# only zips that work with this simple example
zip_codes = [
  19107, # philly
  10012, # new york
  60601, # chicago
  80203, # denver
  85003  # phoenix
]

# coordinates to test against
boston = [42.36, -71.059]
dc = [38.90, -77.04]
pittsburgh = [40.44, -79.99]
houston = [29.76, -95.37]

czf = ClosestZipFinder.new

puts "Closest to Boston: #{czf.closest_zip(zip_codes, boston)}"
puts "Closest to DC: #{czf.closest_zip(zip_codes, dc)}"
puts "Closest to Pittsburgh: #{czf.closest_zip(zip_codes, pittsburgh)}"
puts "Closest to Houston: #{czf.closest_zip(zip_codes, houston)}"
