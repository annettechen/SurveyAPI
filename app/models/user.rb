class User < ActiveRecord::Base

	# Relationships
	has_many :survey_users
	has_many :surveys, through: :survey_users

	scope :creators, -> { where(creator: true) }
	scope :takers, 	 -> { where(taker: true) }
	
end
