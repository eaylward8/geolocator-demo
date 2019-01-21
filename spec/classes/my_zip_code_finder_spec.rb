# frozen_string_literal: true

require_relative '../../classes/my_zip_code_finder'

RSpec.describe MyZipCodeFinder do
  describe '.geolocate' do
    it 'returns coordinates array for known zip code' do
      expect(described_class.geolocate(19107)).to eq [39.95, -75.16]
    end

    # admittedly not a great test, but this is a silly example
    it 'returns nil for unknown zip code' do
      expect(described_class.geolocate(12345)).to be nil
    end
  end
end
