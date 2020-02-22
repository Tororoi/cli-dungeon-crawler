class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :type
      t.integer :map_id
      t.integer :enemy_id
      t.integer :treasure_id
      t.boolean :visited
      t.string :visual
    end
  end
end
