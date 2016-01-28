class SkilltaggingsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_skilltagging, only: [:edit, :update, :destroy]
  before_action :set_profile


  def index
    @skills = Skill.all
    @current_skills = @profile.skills.take(6)
    @skilltag = @current_skills.find(params[:id])
    @profile = current_user.profile
    @new_skilltag = Skilltagging.new
  end

  # GET /experiences/new
  def new
    @skills = Skill.all
    @current_skills = @profile.skills.take(6)
    if current_user != @profile.user
      puts '*' * 50
      puts 'wrong user'
      redirect_to current_user.profile, alert: 'Permission denied'
    else
      @new_skilltag = Skilltagging.new
    end
  end


  def create
    @profile = current_user.profile
    @stag = @profile.skilltaggings.create!(skilltag_params)
    puts "***"
    puts @stag.skill.skill
    puts @stag.profile.name
    redirect_to profile_skilltaggings_path
  end

  def destroy
    @profile = Profile.find(params[:profile_id])
    @current_skills = @profile.skills
    @skilltag = @current_skills.find(params[:id])
    @skilltag.destroy
    redirect_to profile_skilltaggings_path
  end
  private
  #   # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:profile_id])
  end

  def skilltag_params
    params.require(:skilltagging).permit(:profile_id, :skill_id, :value)
  end
end
