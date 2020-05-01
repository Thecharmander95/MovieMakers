class Movie < ApplicationRecord
  has_many :scenes, dependent: :destroy
  has_many :picturescenes, dependent: :destroy

  validates :name, length: { minimum: 3}
  validates :by, length: { minimum: 5}
  belongs_to :user
end
