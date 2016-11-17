class SurveyUser < ActiveRecord::Base

	# Relationships
	belongs_to :survey 
	belongs_to :user 
end
