class User < ApplicationRecord
  has_many :days
  has_many :locations, through: :days
end
