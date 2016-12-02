class SurveyUser < ActiveRecord::Base

	# Relationships
	belongs_to :survey 
	belongs_to :user 

	# in the database, 0 means creator, 1 means taker

	def self.surveys_for_given_taker(user)
		surveys = SurveyUser.where(user: user).where(relationship: 1).map{|s| s.survey}
		return surveys
	end

end
