class ProfilesController < ApplicationController
  # def sort
  #   session[:sort_by] = params[:sort_by]
  #   redirect_to profiles_path
  # end
  def index
    @profiles = Profile.all
  end
end
