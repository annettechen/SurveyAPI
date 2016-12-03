class SurveysController < ActionController::API
	before_action :set_survey, only: [:show, :update, :destroy]

	def index
	  @surveys = Survey.all

	  render json: @surveys
	end

	def show
	  render json: @survey
	end

	def create
		@survey = Survey.create(survey_params)
		if @survey.save!
			render json: @survey
		end
	end

	def update
	end

	def destroy
	end


	private
		def set_survey
	      @survey = Survey.find(params[:id])
	    end

	    def survey_params
	      params.require(:survey).permit(:name, :active, :description, :start_date, :end_date, :est_time, :points, :url)
	    end
end
