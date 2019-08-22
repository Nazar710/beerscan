class Glass < ApplicationRecord
  has_many :beer_glasses
  has_many :categories, through: :beer_glasses
  mount_uploader :photo, PhotoUploader
  validates :photo, presence: true
end
