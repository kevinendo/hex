class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string :name
      t.integer :power1_type
      t.text :power1_game_text
      t.integer :power1_unlock, :default => 5
      t.integer :power2_type
      t.text :power2_game_text
      t.integer :power2_unlock, :default => 10
      t.integer :power3_type
      t.text :power3_game_text
      t.integer :power3_unlock, :default => 15
      t.integer :power4_type
      t.text :power4_game_text
      t.integer :power4_unlock, :default => 20
      t.string :image_main
      t.string :source
      
      t.timestamps
    end
  end
end
