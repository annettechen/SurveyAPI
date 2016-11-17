class TextResponsesController < ActionController::API
	before_action :set_text_response, only: [:show, :update, :destroy]

	def index
	  @text_responses = Question.all

	  render json: @text_responses
	end

	def show
	  render json: @text_response
	end

	def create
	end

	def update
	end

	def destroy
	end


	private
		def set_text_response
	      @text_response = TextResponse.find(params[:id])
	    end

	    def text_response_params
	      params.require(:text_response).permit(:value, :question_id)
	    end
end
