class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :name
      t.string :short_name
      t.integer :size
      t.date :release_date

      t.timestamps
    end
      Release.create :name => "", :short_name => '', :size => '0'
      Release.create :name => "Kickstarter", :short_name => 'KS', :size => '0'
      Release.create :name => "Shards of Fate", :short_name => 'SOF', :size => '350'
  end
end
