class Movie < ActiveRecord::Base
	validates_uniqueness_of :p_id
  attr_accessible :p_id, :title, :rating, :description, :release_date
end
