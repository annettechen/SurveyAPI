class UsersController < ActionController::API
	before_action :set_user, only: [:show, :update, :destroy]

	def index
	  @users = User.all
	  @creators = User.all.creators

	  render json: @users
	end

	def show
	  render json: @user
	end

	def create
	end

	def update
	end

	def destroy

	end

	def get_creators
		@creators = User.creators

		render json: @creators
	end



	private
		def set_user
	      @user = User.find(params[:id])
	    end

	    def user_params
	      params.require(:user).permit(:name, :email, :age, :gender, :taker, :creator)
	    end
end

