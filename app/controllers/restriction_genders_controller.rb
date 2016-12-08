class RestrictionGendersController < ActionController::API
	before_action :set_restriction_gender, only: [:show, :update, :destroy]

	def index
	  @restriction_genders	= RestrictionGender.all

	  render json: @restriction_genders
	end

	def show
	  render json: @restriction_gender
	end

	def create
		@restriction_gender = RestrictionGender.create(restriction_gender_params)
		if @restriction_gender.save!
			render json: @restriction_gender
		end
	end

	def update
	end

	def destroy
	end


	private
		def set_restriction_gender
	      @restriction_gender = RestrictionGender.find(params[:id])
	    end

	    def restriction_gender_params
	      params.require(:restriction_gender).permit(:restriction_id, :gender_id)
	    end
end