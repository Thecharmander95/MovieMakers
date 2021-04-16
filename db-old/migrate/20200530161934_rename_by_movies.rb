class RenameByMovies < ActiveRecord::Migration[6.0]
  def change
    add_column :movies, :author, :string
  end
end
