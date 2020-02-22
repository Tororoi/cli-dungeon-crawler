class CreateEnemyTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :enemy_types do |t|
      t.string :species
      t.string :rank
    end
  end
end
