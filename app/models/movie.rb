class Movie < ApplicationRecord
  validates :title, :overview, uniqueness: trues
end
