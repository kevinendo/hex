class Card < ActiveRecord::Base
  COLOR = { "Artifact" => 0, "Blood" => 1, "Wild" => 2, "Diamond" => 3, "Ruby" => 4, "Sapphire" => 5 }
  FACTION = { "None" => 0, "Ardent" => 1, "Underworld" => 2 }
  RESTRICTION = { "None" => 0, "Unique" => 1 }
  RARITY = { "None" => 0, "Common" => 1, "Uncommon" => 2, "Rare" => 3, "Legendary - PvE" => 4, "Legendary - PvP" => 5}
  CARD_TYPE = { "Resource" => 0, "Constant" => 1, "Troop" => 2, "Basic Action" => 3, "Quick Action" => 4, "Artifact" => 5, "Artifact Troop" => 6}

#  def color
#    COLOR.key(read_attribute(:color))
#  end

  def faction
    FACTION.key(read_attribute(:faction))
  end

  def restriction
    RESTRICTION.key(read_attribute(:restriction))
  end

  def rarity
    RARITY.key(read_attribute(:rarity))
  end

#  def card_type
#    CARD_TYPE.key(read_attribute(:card_type))
#  end
  
  def name_with_initial
    "#{name}"
  end

  def self.search(search)
    if search
      where('name LIKE ? OR traits LIKE ? OR game_text LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
    else
      scoped
    end
  end
  
  
  has_many :item
  belongs_to :release
  attr_accessible :related_card_id, :related_card2_id, :related_card3_id, :related_card4_id, :traits, :attack, :color, :cost, :defense, :faction, :game_text, :lore_text, :name, :number, :pve, :rarity, :restriction, :release_id, :threshold, :card_type, :image_main, :image_back, :image_alt_1
end
