class SignupsController < ApplicationController
  # before_action :setUserId

  def index
    @user = User.new
  end

  def create
    user = User.create(user_params)
    SignupMailer.new_signup(user).deliver
    flash[:succes] = 'You have successfully signed up for weekly deal offers!'
    redirect_to :root
  end 

  private
    def setUserId 
      @user = current_user.id
    end

    def user_params
      params.require(:user).permit(:emails)
    end
end
