class Beer < ApplicationRecord
  belongs_to :category
  belongs_to :color
  belongs_to :brewery
  validates :name, presence: true, uniqueness: true
  validates :alcohol, presence: true
  validates :temperature, presence: true
  mount_uploader :photo, PhotoUploader
end
