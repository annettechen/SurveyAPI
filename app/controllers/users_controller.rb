class UsersController < ActionController::API
	before_action :set_user, only: [:show, :update, :destroy, :profile_info]

	def index
	  @users = User.all
	  @creators = User.all.creators

	  render json: @users
	end

	def show
	  render json: @user
	end

	def create
		@user = User.create(user_params)
		if @user.save!
			render json: @user
	end

	def update
		@user = current_user
	    if @user.update_attributes(user_params)
	      flash[:notice] = "#{@user.name} is updated."
	      redirect_to @user
	    else
	      render :action => 'edit'
	    end
	end

	def destroy

	end

	def profile_info
		@user_surveys = SurveyUser.surveys_for_given_taker(@user)
		render json: {:demographics => @user, :eligible_surveys => @user_surveys}
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

