class AddByToMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :by, :string
  end
end
