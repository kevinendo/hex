class UpdateCardsFactionRestrictionRarity < ActiveRecord::Migration
  def self.up
        change_column :cards, :faction, :string    
        change_column :cards, :restriction, :string    
        change_column :cards, :rarity, :string    
  end

  def self.down
      change_column :cards, :faction, :integer    
      change_column :cards, :restriction, :integer    
      change_column :cards, :rarity, :integer      
  end
end
