class ChangeColorType < ActiveRecord::Migration
  def self.up
    change_column :cards, :color, :string
  end

  def self.down
    change_column :cards, :color, :integer    
  end
end
