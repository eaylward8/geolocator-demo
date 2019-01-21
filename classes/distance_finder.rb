# frozen_string_literal: true

# Calculates the haversine distance between two locations using longitude and latitude
# https://github.com/kristianmandrup/haversine
require 'haversine'

class DistanceFinder
  attr_reader :distance

  def initialize(lat_long1, lat_long2)
    # perhaps check that both parameters are Arrays of length 2 before continuing
    @distance = Haversine.distance(lat_long1, lat_long2).to_miles.round(2)
  end
end
