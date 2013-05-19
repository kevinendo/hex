class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.integer :user_type, :default => 0

      t.timestamps
      
      User.create :name => "kevin", :password => "kevin", :user_type => 1
    end
  end

end
