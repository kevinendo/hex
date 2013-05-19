class Release < ActiveRecord::Base
  validates_uniqueness_of :release_name, :short_name
  
  def name_with_initial
    "#{release_name}"
  end

  has_many :card
  
  attr_accessible :release_name, :short_name, :release_date, :size
end
