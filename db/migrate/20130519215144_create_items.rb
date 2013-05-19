class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :item_name
      t.integer :card_id
      t.string :item_type
      t.text :game_text
      t.text :lore_text
      t.integer :set_card_id
      t.integer :rarity
      t.string :source
      t.string :image_main
      t.text :rulings

      t.timestamps
    end
  end


  def self.down
    drop_table :items
  end
end
