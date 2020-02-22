class CreateMaps < ActiveRecord::Migration[6.0]
  def change
    create_table :maps do |t|
      t.integer :dungeon_id
      t.boolean :compass
    end
  end
end
