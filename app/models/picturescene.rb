class Picturescene < ApplicationRecord
  belongs_to :movie

  has_one_attached :picture
end
