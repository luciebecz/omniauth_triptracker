class UsersController < ApplicationController
  def create
  
    SignupMailer.new_signup(user).deliver
    flash[:succes] = 'You have successfully signed up for weekly deal offers!'
    redirect_to :root
  end 

  private 
    def user_params
      params.require(:user).permit(:email)
    end 
  
end
