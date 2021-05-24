class Act < ApplicationRecord
  establish_connection (:users)
  belongs_to :movie
end
