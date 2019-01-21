# frozen_string_literal: true

require_relative './distance_finder'
require_relative './my_zip_code_finder'

class ClosestZipFinder
  def closest_zip(zipcodes, lat_long)
    zipcodes.min_by { |zip| DistanceFinder.new(MyZipCodeFinder.geolocate(zip), lat_long).distance }
  end
end
