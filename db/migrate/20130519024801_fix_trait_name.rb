class FixTraitName < ActiveRecord::Migration
  def self.up
    rename_column :traits, :name, :trait_name    
  end

  def self.down
    rename_column :traits, :trait_name, :name    
    
  end
end
