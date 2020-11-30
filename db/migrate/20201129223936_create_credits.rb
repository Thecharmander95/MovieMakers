class CreateCredits < ActiveRecord::Migration[6.0]
  def change
    create_table :credits do |t|
      t.text :person
      t.text :for
      
      t.timestamps
    end
  end
end
