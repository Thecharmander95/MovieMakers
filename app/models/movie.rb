class Movie < ApplicationRecord
  has_many :scenes, dependent: :destroy
  has_many :picturescenes, dependent: :destroy

  belongs_to :user
end
