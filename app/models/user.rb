class User < ActiveRecord::Base

	# Relationships
	has_many :surveys, through: :survey_users
end
