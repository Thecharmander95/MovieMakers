class RenameByMovies < ActiveRecord::Migration[6.0]
  def change
    remove_column :movies, :by, :string
    add_column :movies, :author, :string
  end
end
