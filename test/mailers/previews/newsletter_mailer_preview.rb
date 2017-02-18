# Preview all emails at http://localhost:3000/rails/mailers/newsletter_mailer
class NewsletterMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/newsletter_mailer/weekly
  def weekly
    NewsletterMailer.weekly
  end

  # Preview this email at http://localhost:3000/rails/mailers/newsletter_mailer/monthly
  def monthly
    NewsletterMailer.monthly
  end

end
