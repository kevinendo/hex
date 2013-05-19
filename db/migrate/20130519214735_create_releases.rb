class CreateReleases < ActiveRecord::Migration
  def self.up
    create_table :releases do |t|
      t.string :release_name
      t.string :short_name
      t.integer :size
      t.date :release_date

      t.timestamps
    end
      Release.create :release_name => "", :short_name => '', :size => '0'
      Release.create :release_name => "Kickstarter", :short_name => 'KS', :size => '0'
      Release.create :release_name => "Shards of Fate", :short_name => 'SOF', :size => '350'
  end


  def self.down
    drop_table :releases
  end
end
