class Survey < ActiveRecord::Base

	# Relationships
	has_many :survey_users
	has_many :users, through: :survey_users
	has_many :questions
	has_many :responses
	has_one :restriction

end
