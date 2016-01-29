class EmailController < ApplicationController
  before_action :authenticate_user!
  before_action :set_recipient

  def new
    @template =
"To: Potential #{@recipient.role.capitalize}, #{@recipient.name}
From: Potential #{current_user.profile.role.capitalize}, #{current_user.profile.name}
Subject: Introducing Yourself

Welcome to Pansori.us messaging system!

A great way to begin a mentorship relationship is to reach out and introduce yourself. Tell them a little interesting thing about yourself or what you two seem to share in common.  Keep it short, sweet, and sharp.  Most successful mentorships are organically started with common interests and segways into being a mutually beneficial relationship.  Everyone has something to offer and everyone can benefit to learn.  Think about who you are reaching out to and how can your values or skills can be of service to their specific needs.  You can either try to anticipate what their needs might be or you could ask them insightful questions that displays your thought process.

What are you waiting for?  Let’s get started!

Your Advisors,
Pansori.us"
  end

  def create
    #TODO: limit number of emails between people
    @email_body = params[:email_body]
    UserMailer.connect_email(@recipient.user, current_user, @email_body).deliver
    redirect_to current_user.profile
  end

  private
  def set_recipient
    @recipient = Profile.find(params[:profile_id])
  end
end
