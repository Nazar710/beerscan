
class Beer < ApplicationRecord
  belongs_to :category
  belongs_to :color
  belongs_to :brewery
  belongs_to :glass

  has_many :beer_foods
  has_many :foods, through: :beer_foods
  validates :name, presence: true, uniqueness: true
  validates :alcohol, presence: true
  validates :temperature, presence: true
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: [1, 2, 3, 4, 5] }

  include PgSearch
  pg_search_scope :global_search,
    against: [ :name ],
    associated_against: {
      category: [ :name ],
      brewery: [ :name ]
    },
    using: {
      tsearch: { prefix: true }
    }

  def self.super_search(query)
    food = Food.find_by(name: query.capitalize)
    if food
      return (global_search(query) + food.beers).uniq
    else
      return global_search(query)
    end
  end
end
