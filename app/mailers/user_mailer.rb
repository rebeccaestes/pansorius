class UserMailer < ApplicationMailer
  default from: ENV['domain']
  def welcome_email(to,from)
    @to = to
    @from = from
    @url  = 'http://example.com/login'
    mail to: @to.email, subject: 'Welcome to My Awesome Site'
  end
end
