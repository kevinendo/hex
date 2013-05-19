class ChangeTraits < ActiveRecord::Migration
  def self.up
    add_column :cards, :traits, :string
  end

  def self.down
    remove_column :cards, :traits
  end
end
