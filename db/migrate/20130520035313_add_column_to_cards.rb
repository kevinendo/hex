class AddColumnToCards < ActiveRecord::Migration
  def self.up
    add_column :cards, :related_card_id, :integer
  end

  def self.down
    remove_column :cards, :related_card_id
  end
end
