class UserMailer < ApplicationMailer
  default from: "pansori@#{ENV['MAILGUN_DOMAIN'] || ENV['domain']}"

  def connect_email(to,from, message)
    @to = to
    @from = from
    @message = message
    mail to: @to.email, from: @from.profile.name, subject: "Potential #{@from.profile.role.capitalize}"
  end
end
