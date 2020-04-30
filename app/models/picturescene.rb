class Picturescene < ApplicationRecord
  validates :title, length: { minimum: 3}

  belongs_to :movie

  has_one_attached :picture
end
