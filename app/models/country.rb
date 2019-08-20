class Country < ApplicationRecord
  has_many :breweries, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
