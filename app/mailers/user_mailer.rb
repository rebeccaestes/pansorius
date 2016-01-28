class UserMailer < ApplicationMailer
  default from: ENV['domain']

  def connect_email(to,from, message)
    @to = to
    @from = from
    @message = message
    mail to: @to.email, subject: 'Welcome to My Awesome Site'
  end
end
