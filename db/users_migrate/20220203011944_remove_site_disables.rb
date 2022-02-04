class RemoveSiteDisables < ActiveRecord::Migration[7.0]
  def change
    drop_table :sitedisables
  end
end
