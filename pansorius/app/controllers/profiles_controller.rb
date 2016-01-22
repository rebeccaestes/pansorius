class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # end
  def index
    if current_user
      @profiles = current_user.profiles
    else
      @profiles = Profile.all
    end
  end
end
