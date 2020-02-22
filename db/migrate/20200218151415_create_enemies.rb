class CreateEnemies < ActiveRecord::Migration[6.0]
  def change
    create_table :enemies do |t|
      t.string :name
      t.integer :enemy_type_id
      t.integer :gold
      t.integer :hp
      t.integer :xp
      t.integer :level
      t.boolean :has_key
    end
  end
end
