class SocketGem < ActiveRecord::Base
  COLOR = { "Artifact" => 0, "Blood" => 1, "Wild" => 2, "Diamond" => 3, "Ruby" => 4, "Sapphire" => 5 }
  GEM_TYPE = { "Minor" => 0, "Major" => 1}
  
  def color
    COLOR.key(read_attribute(:color))
  end
  
  def gem_type
    GEM_TYPE.key(read_attribute(:gem_type))
  end
  
  def name_with_initial
    "#{name}"
  end
    
      
  attr_accessible :color, :game_text, :name, :gem_type
end
