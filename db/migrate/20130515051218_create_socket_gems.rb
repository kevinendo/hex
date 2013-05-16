class CreateSocketGems < ActiveRecord::Migration
  def change
    create_table :socket_gems do |t|
      t.string :name
      t.integer :color
      t.integer :type
      t.text :game_text

      t.timestamps
    end
  end
end
