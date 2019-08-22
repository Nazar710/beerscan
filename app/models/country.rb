class Country < ApplicationRecord
  has_many :breweries, dependent: :destroy
  has_many :beer_foods
  has_many :glasses, through: :beer_glasses
  validates :name, presence: true, uniqueness: true
end
