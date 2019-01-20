# frozen_string_literal: true

class ClosestZipFinder
  def closest_zip(zipcodes, location)
    zipcodes.min_by { |zip| DistanceFinder.new(MyZipCodeFinder.geolocate(zip), location).distance.to_miles }
  end

  # original implementation:
  # def get_zip(a, location)
  #   acc = {}
  #   a.each do |zipcode|
  #     lat = MyZipCodeFinder.geolocate(zipcode)[0]
  #     long = MyZipCodeFinder.geolocate(zipcode)[1]
  #     distance = DistanceFinder([lat,long], [location[0], location[1]])
  #     acc['zipcode'] = distance
  #   end
  #   zipcode_of_min_distance = acc.min_by { |_, v| v }[0]
  #   zipcode_of_min_distance
  # end
end
