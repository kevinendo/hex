class Trait < ActiveRecord::Base
  
  validates_uniqueness_of :name
  
  def name_with_initial
    "#{name}"
  end

  has_many :card
  attr_accessible :name
end
