class Restriction < ActiveRecord::Base

	# Relationships
	belongs_to :survey
	has_many :restriction_genders
	has_many :restriction_ethnicities

end
