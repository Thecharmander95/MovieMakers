class Picturescene < ApplicationRecord
  validates :name, length: { minimum: 1}

  belongs_to :movie

  has_one_attached :picture

  has_one_attached :video
end
