class Food < ApplicationRecord
  has_many :beer_foods
  has_many :beers, through: :beer_foods
  validates :name, presence: true, uniqueness: true
end
