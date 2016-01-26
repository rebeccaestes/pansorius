class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_profile, except: [:index]
  # end
  def index
  	puts "*" * 50
  	puts current_user
    if current_user
      @profiles = current_user.profile
    else
      @profiles = Profile.all
    end
  end

  def show
    @experiences = @profile.experiences
  end

  private
  # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def profile_params
      params.require(:profile).permit(:role, :quote, :name, :user_id, :insights)
    end
end
