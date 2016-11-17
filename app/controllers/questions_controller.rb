class QuestionsController < ActionController::API
	before_action :set_question, only: [:show, :update, :destroy]

	def index
	  @questions = Question.all

	  render json: @questions
	end

	def show
	  render json: @question
	end

	def create
	end

	def update
	end

	def destroy
	end


	private
		def set_question
	      @question = Question.find(params[:id])
	    end

	    def question_params
	      params.require(:question).permit(:text, :question_type, :required, :survey_id)
	    end
end
