class UsersController < ActionController::API
	before_action :set_user, only: [:show, :update, :destroy, :profile_info, :filtered_surveys, :created_surveys, :get_creators]

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
	end

	def update
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

	def filtered_surveys
		@filt_surveys = Survey.get_surveys_user_can_take(@user)
		render json: @filt_surveys
	end

	def created_surveys
		@created_surveys = Survey.get_surveys_user_created(@user)
		@created_surveys.select! {|x| !x.nil?}
		render json: @created_surveys
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
	      params.require(:user).permit(:name, :email, :age, :gender, :taker, :creator, :points)
	    end
end

