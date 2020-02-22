class CreateTreasures < ActiveRecord::Migration[6.0]
  def change
    create_table :treasures do |t|
      t.string :name
      t.integer :gold
      t.boolean :has_key
      t.boolean :has_compass
    end
  end
end
