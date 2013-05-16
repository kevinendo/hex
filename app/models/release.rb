class Release < ActiveRecord::Base
  validates_uniqueness_of :name, :short_name
  
  def name_with_initial
    "#{name}"
  end

  has_many :card
  
  attr_accessible :name, :short_name, :release_date, :size
end
