class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates :movie, presence: true, uniqueness: { scope: :list_id }
  validates :list, presence: true, uniqueness: {scope: :movie_id}
  validates :comment, presence: true, length: { minimum: 6 }
end
