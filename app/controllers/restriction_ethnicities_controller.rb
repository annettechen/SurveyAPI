class RestrictionEthnicitiesController < ActionController::API
	before_action :set_restriction_ethnicity, only: [:show, :update, :destroy]

	def index
	  @restriction_ethnicities = RestrictionEthnicity.all

	  render json: @restriction_ethnicities
	end

	def show
	  render json: @restriction_ethnicity
	end

	def create
		@restriction_ethnicity = RestrictionEthnicity.create(restriction_ethnicity_params)
		if @restriction_ethnicity.save!
			render json: @restriction_ethnicity
		end
	end

	def update
	end

	def destroy
	end


	private
		def set_restriction_ethnicity
	      @restriction_ethnicity = RestrictionEthnicity.find(params[:id])
	    end

	    def restriction_ethnicity_params
	      params.require(:restriction_gender).permit(:restriction_id, :ethnicity_id)
	    end
end