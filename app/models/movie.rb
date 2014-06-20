class Movie < ActiveRecord::Base
	validates_uniqueness_of :p_id
  attr_accessible :p_id, :title, :rating, :description, :release_date

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			Movie.create! row.to_hash
		end
	end
end
