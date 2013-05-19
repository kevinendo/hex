class CreateCards < ActiveRecord::Migration
  def self.up
    create_table :cards do |t|
      t.string :name
      t.integer :cost
      t.integer :threshold
      t.string :color
      t.string :card_type
      t.string :traits
      t.integer :restriction
      t.integer :faction
      t.text :game_text
      t.text :lore_text
      t.integer :attack
      t.integer :defense
      t.integer :release_id, :default => 0
      t.integer :rarity
      t.integer :number
      t.boolean :pve
      t.string :source
      t.string :image_main
      t.string :image_back
      t.string :image_alt_1
      t.string :image_alt_2
      t.string :image_foil
      t.text :rulings
    
      t.timestamps    
  end
end


  def self.down
    drop_table :cards
  end
end
