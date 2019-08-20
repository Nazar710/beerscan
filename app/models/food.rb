class Food < ApplicationRecord
  has_many :beer_foods
  validates :name, presence: true, uniqueness: true
end
