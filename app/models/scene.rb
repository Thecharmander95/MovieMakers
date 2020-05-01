class Scene < ApplicationRecord
  validates :name, length: { minimum: 3}
  validates :content, length: { minimum: 5}

  belongs_to :movie
end
