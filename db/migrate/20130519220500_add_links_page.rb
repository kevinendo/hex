class AddLinksPage < ActiveRecord::Migration
  def self.up
      Page.create :title => "LINKS", :body => "This is the links page."        
  end

  def self.down
    
  end
end
