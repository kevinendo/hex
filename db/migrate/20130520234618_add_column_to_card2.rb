class AddColumnToCard2 < ActiveRecord::Migration
  def self.up
    add_column :cards, :related_card2_id, :integer
    add_column :cards, :related_card3_id, :integer    
    add_column :cards, :related_card4_id, :integer
    change_column :cards, :cost, :string    
  end

  def self.down
    remove_column :cards, :related_card2_id
    remove_column :cards, :related_card3_id
    remove_column :cards, :related_card4_id            
    change_column :cards, :cost, :integer        
  end

end




