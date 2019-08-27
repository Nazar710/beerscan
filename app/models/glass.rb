class Glass < ApplicationRecord
  has_many :beers
  mount_uploader :photo, PhotoUploader

end
