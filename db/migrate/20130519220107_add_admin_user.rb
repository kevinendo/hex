class AddAdminUser < ActiveRecord::Migration
  def self.up
    user = User.create!( :email => 'kevin', :password => '', :user_type => 1 )
  end


  def self.down
    user = User.find_by_email( 'kevin' )
    user.destroy
  end
end
