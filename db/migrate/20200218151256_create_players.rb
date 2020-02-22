class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :gold
      t.integer :hp
      t.integer :xp
      t.integer :level
      t.boolean :has_map
    end
  end
end
