class ProfilesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
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

  def new
    # @profile = current_user.profile.new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
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
