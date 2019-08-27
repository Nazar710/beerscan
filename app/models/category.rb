class Category < ApplicationRecord
  has_many :beers, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
end
