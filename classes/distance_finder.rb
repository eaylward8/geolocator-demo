# frozen_string_literal: true

# Calculates the haversine distance between two locations using longitude and latitude
# https://github.com/kristianmandrup/haversine
require 'haversine'

class DistanceFinder
  attr_reader :distance

  def initialize(lat_long1, lat_long2)
    @distance = Haversine.distance(lat_long1, lat_long2)
  end
end