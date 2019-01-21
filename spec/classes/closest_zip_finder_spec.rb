# frozen_string_literal: true

require_relative '../../classes/closest_zip_finder'
require 'pry-byebug'

RSpec.describe ClosestZipFinder do
  subject { described_class.new }

  describe '#closest_zip' do
    it 'returns closest given zip code to a pair of coordinates' do
      # only zip codes that work for this contrived example
      zip_codes = [
        19107, # philly
        10012, # new york
        60601, # chicago
        80203, # denver
        85003  # phoenix
      ]

      boston = [42.36, -71.06]
      dc = [38.90, -77.04]
      sydney = [-33.87, 151.21]

      expect(subject.closest_zip(zip_codes, boston)).to be 10012
      expect(subject.closest_zip(zip_codes, dc)).to be 19107
      expect(subject.closest_zip(zip_codes, sydney)).to be 85003
    end
  end
end
