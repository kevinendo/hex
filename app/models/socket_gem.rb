class SocketGem < ActiveRecord::Base
  
  def name_with_initial
    "#{name}"
  end
    
      
  attr_accessible :gem_color, :game_text, :gem_name, :gem_type
end
