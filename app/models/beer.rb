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

  include PgSearch
  pg_search_scope :search_by_name,
    against: [ :name ],
    using: {
      tsearch: { prefix: true }
    }
end


