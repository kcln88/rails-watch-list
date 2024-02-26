class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates_associated :movie
  validates_associated :list
  validates :movie_id, uniqueness: { scope: :list_id, message: "should happen once per list" }
end
