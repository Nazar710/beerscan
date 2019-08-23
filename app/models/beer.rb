class Beer < ApplicationRecord
  belongs_to :category
  belongs_to :color
  belongs_to :brewery
  has_many :beer_foods
  has_many :foods, through: :beer_foods
  validates :name, presence: true, uniqueness: true
  validates :alcohol, presence: true
  validates :temperature, presence: true
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5] }

  include PgSearch
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }
end
