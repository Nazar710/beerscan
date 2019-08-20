class Brewery < ApplicationRecord
  belongs_to :country
  has_many :beers, dependent: :destroy
  validates :name, presence: true
end
