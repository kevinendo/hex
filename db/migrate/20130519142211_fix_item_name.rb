class FixItemName < ActiveRecord::Migration
  def self.up
    rename_column :items, :name, :item_name    
  end

  def self.down
    rename_column :items, :item_name, :name    
    
  end

end
