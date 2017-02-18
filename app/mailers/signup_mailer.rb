class SignupMailer < ApplicationMailer
  def new_signup(user)
    @user = user
    mail(to: user.email, subject: 'Thanks for signing up for Trip Tracker Deals!')
  end 
end

