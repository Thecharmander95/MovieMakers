class RemoveUnnescairyThings < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :credits, :movies
    remove_foreign_key :movies, :users
    remove_foreign_key :picturescenes, :movies
    remove_foreign_key :scenes, :movies
    drop_table   :acts
    drop_table   :credits
    drop_table   :movies
    drop_table   :picturescenes
    drop_table   :scenes
    drop_table   :users
  end
end
