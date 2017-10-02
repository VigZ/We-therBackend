class Location < ApplicationRecord
  has_many :days
  has_many :users, through: :days
  reverse_geocoded_by :latitude, :longitude
  after_validation :reverse_geocode  # auto-fetch address
end
