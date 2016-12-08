class SurveyUsersController < ActionController::API
	before_action :set_surveyuser, only: [:show, :update, :destroy]

	def index
	  @surveyusers = SurveyUser.all

	  render json: @surveyusers
	end

	def show
	  render json: @surveyuser
	end

	def create
		@surveyuser = SurveyUser.create(surveyuser_params)
		if @surveyuser.save!
			render json: @surveyuser
		end
	end

	def update
	end

	def destroy
	end


	private
		def set_surveyuser
	      @surveyuser = SurveyUser.find(params[:id])
	    end

	    def surveyuser_params
	      params.require(:surveyuser).permit(:name, :description, :est_time, :points, :url)
	    end
end

