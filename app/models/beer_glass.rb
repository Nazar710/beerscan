class BeerGlass < ApplicationRecord
  belongs_to :category
  belongs_to :glass
end
