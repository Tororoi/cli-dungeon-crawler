class CreateDoors < ActiveRecord::Migration[6.0]
  def change
    create_table :doors do |t|
      t.string :type
      t.boolean :locked
    end
  end
end
