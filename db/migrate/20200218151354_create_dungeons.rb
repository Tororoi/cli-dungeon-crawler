class CreateDungeons < ActiveRecord::Migration[6.0]
  def change
    create_table :dungeons do |t|
      t.string :name
    end
  end
end
