class Movie < ApplicationRecord
  has_many :scenes, dependent: :destroy

  belongs_to :user
end
