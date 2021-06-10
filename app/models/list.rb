class List < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
end
