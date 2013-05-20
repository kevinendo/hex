class Item < ActiveRecord::Base
  ITEM_TYPE = { "None" => 0, "Helmet" => 1, "Armor" => 2, "Glove" => 3, "Boots" => 4, "Weapon" => 5, "Trinket" => 6 }  
  RARITY = { "None" => 0, "Common" => 1, "Uncommon" => 2, "Rare" => 3, "Legendary" => 4}
  
 # def item_type
#    ITEM_TYPE.key(read_attribute(:item_type))
#  end
  def rarity
    RARITY.key(read_attribute(:rarity))
  end  

  def self.search(search)
    if search
      where('item_name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
      
  belongs_to :card
  attr_accessible :card_id, :game_text, :image_main, :item_type, :lore_text, :item_name, :rarity, :rulings, :set_card_id, :source
end
