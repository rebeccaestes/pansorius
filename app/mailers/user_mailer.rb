class UserMailer < ApplicationMailer
  default from: "pansori@#{ENV['domain'] || ENV['MAILGUN_DOMAIN']}"

  def connect_email(to,from, message)
    @to = to
    @from = from
    @message = message
    mail to: @to.email, from: @from.profile.name, subject: "Potential #{@from.profile.role.capitalize}"
  end
end
