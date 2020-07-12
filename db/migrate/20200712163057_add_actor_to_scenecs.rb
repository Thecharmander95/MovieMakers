class AddActorToScenecs < ActiveRecord::Migration[6.0]
  def change
    add_column :scenes, :actor, :string
  end
end
