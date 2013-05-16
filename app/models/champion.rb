class Champion < ActiveRecord::Base
  POWER_TYPE = { "None" => 0, "Charge Power" => 1, "Passive Power" => 2, "Special Card" => 3, "Start of Game" => 4 }
  def power1_type
    POWER_TYPE.key(read_attribute(:power1_type))
  end
  def power2_type
    POWER_TYPE.key(read_attribute(:power2_type))
  end
  def power3_type
    POWER_TYPE.key(read_attribute(:power3_type))
  end
  def power4_type
    POWER_TYPE.key(read_attribute(:power4_type))
  end

  attr_accessible :name, :power1_game_text, :power1_name, :power1_type, :power1_unlock, :power2_game_text, :power2_name, :power2_type, :power2_unlock, :power3_game_text, :power3_name, :power3_type, :power3_unlock, :power4_game_text, :power4_name, :power4_type, :power4_unlock, :image_main, :source
end
