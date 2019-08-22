class Category < ApplicationRecord
  has_many :beers, dependent: :destroy
  has_many :beer_glasses
  has_many :glasses, through: :beer_glasses
  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
