class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  # this method will be called once data comes back form facebook
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted?
      sign_in_and_redirect @user, event: :authentication
    else
      session['devise.facebook_data'] = request.env['omniauth.auth']
      redirect_to new_user_registration_url
    end 
  end 

  end 