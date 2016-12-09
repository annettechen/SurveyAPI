class Survey < ActiveRecord::Base

	# Relationships
	has_many :survey_users
	has_many :users, through: :survey_users
	has_many :questions
	has_many :responses
	has_one :restriction
	has_many :restriction_genders, through: :restriction
	has_many :restriction_ethnicities, through: :restriction

def self.hi

	return self
end

#relationship -> creator(0), taker(1)
def self.get_surveys_user_created(user) 

		sUsers = SurveyUser.select{|a| a.survey_id == user.id}
		createdSurveys = sUsers.select{|a| a.user_id == user.id and a.relationship == '0'}
		return createdSurveys
	end

def self.get_surveys_user_can_take(user) 

		possibleSurveys = Survey.select{|a| a.checkGender(user) and a.checkAge(user) and a.checkRace(user)}
		# possibleSurveys = Survey.select{|a| a.checkGender(user) and a.checkAge(user)}
		return possibleSurveys

	end

	def checkGender(user)

		@genderPosibMatches = self.restriction.restriction_genders.select{|a| a.gender_id == user.gender_id}

		return true unless @genderPosibMatches.empty?
	
	end

	def checkAge(user)
		if user.age >= self.restriction.age_lb and user.age <= self.restriction.age_ub
			return true
		else
			return false
		end
	end

	def checkRace(user)
	
		@racePosibMatches = self.restriction.restriction_ethnicities.select{|a| a.ethnicity_id == user.ethnicity_id}
		
		return true unless @racePosibMatches.empty?
	
	end
end
