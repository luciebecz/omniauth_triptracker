class NewsletterJob < ApplicationJob
  queue_as :default

  def perform(*args)
    case newsletter_args[:newsletter]
      when 'weekly'
        NewsletterMailer.weekly(args).deliver
      when 'monthly'
        NewsletterMailer.monthly(args).deliver
      else 
        raise 'No Newsletter type was passed'
      end
  end
end
