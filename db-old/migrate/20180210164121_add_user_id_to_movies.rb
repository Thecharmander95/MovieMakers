class AddUserIdToMovies < ActiveRecord::Migration[5.1]
  def change
    add_reference :movies, :user, foreign_key: true
  end
end
