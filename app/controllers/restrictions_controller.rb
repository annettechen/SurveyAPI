class RestrictionsController < ActionController::API
	before_action :set_restriction, only: [:show, :update, :destroy]

	def index
	  @restrictions = Restriction.all

	  render json: @restrictions
	end

	def show
	  render json: @restriction
	end

	def create
		@restriction = Restriction.create(restriction_params)
		if @restriction.save!
			render json: @restriction
		end
	end

	def update
	end

	def destroy
	end


	private
		def set_restriction
	      @restriction = Restriction.find(params[:id])
	    end

	    def restriction_params
	      params.require(:restriction).permit(:age_ub, :age_lb, :loc_center_long, :loc_center_lat, :loc_radius, :num_takers, :survey_id)
	    end
end