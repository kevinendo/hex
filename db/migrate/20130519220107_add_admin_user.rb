class AddAdminUser < ActiveRecord::Migration
  def self.up
    user = User.create!( :email => 'kevin', :password => 'a1b2c3', :user_type => 1 )
  end


  def self.down
    user = User.find_by_email( 'kevin' )
    user.destroy
  end
end
