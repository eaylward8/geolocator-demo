# frozen_string_literal: true

class MyZipCodeFinder
  # contrived example to make this work
  # realistically, use a gem that provides an interface to geolocation APIs
  ZIP_COORDINATES = {
    19107 => [39.95, -75.16],  # philly
    10012 => [40.72, -73.99],  # new york
    60601 => [41.89, -87.63],  # chicago
    80203 => [39.74, -104.99], # denver
    85003 => [33.45, -112.08]  # phoenix
  }.freeze

  def self.geolocate(zipcode)
    ZIP_COORDINATES[zipcode]
  end
end