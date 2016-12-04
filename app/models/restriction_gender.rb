class RestrictionGender < ActiveRecord::Base

	has_one :restriction
	has_one :gender
end
