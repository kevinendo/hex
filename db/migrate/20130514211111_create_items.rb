class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.integer :card_id
      t.integer :item_type
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
end
