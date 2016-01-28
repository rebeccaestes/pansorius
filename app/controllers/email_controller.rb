class EmailController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipient

  def new
  end

  def create
    #TODO: limit number of emails between people
    @email_body = params[:email_body]
    UserMailer.connect_email(@recipient.user, current_user, @email_body).deliver_later
    redirect_to current_user.profile
  end

  private
  def set_recipient
    @recipient = Profile.find(params[:profile_id])
  end
end
