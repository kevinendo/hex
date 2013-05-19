class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
      Page.create :title => "Home Page", :body => "This is the home page."    
  end
end
