class ChangeCardTypeType < ActiveRecord::Migration
  def self.up
    change_column :cards, :card_type, :string    
  end

  def self.down
    change_column :cards, :card_type, :integer    
  end
end
