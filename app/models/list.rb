class List < ApplicationRecord
  # has a name
  # name is unique
  validates :name, uniqueness: true, presence: true
  # has many bookmarks
  # has many movies
  has_many :bookmarks
  # should destroy child saved movies when destroying self
  has_many :movies, through: :bookmarks, dependent: :destroy
end
