class CreateSocketGems < ActiveRecord::Migration
  def self.up
    create_table :socket_gems do |t|
      t.string :gem_name
      t.string :gem_color
      t.string :gem_type
      t.text :game_text

      t.timestamps
    end
  end


  def self.down
    drop_table :socket_gems
  end
end
