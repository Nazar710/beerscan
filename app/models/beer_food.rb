class BeerFood < ApplicationRecord
  belongs_to :beer
  belongs_to :food
end
