class FixItemType < ActiveRecord::Migration
  def self.up
    change_column :items, :item_type, :string       
  end

  def self.down
    change_column :items, :item_type, :integer           
  end
end
