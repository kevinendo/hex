class Trait < ActiveRecord::Base
  
  validates_uniqueness_of :trait_name
  
  def name_with_initial
    "#{trait_name}"
  end

  attr_accessible :trait_name
end
