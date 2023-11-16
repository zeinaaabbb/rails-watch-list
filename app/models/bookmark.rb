class Bookmark < ApplicationRecord
  # has a comment
  # comment cannot be shorter than 6 characters (FAILED - 1)
  validates :comment, presence: true, length: { minimum: 6 }
  # belongs to a movie (FAILED - 2)
  # belongs to an list
  # list cannot be blank (FAILED - 4)
  validates :movie, uniqueness: { scope: :list }
  belongs_to :movie
  belongs_to :list
end


#   movie cannot be blank (FAILED - 3)
#   list cannot be blank (FAILED - 4)
#   is unique for a given movie/list couple (FAILED - 5)
