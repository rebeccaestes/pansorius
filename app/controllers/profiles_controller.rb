class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  # end
  def index
  	puts "*" * 50
    if current_user
      @profiles = current_user.profile
    else
      @profiles = Profile.all
    end
    puts current_user
    puts @profiles
  end

  def show

  end
end
