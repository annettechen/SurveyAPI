class RestrictionsController < ActionController::API
	before_action :set_restriction, only: [:show, :update, :destroy]

	def index
	  @restrictions = Restrictions.all

	  render json: @restrictions
	end

	def show
	  render json: @restriction
	end

	def create
	end

	def update
	end

	def destroy
	end


	private
		def set_restriction
	      @text_response = TextResponse.find(params[:id])
	    end

	    def restriction_params
	      params.require(:restriction).permit(:gender, :age_ub, :age_lb, :loc_center_long, :loc_center_lat, :loc_radius, :num_takers)
	    end
end