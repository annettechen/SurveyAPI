class ChoicesController < ActionController::API
	before_action :set_choice, only: [:show, :update, :destroy]

	def index
	  @choices = Question.all

	  render json: @choices
	end

	def show
	  render json: @choice
	end

	def create
	end

	def update
	end

	def destroy
	end


	private
		def set_choice
	      @choice = TextResponse.find(params[:id])
	    end

	    def choice_params
	      params.require(:choice).permit(:name, :email, :age, :gender, :taker, :creator)
	    end
end
