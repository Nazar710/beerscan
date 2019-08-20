class Beer < ApplicationRecord
  belongs_to :category
  belongs_to :color
  belongs_to :brewery
  has_many :beer_foods
  validates :name, presence: true, uniqueness: true
  validates :photo, presence: true
  validates :alcohol, presence: true
  validates :temperature, presence: true
end
