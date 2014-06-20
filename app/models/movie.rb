class Movie < ActiveRecord::Base
	validates_uniqueness_of :p_id
	#validates :active, :uniqueness => { :scope => :p_id, :message => 'name is in use'}, :if => :active
  attr_accessible :p_id, :title, :rating, :description, :release_date

	require 'csv'
	def self.import(file)
		movies = []
		CSV.foreach(file.path, headers: true) do |row|
			movies.push({:p_id => row[0], :rating => row[1], :title => row[2], :release_date => row[3].to_i})
		end

		movies.each do |movie|
			Movie.create(movie)
		end
	end
end
