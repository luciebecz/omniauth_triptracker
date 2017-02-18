class NewsletterController < ApplicationController
  def new
  end

  def create
    NewsletterJob.perform_later({
      emails: params[:emails],
      subject: params[:subject],
      newsletter: params[:newsletter]
    })
    flash[:success] = 'Deal Mail Sent!'
    redirect_to new_newsletter_path
  end 
end
