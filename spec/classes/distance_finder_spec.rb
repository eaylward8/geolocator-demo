# frozen_string_literal: true

require_relative '../../classes/distance_finder'

RSpec.describe DistanceFinder do
  describe '#distance' do
    it 'returns distance in miles between 2 coordinates' do
      philly = [39.95, -75.16]
      denver = [39.74, -104.99]
      sydney = [-33.87, 151.21]

      expect(described_class.new(philly, denver).distance).to be 1573.96
      expect(described_class.new(philly, sydney).distance).to be 9863.09
    end
  end
end
