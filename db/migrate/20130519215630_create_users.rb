class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email
      t.string :password_hash
      t.string :password_salt
      t.integer :user_type, :default => 0

      t.timestamps  

    end
  end


  def self.down
    drop_table :users
  end
end
